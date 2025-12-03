@interface CARSettingsFontOptionsPanel
- (id)specifierSections;
@end

@implementation CARSettingsFontOptionsPanel

- (id)specifierSections
{
  v10.receiver = self;
  v10.super_class = CARSettingsFontOptionsPanel;
  specifierSections = [(CARSettingsOptionsPickerPanel *)&v10 specifierSections];
  v9.receiver = self;
  v9.super_class = CARSettingsFontOptionsPanel;
  specifierSections2 = [(CARSettingsOptionsPickerPanel *)&v9 specifierSections];
  firstObject = [specifierSections2 firstObject];

  specifiers = [firstObject specifiers];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100021D8C;
  v8[3] = &unk_1000DB568;
  v8[4] = self;
  [specifiers enumerateObjectsUsingBlock:v8];

  return specifierSections;
}

@end