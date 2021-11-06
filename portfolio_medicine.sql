create database portfolio;
use portfolio;

drop table medicine;

create table medicine(
	item_seq_num varchar(100),
	item_name varchar(300),
	entp_seq varchar(30),
	entp_name varchar(30),
	chart varchar(300),
	item_image varchar(300),
	print_front varchar(100),
	print_back varchar(100),
	drug_shape varchar(30),
	color_class1 varchar(30),
	color_class2 varchar(30),
	line_front varchar(200),
	line_back varchar(200),
	leng_long varchar(30),
	leng_short varchar(30),
	thick varchar(30),
	img_regist_ts varchar(60),
	class_no varchar(60),
	class_name varchar(100),
	etc_otc_name varchar(30),
	item_permit_date varchar(30),
	form_code_name varchar(100),
	mark_code_front_anal varchar(30),
	mark_code_back_anal varchar(30),
	mark_code_front_img varchar(200),
	mark_code_back_img varchar(200),
	change_date varchar(30),
	mark_code_front varchar(30),
	mark_code_back varchar(30),
	item_eng_name varchar(200),
	edi_code varchar(200)
	primary key(item_name, item_image)
)engine=innodb default charset=utf8;


alter table medicine change  img_register_ts img_regist_ts varchar(60);

select count(*)
from medicine;

select item_name,item_image
from medicine
group by item_name, item_image
having count(*) >= 2;

select *
from medicine
where item_image is null;

select * 
from medicine;


select * from medicine where item_name like '%마이%' order by item_seq_num desc ;