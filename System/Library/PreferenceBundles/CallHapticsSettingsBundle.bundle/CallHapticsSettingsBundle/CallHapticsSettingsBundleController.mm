@interface CallHapticsSettingsBundleController
+ (id)localizedStringForKey:(id)a3;
- (CallHapticsSettingsBundleController)initWithParentListController:(id)a3;
- (PSListController)parentListController;
- (id)createCallHapticsSpecifier;
- (id)currentControllerSpecifierIdentifier;
- (id)getCallHapticsEnabled:(id)a3;
- (id)specifiersWithSpecifier:(id)a3;
- (void)refreshView;
- (void)setCallHapticsEnabled:(id)a3 specifier:(id)a4;
@end

@implementation CallHapticsSettingsBundleController

- (CallHapticsSettingsBundleController)initWithParentListController:(id)a3
{
  v7.receiver = self;
  v7.super_class = CallHapticsSettingsBundleController;
  v3 = [(CallHapticsSettingsBundleController *)&v7 initWithParentListController:a3];
  if (v3)
  {
    v4 = objc_alloc_init(TUConfigurationProvider);
    configurationProvider = v3->_configurationProvider;
    v3->_configurationProvider = v4;

    [(TUConfigurationProvider *)v3->_configurationProvider setDelegate:v3];
  }

  return v3;
}

- (id)specifiersWithSpecifier:(id)a3
{
  v4 = +[NSMutableArray array];
  v5 = [(CallHapticsSettingsBundleController *)self activeSpecifier];
  if (!v5)
  {
    v6 = [(CallHapticsSettingsBundleController *)self configurationProvider];
    v7 = [v6 isCallHapticsAvailable];

    if (!v7)
    {
      goto LABEL_8;
    }

    v5 = [PSSpecifier groupSpecifierWithID:@"CALL_HAPTICS" name:&stru_4198];
    v8 = [CallHapticsSettingsBundleController localizedStringForKey:@"CALL_HAPTICS_EXPLANATION"];
    [v5 setProperty:v8 forKey:PSFooterTextGroupKey];
    v9 = [(CallHapticsSettingsBundleController *)self createCallHapticsSpecifier];
    v10 = v9;
    if (v5 && v9)
    {
      [v4 addObject:v5];
      [v4 addObject:v10];
    }
  }

LABEL_8:
  v11 = [v4 copy];

  return v11;
}

- (id)createCallHapticsSpecifier
{
  v3 = [CallHapticsSettingsBundleController localizedStringForKey:@"CALL_HAPTICS_TOGGLE_TITLE"];
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"setCallHapticsEnabled:specifier:" get:"getCallHapticsEnabled:" detail:0 cell:6 edit:0];
  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v4 setIdentifier:@"CALL_HAPTICS"];
  [(CallHapticsSettingsBundleController *)self setActiveSpecifier:v4];

  return v4;
}

+ (id)localizedStringForKey:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [a1 localizationTableName];
  v7 = [v5 localizedStringForKey:v4 value:&stru_4198 table:v6];

  return v7;
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (void)refreshView
{
  v4 = [(CallHapticsSettingsBundleController *)self parentListController];
  v3 = [(CallHapticsSettingsBundleController *)self activeSpecifier];
  [v4 reloadSpecifier:v3];
}

- (void)setCallHapticsEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v7 = [(CallHapticsSettingsBundleController *)self configurationProvider];
  v6 = [v5 BOOLValue];

  [v7 setCallHapticsEnabled:v6];
}

- (id)getCallHapticsEnabled:(id)a3
{
  v3 = [(CallHapticsSettingsBundleController *)self configurationProvider];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isCallHapticsEnabled]);

  return v4;
}

- (id)currentControllerSpecifierIdentifier
{
  v2 = [(CallHapticsSettingsBundleController *)self parentListController];
  v3 = [v2 specifier];
  v4 = [v3 identifier];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_4198;
  }

  return v5;
}

@end