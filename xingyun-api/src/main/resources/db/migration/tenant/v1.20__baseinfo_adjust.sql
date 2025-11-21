ALTER TABLE `base_data_product`
    MODIFY COLUMN `sku_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT 'SKU' AFTER `short_name`,
    MODIFY COLUMN `brand_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '品牌ID' AFTER `category_id`;
INSERT INTO `sys_menu` (`id`, `code`, `name`, `title`, `icon`, `component_type`, `component`, `request_param`, `parent_id`, `sys_module_id`, `path`, `no_cache`, `display`, `hidden`, `permission`, `is_special`, `available`, `description`, `create_by`, `create_by_id`, `create_time`, `update_by`, `update_by_id`, `update_time`) VALUES ('1000002004', '1000002004', '', '删除部门', NULL, 0, '', NULL, '1000002', '2', '', 0, 2, 0, 'system:dept:delete', 1, 1, '', '系统管理员', '1', '2021-06-27 01:33:47', '系统管理员', '1', '2025-01-19 18:36:07');
INSERT INTO `sys_menu` (`id`, `code`, `name`, `title`, `icon`, `component_type`, `component`, `request_param`, `parent_id`, `sys_module_id`, `path`, `no_cache`, `display`, `hidden`, `permission`, `is_special`, `available`, `description`, `create_by`, `create_by_id`, `create_time`, `update_by`, `update_by_id`, `update_time`) VALUES ('1000004004', '1000004004', '', '删除角色', NULL, 0, '', NULL, '1000004', '2', '', 0, 2, 0, 'system:role:delete', 1, 1, '', '系统管理员', '1', '2021-06-30 00:32:45', '系统管理员', '1', '2025-01-19 18:36:08');

ALTER TABLE `sys_role`
DROP INDEX `code`,
DROP INDEX `name`,
ADD INDEX `code`(`code`) USING BTREE,
ADD INDEX `name`(`name`) USING BTREE;
INSERT INTO `sys_menu` (`id`, `code`, `name`, `title`, `icon`, `component_type`, `component`, `request_param`, `parent_id`, `sys_module_id`, `path`, `no_cache`, `display`, `hidden`, `permission`, `is_special`, `available`, `description`, `create_by`, `create_by_id`, `create_time`, `update_by`, `update_by_id`, `update_time`) VALUES ('1000005004', '1000005004', '', '删除用户', NULL, 0, '', NULL, '1000005', '2', '', 0, 2, 0, 'system:user:delete', 1, 1, '', '系统管理员', '1', '2021-06-30 00:32:45', '系统管理员', '1', '2025-01-19 18:36:09');
ALTER TABLE `sys_user`
DROP INDEX `code`,
DROP INDEX `username`,
ADD INDEX `code`(`code`) USING BTREE,
ADD INDEX `username`(`username`) USING BTREE;

ALTER TABLE `sys_notify_group`
DROP INDEX `name`,
ADD INDEX `name`(`name`) USING BTREE;
INSERT INTO `sys_menu` (`id`, `code`, `name`, `title`, `icon`, `component_type`, `component`, `request_param`, `parent_id`, `sys_module_id`, `path`, `no_cache`, `display`, `hidden`, `permission`, `is_special`, `available`, `description`, `create_by`, `create_by_id`, `create_time`, `update_by`, `update_by_id`, `update_time`) VALUES ('1000014003', '1000014003', '', '删除消息通知组', NULL, 0, '', NULL, '1000014', '8', '', 0, 2, 0, 'system:notify-group:delete', 1, 1, '', '系统管理员', '1', '2021-05-12 22:50:27', '系统管理员', '1', '2025-01-19 18:36:11');
INSERT INTO `sys_menu` (`id`, `code`, `name`, `title`, `icon`, `component_type`, `component`, `request_param`, `parent_id`, `sys_module_id`, `path`, `no_cache`, `display`, `hidden`, `permission`, `is_special`, `available`, `description`, `create_by`, `create_by_id`, `create_time`, `update_by`, `update_by_id`, `update_time`) VALUES ('1000015003', '1000015003', '', '删除用户分组', NULL, 0, '', NULL, '1000015', '8', '', 0, 2, 0, 'system:user-group:delete', 1, 1, '', '系统管理员', '1', '2021-05-12 22:50:27', '系统管理员', '1', '2025-01-19 18:36:11');
ALTER TABLE `sys_user_group`
DROP INDEX `name`,
DROP INDEX `code`,
ADD INDEX `name`(`name`) USING BTREE,
ADD INDEX `code`(`code`) USING BTREE;
INSERT INTO `sys_menu` (`id`, `code`, `name`, `title`, `icon`, `component_type`, `component`, `request_param`, `parent_id`, `sys_module_id`, `path`, `no_cache`, `display`, `hidden`, `permission`, `is_special`, `available`, `description`, `create_by`, `create_by_id`, `create_time`, `update_by`, `update_by_id`, `update_time`) VALUES ('2000002004', '2000002004', '', '删除仓库', NULL, 0, '', NULL, '2000002', '3', '', 0, 2, 0, 'base-data:store-center:delete', 1, 1, '', '系统管理员', '1', '2021-05-12 23:23:33', '系统管理员', '1', '2021-07-04 00:34:23');
ALTER TABLE `base_data_store_center`
DROP INDEX `code`,
ADD INDEX `code`(`code`) USING BTREE;
ALTER TABLE `base_data_customer`
DROP INDEX `code`,
ADD INDEX `code`(`code`) USING BTREE;
INSERT INTO `sys_menu` (`id`, `code`, `name`, `title`, `icon`, `component_type`, `component`, `request_param`, `parent_id`, `sys_module_id`, `path`, `no_cache`, `display`, `hidden`, `permission`, `is_special`, `available`, `description`, `create_by`, `create_by_id`, `create_time`, `update_by`, `update_by_id`, `update_time`) VALUES ('2000004004', '2000004004', '', '删除客户', NULL, 0, '', NULL, '2000004', '3', '', 0, 2, 0, 'base-data:customer:delete', 1, 1, '', '系统管理员', '1', '2021-05-12 23:23:33', '系统管理员', '1', '2021-07-04 00:34:23');
INSERT INTO `sys_menu` (`id`, `code`, `name`, `title`, `icon`, `component_type`, `component`, `request_param`, `parent_id`, `sys_module_id`, `path`, `no_cache`, `display`, `hidden`, `permission`, `is_special`, `available`, `description`, `create_by`, `create_by_id`, `create_time`, `update_by`, `update_by_id`, `update_time`) VALUES ('2000005004', '2000005004', '', '删除供应商', NULL, 0, '', NULL, '2000005', '3', '', 0, 2, 0, 'base-data:supplier:delete', 1, 1, '', '系统管理员', '1', '2021-05-12 23:23:33', '系统管理员', '1', '2021-07-04 00:34:23');
ALTER TABLE `base_data_supplier`
DROP INDEX `code`,
ADD INDEX `code`(`code`) USING BTREE;
INSERT INTO `sys_menu` (`id`, `code`, `name`, `title`, `icon`, `component_type`, `component`, `request_param`, `parent_id`, `sys_module_id`, `path`, `no_cache`, `display`, `hidden`, `permission`, `is_special`, `available`, `description`, `create_by`, `create_by_id`, `create_time`, `update_by`, `update_by_id`, `update_time`) VALUES ('2000006004', '2000006004', '', '删除会员', NULL, 0, '', NULL, '2000006', '3', '', 0, 2, 0, 'base-data:member:delete', 1, 1, '', '系统管理员', '1', '2021-05-12 23:23:33', '系统管理员', '1', '2021-07-04 00:34:23');
ALTER TABLE `base_data_member`
DROP INDEX `code`,
DROP INDEX `telephone`,
ADD INDEX `code`(`code`) USING BTREE,
ADD INDEX `telephone`(`telephone`) USING BTREE;
INSERT INTO `sys_menu` (`id`, `code`, `name`, `title`, `icon`, `component_type`, `component`, `request_param`, `parent_id`, `sys_module_id`, `path`, `no_cache`, `display`, `hidden`, `permission`, `is_special`, `available`, `description`, `create_by`, `create_by_id`, `create_time`, `update_by`, `update_by_id`, `update_time`) VALUES ('2000007004', '2000007004', '', '删除门店', NULL, 0, '', NULL, '2000007', '3', '', 0, 2, 0, 'base-data:shop:delete', 1, 1, '', '系统管理员', '1', '2021-05-12 23:23:33', '系统管理员', '1', '2021-07-04 00:34:23');
ALTER TABLE `tbl_shop`
DROP INDEX `code`,
ADD INDEX `code`(`code`) USING BTREE;
INSERT INTO `sys_menu` (`id`, `code`, `name`, `title`, `icon`, `component_type`, `component`, `request_param`, `parent_id`, `sys_module_id`, `path`, `no_cache`, `display`, `hidden`, `permission`, `is_special`, `available`, `description`, `create_by`, `create_by_id`, `create_time`, `update_by`, `update_by_id`, `update_time`) VALUES ('2000008003', '2000008003', '', '删除支付方式', NULL, 0, '', NULL, '2000008', '3', '', 0, 2, 0, 'base-data:pay-type:delete', 1, 1, '', '系统管理员', '1', '2021-05-12 23:23:33', '系统管理员', '1', '2021-07-04 00:34:23');
ALTER TABLE `base_data_pay_type`
DROP INDEX `code`,
ADD INDEX `code`(`code`) USING BTREE;
INSERT INTO `sys_menu` (`id`, `code`, `name`, `title`, `icon`, `component_type`, `component`, `request_param`, `parent_id`, `sys_module_id`, `path`, `no_cache`, `display`, `hidden`, `permission`, `is_special`, `available`, `description`, `create_by`, `create_by_id`, `create_time`, `update_by`, `update_by_id`, `update_time`) VALUES ('2000009005', '2000009005', '', '删除地址', NULL, 0, '', NULL, '2000009', '15', '', 0, 2, 0, 'base-data:address:delete', 1, 1, '', '系统管理员', '1', '2021-05-12 23:23:33', '系统管理员', '1', '2021-07-04 00:34:23');
