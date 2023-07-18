-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 18, 2023 at 12:19 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_du_lich`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(200) CHARACTER SET utf8 NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 NOT NULL,
  `phone` int(12) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `name`, `email`, `phone`) VALUES
('admin', '$2a$12$ncn.2UYxwN4kXBZl84LZR.JsoKqI2XDhxwVO.HkEHt89jsJ6waiHm', 'Nguyễn Trọng Hiếu', 'nguyentronghieu@gmail.com', 931487873),
('admin2', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyen B', 'b@gmail.com', 123456789),
('admin3', '123456', 'Nguyen A', 'a@gmail.com', 931487873),
('admin5', '111111', 'Nguyễn Trọng Hiếu', 'hieu745233@gmail.com', 931487873);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `phone` int(12) DEFAULT NULL,
  `img` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `date_of_birth` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_name`, `email`, `password`, `address`, `phone`, `img`, `gender`, `date_of_birth`, `id`, `permission`, `created_at`, `updated_at`) VALUES
('a@gmail.com', 'a@gmail.com', '$2a$12$lhmJ8I1MGcwT019NK3dnu.rF3qoBfRbpcR8zVf1ka05crWicBl2/G', '124 HCM', 123456789, '1.jpg', '', '', 1, 'user', '2023-06-27 02:16:07', '2023-06-27 02:19:24'),
('Nguyễn Trọng Hiếu', 'hieu111@gmail.com', '7815696ecbf1c96e6894b779456d330e', '123 quận 7 HCM', 11111, NULL, 'Nam', '29/04/2001', 2, 'user', '2023-06-27 02:16:07', '2023-06-27 02:19:24'),
('Nguyễn Trọng Hiếu', 'hieu1234@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', NULL, 931487873, NULL, NULL, NULL, 3, 'user', '2023-06-27 02:16:07', '2023-06-27 02:19:24'),
('Nguyễn Trọng Hiếu', 'hieu123@gmail.com', '$2y$10$YlBqFtBI4XQBSV9v4lCQyutY0Y7WpM0E3g0mrhYn32MXrgbDsgG/6', '123 quận 7 HCM', 909090909, NULL, NULL, NULL, 4, 'admin', '2023-06-27 02:16:07', '2023-07-13 13:43:40'),
('Nguyễn Trọng Hiếu', 'hieu22@gmail.com', '$2y$10$XnuhlaKU7Z1nLxw5RtoElOEGc9seEY7mlWqW4UAbuGW69uoni5JOm', NULL, 931487873, NULL, NULL, NULL, 5, 'user', '2023-06-27 02:16:07', '2023-06-27 02:19:24'),
('Nguyễn Trọng Hiếu', 'hieu745233@gmail.com', 'E150A1EC81E8E93E1EAE2C3A77E66EC6DBD6A3B460F89C1D08AECF422EE401A0', '123 quận 7 HCM', 909090909, '', 'Nam', '29/04/2001', 6, 'user', '2023-06-27 02:16:07', '2023-06-27 02:19:24'),
('Hiếu 3', 'hieu74523@gmail.com', '$2y$10$YlBqFtBI4XQBSV9v4lCQyutY0Y7WpM0E3g0mrhYn32MXrgbDsgG/6', 'asdassad', 931487873, NULL, 'nam', '18/04/2023', 7, 'user', '2023-06-27 02:16:07', '2023-07-12 01:12:31'),
('Quang Trường', 'quangtruong@gmail.com', '$2y$10$CXpr4jh12hCUnRCgqTK7KOjfNtbFrmcXot7ynxGkF451b2XMa8sMW', 'test', 222222, 'test', 'test', 'test', 8, 'user', '2023-06-27 02:16:07', '2023-06-27 02:19:24'),
('Nguyễn Trọng Hiếu', 'test@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, 931487873, NULL, NULL, NULL, 10, 'user', '2023-06-27 02:16:07', '2023-06-27 02:19:24'),
('Nguyễn Trọng Hiếu', 'tronghieu@gmail.com', '$2y$10$YlBqFtBI4XQBSV9v4lCQyutY0Y7WpM0E3g0mrhYn32MXrgbDsgG/6', NULL, 931487873, NULL, NULL, NULL, 11, 'user', '2023-06-27 02:16:07', '2023-06-27 02:19:24'),
('Trọng Hiếu', 'test123@gmail.com', '$2y$10$fo8srShLGBXOkK/biWKI0.yM8LLdJZL0EUs/MgCU4zyUox9y7fPlS', NULL, NULL, NULL, NULL, NULL, 23, 'user', '2023-06-27 02:16:07', '2023-06-27 02:19:24'),
('Lê Ngọc Huy 1', 'ngochuy@gmail.com', '$2y$10$nB2jp10J2f1f94IdcA/RpOYcQ.ogOmvaT8JYmn0xhUy4DNsu7lLA6', NULL, NULL, NULL, NULL, NULL, 24, 'user', '2023-06-27 02:16:07', '2023-06-27 02:19:24'),
('test', 'test@gmail.com', '$2y$10$Qi4KANYjn54LLydGZW34pumgBAAhrAXEBRfREROEYl1XKLgGLVLai', 'azxca', 90909, 'BannerTourTuDo-01.jpg', 'nam', '25/05/2023', 27, 'Admin', '2023-06-27 02:16:07', '2023-06-27 02:19:24'),
('faceio', 'faceio@gmai.com', '$2y$10$Kqjil2as7NXEvG0BKzdVZ.aXiYW74kD3U4YkXzw/mgx0kJXZet6sS', NULL, NULL, NULL, NULL, NULL, 32, 'user', '2023-06-27 02:16:07', '2023-06-27 02:19:24'),
('102 Creamm', 'hiiamhuylie@gmail.com', NULL, 'HCM', 936097701, NULL, 'Nam', '29/06/2023', 35, 'user', '2023-06-29 05:37:54', '2023-07-11 21:55:51'),
('Hiếu Nguyễn', 'hieuhuy2904@gmail.com', '$2y$10$bs01uHV3s8ZFW0Sz0XSPNu7RyyGLftcoa8JT5bq28dgxK9dPjXBq6', NULL, NULL, NULL, NULL, NULL, 37, 'user', '2023-07-04 21:31:44', '2023-07-04 21:31:44'),
('Bảo Ngân Đặng Thị', 'baobaonganngan2903@gmail.com', '$2y$10$DwWAGt7Rsv1kvdFuy73dYeyiyRwZXZCpsOzYtjQHakx.WPvQt7M4K', NULL, NULL, NULL, NULL, NULL, 38, 'user', '2023-07-06 07:39:14', '2023-07-06 07:39:14'),
('Huy Ngọc', 'huyln.hbt.9a3@gmail.com', NULL, 'Nhà Bè', 936097701, NULL, 'Nam', '24/04/2001', 39, 'user', '2023-07-11 18:46:15', '2023-07-11 21:58:13'),
('tele', 'tele@gmail.com', '$2y$10$Yb9gNS/5vTNtb3i.t5ciKuRawg.frSgccd/Frdo7hOn4Cc6FAErgq', NULL, NULL, NULL, NULL, NULL, 40, 'user', '2023-07-14 05:10:11', '2023-07-14 05:10:11'),
('tele1', 'tele1@gmail.com', '$2y$10$KuBwO55/E0XCTV9tCcZClemvPX/ptioq42hITdjHDsRPEOKZpEvkm', NULL, NULL, NULL, NULL, NULL, 41, 'user', '2023-07-14 21:36:31', '2023-07-14 21:36:31'),
('Trọng Hiếu', 'thuonglong37@yahoo.com.vn', '$2y$10$v2RHzWbZlugVD6ugJMoXZ.1Q.PTtGAGYojY1S9rylyMORsSCqs.si', NULL, NULL, NULL, NULL, NULL, 42, 'user', '2023-07-14 23:01:45', '2023-07-14 23:01:45');

-- --------------------------------------------------------

--
-- Table structure for table `date_go`
--

DROP TABLE IF EXISTS `date_go`;
CREATE TABLE IF NOT EXISTS `date_go` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tour` varchar(50) CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `month` int(10) DEFAULT NULL,
  `id_guide` int(11) NOT NULL,
  `seats` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk-tour-date_go` (`id_tour`),
  KEY `fk-guide-date_go` (`id_guide`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `date_go`
--

INSERT INTO `date_go` (`id`, `id_tour`, `date`, `month`, `id_guide`, `seats`) VALUES
(1, 'NDSGN1352-010-060722VU-V', '2023-06-07', 6, 1, 1),
(2, 'NDSGN1352-010-060722VU-V', '2023-06-09', 6, 1, 0),
(3, 'NDSGN1352-010-060722VU-V', '2023-06-12', 6, 1, 4),
(4, 'NDSGN1352-010-060722VU-V', '2023-06-14', 6, 1, 18),
(5, 'NDSGN1352-010-060722VU-V', '2023-06-16', 6, 1, 20),
(6, 'NDSGN1352-010-060722VU-V', '2023-07-01', 7, 1, 20),
(7, 'NDSGN1352-010-060722VU-V', '2023-07-04', 7, 1, 20),
(8, 'NDSGN1352-010-060722VU-V', '2023-07-07', 7, 1, 20),
(9, 'NDSGN1352-011-060722VU-V', '2023-06-14', 6, 1, 16),
(10, 'NDSGN1352-011-060722VU-V', '2023-06-17', 6, 1, 18),
(11, 'NNSGN607-001-300423NH-D', '2023-06-30', 6, 1, 20),
(13, 'NDSGN1352-010-060722VU-V', '2023-07-13', 7, 1, 20),
(14, 'NDSGN834-012-231223XE-V-F', '2023-07-17', 7, 1, 8),
(15, 'NDSGN303-008-241122VU-D-F-1', '2023-07-17', 7, 1, 18),
(16, 'NDSGN1352-010-060722VU-V', '2023-07-22', 7, 1, 0),
(17, 'NDSGN834-012-231223XE-V-F', '2023-07-22', 7, 1, 20),
(18, 'NDSGN869-021-191123XE-V-F', '2023-07-23', 7, 1, 14);

--
-- Triggers `date_go`
--
DROP TRIGGER IF EXISTS `update_month_trigger`;
DELIMITER $$
CREATE TRIGGER `update_month_trigger` BEFORE INSERT ON `date_go` FOR EACH ROW BEGIN
  SET NEW.month = MONTH(NEW.date);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `detail_order_tour`
--

DROP TABLE IF EXISTS `detail_order_tour`;
CREATE TABLE IF NOT EXISTS `detail_order_tour` (
  `id_tour` varchar(50) CHARACTER SET utf8 NOT NULL,
  `id_order` int(50) NOT NULL,
  `name_customer` varchar(50) CHARACTER SET utf8 NOT NULL,
  `sex` varchar(50) CHARACTER SET utf8 NOT NULL,
  `CMND` int(50) DEFAULT NULL,
  `birth` date NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_order` (`id_order`),
  KEY `id_tour` (`id_tour`,`id_order`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=431 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_order_tour`
--

INSERT INTO `detail_order_tour` (`id_tour`, `id_order`, `name_customer`, `sex`, `CMND`, `birth`, `id`, `age`) VALUES
('NDSGN1352-010-060722VU-V', 1686569111, 'Lê Ngọc Huy', 'Nam', 1686569111, '2001-01-02', 315, 'Người lớn'),
('NDSGN1352-010-060722VU-V', 1686569111, 'Trần Quang Trường', 'Nữ', 1686569111, '2001-01-16', 316, 'Người lớn'),
('NDSGN1352-010-060722VU-V', 1686655691, 'Nguyễn Trọng Hiếu', 'a', 1686655691, '2023-06-14', 324, 'Người lớn'),
('NDSGN1352-010-060722VU-V', 1686655691, 'a', 'a', 1686655691, '2023-06-14', 325, 'Trẻ em'),
('NDSGN1352-010-060722VU-V', 1686921694, 'b', 'b', 1686921694, '2023-06-17', 326, 'Người lớn'),
('NDSGN1352-010-060722VU-V', 1686921694, 'c', 'c', 1686921694, '2023-06-17', 327, 'Trẻ em'),
('NDSGN1352-011-060722VU-V', 1686926751, 'Trường 1', 'Nữ', 1686926751, '2023-06-17', 328, 'Người lớn'),
('NDSGN1352-011-060722VU-V', 1686926751, 'Trường 2', 'Nữ', 1686926751, '2023-06-17', 329, 'Trẻ em'),
('NDSGN1352-010-060722VU-V', 1687004524, 'Nguyễn Văn B', 'Nam', 1687004524, '2023-06-16', 330, 'Người lớn'),
('NDSGN1352-010-060722VU-V', 1687004524, 'Nguyễn Văn C', 'Nữ', 1687004524, '2023-06-18', 331, 'Trẻ em'),
('NDSGN1352-010-060722VU-V', 1687004524, 'Nguyện Văn D', 'Nam', 1687004524, '2023-06-18', 332, 'Trẻ em'),
('NDSGN1352-010-060722VU-V', 1687012846, 'Nguyễn B', 'Nam', 1687012846, '2023-06-16', 333, 'Người lớn'),
('NDSGN1352-010-060722VU-V', 1687012846, 'Nguyễn C', 'Nữ', 1687012846, '2023-06-16', 334, 'Trẻ em'),
('NNSGN607-001-300423NH-D', 1687410871, 'a', 'a', 1687410871, '2023-06-23', 335, 'Người lớn'),
('NNSGN607-001-300423NH-D', 1687410871, 'c', 'z', 1687410871, '2023-06-21', 336, 'Trẻ em'),
('NDSGN1352-010-060722VU-V', 1687753079, 'a', 'a', 1687753079, '2023-06-27', 339, 'Người lớn'),
('NDSGN1352-010-060722VU-V', 1687753079, 'z', 'z', 1687753079, '2023-06-27', 340, 'Trẻ em'),
('NDSGN1352-010-060722VU-V', 1687929416, 'asd', 'asd', 1687929416, '2023-06-22', 341, 'Người lớn'),
('NDSGN1352-010-060722VU-V', 1687929416, 'sadas', 'sadasd', 1687929416, '2023-06-22', 342, 'Trẻ em'),
('NDSGN1352-010-060722VU-V', 1687950433, 'hosting1', 'a', 1687950433, '1999-02-02', 343, 'Người lớn'),
('NDSGN1352-010-060722VU-V', 1687950433, 'hosting2', 'z', 1687950433, '2000-04-06', 344, 'Trẻ em'),
('NDSGN1352-010-060722VU-V', 1688045208, 'zz', 'nam', 1688045208, '2023-06-29', 345, 'Người lớn'),
('NDSGN1352-010-060722VU-V', 1688045208, 'ccc', 'nu', 1688045208, '2023-06-29', 346, 'Trẻ em'),
('NDSGN1352-010-060722VU-V', 1688045308, 'z', 'nam', 1688045308, '2023-06-22', 347, 'Người lớn'),
('NDSGN1352-010-060722VU-V', 1688045308, 'vv', 'nu', 1688045308, '2023-06-29', 348, 'Trẻ em'),
('NDSGN1352-010-060722VU-V', 1688047654, 'huy', 'nam', 1688047654, '2023-06-22', 349, 'Người lớn'),
('NDSGN1352-010-060722VU-V', 1688047654, 'hieu', 'nam', 1688047654, '2023-06-29', 350, 'Trẻ em'),
('NDSGN1352-010-060722VU-V', 1688047961, 'hiu', 'nam', 1688047961, '2023-06-29', 351, 'Người lớn'),
('NDSGN1352-010-060722VU-V', 1688047961, 'huy', 'nam', 1688047961, '2023-06-29', 352, 'Trẻ em'),
('NDSGN1352-010-060722VU-V', 1688525387, 'a', 'v', 1688525387, '2023-07-06', 353, 'Người lớn'),
('NDSGN1352-010-060722VU-V', 1688525387, 'z', 'c', 1688525387, '2023-07-06', 354, 'Trẻ em'),
('NDSGN1352-010-060722VU-V', 1688889050, 'admin 1', 'Nam', 1688889050, '2023-07-09', 367, 'Người lớn'),
('NDSGN1352-010-060722VU-V', 1688889050, 'admin 2', 'Nữ', 1688889050, '2023-07-10', 368, 'Trẻ em'),
('NDSGN1352-010-060722VU-V', 1689124434, 'Hiếu 1', 'Nam', 1689124434, '2023-07-13', 369, 'Người lớn'),
('NDSGN1352-010-060722VU-V', 1689124434, 'Hiếu 2', 'Nữ', 1689124434, '2023-07-13', 370, 'Trẻ em'),
('NDSGN1352-010-060722VU-V', 1689127519, 'Huy Lê', 'Nam', 1689127519, '2023-07-12', 371, 'Người lớn'),
('NDSGN1352-010-060722VU-V', 1689127519, 'Hiếu Trọng', 'Nam', 1689127519, '2023-07-12', 372, 'Trẻ em'),
('NDSGN1352-010-060722VU-V', 1689170785, 'Hiếu 1', 'Nam', 1689170788, '2023-07-13', 373, 'Người lớn'),
('NDSGN1352-010-060722VU-V', 1689170785, 'Hiếu 2', 'Nữ', 1689170788, '2023-07-13', 374, 'Trẻ em'),
('NDSGN1352-010-060722VU-V', 1689209298, 'Hiếu 1', 'Nam', 1689209301, '2023-07-13', 375, 'Người lớn'),
('NDSGN1352-010-060722VU-V', 1689209298, 'Hiếu 2', 'Nữ', 1689209301, '2023-07-13', 376, 'Trẻ em'),
('NDSGN1352-011-060722VU-V', 1689218730, 'Nguyễn Văn A', 'Nam', 1689218732, '2023-07-14', 377, 'Người lớn'),
('NDSGN1352-011-060722VU-V', 1689218730, 'Nguyễn Văn B', 'Nữ', 1689218732, '2023-07-14', 378, 'Trẻ em'),
('NDSGN1352-010-060722VU-V', 1689319512, 'Hiếu 1', 'Nam', 1689319515, '2023-07-14', 379, 'Người lớn'),
('NDSGN1352-010-060722VU-V', 1689319512, 'Hiếu 2', 'Nam', 1689319515, '2023-07-14', 380, 'Trẻ em'),
('NDSGN1352-010-060722VU-V', 1689331292, 'asd', 'Nam', 1689331294, '2023-07-15', 383, 'Người lớn'),
('NDSGN1352-010-060722VU-V', 1689331292, 'asd', 'Nữ', 1689331294, '2023-07-15', 384, 'Trẻ em'),
('NDSGN1352-011-060722VU-V', 1689333512, 'dasd', 'Nam', 123, '2023-07-14', 385, 'Người lớn'),
('NDSGN1352-011-060722VU-V', 1689333512, 'asd', 'Nữ', 111, '2023-07-17', 386, 'Trẻ em'),
('NDSGN1352-010-060722VU-V', 1689383571, 'Nguyễn Trọng Hiếu', 'Nam', 1689383578, '2023-07-11', 387, 'Người lớn'),
('NDSGN1352-010-060722VU-V', 1689383571, 'Lê Ngọc Huy', 'Nam', 1689383578, '2023-07-11', 388, 'Trẻ em'),
('NDSGN834-012-231223XE-V-F', 1689397510, 'tele2', 'Nam', 1689397517, '2023-07-15', 389, 'Người lớn'),
('NDSGN834-012-231223XE-V-F', 1689397510, 'tele3', 'Nữ', 1689397517, '2023-07-16', 390, 'Trẻ em'),
('NDSGN834-012-231223XE-V-F', 1689520303, 'z', 'Nam', 1689520306, '2001-01-01', 419, 'Người lớn'),
('NDSGN834-012-231223XE-V-F', 1689520303, 'a', 'Nam', 1689520306, '2023-07-17', 420, 'Trẻ em'),
('NDSGN869-021-191123XE-V-F', 1689556024, 'Nguyễn Trọng Hiếu', 'Nam', 1689556032, '2006-01-02', 421, 'Người lớn'),
('NDSGN869-021-191123XE-V-F', 1689556024, 'Ngoc Huy', 'Nam', 1689556032, '2023-07-18', 422, 'Trẻ em'),
('NDSGN869-021-191123XE-V-F', 1689571131, 'Nguyễn Trọng Hiếu', 'Nam', 1689571134, '1997-01-02', 423, 'Người lớn'),
('NDSGN869-021-191123XE-V-F', 1689571131, 'Ngọc Huy', 'Nam', 1689571134, '2023-07-18', 424, 'Trẻ em'),
('NDSGN1352-010-060722VU-V', 1689602511, 'c', 'Nam', 1689602520, '1997-01-02', 425, 'Người lớn'),
('NDSGN1352-010-060722VU-V', 1689602511, 'z', 'Nữ', 1689602520, '2023-07-04', 426, 'Trẻ em'),
('NDSGN1352-010-060722VU-V', 1689645906, 'Trường 1', 'Nam', 1689645912, '2001-01-02', 427, 'Người lớn'),
('NDSGN1352-010-060722VU-V', 1689645906, 'Trường 2', 'Nam', 1689645912, '2020-01-08', 428, 'Trẻ em'),
('NDSGN869-021-191123XE-V-F', 1689649135, 'Nguyễn Trọng Hiếu', 'Nam', 1689649139, '1993-01-01', 429, 'Người lớn'),
('NDSGN869-021-191123XE-V-F', 1689649135, 'z', 'Nam', 1689649139, '2023-07-19', 430, 'Trẻ em');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
CREATE TABLE IF NOT EXISTS `discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `percentage` int(5) NOT NULL,
  `expired_at` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`id`, `code`, `percentage`, `expired_at`) VALUES
(1, 'TRAVEL2H', 30, '2023-07-19');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guide`
--

DROP TABLE IF EXISTS `guide`;
CREATE TABLE IF NOT EXISTS `guide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `phone` int(12) NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 NOT NULL,
  `id_tour` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tour_guide` (`id_tour`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guide`
--

INSERT INTO `guide` (`id`, `name`, `phone`, `address`, `id_tour`) VALUES
(1, 'Lê Ngọc Huy', 936097701, 'Long Thới, Nhà Bè', 'NDSGN1352-010-060722VU-V');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
CREATE TABLE IF NOT EXISTS `hotel` (
  `id_hotel` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name_hotel` varchar(50) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8 NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id_hotel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id_hotel`, `name_hotel`, `phone`, `address`) VALUES
('1', 'Beachwalk Hotel', '0909090909', '123 quận 7 HCM');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_tour`
--

DROP TABLE IF EXISTS `hotel_tour`;
CREATE TABLE IF NOT EXISTS `hotel_tour` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `id_tour` varchar(50) CHARACTER SET utf8 NOT NULL,
  `id_hotel` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk-hotel_tour-tour` (`id_tour`),
  KEY `fk-hotel_tour-hotel` (`id_hotel`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_tour`
--

INSERT INTO `hotel_tour` (`id`, `id_tour`, `id_hotel`) VALUES
(1, 'NDSGN1352-010-060722VU-V', '1'),
(2, 'NDSGN1352-010-060722VU-V', '1');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` text CHARACTER SET utf8 NOT NULL,
  `id_tour` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk-tour-images` (`id_tour`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `url`, `id_tour`) VALUES
(1, 'https://saigontourist.net/uploads/destination/TrongNuoc/mienbac/sapa/Sapa_126530108.jpg', 'NDSGN1352-010-060722VU-V'),
(2, 'https://saigontourist.net/uploads/destination/TrongNuoc/mienbac/sapa/Catholic-church-Sapa_223497349.jpg', 'NDSGN1352-010-060722VU-V'),
(3, 'https://media.travel.com.vn/tour/tfd_221028040655_820259.jpg', 'NDSGN1352-010-060722VU-V'),
(4, 'https://media.travel.com.vn/tour/tfd_220614045823_403022.jpg', 'NDSGN1352-010-060722VU-V'),
(5, 'https://media.travel.com.vn/tour/tfd_221028035159_256239.jpg', 'NDSGN1352-010-060722VU-V'),
(6, 'https://media.travel.com.vn/destination/dc_200914_SAPA%20(10).jpg', 'NDSGN1352-010-060722VU-V'),
(7, 'https://media.travel.com.vn/destination/dc_211207_CAP%20TREO%20FANSIPAN.jpg', 'NDSGN1352-010-060722VU-V'),
(8, 'https://media.travel.com.vn/tour/tfd_221028034909_085252.jpg', 'NDSGN1352-010-060722VU-V'),
(9, 'https://saigontourist.net/uploads/destination/TrongNuoc/mienbac/sapa/Sapa-City_619336676.jpg', 'NDSGN1352-010-060722VU-V'),
(10, 'https://media.travel.com.vn/destination/dc_200914_SAPA%20(11).jpg', 'NDSGN1352-010-060722VU-V');

-- --------------------------------------------------------

--
-- Table structure for table `itinerary`
--

DROP TABLE IF EXISTS `itinerary`;
CREATE TABLE IF NOT EXISTS `itinerary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_date` int(11) NOT NULL,
  `day` varchar(10) CHARACTER SET utf8 NOT NULL,
  `destination` varchar(100) CHARACTER SET utf8 NOT NULL,
  `activities` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_itinerary_date` (`id_date`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itinerary`
--

INSERT INTO `itinerary` (`id`, `id_date`, `day`, `destination`, `activities`) VALUES
(1, 1, '1', 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `id_location` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name_location` varchar(50) CHARACTER SET utf8 NOT NULL,
  `domain` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id_location`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id_location`, `name_location`, `domain`) VALUES
('ag', 'Du lịch An Giang', 'tnb'),
('bd', 'Du lịch Bình Định', 'mt'),
('bduong', 'Du lịch Bình Dương', 'dnb'),
('bg', 'Du lịch Bắc Giang', 'mb'),
('bk', 'Du lịch Bắc Kạn', 'mb'),
('bl', 'Du lịch Bạc Liêu', 'tnb'),
('bn', 'Du lịch Bắc Ninh', 'mb'),
('bp', 'Du lịch Bình Phước', 'dnb'),
('bt', 'Du lịch Bình Thuận', 'mt '),
('bthuan', 'Du lịch Bình Thuận ', 'dnb'),
('btre', 'Du lịch Bến Tre', 'tnb'),
('cb', 'Du lịch Cao Bằng', 'mb'),
('cm', 'Du lịch Cà Mau', 'tnb'),
('ct', 'Du Lịch Cần Thơ', 'tnb'),
('db', 'Du lịch Điện Biên', 'mb'),
('dl', 'Du lịch Đắk Lắk', 'mt'),
('dn', 'Du lịch Đà Nẵng', 'mt'),
('dnai', 'Du lịch Đồng Nai', 'dnb'),
('dnong', 'Du lịch Đắk Nông', 'mt'),
('dt', 'Du lịch Đồng Tháp', 'tnb'),
('gl', 'Du lịch Gia Lai', 'mt'),
('h', 'Du lịch Huế', 'mt'),
('hb', 'Du lịch Hòa Bình', 'mb'),
('hcm', 'Du lịch Hồ Chí Minh', 'dnb'),
('hd', 'Du lịch Hải Dương', 'mb'),
('hg', 'Du lịch Hà Giang', 'mb'),
('hgiang', 'Du lịch Hậu Giang', 'tnb'),
('hn', 'Du lịch Hà Nội', 'mb'),
('hp', 'Du lịch Hải Phòng', 'mb'),
('ht', 'Du lịch Hà Tỉnh', 'mt'),
('hy', 'Du lịch Hưng Yên', 'mb'),
('kg', 'Du lịch Kiên Giang', 'tnb'),
('kh', 'Du lịch Khánh Hòa', 'mt'),
('kt', 'Du lịch Kon Tum', 'mt'),
('la', 'Du lịch Long An', 'tnb'),
('lc', 'Du lịch Lai Châu', 'mb'),
('lcai', 'Du lịch Lào Cai', 'mb'),
('ld', 'Du lịch Lâm Đồng', 'mt'),
('ls', 'Du lịch Lạng Sơn', 'mb'),
('na', 'Du lịch Nghệ An', 'mt'),
('nt', 'Du lịch Ninh Thuận', 'mt'),
('pt', 'Du lịch Phú Thọ', 'mb'),
('py', 'Du lịch Phú Yên', 'mt'),
('qb', 'Du lịch Quảng Bình', 'mt'),
('qn', 'Du lịch Quảng Nam', 'mt'),
('qngai', 'Du lịch Quãng Ngãi', 'mt'),
('qninh', 'Du lịch Quảng Ninh', 'mb'),
('qt', 'Du lịch Quảng Trị', 'mt'),
('sl', 'Du lịch Sơn La', 'mb'),
('strang', 'Du lịch Sóc Trăng', 'tnb'),
('tg', 'Du lịch Tiền Giang', 'tnb'),
('tgiang', 'Du lịch Tiền Giang', 'tnb'),
('th', 'Du lịch Thanh Hóa', 'mt'),
('tn', 'Du lịch Tây Ninh', 'dnb'),
('tnguyen', 'Du lịch Thái Nguyên', 'mb'),
('tq', 'Du lịch Tuyên Quang', 'mb'),
('tv', 'Du lịch Trà Vinh', 'tnb'),
('vl', 'Du lịch Vĩnh Long', 'tnb'),
('vlong', 'Du lịch Vĩnh Long', 'tnb'),
('vp', 'Du lịch Vĩnh Phúc', 'mb'),
('vt', 'Du lịch Bà Rịa - Vũng Tàu', 'tnb'),
('yb', 'Du lịch Yên Bái', 'mb');

-- --------------------------------------------------------

--
-- Table structure for table `location_tour`
--

DROP TABLE IF EXISTS `location_tour`;
CREATE TABLE IF NOT EXISTS `location_tour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_location` varchar(50) CHARACTER SET utf8 NOT NULL,
  `id_tour` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk-location_tour-tour` (`id_tour`),
  KEY `fk-location_tour-location` (`id_location`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_tour`
--

INSERT INTO `location_tour` (`id`, `id_location`, `id_tour`) VALUES
(2, 'hn', 'NDSGN1352-011-060722VU-V'),
(3, 'bg', 'NDSGN303-008-241122VU-D-F-1'),
(4, 'bg', 'NDSGN1352-010-060722VU-V');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id_news` varchar(50) CHARACTER SET utf8 NOT NULL,
  `title_news` varchar(500) CHARACTER SET utf8 NOT NULL,
  `date` varchar(50) CHARACTER SET utf8 NOT NULL,
  `content_news` text CHARACTER SET utf8,
  `id_admin` int(50) DEFAULT NULL,
  `img_news` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_news`),
  KEY `fk_admin_news` (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id_news`, `title_news`, `date`, `content_news`, `id_admin`, `img_news`) VALUES
('1', 'Ẩm thực đặc sắc Việt Nam – Top 10 món ngon bạn nên thử', '1/8/2022', 'Tin tức về du lịch', 1, 'https://media.vietravel.com/images/news/am-thuc-dac-sac-singapore-top-10-mon-ngon-ban-nen-thu.jpg'),
('10', 'test', '03/06/2023', '<p>Test</p>', NULL, NULL),
('102', '“Quẩy tới bến” tại Lễ hội điêu khắc tượng cát Fulong (Đài Loan)', '11/07/2023', '<h4>Bãi biển Fulong trải dài khoảng 3km và là một trong những bãi biển đẹp nhất của Đài Loan với điểm nổi bật là bãi cát thạch anh mịn màng đặc biệt hướng thẳng ra Thái Bình Dương. Bởi vậy đây chính là điểm thu hút rất đông du khách đến thư giãn, tắm biển, và thỏa sức tham gia các hoạt động giải trí hấp dẫn như du thuyền, lướt sóng, chèo kayak… Khi những tia nắng cuối ngày buông xuống, Fulong hiện lên với vẻ đẹp vô cùng lãng mạn, quyến rũ. Ngồi bên bờ biển nghe sóng vỗ rì rào, cảm nhận từng hơi thở của đại dương chắc hẳn du khách sẽ thấy tâm hồn mình lâng lâng niềm khó tả.&nbsp;<br><br>Đặc biệt, nơi đây còn tổ chức Lễ hội nghệ thuật điêu khắc cát quốc tế Fulong 2023 diễn ra từ ngày 9/6 – 22/10/2023 mang chủ đề “Kỷ niệm 100 năm thành lập Disney”. Có khoảng 15 nhà điêu khắc cát trong và ngoài nước sẽ cùng nhau tạo nên 70 tác phẩm điêu khắc bằng cát vàng, tái hiện những nhân vật hoạt hình kinh điển như Mickey, Minnie, Donald Duck, Buzz Lightyear; hay các bộ phim nổi tiếng như Nàng Bạch Tuyết, Frozen, Moana, Avatar, Avengers, Spider-Man, Star Wars... mà mọi người yêu thích. Các công trình được làm từ cát với muôn hình vạn trạng, đủ mọi kích thước. Du khách sẽ rất thích thú khi chiêm ngưỡng những tác phẩm điêu khắc cát độc đáo tại đây.&nbsp;<br><br>Bãi biển Fulong nổi tiếng với cát thạch anh mềm mại có độ dính kết, nên đã được Hiệp hội điêu khắc cát thế giới công nhận là nơi lý tưởng nhất để tạo ra các tác phẩm điêu khắc cát tại Đài Loan. Từ khi tổ chức lần đầu vào năm 2008, ngoài lựa chọn các chủ đề sáng tạo đa dạng, ban tổ chức còn mời các nghệ nhân điêu khắc tượng cát Đài Loan và thế giới cùng đến tham gia. Lễ hội năm nay hứa hẹn sẽ có rất nhiều điểm nổi bật và đặc sắc mang đến cho du khách những trải nghiệm khó quên.<br><br>Khám phá sắc màu quyến rũ của Đài Loan</h4><p>&nbsp;</p><p>Được mệnh danh là “hòn đảo xinh đẹp”, Đài Loan không chỉ có cảnh trí thơ mộng mà còn thu hút du khách bởi nhiều điểm du lịch nổi tiếng và thế giới ẩm thực vô cùng phong phú. Đến Đài Loan viếng thăm thành phố Đài Bắc bạn không thể không ghé thăm tòa nhà chọc trời Taipei 101 đứng kiêu hãnh trong ánh trời chiều; tìm hiểu sự nghiệp của Tưởng Giới Thạch tại Nhà tưởng niệm; chụp hình bên ngoài Phủ tổng thống; vãn cảnh chùa Long Sơn; thong thả dạo phố đi bộ Ximen – Tây Môn sầm uất; trải nghiệm ẩm thực tại khu Yong Kang Street…</p><p>Sang Đài Trung, du khách sẽ ngỡ ngàng bởi vẻ đẹp nên thơ, lãng mạn của hồ Nhật Nguyệt –từng là điểm nghỉ dưỡng được Tưởng Giới Thạch yêu thích nhất. Du khách cũng đừng quên ghé thăm đền Văn Võ – thờ các vị anh hùng lừng danh nhất trong lịch sử&nbsp;</p><h4><a href=\"https://travel.com.vn/chau-a/tour-trung-quoc.aspx?utm_source=internalbl&amp;utm_medium=click&amp;utm_campaign=ATLinks\">Trung Quốc</a></h4><p>&nbsp;cổ xưa như: Khổng Phu Tử, Quan Văn Trường, Trương Phi…</p><p>Đến Hoa Liên, du khách tham quan Công viên Taroko rộng lớn xung quanh bao bọc bởi dãy núi đá cao chọc trời và đá ở đây hầu hết là loại đá biến chất, đá cẩm thạch,… Tại đây, du khách sẽ được trải nghiệm đường đi bộ Shakadang Trail dành cho dân trekking có chiều dài khoảng 1,5km, phù hợp cho cả người lớn tuổi và trẻ em. Ngoài ra, du khách còn được tham quan cửa Yến Tử và ngôi đền Trường Xuân nằm cheo leo trên vách đá.</p><p>Khám phá Đài Loan mà du khách không thưởng thức ẩm thực là điều vô cùng thiếu sót. Các khu chợ đêm Đài Loan mà nổi tiếng nhất là chợ đêm Phụng Giáp, Sĩ Lâm… náo nhiệt với vô số món ăn đủ màu sắc, mùi vị. Trong đó, nổi tiếng và phổ biến nhất là món đậu hủ thúi, cơm gà, sủi cảo, mì tương thịt băm, bánh bao, bánh pía… ngon khó cưỡng.</p>', NULL, 'https://i.imgur.com/VhQIu5q.png'),
('11', 'test', '03/06/2023', '<p>Test</p>', NULL, NULL),
('13', 'MA00012', '16/06/2023', '<p>asdsadsadasasdasdas</p>', NULL, NULL),
('14', 'MA00012', '16/06/2023', '<p>asdsadsadasasdasdas</p>', NULL, NULL),
('2', 'Những lưu ý khi chuẩn bị đi du lịch Việt Nam dịp hè 2023', '1/8/2022', 'Tin tức về thời tiết', 2, 'https://media.vietravel.com/images/news/nhung-luu-y-khi-chuan-bi-di-du-lich-singapore-dip-he-2023.jpg'),
('3', 'Kinh nghiệm du lịch Việt Nam cho đại gia đình du hí mùa hè 2023', '03/06/2023', 'a', 3, 'https://media.vietravel.com/images/news/du-lich-thai-lan-cho-gia-dinh-00.png'),
('4', 'Hòn Khô - điểm đến không thể bỏ lỡ dịp hè này khi đến Quy Nhơn', '02/06/2023', 'a', 3, 'https://media.vietravel.com/images/news/du-lich-quy-nhon-00.png'),
('5', 'test', '03/06/2023', '<p>Test</p>', NULL, NULL),
('6', 'test', '03/06/2023', '<p>Test</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_tour`
--

DROP TABLE IF EXISTS `order_tour`;
CREATE TABLE IF NOT EXISTS `order_tour` (
  `id_order_tour` int(50) NOT NULL,
  `order_time` datetime NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `id_customer` int(11) NOT NULL,
  `id_date` int(11) NOT NULL,
  `total_price` int(50) NOT NULL,
  PRIMARY KEY (`id_order_tour`),
  KEY `fk_order_customer` (`id_customer`),
  KEY `fk-order_tour-date_go` (`id_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_tour`
--

INSERT INTO `order_tour` (`id_order_tour`, `order_time`, `status`, `email`, `name`, `phone`, `address`, `id_customer`, `id_date`, `total_price`) VALUES
(1686569111, '2023-06-12 11:25:11', 'Yes', 'hieu745233@gmail.com', 'Nguyễn Trọng Hiếu', '909090909', 'Quận 7 , HCM', 7, 1, 0),
(1686655355, '2023-06-13 11:22:35', 'Yes', 'hieu74523@gmai.com', 'Nguyễn Trọng Hiếu', '911111111', 'Quận 8 HCM', 7, 1, 0),
(1686655691, '2023-06-13 11:28:11', 'No', 'z', 'z', '931', 'a', 7, 1, 0),
(1686921694, '2023-06-16 13:21:34', 'No', 'a@gmail.com', 'a', '1', 'a', 5, 1, 0),
(1686926751, '2023-06-16 14:45:51', 'No', 'truong@gmail.com', 'Trần Quang Trường', '909090909', 'Quận 12 , HCM', 5, 9, 0),
(1687004524, '2023-06-17 12:22:04', 'No', 'nguyena@gmail.com', 'Nguyễn Văn A', '909090909', 'HCM', 5, 1, 0),
(1687012846, '2023-06-17 14:40:46', 'No', 'nguyena@gmail.com', 'Nguyễn Văn A', '9090909', 'HCM', 5, 1, 0),
(1687410871, '2023-06-22 05:14:31', 'No', 'huyngoc@gmail.com', 'Ngọc Huy Lê', '909090909', 'Nhà Bè', 5, 11, 0),
(1687753079, '2023-06-26 04:17:59', 'No', 'Nguyễn Trọng Hiếu', 'Nguyễn Trọng Hiếu', '909090', '1', 5, 1, 0),
(1687929416, '2023-06-28 05:16:56', 'No', 'hosting@gmail.com', 'hosting', '909090909', 'esda', 7, 1, 0),
(1687950433, '2023-06-28 11:07:13', 'No', 'testhosting@gmail.com', 'testhosting', '909', 'aaa', 7, 1, 0),
(1688045208, '2023-06-29 13:26:48', 'No', 'access@gmail.com', 'acces', '909', '121312', 7, 1, 0),
(1688045308, '2023-06-29 13:28:28', 'No', 'access2@gmail.com', 'access2', '123', 'asd', 7, 1, 0),
(1688047654, '2023-06-29 14:07:34', 'No', 'huy@gmail.com', 'huy', '936097701', 'HCM', 4, 1, 0),
(1688047961, '2023-06-29 14:12:41', 'No', 'huy@gmail.com', 'Huy', '936097701', 'HCM', 4, 1, 0),
(1688525387, '2023-07-05 02:49:47', 'No', 'hieu@gmail.com', 'Nguyễn Trọng Hiếu', '1', 'a', 7, 1, 0),
(1688889050, '2023-07-09 07:50:50', 'No', 'admin@gmail.com', 'admin', '909090909', 'Quận 8', 7, 3, 0),
(1689124434, '2023-07-12 01:13:54', 'No', 'hieu@gmail.com', 'Trọng Hiếu', '90909', 'Nhà bè', 7, 1, 0),
(1689127519, '2023-07-12 02:05:19', 'No', 'huyln.hbt.9a3@gmail.com', 'Lê Ngọc Huy', '093607701', 'HCM', 39, 3, 0),
(1689170702, '2023-07-12 14:05:02', 'No', 'hieuhuy2904@gmail.com', 'Nguyễn Trọng Hiếu', '090909', 'Nhà Bè', 7, 3, 0),
(1689170785, '2023-07-12 14:06:25', 'No', 'hieuhuy2904@gmail.com', 'Nguyễn Trọng Hiếu', '090909', 'Nhà Bè', 7, 3, 0),
(1689209298, '2023-07-13 00:48:18', 'No', 'hieuhuy2904@gmail.com', 'Trọng Hiếu', '0909090909', 'Nhà Bè', 7, 3, 0),
(1689218730, '2023-07-13 03:25:30', 'Yes', 'hieuhuy2904@gmail.com', 'Nguyễn Trọng Hiếu', '0931487873', 'Quận 8', 7, 9, 0),
(1689319512, '2023-07-14 07:25:12', 'No', 'hieuhuy2904@gmail.com', 'Nguyen Trong Hieu', '0931487873', 'Ho Chi Minh', 4, 3, 0),
(1689331292, '2023-07-14 10:41:32', 'No', 'huyln.hbt.9a3@gmail.com', 'price', '0909', 'Nhà Bè', 7, 3, 7400000),
(1689333512, '2023-07-14 11:18:32', 'No', 'hieu745233@gmail.com', 'Nguyễn Trọng Hiếu', '0909', 'Nhà Bè', 7, 9, 18000000),
(1689383524, '2023-07-15 01:12:04', 'No', 'Nguyễn Trọng Hiếu', 'hieu745233@gmail.com', '0909090', 'Nhà bè', 6, 4, 7400000),
(1689383571, '2023-07-15 01:12:51', 'No', 'hieuhuy2904@gmail.com', 'Nguyễn Trọng Hiếu', '0909090', 'Nhà bè', 6, 4, 7400000),
(1689397479, '2023-07-15 05:04:39', 'No', 'tele1', 'tele1@gmail.com', '09090', 'QUận 8', 41, 14, 3700000),
(1689397510, '2023-07-15 05:05:10', 'No', 'hieuhuy2904@gmail.com', 'Trọng Hiếu', '09090', 'QUận 8', 41, 14, 3700000),
(1689399247, '2023-07-15 05:34:07', 'No', 'hieu745233@gmail.com', 'Nguyen Trong Hieu', '0931487873', 'Ho Chi Minh', 4, 3, 7400000),
(1689401563, '2023-07-15 06:12:43', 'No', 'hieuhuy2904@gmail.com', 'Nguyễn Trọng Hiếu', '09090909', 'a', 7, 10, 18000000),
(1689402212, '2023-07-15 06:23:32', 'No', 'hieuhuy2904@gmail.com', 'Nguyễn Trọng Hiếu', '09090909', 'Nhà bè', 7, 14, 3700000),
(1689405166, '2023-07-15 07:12:46', 'No', 'hieuhuy2904@gmail.com', 'Nguyễn Trọng Hiếu', '09090909', 'Quận 8', 4, 15, 13000000),
(1689520303, '2023-07-16 15:11:43', 'No', 'hieu745233@gmail.com', 'Nguyễn Trọng Hiếu', '1', 'd', 6, 14, 3700000),
(1689556024, '2023-07-17 01:07:04', 'No', 'hieu745233@gmail.com', 'Nguyễn Trọng Hiếu', '090909', 'Quận 8', 4, 18, 500000),
(1689571131, '2023-07-17 05:18:51', 'No', 'hieu745233@gmail.com', 'Nguyễn Trọng Hiếu', '0931487873', 'Nhà Bè', 7, 18, 500000),
(1689602511, '2023-07-17 14:01:51', 'No', 'hieu745233@gmail.com', 'z', '0931487873', 'a', 7, 16, 7400000),
(1689645906, '2023-07-18 02:05:06', 'No', 'hieu745233@gmail.com', 'Nguyễn Trọng Hiếu', '0931487873', 'Nhà Bè', 7, 16, 7400000),
(1689649135, '2023-07-18 02:58:55', 'No', 'hieu745233@gmail.com', 'hiếu', '0587086988', 'Quận 12', 7, 18, 350000);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_customer` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `amount_paid` int(11) NOT NULL,
  `amount_unpaid` int(11) NOT NULL,
  `payment_methods` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_customer_payment` (`id_customer`),
  KEY `fk_order_payment` (`id_order`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `id_customer`, `id_order`, `amount_paid`, `amount_unpaid`, `payment_methods`) VALUES
(17, 6, 1689520303, 3700000, 0, 'MOMO'),
(18, 4, 1689556024, 250000, 250000, 'MOMO'),
(19, 7, 1689571131, 250000, 250000, 'MOMO'),
(20, 7, 1689645906, 3700000, 3700000, 'MOMO');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(10, 'App\\Models\\Api\\User', 6, 'auth_token', '20a15e0598e23a421bfdd38f07b71f59b0c721c1132dd774e87a63e5df81776b', '[\"*\"]', NULL, '2023-04-14 06:39:57', '2023-04-14 06:39:57'),
(9, 'App\\Models\\Api\\User', 6, 'auth_token', '3590cea046bbe08bf96eb1298ad5519a8652f02a41109a3b7dcfd70ed9bef490', '[\"*\"]', NULL, '2023-04-14 06:35:02', '2023-04-14 06:35:02'),
(8, 'App\\Models\\Api\\User', 6, 'auth_token', '48bd21ddde1ef4b394f2c360045112f66fefff2138ff4a1fcaddb37946550236', '[\"*\"]', NULL, '2023-04-14 06:34:25', '2023-04-14 06:34:25'),
(7, 'App\\Models\\Api\\User', 6, 'auth_token', 'a674151223c32073b987edf103d9d131bf5dc327d6a0cb57fa65d508753de427', '[\"*\"]', NULL, '2023-04-14 06:29:19', '2023-04-14 06:29:19'),
(6, 'App\\Models\\Api\\User', 6, 'auth_token', 'ac8ceb37cdc152e868d4e10023a8da057c210fa8b690d5c1b61ef4f01f669ed1', '[\"*\"]', NULL, '2023-04-14 06:27:22', '2023-04-14 06:27:22'),
(11, 'App\\Models\\Api\\User', 6, 'auth_token', 'ee0121161db797b1f113876136642bc7ebbc8efef525679a4e16776fb1c4094f', '[\"*\"]', NULL, '2023-04-14 06:41:06', '2023-04-14 06:41:06'),
(12, 'App\\Models\\Api\\User', 6, 'auth_token', 'c9d8ca42a43bb1ce8cd0a5414c47b8184bb1b25ef3fa7047cbe612dfcd746777', '[\"*\"]', NULL, '2023-04-14 06:45:30', '2023-04-14 06:45:30'),
(13, 'App\\Models\\Api\\User', 6, 'auth_token', '55e1b9c3ff4ae1b3c9da1d888ecf6dd22f0151e9a80b7ff06390d9b958866352', '[\"*\"]', NULL, '2023-04-14 06:46:37', '2023-04-14 06:46:37'),
(14, 'App\\Models\\Api\\User', 6, 'auth_token', 'e4bf2f82e88bb89dcfd0b04ed8340311d59eaf64cf63ab1bf2ff84127129e3ae', '[\"*\"]', NULL, '2023-04-17 04:37:29', '2023-04-17 04:37:29'),
(15, 'App\\Models\\Api\\User', 1, 'auth_token', 'ca5acc2d981797886bc59628decb34c23c4498a7a992716c30ba2ddda39543cd', '[\"*\"]', NULL, '2023-04-17 04:48:07', '2023-04-17 04:48:07'),
(16, 'App\\Models\\Api\\User', 7, 'auth_token', 'f59d1e0c497e6417e62532f348f37c41e25914eedd1ecb7817704feb8798b0cf', '[\"*\"]', NULL, '2023-04-17 04:48:22', '2023-04-17 04:48:22'),
(17, 'App\\Models\\Api\\User', 7, 'auth_token', '92b58d109ea873d11f4d81e6d6a713847205bc193f43add629a73228290d9f00', '[\"*\"]', NULL, '2023-04-17 04:48:53', '2023-04-17 04:48:53'),
(18, 'App\\Models\\Api\\User', 7, 'auth_token', '3d495b66cd207e922491776466e5e693fe72fe28e379b3023e9d8360476bb66c', '[\"*\"]', NULL, '2023-04-17 04:52:32', '2023-04-17 04:52:32'),
(19, 'App\\Models\\Api\\User', 7, 'auth_token', 'c5ef5c12f579e9d43e2741a988ed85d3b6006b5ba3037983cddf4f0cf8b63e5f', '[\"*\"]', NULL, '2023-04-17 06:01:39', '2023-04-17 06:01:39'),
(20, 'App\\Models\\Api\\User', 7, 'auth_token', '9a19a74bce2d599acbcf1211b4446d2fb2ae0081b51d9824ea7a621514a25526', '[\"*\"]', NULL, '2023-04-17 06:24:03', '2023-04-17 06:24:03'),
(21, 'App\\Models\\Api\\User', 7, 'auth_token', 'def7a0223e851b18b48ff215fbc353a81e05f55fb6b65df3ac56dd4c686ad9d2', '[\"*\"]', NULL, '2023-04-17 07:00:22', '2023-04-17 07:00:22'),
(22, 'App\\Models\\Api\\User', 7, 'auth_token', '6e756ac1c81a09c20b7deb0feceef54e3ff8b90b597622f33bee772a541b7927', '[\"*\"]', NULL, '2023-04-17 07:40:50', '2023-04-17 07:40:50'),
(23, 'App\\Models\\Api\\User', 7, 'auth_token', '029ff3968471123d23dab05e7edcb393922577e797050befc60e894413ef62a0', '[\"*\"]', NULL, '2023-04-17 07:54:20', '2023-04-17 07:54:20'),
(24, 'App\\Models\\Api\\User', 7, 'auth_token', '15a3b32a003099bb4f99fb20fd239dd9f54445fdecd06956afd432880a82c167', '[\"*\"]', NULL, '2023-04-17 08:06:40', '2023-04-17 08:06:40'),
(25, 'App\\Models\\Api\\User', 7, 'auth_token', 'e7d1fdb6fe8d4d7b6c0a16351e37adffd22bd3d2e9c0a06615abb67ca15b471b', '[\"*\"]', NULL, '2023-04-17 08:07:43', '2023-04-17 08:07:43'),
(26, 'App\\Models\\Api\\User', 7, 'auth_token', '703dfc6402677d1b3bc74c9cf68875a91a3b38568da108a8ee8da8c03c6822d8', '[\"*\"]', NULL, '2023-04-17 08:09:29', '2023-04-17 08:09:29'),
(27, 'App\\Models\\Api\\User', 7, 'auth_token', '57544c1674dffba4a34d7398ac1fe41f535aa53c89f7085f609e729e8c877274', '[\"*\"]', NULL, '2023-04-17 08:11:02', '2023-04-17 08:11:02'),
(28, 'App\\Models\\Api\\User', 7, 'auth_token', 'a8cb41b7c223e020c6d75a082a72581a4fc1948057e564074e1266705fe66f2f', '[\"*\"]', NULL, '2023-04-17 08:12:03', '2023-04-17 08:12:03'),
(29, 'App\\Models\\Api\\User', 7, 'auth_token', '9f4d0753dbcd85a6a5ae03a76c899860039ba1a9f74d7941fef9e5586524f519', '[\"*\"]', NULL, '2023-04-17 08:12:56', '2023-04-17 08:12:56'),
(30, 'App\\Models\\Api\\User', 7, 'auth_token', '595fe40460ebba278eff5c3338c9824e7863ff634ff8a67db48ff78b2c0969ed', '[\"*\"]', NULL, '2023-04-17 08:13:25', '2023-04-17 08:13:25'),
(31, 'App\\Models\\Api\\User', 7, 'auth_token', 'c7a855b0892b13e8b7fd054af6294937a38a5e6cc3b7e0e5d49fc195bf607e75', '[\"*\"]', NULL, '2023-04-17 08:15:01', '2023-04-17 08:15:01'),
(32, 'App\\Models\\Api\\User', 7, 'auth_token', '4ac5b6e417dfc77c2ce3219ac55b8dcea9054866136db4c2977750bbf27650d2', '[\"*\"]', NULL, '2023-04-17 08:16:43', '2023-04-17 08:16:43'),
(33, 'App\\Models\\Api\\User', 7, 'auth_token', '5713e5b3c2df67a7c31fac52c49ab8ad5b28cbd8f858bf6fa6a22449b8c14d97', '[\"*\"]', NULL, '2023-04-17 08:20:23', '2023-04-17 08:20:23'),
(34, 'App\\Models\\Api\\User', 7, 'auth_token', '6aa9e15ba38a43c58c47484072fdff0cede8e4774ba93a3a1d52ce6f54797692', '[\"*\"]', NULL, '2023-04-17 08:22:31', '2023-04-17 08:22:31'),
(35, 'App\\Models\\Api\\User', 7, 'auth_token', '6902df7f179f661532d6a66ba71838132fc6e402cc6d026e1a809d61bc4b2600', '[\"*\"]', NULL, '2023-04-17 08:25:04', '2023-04-17 08:25:04'),
(36, 'App\\Models\\Api\\User', 4, 'auth_token', 'ac7e3ebc83b02f8cce82e14a770dd5b2b6c1f07943e151fef12b9add74d0eced', '[\"*\"]', NULL, '2023-04-17 08:25:17', '2023-04-17 08:25:17'),
(37, 'App\\Models\\Api\\User', 4, 'auth_token', '21a9a0080267d014e95abfb0b5f4a47e8c900280788e4ae78713872e4136ddd1', '[\"*\"]', NULL, '2023-04-17 08:25:53', '2023-04-17 08:25:53'),
(38, 'App\\Models\\Api\\User', 7, 'auth_token', '92619becfdd3eb6249bf79e8ebdd71a80ee58a8e29d03e098ed82994fab62308', '[\"*\"]', NULL, '2023-05-11 04:55:41', '2023-05-11 04:55:41'),
(39, 'App\\Models\\Api\\User', 19, 'auth_token', '10063bf8e84a5caae78de66cbe018ef4e1385c796b6066134b6c8a2b07090f5e', '[\"*\"]', NULL, '2023-05-11 06:18:58', '2023-05-11 06:18:58'),
(40, 'App\\Models\\Api\\User', 22, 'auth_token', '946b1fc3dd1ac46611fe75e85d64f61c778996844bf1eccdaf6b740bd89a2030', '[\"*\"]', NULL, '2023-05-11 06:41:02', '2023-05-11 06:41:02'),
(41, 'App\\Models\\Api\\User', 7, 'auth_token', '28b819b856fb1d8ec70966e6eebeabbae3f0a639ebda9ffd40e22983fa5d6e9c', '[\"*\"]', NULL, '2023-05-11 06:42:21', '2023-05-11 06:42:21'),
(42, 'App\\Models\\Api\\User', 7, 'auth_token', '7b0fe333f4ef95722ffc5063642abf2980cc075aacae51daf352c2a761e9cf8f', '[\"*\"]', NULL, '2023-05-11 06:43:26', '2023-05-11 06:43:26'),
(43, 'App\\Models\\Api\\User', 7, 'auth_token', '2bbf30691c08ca52eba89a0835a09d55ed001038b9ffee34024d28d7caedc0ae', '[\"*\"]', NULL, '2023-05-11 06:46:00', '2023-05-11 06:46:00'),
(44, 'App\\Models\\Api\\User', 7, 'auth_token', 'c35111ce02ab83d6a4f1619fe73c46ba3a11ee1efe5d176e30658883633fbf7a', '[\"*\"]', NULL, '2023-05-11 06:46:50', '2023-05-11 06:46:50'),
(45, 'App\\Models\\Api\\User', 7, 'auth_token', '4b2e8fefe9c70f2ff2a120c3d686f26aa75d523d5180bbb39c5981d4f0907ab9', '[\"*\"]', NULL, '2023-05-11 06:50:44', '2023-05-11 06:50:44'),
(46, 'App\\Models\\Api\\User', 7, 'auth_token', '1d730a14d86b20450718636fde8f4126d1dcfaef29907f7d45912075f5662e19', '[\"*\"]', NULL, '2023-05-11 06:52:20', '2023-05-11 06:52:20'),
(47, 'App\\Models\\Api\\User', 7, 'auth_token', 'fbc4fecf0fa9a3494e25344c82def0653d089d44f7569f9a3b8556616fb815a5', '[\"*\"]', NULL, '2023-05-11 06:54:00', '2023-05-11 06:54:00'),
(48, 'App\\Models\\Api\\User', 7, 'auth_token', '14f7c915749d32f59b53cf75e8793ffeb583b6efe646b276d5b52de2e0183fbc', '[\"*\"]', NULL, '2023-05-11 06:56:05', '2023-05-11 06:56:05'),
(49, 'App\\Models\\Api\\User', 7, 'auth_token', '66fcbff26ded3748735cc6c545501bb683c393b54b4da23209070645d48b740c', '[\"*\"]', NULL, '2023-05-11 06:56:57', '2023-05-11 06:56:57'),
(50, 'App\\Models\\Api\\User', 7, 'auth_token', '66f9b7495ea18c99e8fe85c511014f5ff8eb6b1e20e5eb3355840d37bc56de64', '[\"*\"]', NULL, '2023-05-11 06:58:01', '2023-05-11 06:58:01'),
(51, 'App\\Models\\Api\\User', 7, 'auth_token', '7afed30cd68236fa21209e1bf1d68a0228b07455335f6e6a797001b28ea60a68', '[\"*\"]', NULL, '2023-05-11 06:58:27', '2023-05-11 06:58:27'),
(52, 'App\\Models\\Api\\User', 23, 'auth_token', 'fdb59e8e399ab574f57256b8c6383c8e2c7833cd08d1e7c72e88da7db4a851b1', '[\"*\"]', NULL, '2023-05-11 07:04:17', '2023-05-11 07:04:17'),
(53, 'App\\Models\\Api\\User', 7, 'auth_token', 'd614b085046fae9162020596e4ca358a7f080f543b820bafb02f569c0e28f99c', '[\"*\"]', NULL, '2023-05-12 06:54:30', '2023-05-12 06:54:30'),
(54, 'App\\Models\\Api\\User', 7, 'auth_token', '2cdab7073b7e8035748d286d88c46a897bf16c9f2cd8bbf1c8f9e4b1d5d51ebc', '[\"*\"]', NULL, '2023-05-12 06:54:43', '2023-05-12 06:54:43'),
(55, 'App\\Models\\Api\\User', 24, 'auth_token', '2ceccab4f52fabb03f3039ce409a082ae6f44f3d040125ae3965bffcfa18fc9f', '[\"*\"]', NULL, '2023-05-12 06:55:33', '2023-05-12 06:55:33'),
(56, 'App\\Models\\Api\\User', 4, 'auth_token', 'bb580db84a3bca3f8359155f11cc7225f66dd2a3a428642bf3b8be4f35cc08ef', '[\"*\"]', NULL, '2023-05-13 04:22:17', '2023-05-13 04:22:17'),
(57, 'App\\Models\\Api\\User', 7, 'auth_token', '041d6772793ffc96a33f3aad77fef6db0cd55fc7e3225882f20001329ae873ec', '[\"*\"]', NULL, '2023-05-13 04:49:46', '2023-05-13 04:49:46'),
(58, 'App\\Models\\Api\\User', 7, 'auth_token', '605c60460a74303f96d409b974b470d6c12572b7e5253a23df28a89f54ddfe71', '[\"*\"]', NULL, '2023-05-15 18:29:40', '2023-05-15 18:29:40'),
(59, 'App\\Models\\Api\\User', 25, 'auth_token', 'ff7a320750fbc98bb2a06de8cd71903f7678c39f54669ccc6ea1e84009ff804d', '[\"*\"]', NULL, '2023-05-15 18:30:33', '2023-05-15 18:30:33'),
(60, 'App\\Models\\Api\\User', 4, 'auth_token', 'fb2fc6eb6f70f16b0fcbdb343b220c508dae489cdc2692a1b5292a620294c01d', '[\"*\"]', NULL, '2023-05-24 05:58:12', '2023-05-24 05:58:12'),
(61, 'App\\Models\\Api\\User', 4, 'auth_token', '37780e99e8a8d04802899426cef7c86145ca7356b2d017577aaf924587b15ac9', '[\"*\"]', NULL, '2023-05-24 05:59:57', '2023-05-24 05:59:57'),
(62, 'App\\Models\\Api\\User', 4, 'auth_token', '337312e5b219b95524f947573d962446a8df73c36e175f675fbd1c063b58f4de', '[\"*\"]', NULL, '2023-05-24 06:02:33', '2023-05-24 06:02:33'),
(63, 'App\\Models\\Api\\User', 4, 'auth_token', 'f7db491c8346341e09e7a7e9f5d8abc374e2646ae0010337ce95d2312853a90c', '[\"*\"]', NULL, '2023-05-24 06:03:16', '2023-05-24 06:03:16'),
(64, 'App\\Models\\Api\\User', 7, 'auth_token', '72174597a8cf68b355abe55e81b4eee94f79df2767f1fbb7184b61385133cca8', '[\"*\"]', NULL, '2023-05-24 06:05:01', '2023-05-24 06:05:01'),
(65, 'App\\Models\\Api\\User', 4, 'auth_token', 'fcbb4f1c2314eb7ee8b25e90048e58fb23467bb3411279aec9ef4777f83e9e23', '[\"*\"]', NULL, '2023-05-24 06:05:19', '2023-05-24 06:05:19'),
(66, 'App\\Models\\Api\\User', 4, 'auth_token', '6a0809e61b6951526f548a1f02f0fd3fa379253b4d3d9cb5d21050453acdf877', '[\"*\"]', NULL, '2023-05-24 06:05:49', '2023-05-24 06:05:49'),
(67, 'App\\Models\\Api\\User', 7, 'auth_token', '20f28616197f4c0d64fe8db42b23ace6ccb6841b7599d7076f6b5c6b0ab70cf8', '[\"*\"]', NULL, '2023-05-24 07:37:31', '2023-05-24 07:37:31'),
(68, 'App\\Models\\Api\\User', 7, 'auth_token', 'f2b113cdb22fa3b38595522abb91e4aeb0539f0b9b51e84164834f587a6da430', '[\"*\"]', NULL, '2023-06-06 04:18:47', '2023-06-06 04:18:47'),
(69, 'App\\Models\\Api\\User', 7, 'auth_token', '4607883302c14a726d2b2fae4e98854a4b2fd6cae10ee6df2e9f51a907b6eb57', '[\"*\"]', NULL, '2023-06-06 04:52:04', '2023-06-06 04:52:04'),
(70, 'App\\Models\\Api\\User', 7, 'auth_token', '7b59197dd578874e103a1ea6151539d4478a5d1ad83f1e655f9c25ba61ba06f2', '[\"*\"]', NULL, '2023-06-10 04:26:43', '2023-06-10 04:26:43'),
(71, 'App\\Models\\Api\\User', 5, 'auth_token', 'd34882356d8cd6f495b80c05bf4cdf3e9db60a26f4f50e9f7a32acd444192530', '[\"*\"]', NULL, '2023-06-15 05:05:11', '2023-06-15 05:05:11'),
(72, 'App\\Models\\Api\\User', 5, 'auth_token', '72a64e17a573288a4908a75fff0069ef1b20f794a192a2dd308abdc6eb76f928', '[\"*\"]', NULL, '2023-06-15 05:11:32', '2023-06-15 05:11:32'),
(73, 'App\\Models\\Api\\User', 5, 'auth_token', 'b471112452e02587646a524254f066b56068f1dc21fdb95dedc45ab1f8a8ff12', '[\"*\"]', NULL, '2023-06-15 05:13:19', '2023-06-15 05:13:19'),
(74, 'App\\Models\\Api\\User', 7, 'auth_token', 'b31fcf351d1d382cca9f3b7fce99e677fdead6f793deae1e0492a3f46ab54196', '[\"*\"]', NULL, '2023-06-21 20:46:54', '2023-06-21 20:46:54'),
(75, 'App\\Models\\Api\\User', 5, 'auth_token', '25020434dc57c3010e6427c95992b88ad867133a46944f215d5812aafa98463d', '[\"*\"]', NULL, '2023-06-21 20:48:15', '2023-06-21 20:48:15'),
(76, 'App\\Models\\Api\\User', 5, 'auth_token', '9d113ed4d6e25f78eb35ab42c8393df4ee859d8f2047dd00d19914c24ec2c97f', '[\"*\"]', NULL, '2023-06-23 06:57:19', '2023-06-23 06:57:19'),
(77, 'App\\Models\\Api\\User', 5, 'auth_token', 'c754aa2a6197d24b67ba9d3dfbead55cfafdeaaa5741fd696af172708def70d0', '[\"*\"]', NULL, '2023-06-23 06:57:41', '2023-06-23 06:57:41'),
(78, 'App\\Models\\Api\\User', 5, 'auth_token', '21c8824c23117b8353f20a24a67d86aeb679738f1efc2f8a4c2d07fca7588b58', '[\"*\"]', NULL, '2023-06-23 06:57:55', '2023-06-23 06:57:55'),
(79, 'App\\Models\\Api\\User', 5, 'auth_token', '16e196df5b9affe9abc7841b5a08648cd00dae55e3703c7cf91e44faba078d0a', '[\"*\"]', NULL, '2023-06-23 06:58:07', '2023-06-23 06:58:07'),
(80, 'App\\Models\\Api\\User', 5, 'auth_token', 'e45e35247ad8a9fb6b97368be74a223fa27cd47ad5b6e019c7098f5d24a44290', '[\"*\"]', NULL, '2023-06-24 04:30:47', '2023-06-24 04:30:47'),
(81, 'App\\Models\\Api\\User', 5, 'auth_token', '7c04ce11a39eac85021192f409b5816f8d6b0a8b8b4c40a414eeb1de5b22aa91', '[\"*\"]', NULL, '2023-06-24 07:21:09', '2023-06-24 07:21:09'),
(82, 'App\\Models\\Api\\User', 5, 'auth_token', '62c7dadbf33702bca4af1d1521b96fc403ee50270ab0d00720699246d53669e9', '[\"*\"]', NULL, '2023-06-26 19:34:41', '2023-06-26 19:34:41'),
(83, 'App\\Models\\Api\\User', 7, 'auth_token', '6b6df517713aec4e06271c6ed6cde20e0c940aa4b100b66acc2b7f211d5155c0', '[\"*\"]', NULL, '2023-06-27 22:15:35', '2023-06-27 22:15:35'),
(84, 'App\\Models\\Api\\User', 7, 'auth_token', 'ad1736ffea7d0c091bdce4759c2e8a56796f4ba890214465b1c51de98746e026', '[\"*\"]', NULL, '2023-06-28 03:49:19', '2023-06-28 03:49:19'),
(85, 'App\\Models\\Api\\User', 7, 'auth_token', 'cf263ca900d847c20ab3b95fbfd27f308a16c28a3a0c108d32a43c1a226dec4e', '[\"*\"]', NULL, '2023-06-28 04:05:59', '2023-06-28 04:05:59'),
(86, 'App\\Models\\Api\\User', 7, 'auth_token', '3575398ff53076cf1b282a7f25f18392fd9d0eec126cd2eecb3637bf83fc4af3', '[\"*\"]', NULL, '2023-06-28 04:34:44', '2023-06-28 04:34:44'),
(87, 'App\\Models\\Api\\User', 7, 'auth_token', 'e1e7916fd257e1a0a21105bb079cccc57ba98c1b50f4794d12c4abf427ee48d4', '[\"*\"]', NULL, '2023-06-28 05:10:27', '2023-06-28 05:10:27'),
(88, 'App\\Models\\Api\\User', 7, 'auth_token', 'abcabef6654754f7a15a1fcc55c40b1ba19aca1d280e7e219b68ab5afc494c4f', '[\"*\"]', NULL, '2023-06-28 06:27:56', '2023-06-28 06:27:56'),
(89, 'App\\Models\\Api\\User', 7, 'auth_token', '9fb6c422e0a6d929b73ec481567f3fe063face93e0b8abdab91d14fe08e34036', '[\"*\"]', NULL, '2023-06-28 07:35:45', '2023-06-28 07:35:45'),
(90, 'App\\Models\\Api\\User', 7, 'auth_token', '30fc9ad69cc82575cf476fb122a7036b5ae71a5f719ba7d34bf1d19734f715da', '[\"*\"]', NULL, '2023-06-28 22:04:40', '2023-06-28 22:04:40'),
(91, 'App\\Models\\Api\\User', 7, 'auth_token', '95a389be1c2594446a57ac7affd4542df7c3bb7f63a497e47c56506e1b74d72c', '[\"*\"]', NULL, '2023-06-29 00:03:11', '2023-06-29 00:03:11'),
(92, 'App\\Models\\Api\\User', 7, 'auth_token', '20077211f24c53e82f21918e0fdca30c7ed1b8eca97f80fa571a6cb4baacfd80', '[\"*\"]', NULL, '2023-06-29 06:24:21', '2023-06-29 06:24:21'),
(93, 'App\\Models\\Api\\User', 4, 'auth_token', '896cfc8ff76232868ab117d9c1102386eb35132d01a9062391449263acfda17b', '[\"*\"]', NULL, '2023-06-29 07:06:59', '2023-06-29 07:06:59'),
(94, 'App\\Models\\Api\\User', 4, 'auth_token', '6cbf6e8647bd52b554e843348e259df7432cea5bcf6b2134a8678dfe7ed88d36', '[\"*\"]', NULL, '2023-06-29 07:09:26', '2023-06-29 07:09:26'),
(95, 'App\\Models\\Api\\User', 32, 'auth_token', '612dde255edbcd6ddc4111559c39515f6cc541085a35b9115a917f89f7fa1710', '[\"*\"]', NULL, '2023-06-30 01:28:09', '2023-06-30 01:28:09'),
(96, 'App\\Models\\Api\\User', 32, 'auth_token', 'e3ee4d58ccc2a4d6c84cdad7f0dc341780466da403ba7cf3c687eaf5d2eb8b74', '[\"*\"]', NULL, '2023-06-30 01:30:06', '2023-06-30 01:30:06'),
(97, 'App\\Models\\Api\\User', 7, 'auth_token', '54f8102a67456c7ffd7d22c5f613105cf3668534567e9585af57880f682b1018', '[\"*\"]', NULL, '2023-06-30 01:40:09', '2023-06-30 01:40:09'),
(98, 'App\\Models\\Api\\User', 7, 'auth_token', '2d8272e6b51866fdfc6c0fcb909afe557509e0ba96c8c5025d3ef5adae041dd4', '[\"*\"]', NULL, '2023-07-03 04:44:32', '2023-07-03 04:44:32'),
(99, 'App\\Models\\Api\\User', 7, 'auth_token', '12dd15915f500554e588886642932b4fc9aa1d5094e88d8de39c2004c7a77014', '[\"*\"]', NULL, '2023-07-03 05:48:09', '2023-07-03 05:48:09'),
(100, 'App\\Models\\Api\\User', 7, 'auth_token', '0d6b1f5b52c71efa81e4d2bc25dc2d7e80f4ad4a8f060a12359753f59cd9e07b', '[\"*\"]', NULL, '2023-07-03 07:37:25', '2023-07-03 07:37:25'),
(101, 'App\\Models\\Api\\User', 7, 'auth_token', '989751cf39c1c35c1a2bae09140899e6da054a8b59c58c9d1e7d23da6dbdab36', '[\"*\"]', NULL, '2023-07-04 18:53:19', '2023-07-04 18:53:19'),
(102, 'App\\Models\\Api\\User', 7, 'auth_token', 'a5fe198566eadabbbb25b3b2261526768ee84767d14991231a762250bcd4faed', '[\"*\"]', NULL, '2023-07-04 19:44:17', '2023-07-04 19:44:17'),
(103, 'App\\Models\\Api\\User', 7, 'auth_token', '708f9ab2a2ffb5ea3e110216f29f263ba828277da82e41a8f39aadd6b468bf31', '[\"*\"]', NULL, '2023-07-04 21:05:29', '2023-07-04 21:05:29'),
(104, 'App\\Models\\Api\\User', 7, 'auth_token', '8a3c4352211f684a26acae1c0f73a3697397fc219ad4047c57390e40793e2b6e', '[\"*\"]', NULL, '2023-07-05 03:40:42', '2023-07-05 03:40:42'),
(105, 'App\\Models\\Api\\User', 7, 'auth_token', '0964e205cb84e165d21bf07656fd5ff28dcfb4b5cbef2645074d79591a7eee9e', '[\"*\"]', NULL, '2023-07-06 01:10:53', '2023-07-06 01:10:53'),
(106, 'App\\Models\\Api\\User', 7, 'auth_token', '9c262d09658782f5433047c61b029dbc07513a2caf0284ca8e3541e5c0700e2d', '[\"*\"]', NULL, '2023-07-06 18:16:59', '2023-07-06 18:16:59'),
(107, 'App\\Models\\Api\\User', 7, 'auth_token', '5f76439ee53f360eb13442c5ac303b4d2113da05b8e1aa2b57b4b3182e20d5ce', '[\"*\"]', NULL, '2023-07-06 22:11:57', '2023-07-06 22:11:57'),
(108, 'App\\Models\\Api\\User', 7, 'auth_token', '46e227da40b879b56c6b44f68737d89d5fb25b00d89aaae81d7ff5c048be5c8c', '[\"*\"]', NULL, '2023-07-09 00:44:16', '2023-07-09 00:44:16'),
(109, 'App\\Models\\Api\\User', 7, 'auth_token', 'cb5e7887f480bc88d1c2a8e3437cd0aae1b4358ca373d34ea49533bf1df6f33d', '[\"*\"]', NULL, '2023-07-09 02:09:16', '2023-07-09 02:09:16'),
(110, 'App\\Models\\Api\\User', 7, 'auth_token', '180aa4860c78880dd59bc03df798eff5a5ad499f9744a5a056642a4097bb5c6c', '[\"*\"]', NULL, '2023-07-09 02:13:14', '2023-07-09 02:13:14'),
(111, 'App\\Models\\Api\\User', 4, 'auth_token', '2de697be93149b70f64bc85cce8ac0c6cf6e46f0a117266920c20b6312621bc6', '[\"*\"]', NULL, '2023-07-09 03:10:16', '2023-07-09 03:10:16'),
(112, 'App\\Models\\Api\\User', 7, 'auth_token', 'd1a47c7700594d8f24a2fd39dc1be3e603bb347f6042ac876498240892ddf19c', '[\"*\"]', NULL, '2023-07-11 18:12:52', '2023-07-11 18:12:52'),
(113, 'App\\Models\\Api\\User', 7, 'auth_token', 'e8823502b70b9177a2035577a8df391f65d34fb19b009f6948e42377066c607c', '[\"*\"]', NULL, '2023-07-12 00:33:11', '2023-07-12 00:33:11'),
(114, 'App\\Models\\Api\\User', 7, 'auth_token', 'bc2c7c81f6050950bac4443960a0a83d139079b0f1ec28fd8742728544c42cd4', '[\"*\"]', NULL, '2023-07-12 00:34:42', '2023-07-12 00:34:42'),
(115, 'App\\Models\\Api\\User', 7, 'auth_token', 'f432d0a90b10518c8546d2b8eabbf0b4ed1dac27b263ee3282d71953d8a5a27c', '[\"*\"]', NULL, '2023-07-12 17:47:29', '2023-07-12 17:47:29'),
(116, 'App\\Models\\Api\\User', 7, 'auth_token', 'd6ba64a16e3229c5f65781395ce5ac5ab399f61a0672920a8d503a96e5e151e1', '[\"*\"]', NULL, '2023-07-13 06:33:22', '2023-07-13 06:33:22'),
(117, 'App\\Models\\Api\\User', 7, 'auth_token', '8bc6da37cf2d5ce7fbc275c6c6ddf00e4d654caa35fc66a8f8bab9890d92c6c1', '[\"*\"]', NULL, '2023-07-13 06:34:02', '2023-07-13 06:34:02'),
(118, 'App\\Models\\Api\\User', 7, 'auth_token', 'ffbf565002ec11f19de395e79b7070bdefbbf3f96e8eeb552f06d304dbe1af9e', '[\"*\"]', NULL, '2023-07-13 06:41:57', '2023-07-13 06:41:57'),
(119, 'App\\Models\\Api\\User', 4, 'auth_token', 'f58117a13ebd07afa2248a6659970d9bc1f12ecf60e38a0ea1a44024a5e9a5ef', '[\"*\"]', NULL, '2023-07-13 06:43:51', '2023-07-13 06:43:51'),
(120, 'App\\Models\\Api\\User', 4, 'auth_token', '26bc89add714a654bd0681d4493fc3eea3313399286820b30d2856c1593e3f0c', '[\"*\"]', NULL, '2023-07-13 06:45:08', '2023-07-13 06:45:08'),
(121, 'App\\Models\\Api\\User', 7, 'auth_token', '62c8cbbdd5974b0a9a911f3e450cde814dae63f5f18b549893493fa2303531f7', '[\"*\"]', NULL, '2023-07-13 06:45:21', '2023-07-13 06:45:21'),
(122, 'App\\Models\\Api\\User', 4, 'auth_token', '6eaaeb7ed179848506079fbe16af6bf34f96bd69835a730d5a69d5ea523c0c38', '[\"*\"]', NULL, '2023-07-13 06:45:38', '2023-07-13 06:45:38'),
(123, 'App\\Models\\Api\\User', 4, 'auth_token', 'a1ed7658e243d991889c96383dd4fd2d0bb452d9c4586f56058806b13022cf9e', '[\"*\"]', NULL, '2023-07-14 02:10:45', '2023-07-14 02:10:45'),
(124, 'App\\Models\\Api\\User', 7, 'auth_token', '5c1b935bd638d3142f23b214c9542d94f0481d8a311821e9c060abe8173dfafd', '[\"*\"]', NULL, '2023-07-14 02:51:51', '2023-07-14 02:51:51'),
(125, 'App\\Models\\Api\\User', 4, 'auth_token', '6f8044dad6c3c28a5e7d3c9d4f360499b160c0c7541fcde5093b3525176e3d6a', '[\"*\"]', NULL, '2023-07-14 18:17:03', '2023-07-14 18:17:03'),
(126, 'App\\Models\\Api\\User', 4, 'auth_token', 'ad5d70d3f7657f413c3332b4d0e6b42901fa3feb99775b6b9069ff29ffdf0961', '[\"*\"]', NULL, '2023-07-14 22:12:20', '2023-07-14 22:12:20'),
(127, 'App\\Models\\Api\\User', 7, 'auth_token', '86a62ca68f98766c144992154d2b8149db43b221aff04a69fb69ca9087da97c0', '[\"*\"]', NULL, '2023-07-14 22:59:48', '2023-07-14 22:59:48'),
(128, 'App\\Models\\Api\\User', 7, 'auth_token', '1f73e669bb15967a38f91aa08fd6cdc5022768152d594389d87b6b33b6fcbd22', '[\"*\"]', NULL, '2023-07-14 23:09:42', '2023-07-14 23:09:42'),
(129, 'App\\Models\\Api\\User', 4, 'auth_token', 'd9d108edebbff312c9d92f57eaa9af3b420773ddb2408ab0bb30df4660d2a154', '[\"*\"]', NULL, '2023-07-14 23:25:43', '2023-07-14 23:25:43'),
(130, 'App\\Models\\Api\\User', 4, 'auth_token', '903a39642c48e99c8c26f45ecaab0e7a297aad61bfadb05d741581e64daf749f', '[\"*\"]', NULL, '2023-07-15 00:10:49', '2023-07-15 00:10:49'),
(131, 'App\\Models\\Api\\User', 4, 'auth_token', 'dc73be47dd45965d0682ef65d3ddce4576ab38d764e13743169a3cebbc613481', '[\"*\"]', NULL, '2023-07-16 17:58:24', '2023-07-16 17:58:24'),
(132, 'App\\Models\\Api\\User', 7, 'auth_token', '159c862e78840dc88f011e01e0d43790a06219a0a52a1afa11183ccbf7cf1538', '[\"*\"]', NULL, '2023-07-16 22:11:47', '2023-07-16 22:11:47'),
(133, 'App\\Models\\Api\\User', 7, 'auth_token', '64a85dad0657009c1f995a3de9b76af221bdb19754a639e88fc05ae6f2ef5ffa', '[\"*\"]', NULL, '2023-07-17 19:03:25', '2023-07-17 19:03:25'),
(134, 'App\\Models\\Api\\User', 4, 'auth_token', 'cd14343a1ac30733f352f3c09ecd32f4a6aa859a045d0d51bb148fe3ab3d25b0', '[\"*\"]', NULL, '2023-07-17 21:19:56', '2023-07-17 21:19:56');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
CREATE TABLE IF NOT EXISTS `ticket` (
  `id_ticket` int(50) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `id_tour` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id_ticket`),
  KEY `fk_tour_ticket` (`id_tour`),
  KEY `fk_customer_ticket` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_details`
--

DROP TABLE IF EXISTS `ticket_details`;
CREATE TABLE IF NOT EXISTS `ticket_details` (
  `id_ticket_details` int(50) NOT NULL AUTO_INCREMENT,
  `id_ticket` int(50) NOT NULL,
  `name_customer` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id_ticket_details`),
  KEY `fk_ticket_ticket-detail` (`id_ticket`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tour`
--

DROP TABLE IF EXISTS `tour`;
CREATE TABLE IF NOT EXISTS `tour` (
  `id_tour` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name_tour` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `date_back` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `content_tour` text CHARACTER SET utf8,
  `place_go` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `child_price` int(50) DEFAULT NULL,
  `adult_price` int(50) DEFAULT NULL,
  `img_tour` varchar(200) CHARACTER SET utf8mb4 DEFAULT NULL,
  `best_seller` int(12) DEFAULT '0' COMMENT '0:binh thuong,1:ban chay',
  `hot_tour` int(12) DEFAULT '0' COMMENT '0:binh thuong,1:hot',
  PRIMARY KEY (`id_tour`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tour`
--

INSERT INTO `tour` (`id_tour`, `name_tour`, `date_back`, `content_tour`, `place_go`, `child_price`, `adult_price`, `img_tour`, `best_seller`, `hot_tour`) VALUES
('NDSGN1352-010-060722VU-V', 'Sapa - Bản Cát Cát - Fansipan  3', '04 / 18 / 2023', 'Tour Sapa - Bản Cát Cát - Fansipan là một chuyến du lịch tuyệt vời đưa du khách vào vùng đất Sapa nổi tiếng của Việt Nam. Sapa được biết đến với khí hậu mát mẻ, phong cảnh thiên nhiên hùng vĩ và văn hóa đa dạng của các dân tộc thiểu số.\r\n\r\nHành trình này bắt đầu từ Hà Nội, khi du khách lên xe và khởi hành đi Sapa. Sau một hành trình di chuyển khoảng 6-7 giờ, đoàn sẽ đến Sapa, một thị trấn nằm ở độ cao trên 1.500 mét so với mực nước biển. Ngay từ lúc đặt chân đến đây, du khách sẽ bị mê hoặc bởi không khí trong lành, những cánh đồng xanh ngút ngàn và những dãy núi chạy dài vô tận.', 'TP . Hồ Chí Minh', 3400000, 4000000, 'https://saigontourist.net/uploads/destination/TrongNuoc/mienbac/sapa/Sapa_126530108.jpg', 0, 0),
('NDSGN1352-011-060722VU-V', 'Đà Lạt - Thác Bobla - KDL Cao Nguyên Hoa - Trang Trại rau và hoa Vạn Thành', '2022-07-10', 'Du lịch Hạ Long , Hà Nội , Cát Cát', 'TP . Hồ Chí Minh', 8000000, 10000000, 'https://i.imgur.com/mT6Zbej.jpg', 1, 0),
('NDSGN303-008-241122VU-D-F-1', 'Đà Nẵng - Bà Nà - Cầu Vàng - Sơn Trà - Biển Mỹ Khê - Hội An - Đà Nẵng (Khách sạn 4* trọn tour)', '2022-11-24', 'Thác Bobla: đẹp như một bức tranh thiên nhiên với dòng thác nguyên sơ, hùng vĩ cao hơn 40m, rộng hơn 20m, cùng cảnh quan được tôn tạo tuyệt đẹp, lưu giữ nhiều cây cổ thụ hàng trăm năm tuổi, phía xa hút tầm mắt là những đồi chè, cà phê xanh mát.  Chiều đoàn tiếp tục hành trình về Đà Lạt, nhận phòng nghỉ ngơi. Buổi tối, Quý khách tự do thưởng thức café ngắm hồ Xuân Hương về đêm.', 'HCM', 5000000, 8000000, 'https://i.imgur.com/u3WxS6y.jpg', 1, 1),
('NDSGN579-039-231122XE-V', 'Hà Nội - Vịnh Hạ Long - Sapa - Bản Cát Cát - Fansipan (Khách sạn 4 sao) - Lễ 30/4', '2022-11-24', 'Thác Bobla: đẹp như một bức tranh thiên nhiên với dòng thác nguyên sơ, hùng vĩ cao hơn 40m, rộng hơn 20m, cùng cảnh quan được tôn tạo tuyệt đẹp, lưu giữ nhiều cây cổ thụ hàng trăm năm tuổi, phía xa hút tầm mắt là những đồi chè, cà phê xanh mát.  Chiều đoàn tiếp tục hành trình về Đà Lạt, nhận phòng nghỉ ngơi. Buổi tối, Quý khách tự do thưởng thức café ngắm hồ Xuân Hương về đêm.', 'HCM', 4000000, 5000000, 'https://i.imgur.com/K1B5N3i.jpg', 0, 1),
('NDSGN834-012-231223XE-V-F', 'Miền Tây - Châu Đốc - Lâm Viên Núi Cấm - Miếu Bà Chúa Xứ - Rừng Tràm Trà Sư (Khách sạn 3*)', '14/07/2023', 'Tour miền tây', 'TP. Hồ Chí Minh', 1700000, 2000000, 'https://i.imgur.com/hNDtDJW.jpg', 1, 1),
('NDSGN844-052-150423XE-D', 'Miền Tây: Cần Thơ - Sóc Trăng - Bạc Liêu - Cà Mau - Đất Mũi', NULL, 'Thác Bobla: đẹp như một bức tranh thiên nhiên với dòng thác nguyên sơ, hùng vĩ cao hơn 40m, rộng hơn 20m, cùng cảnh quan được tôn tạo tuyệt đẹp, lưu giữ nhiều cây cổ thụ hàng trăm năm tuổi, phía xa hút tầm mắt là những đồi chè, cà phê xanh mát.  Chiều đoàn tiếp tục hành trình về Đà Lạt, nhận phòng nghỉ ngơi. Buổi tối, Quý khách tự do thưởng thức café ngắm hồ Xuân Hương về đêm.', 'HCM', 4000000, 5000000, 'https://i.imgur.com/jJgomrT.jpg', 0, 1),
('NDSGN869-021-191123XE-V-F', 'Siêu Sale  | Vũng Tàu - Sắc Màu Biển Xanh | Kích cầu du lịch', NULL, 'Vũng Tàu', 'TP. Hồ Chí Minh', 200000, 300000, 'https://i.imgur.com/GcRkrkA.jpg', 1, 1),
('NNSGN607-001-300423NH-D', 'Côn Đảo - Thiên Đường Của Biển', '5/8/2022', 'KHÁM PHÁ CÔN ĐẢO “THIÊN ĐƯỜNG CỦA BIỂN”', 'TP. Hồ Chí Minh', 6990000, 8000000, 'https://i.imgur.com/KdWokTW.jpg', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_tour`
--

DROP TABLE IF EXISTS `vehicle_tour`;
CREATE TABLE IF NOT EXISTS `vehicle_tour` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `id_vehicle` varchar(50) CHARACTER SET utf8 NOT NULL,
  `id_tour` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk-vehicle_tour-tour` (`id_tour`),
  KEY `fk-vehicle_tour-vehicle` (`id_vehicle`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_tour`
--

INSERT INTO `vehicle_tour` (`id`, `id_vehicle`, `id_tour`) VALUES
(1, '1', 'NDSGN1352-010-060722VU-V'),
(2, '2', 'NDSGN1352-010-060722VU-V');

-- --------------------------------------------------------

--
-- Table structure for table `vihecle`
--

DROP TABLE IF EXISTS `vihecle`;
CREATE TABLE IF NOT EXISTS `vihecle` (
  `id_vehicle` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name_vehicle` varchar(50) CHARACTER SET utf8 NOT NULL,
  `capacity` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id_vehicle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vihecle`
--

INSERT INTO `vihecle` (`id_vehicle`, `name_vehicle`, `capacity`) VALUES
('1', 'Xe du lịch 16 chỗ', '16'),
('2', 'Máy bay', '198'),
('3', 'Tàu', '100');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `date_go`
--
ALTER TABLE `date_go`
  ADD CONSTRAINT `fk-guide-date_go` FOREIGN KEY (`id_guide`) REFERENCES `guide` (`id`),
  ADD CONSTRAINT `fk-tour-date_go` FOREIGN KEY (`id_tour`) REFERENCES `tour` (`id_tour`);

--
-- Constraints for table `detail_order_tour`
--
ALTER TABLE `detail_order_tour`
  ADD CONSTRAINT `fk_order_detail-order` FOREIGN KEY (`id_order`) REFERENCES `order_tour` (`id_order_tour`);

--
-- Constraints for table `hotel_tour`
--
ALTER TABLE `hotel_tour`
  ADD CONSTRAINT `fk-hotel_tour-hotel` FOREIGN KEY (`id_hotel`) REFERENCES `hotel` (`id_hotel`),
  ADD CONSTRAINT `fk-hotel_tour-tour` FOREIGN KEY (`id_tour`) REFERENCES `tour` (`id_tour`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `fk-tour-images` FOREIGN KEY (`id_tour`) REFERENCES `tour` (`id_tour`);

--
-- Constraints for table `itinerary`
--
ALTER TABLE `itinerary`
  ADD CONSTRAINT `fk_itinerary_date` FOREIGN KEY (`id_date`) REFERENCES `date_go` (`id`);

--
-- Constraints for table `location_tour`
--
ALTER TABLE `location_tour`
  ADD CONSTRAINT `fk-location_tour-location` FOREIGN KEY (`id_location`) REFERENCES `location` (`id_location`),
  ADD CONSTRAINT `fk-location_tour-tour` FOREIGN KEY (`id_tour`) REFERENCES `tour` (`id_tour`);

--
-- Constraints for table `order_tour`
--
ALTER TABLE `order_tour`
  ADD CONSTRAINT `fk-order_tour-date_go` FOREIGN KEY (`id_date`) REFERENCES `date_go` (`id`),
  ADD CONSTRAINT `fk_order_customer` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `fk_customer_payment` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `fk_order_payment` FOREIGN KEY (`id_order`) REFERENCES `order_tour` (`id_order_tour`);

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `fk_tour_ticket` FOREIGN KEY (`id_tour`) REFERENCES `tour` (`id_tour`);

--
-- Constraints for table `ticket_details`
--
ALTER TABLE `ticket_details`
  ADD CONSTRAINT `fk_ticket_ticket-detail` FOREIGN KEY (`id_ticket`) REFERENCES `ticket` (`id_ticket`);

--
-- Constraints for table `vehicle_tour`
--
ALTER TABLE `vehicle_tour`
  ADD CONSTRAINT `fk-vehicle_tour-tour` FOREIGN KEY (`id_tour`) REFERENCES `tour` (`id_tour`),
  ADD CONSTRAINT `fk-vehicle_tour-vehicle` FOREIGN KEY (`id_vehicle`) REFERENCES `vihecle` (`id_vehicle`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
