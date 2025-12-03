@interface CARSettingsButtonCellSpecifier
- (CARSettingsButtonCellSpecifier)initWithTitle:(id)title image:(id)image icon:(id)icon;
- (CARSettingsButtonCellSpecifier)initWithTitle:(id)title image:(id)image icon:(id)icon actionBlock:(id)block;
@end

@implementation CARSettingsButtonCellSpecifier

- (CARSettingsButtonCellSpecifier)initWithTitle:(id)title image:(id)image icon:(id)icon actionBlock:(id)block
{
  blockCopy = block;
  v11 = [(CARSettingsButtonCellSpecifier *)self initWithTitle:title image:image icon:icon];
  [(CARSettingsCellSpecifier *)v11 setActionBlock:blockCopy];

  return v11;
}

- (CARSettingsButtonCellSpecifier)initWithTitle:(id)title image:(id)image icon:(id)icon
{
  v8.receiver = self;
  v8.super_class = CARSettingsButtonCellSpecifier;
  v5 = [(CARSettingsCellSpecifier *)&v8 initWithTitle:title image:image icon:icon accessoryType:0];
  v6 = +[UIColor systemBlueColor];
  [(CARSettingsCellSpecifier *)v5 setTitleColor:v6];

  return v5;
}

@end