@interface CARSettingsFontOptionsPanel
- (id)specifierSections;
@end

@implementation CARSettingsFontOptionsPanel

- (id)specifierSections
{
  v10.receiver = self;
  v10.super_class = CARSettingsFontOptionsPanel;
  v3 = [(CARSettingsOptionsPickerPanel *)&v10 specifierSections];
  v9.receiver = self;
  v9.super_class = CARSettingsFontOptionsPanel;
  v4 = [(CARSettingsOptionsPickerPanel *)&v9 specifierSections];
  v5 = [v4 firstObject];

  v6 = [v5 specifiers];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100021D8C;
  v8[3] = &unk_1000DB568;
  v8[4] = self;
  [v6 enumerateObjectsUsingBlock:v8];

  return v3;
}

@end