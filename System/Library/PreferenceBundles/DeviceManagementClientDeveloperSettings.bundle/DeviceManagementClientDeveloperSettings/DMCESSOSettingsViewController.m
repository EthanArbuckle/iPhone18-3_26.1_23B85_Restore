@interface DMCESSOSettingsViewController
- (id)getESSOTestModeEnabled:(id)a3;
- (id)specifiers;
- (void)setESSOTestModeEnabled:(id)a3 specifier:(id)a4;
@end

@implementation DMCESSOSettingsViewController

- (id)specifiers
{
  v3 = +[NSMutableArray array];
  v4 = DMCLocalizedString();
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:0 edit:0];

  v6 = DMCLocalizedFormat();
  [v5 setProperty:v6 forKey:PSFooterTextGroupKey];

  [v3 addObject:v5];
  v7 = DMCLocalizedString();
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"setESSOTestModeEnabled:specifier:" get:"getESSOTestModeEnabled:" detail:0 cell:6 edit:0];

  [v3 addObject:v8];
  v9 = OBJC_IVAR___PSListController__specifiers;
  v10 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v3;
  v11 = v3;

  v12 = *&self->PSListController_opaque[v9];
  v13 = v12;

  return v12;
}

- (void)setESSOTestModeEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = DMCDefaultsKeyESSOTestModeEnabled;
  [v6 setObject:v5 forKey:DMCDefaultsKeyESSOTestModeEnabled];

  v8 = +[NSUserDefaults standardUserDefaults];
  [v8 setObject:v5 forKey:v7 inDomain:NSGlobalDomain];

  [(DMCESSOSettingsViewController *)self reloadSpecifiers];
}

- (id)getESSOTestModeEnabled:(id)a3
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 valueForKey:DMCDefaultsKeyESSOTestModeEnabled];

  return v4;
}

@end