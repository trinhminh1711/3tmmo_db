-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: localhost    Database: 3tmmo_db
-- ------------------------------------------------------
-- Server version	5.7.33-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `content` varchar(10000) CHARACTER SET utf8mb4 NOT NULL,
  `extra_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (27,'admin','_1: Chính Sách DATA\n3TMMO Hỗ trợ data cho user với mức 2000đ/data\nMỗi khách hàng chăm sóc tính 1 data. ( Khách hàng chăm sóc không tag tên tính 5 data)\nData không nhận cuối tháng chia đầu người ( Vui lòng thông báo cho leader nếu thừa hoặc thiếu data)\n\n_2 Hướng dẫn tính thu nhập.\nThu Nhập = 90%Doanh số được duyệt + Hoa Hồng F + Thưởng + Hỗ Trợ - Data\n Trong đó:\n   -Doanh số được duyệt = doanh số tạm duyệt đã qua đối soát.\n   -Hoa Hồng F = 10%Doanh số F1 (xem bảng hệ thống giới thiệu)\n   -Thưởng: Theo event.\n   -Hỗ trợ: Đối với user có doanh số trên 8tr, Hỗ trợ 1%Doanh số với mỗi 1tr vượt mức. Tối đa 10%\n   -Data: Xem Mục 1\n\n3: Lương\nLương được chuyển khoản vào ngày 19 - 30 của tháng sau.\n','15/11/2021'),(28,'Thay đổi findo cps 55k','Từ ngày 16/11 findo giảm giá còn 55k/đơn cps. \n1 số thay đổi. \nKhách hàng từng vay tamo vay tiếp findo sẽ được tính là hợp lệ.','16/11/2021'),(32,'Thông Báo Đua Top Ngày 18/11/2021','Tất cả ae nào doanh số trên 600k thưởng 100k\n- Riêng top1 thưởng 200k. ','17/11/2021'),(33,'Thông báo hoa hồng jeff','Hoa hồng jeff trở lại 60k từ ngày 21.11.2021','19/11/2021'),(38,'Thông báo hoa hồng jeff','Hoa hồng jeff trở lại 100k từ ngày 01.12.2021 đến 10.12.2021','03/12/2021'),(40,'Thông Báo Camp tháng 12','Senmo, Oncredit CPQL, Robocash, Avay(chỉ sim vietel), Atm online, Tiền ơi(fb đẹp), Jeff(findo), Tamo, Doctor, Vay quá dễ (làm Moneycat)','5/12/2021');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partners` (
  `parent_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `sign` varchar(255) NOT NULL,
  `unit_price` int(11) DEFAULT '0',
  PRIMARY KEY (`parent_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partners`
--

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
INSERT INTO `partners` VALUES (12,'senmovn','https://go.isclix.com/deep_link/5746192270939613977/5301198507800919787?utm_source=user001&utm_medium=user001&utm_campaign=user001&utm_content=user001&url=https%3A%2F%2Fsenmo.vn','CPS',60000),(13,'jeff','https://go.isclix.com/deep_link/5746192270939613977/5488154268596770778?utm_source=user001&utm_medium=user001&utm_campaign=user001&utm_content=user001&url=https%3A%2F%2Fwww.jeff.vn%2Fpromo%2Faffiliate','CPS Làm Findo',100000),(14,'atm_online','https://go.isclix.com/deep_link/5746192270939613977/5007070400298969611?utm_source=user001&utm_medium=user001&utm_campaign=user001&utm_content=user001&url=https%3A%2F%2Fatm-online.vn','CPL',20000),(15,'robocash','https://go.isclix.com/deep_link/5746192270939613977/5174156387933564214?utm_source=user001&utm_medium=user001&utm_campaign=user001&utm_content=user001&url=https%3A%2F%2Frobocash.vn%2F','CPL Không tải được ảnh phải thông báo.',12500),(16,'AVAY','https://go.isclix.com/deep_link/5746192270939613977/4984260100521590721?utm_source=user001&utm_medium=user001&utm_campaign=user001&utm_content=user001&url=https%3A%2F%2Favay.vn%2F','CPL',60000),(17,'doctordong','https://go.isclix.com/deep_link/5746192270939613977/4564780082073769169?utm_source=user001&utm_medium=user001&utm_campaign=user001&utm_content=user001&url=https%3A%2F%2Fdoctordong.vn%2Fvsale%3Fpartner_token%3DBq7OGnaSE-nrzepIjzrKeUszWQFY0YM49EHU5LLo6g8','CPQL',35000),(19,'Vay Quá Dễ','https://go.isclix.com/deep_link/5746192270939613977/5593778870470217832?utm_source=user001&utm_medium=user001&utm_campaign=user001&utm_content=user001&url=https%3A%2F%2Fvayquade.com','CPQL Làm Money Cat',40000),(20,'Vay Tiện Lợi','https://go.isclix.com/deep_link/5746192270939613977/5701219315156130407?utm_source=user001&utm_medium=user001&utm_campaign=user001&utm_content=user001&url=https%3A%2F%2Fvaytienloi.com%2F','CPQL Làm Money Cat',40000),(21,'tamo','https://go.isclix.com/deep_link/5746192270939613977/5213572788075905357?utm_source=user001&utm_medium=user001&utm_campaign=user001&utm_content=user001&url=https%3A%2F%2Fwww.tamo.vn%2F','CPS',135000),(22,'tien_oi','https://go.isclix.com/deep_link/5746192270939613977/5567176079083000596?utm_source=user001&utm_medium=user001&utm_campaign=user001&utm_content=user001&url=https%3A%2F%2Ftienoi.com.vn%2F','CPS',180000),(23,'vamo','https://go.isclix.com/deep_link/5746192270939613977/5301138938841977333?utm_source=user001&utm_medium=user001&utm_campaign=user001&utm_content=user001&url=https%3A%2F%2Fvamo.vn%2Fpartner%2Faccesstrade','CPS',120000),(24,'findo_cps','https://go.isclix.com/deep_link/5746192270939613977/5746851066420663522?utm_source=user001&utm_medium=user001&utm_campaign=user001&utm_content=user001&url=https%3A%2F%2Fwww.findo.vn%2F','CPS Làm qua Jeff để được hoa hồng 100k.',55000),(25,'MB bank android','https://go.isclix.com/deep_link/5746192270939613977/5325601808419035241?utm_source=user001&utm_medium=user001&utm_campaign=user001&utm_content=user001&url=https%3A%2F%2Fcom.mbmobile','CPA',30000),(26,'MB bank IOS','https://go.isclix.com/deep_link/5746192270939613977/5325601808324354433?utm_source=user001&utm_medium=user001&utm_campaign=user001&utm_content=user001&url=https%3A%2F%2Fid1205807363.vn','CPA',30000),(27,'oncredit_cpql','https://go.isclix.com/deep_link/5746192270939613977/5490970793574623673?utm_source=user001&utm_medium=user001&utm_campaign=user001&utm_content=user001&url=https%3A%2F%2Foncredit.vn%2F','CPQL',32000),(29,'Money veo','https://go.isclix.com/deep_link/5746192270939613977/5573694031154286344?utm_source=user001&utm_medium=user001&utm_campaign=user001&utm_content=user001&url=https%3A%2F%2Fmoneyveo.vn%2F','CPS',135000),(31,'Cash 24h CPL','https://go.isclix.com/deep_link/5746192270939613977/5262572949172809150?utm_source=user001&utm_medium=user001&utm_campaign=user001&utm_content=user001&url=https%3A%2F%2Fcash24.vn%2Fr','CPL',12000),(32,'Cash 24h CPS','https://go.isclix.com/deep_link/5746192270939613977/5364729630501089257?utm_source=user001&utm_medium=user001&utm_campaign=user001&utm_content=user001&url=https%3A%2F%2Fcash24.vn','CPS',100000),(33,'moneycat_cps_2021','https://go.isclix.com/deep_link/5746192270939613977/5781625266339339332?utm_source=user001&utm_medium=user001&utm_campaign=user001&utm_content=user001&url=https%3A%2F%2Fmoneycat.vn%2F','CPS',110000),(34,'Shinhan Finance','https://go.isclix.com/deep_link/5746192270939613977/5141521349430660949?utm_source=user001&utm_medium=user001&utm_campaign=user001&utm_content=user001&url=https%3A%2F%2Flanding.uocmovahanhphuc.com.vn%2Ff%2Fvaytieudung','CPS',110000),(35,'moneycat','https://go.isclix.com/deep_link/5746192270939613977/5274328313811869046?utm_source=user001&utm_medium=user001&utm_campaign=user001&utm_content=user001&url=https%3A%2F%2Fmoneycat.vn%2F%3Freferer%3Dat-oneclick-money','CPQL Làm qua Vay Quá Dễ để được hoa hồng 40k',31000),(36,'Vay VND','https://go.isclix.com/deep_link/5746192270939613977/5572070817698284156?utm_source=user001&utm_medium=user001&utm_campaign=user001&utm_content=user001&url=https%3A%2F%2Fvayvnd.vn%2F','CPS',70000);
/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `sub_district` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `bank_account_name` varchar(255) DEFAULT NULL,
  `bank_account_number` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'vietthangvqhp','4f3d1308ecca05cee1bc8cd7f0abd725','Dương Việt Thắng',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0'),(2,'doanviettien','c4ca4238a0b923820dcc509a6f75849b','Đoàn Việt Tiến','',NULL,'','','','','','','user001','1'),(3,'nguyenthanhtung','c4ca4238a0b923820dcc509a6f75849b','Nguyễn Thanh Tùng','',NULL,'','','','Nguyễn Thanh Tùng','0031000274769','vietcombank','user001','1'),(4,'minhphi93','f13e5b537f04e0e5dfafea23f1d2c044','Minh Phi','6/4','Nam','','','','BUI MINH PHI','2107205317766','AgriBank','user001','1'),(5,'buiquangtrong','c4ca4238a0b923820dcc509a6f75849b','Bùi Quang Trọng','04-11-1994','Nam','','','','BUI QUANG TRONG','003554399','VIB','user002','1'),(6,'PHAMTHEQUYNH','4ea4f5beaf9de6e3acf4867c4080d116','Phạm Thế Quỳnh','',NULL,'','','','','','','user005','1'),(7,'TRANVIETLONG','8a17872d5374f2a5134d43581003f886','Trần Viết Long','15.01.1995','Nam','','','','TRẦN VIẾT LONG','995339999','VIB','user002','1'),(8,'NGUYENMAIANH','cb712e35914b6aef19c5b451bbb81e25','Nguyễn Mai anh','',NULL,'','','','','','','user007','1'),(9,'MTTHUYDUONG','dfe2d9b513c70a33fa806c6773b73d2b','Thùy Dương','04/07','Nữ','','','','MẠC THỊ THÙY DƯƠNG','0031000178153','Vietcombank','user002','1'),(10,'NGUYENTHITHUHANG','3dbac764d5d5bd06116a2e7e1f7a5c10','Nguyễn thị thu hằng','06/02/2000','Nữ','','','','Nguyễn Thị Thu Hằng','102869660020','Vietinbank','user002','1'),(11,'DUONGBAOLONG','bb032aee3f3a6a4e67a65a0efba615cb','Dương Bảo Long','',NULL,'','','','','','','user001','1'),(12,'duongquochung','062924e5653f475b861066a44f58f5f4','Dương Quốc Hùng','',NULL,'','','','','','','user001','1'),(13,'hoanseven','181e34e39f2c732f5b0cf9b4952bcdb8','null','null','null','','','','null','null','null','user001','1'),(15,'tonhoang93','062924e5653f475b861066a44f58f5f4','Bùi Văn Hoàng','',NULL,'','','','','','','user004','1'),(16,'jamesvu92','bcfbd7b26a1c8f45a97df25c720c145b','Vũ Hữu Sơn','',NULL,'','','','','','','user004','1'),(17,'KIMCHI1712','cdd463d38ffedb27b9d9a4ad19020268','Nguyễn Thị Kim Chi','17.12.1995','null','','','','','','','user007','1'),(18,'HOANGLUAN','8221f8498f06137afa6144bdef3c4586','Hoàng Thiện Luân','',NULL,'','','','','','','user007','1'),(19,'NGUYENMY','a645516b44c1f86bfa65c027faf469f1','Nguyễn Thị My','05.08.1989','nữ','','','','Nguyễn thị my','0341007042223','vietcombank','user007','1'),(20,'HOANGTHUAN','40e396be8ed4453e55371fa7ae390dee','Hoàng Bích Thuận','',NULL,'','','','','','','user002','1'),(21,'galam109','28cce7e32bf0d7aae827619b58be5068','Lê Xuân Hân','23/10/1995','Nam','Tân Liên','Vĩnh Bảo','Hải Phòng','Lê Xuân Hân','231956666','VIB','user001','1'),(22,'PHAMTHUTRANG','09fc9d715576b282d3bacdd1ed0843c9','PHẠM THU TRANG','',NULL,'','','','','','','user007','1'),(23,'kthanhdoan','2cfd4560539f887a5e420412b370b361','Khúc Thành Đoàn','09/12/2001','Nam','Thanh Lương','Vĩnh Bảo ','Hải Phòng','KHUC THANH DOAN','108871073894','vietinbank','user003','1'),(24,'daohoanganh1994','b722ebe91207a7bad56c24c026124c2b','hoanganh','06/11/1994','Nam','so dau','hong bang','hai phong','','','','user003','1'),(25,'luongvip666','496257cc2fe1906d9dc7b14e7141b25e','Lương văn Đình ','30071998','Nam','Tự do','Quảng uyên','Cao Bằng','Luong van Dinh','1016969020','Vietcombank','user003','1'),(26,'QUYNH123','e5eb5b3de016ae99cbff293b7fce9f50','Nguyễn Thị Quỳnh','06/11/2002','Nữ','Phong Châu','Đông Hưng','Thái Bình ','NGUYỄN THỊ QUỲNH','1018427255','Vietcombank','user010','1'),(27,'','d41d8cd98f00b204e9800998ecf8427e','nguyễn thị thắm','12.04.1998','nữ','','','','nguyễn thị thắm','19030926105024','techcombank','user010','1'),(28,'hagiang','d4198d7cd0e3c8afc21fcf8708987387','Nguyễn Thị Giang','18-09-2002','Nữ','Văn Đẩu','Kiến An','Hải Phòng','Nguyen Thi Giang','19036443727014','techcombank','user010','1'),(29,'HUY14','1e9cbbbfe8c391dceab9c56a96f3b716','Trịnh Nhất Huy','14/12/2003','Nam','Đông Phương','Kiến Thuỵ','Hải Phòng','Trịnh Nhất Huy','1412200389','MB Bank','user010','1'),(30,'nguyen hanhh','3b0ada2e24390ea3387f4893399a66da','Nguyễn Thị Hạnh','05/09/2002','Nữ','Ngũ Phúc','Kiến Thụy','Hải Phòng','NGUYEN THI HANH','19036384655012','Techcombank','user010','1'),(31,'Luongviet','8ed7dc0238392ff55eada8b80b355a61','Lương văn viết','12/07/1999','Nam','Tân Liên','Vĩnh Bảo','Hải Phòng','Lương văn Viết','06396833333','Tiên phong bank','user001','1'),(32,'NGUYENLINH','02f9456153d4d70a2fca3fde72ec35b2','NGUYỄN MỸ LINH','29.10.1996','Nữ','','','','','','','user007','1'),(33,'Thanhphuong','525acfac1d0e9f75b09509fc3989c262','Nguyen thi phuong','22/11/1995','Nữ','Trung lập','Vĩnh bảo','Hải phòng','Nguyen thi phuong','0031000323589','Vietcombank','user001','1'),(34,'donhungoc','c81135d792336fb2fb0f264e241dcdf6','do nhu ngoc','22/02/1998','Nữ','ly hoc','vinh bao','hai phong','donhungoc','19035204564018','techcombank','user004','1'),(37,'manhtung_1984','d41d8cd98f00b204e9800998ecf8427e','','',NULL,'','','','','108870209026','','user031','1'),(38,'hoangduchuy012','b00d287e1c76bd5a941d139889b87c62','Hoàng Đức Huy','16012003','Nam','dung tien','huyen vinh bao','hai phong','','','','user031','1'),(39,'BUIMANHTUNG1984','84b9e11b0b18c0455900f62947360ec1','Bùi Mạnh Tùng','01-09-1984','Nam','Tân Liên','Vĩnh Bảo','Hải Phòng','BUI MANH TUNG','108870209026','Viettinbank','user031','1'),(40,'THANHHANG','8910db2fb509aab8f5fe7fb69bf1b165','','',NULL,'','','','','','','user007','1'),(41,'BUIMINHNGHIA','f74aa2c1a02c08dd8ed505caa2df7036','Nghia Bui','19/10/2000','nam','','','','BUI Minh NGHIA','001049590701','MB Bank','user007','1'),(42,'viptlvb','78b67932fdf1291368c8e93b380676ff','Nguyễn Văn Huy','27/03/1995','Nam','Tân Liên','Vĩnh Bảo','Hải Phòng','Nguyễn Văn /huy','109869331544','vietinbank','user001','1'),(43,'Anhtham','cf37ef09207a05db5485d08393fc0a7a','Nguyễn thị thắm','12 ','Nữ','Sở dầu','Hồng bàng ','Hải phòng','Nguyễn thị thắm','19030926105024','Techcombank ','user003','1'),(44,'duongtest','e10adc3949ba59abbe56e057f20f883e','Nguyễn Văn Dương','03/05/1990','Nam','Dũng Tiến','Vĩnh Bảo','Hải Phòng','NGUYEN VAN DUONG','12345678','vietcombank','user001','1'),(45,'ngocngoclam2212002','df3185054b50c26192edc9f6bf3a7ac7','Trần Ngọc Lâm','22/01/2002','Nam','Tràng Minh','Kiến An','Hải Phòng','TRAN NGOC LAM','19036501210019','Techcombank','user001','1'),(46,'vuduytua','6db5af7611d65e4ddefcdceb9b3e5d8f','Vũ Duy Tựa','21/06/2001','Nam','Vĩnh An','Vĩnh Bảo','Hải Phòng','Vũ Duy Tựa','109874312944','Vietinbank','user001','1'),(47,'NGUYENTHAM','81dc9bdb52d04dc20036dbd8313ed055','NGUYEN THI THAM','181295','Nữ','hòa bình','thủy nguyên','hải phòng','nguyen thi tham','19030926105024','techcombank','user002','1'),(48,'builinh','81dc9bdb52d04dc20036dbd8313ed055','Bùi Thị Linh','28 11 2001','Nữ','Tân Liên','Vĩnh Bảo','Hải Phòng','bui thị bích luyên','19036569355015','teckcombank','user004','1'),(49,'duclong','12e46db9742dcd33ef64d7e5d155c4d8','vuduclong','02/12/1991','Nam','tân liên','vĩnh bảo','hải phòng','vũ văn lăng','700009362992','shinhan','user001','1'),(50,'VanAnh','789477e754089981270bfee3c71aa943','Nguyễn Thị Vân Anh','16/5/2003','Nữ','Việt Tiến','VĨnh BẢo','HẢi Phòng','NGUYEN THI VAN ANH','109873750366','vietinbank','user003','1');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-08 14:38:44
