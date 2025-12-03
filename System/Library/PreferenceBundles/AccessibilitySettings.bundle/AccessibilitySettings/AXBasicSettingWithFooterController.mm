@interface AXBasicSettingWithFooterController
- (id)preferenceValue:(id)value;
- (id)specifiers;
- (void)setPreferenceValue:(id)value specifier:(id)specifier;
- (void)setSpecifier:(id)specifier;
@end

@implementation AXBasicSettingWithFooterController

- (void)setSpecifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = AXBasicSettingWithFooterController;
  specifierCopy = specifier;
  [(AXBasicSettingWithFooterController *)&v9 setSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"AXPSFooterText", v9.receiver, v9.super_class}];
  [(AXBasicSettingWithFooterController *)self setFooterText:v5];

  v6 = [specifierCopy propertyForKey:@"AXPSSettingText"];
  [(AXBasicSettingWithFooterController *)self setSettingText:v6];

  v7 = [specifierCopy propertyForKey:@"AXPSGetterBlock"];
  [(AXBasicSettingWithFooterController *)self setGetterBlock:v7];

  v8 = [specifierCopy propertyForKey:@"AXPSSetterBlock"];

  [(AXBasicSettingWithFooterController *)self setSetterBlock:v8];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = +[PSSpecifier emptyGroupSpecifier];
    footerText = [(AXBasicSettingWithFooterController *)self footerText];
    [v6 setProperty:footerText forKey:PSFooterTextGroupKey];

    [v5 addObject:v6];
    settingText = [(AXBasicSettingWithFooterController *)self settingText];
    v9 = [PSSpecifier preferenceSpecifierNamed:settingText target:self set:"setPreferenceValue:specifier:" get:"preferenceValue:" detail:0 cell:6 edit:0];

    [v5 addObject:v9];
    v10 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)setPreferenceValue:(id)value specifier:(id)specifier
{
  valueCopy = value;
  setterBlock = [(AXBasicSettingWithFooterController *)self setterBlock];
  setterBlock[2](setterBlock, valueCopy);
}

- (id)preferenceValue:(id)value
{
  getterBlock = [(AXBasicSettingWithFooterController *)self getterBlock];
  v4 = getterBlock[2]();

  return v4;
}

@end