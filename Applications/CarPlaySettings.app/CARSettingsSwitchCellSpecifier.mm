@interface CARSettingsSwitchCellSpecifier
- (CARSettingsSwitchCellSpecifier)initWithTitle:(id)title image:(id)image icon:(id)icon;
- (CARSettingsSwitchCellSpecifier)initWithTitle:(id)title image:(id)image icon:(id)icon actionBlock:(id)block;
@end

@implementation CARSettingsSwitchCellSpecifier

- (CARSettingsSwitchCellSpecifier)initWithTitle:(id)title image:(id)image icon:(id)icon
{
  v6.receiver = self;
  v6.super_class = CARSettingsSwitchCellSpecifier;
  return [(CARSettingsCellSpecifier *)&v6 initWithTitle:title image:image icon:icon accessoryType:104];
}

- (CARSettingsSwitchCellSpecifier)initWithTitle:(id)title image:(id)image icon:(id)icon actionBlock:(id)block
{
  v7.receiver = self;
  v7.super_class = CARSettingsSwitchCellSpecifier;
  return [(CARSettingsCellSpecifier *)&v7 initWithTitle:title image:image icon:icon accessoryType:104 actionBlock:block];
}

@end