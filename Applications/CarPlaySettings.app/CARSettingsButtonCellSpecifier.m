@interface CARSettingsButtonCellSpecifier
- (CARSettingsButtonCellSpecifier)initWithTitle:(id)a3 image:(id)a4 icon:(id)a5;
- (CARSettingsButtonCellSpecifier)initWithTitle:(id)a3 image:(id)a4 icon:(id)a5 actionBlock:(id)a6;
@end

@implementation CARSettingsButtonCellSpecifier

- (CARSettingsButtonCellSpecifier)initWithTitle:(id)a3 image:(id)a4 icon:(id)a5 actionBlock:(id)a6
{
  v10 = a6;
  v11 = [(CARSettingsButtonCellSpecifier *)self initWithTitle:a3 image:a4 icon:a5];
  [(CARSettingsCellSpecifier *)v11 setActionBlock:v10];

  return v11;
}

- (CARSettingsButtonCellSpecifier)initWithTitle:(id)a3 image:(id)a4 icon:(id)a5
{
  v8.receiver = self;
  v8.super_class = CARSettingsButtonCellSpecifier;
  v5 = [(CARSettingsCellSpecifier *)&v8 initWithTitle:a3 image:a4 icon:a5 accessoryType:0];
  v6 = +[UIColor systemBlueColor];
  [(CARSettingsCellSpecifier *)v5 setTitleColor:v6];

  return v5;
}

@end