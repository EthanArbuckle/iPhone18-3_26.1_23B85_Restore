@interface AXBasicSettingWithFooterController
- (id)preferenceValue:(id)a3;
- (id)specifiers;
- (void)setPreferenceValue:(id)a3 specifier:(id)a4;
- (void)setSpecifier:(id)a3;
@end

@implementation AXBasicSettingWithFooterController

- (void)setSpecifier:(id)a3
{
  v9.receiver = self;
  v9.super_class = AXBasicSettingWithFooterController;
  v4 = a3;
  [(AXBasicSettingWithFooterController *)&v9 setSpecifier:v4];
  v5 = [v4 propertyForKey:{@"AXPSFooterText", v9.receiver, v9.super_class}];
  [(AXBasicSettingWithFooterController *)self setFooterText:v5];

  v6 = [v4 propertyForKey:@"AXPSSettingText"];
  [(AXBasicSettingWithFooterController *)self setSettingText:v6];

  v7 = [v4 propertyForKey:@"AXPSGetterBlock"];
  [(AXBasicSettingWithFooterController *)self setGetterBlock:v7];

  v8 = [v4 propertyForKey:@"AXPSSetterBlock"];

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
    v7 = [(AXBasicSettingWithFooterController *)self footerText];
    [v6 setProperty:v7 forKey:PSFooterTextGroupKey];

    [v5 addObject:v6];
    v8 = [(AXBasicSettingWithFooterController *)self settingText];
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"setPreferenceValue:specifier:" get:"preferenceValue:" detail:0 cell:6 edit:0];

    [v5 addObject:v9];
    v10 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)setPreferenceValue:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(AXBasicSettingWithFooterController *)self setterBlock];
  v6[2](v6, v5);
}

- (id)preferenceValue:(id)a3
{
  v3 = [(AXBasicSettingWithFooterController *)self getterBlock];
  v4 = v3[2]();

  return v4;
}

@end