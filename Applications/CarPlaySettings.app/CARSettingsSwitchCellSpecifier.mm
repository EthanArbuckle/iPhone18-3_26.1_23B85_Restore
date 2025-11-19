@interface CARSettingsSwitchCellSpecifier
- (CARSettingsSwitchCellSpecifier)initWithTitle:(id)a3 image:(id)a4 icon:(id)a5;
- (CARSettingsSwitchCellSpecifier)initWithTitle:(id)a3 image:(id)a4 icon:(id)a5 actionBlock:(id)a6;
@end

@implementation CARSettingsSwitchCellSpecifier

- (CARSettingsSwitchCellSpecifier)initWithTitle:(id)a3 image:(id)a4 icon:(id)a5
{
  v6.receiver = self;
  v6.super_class = CARSettingsSwitchCellSpecifier;
  return [(CARSettingsCellSpecifier *)&v6 initWithTitle:a3 image:a4 icon:a5 accessoryType:104];
}

- (CARSettingsSwitchCellSpecifier)initWithTitle:(id)a3 image:(id)a4 icon:(id)a5 actionBlock:(id)a6
{
  v7.receiver = self;
  v7.super_class = CARSettingsSwitchCellSpecifier;
  return [(CARSettingsCellSpecifier *)&v7 initWithTitle:a3 image:a4 icon:a5 accessoryType:104 actionBlock:a6];
}

@end