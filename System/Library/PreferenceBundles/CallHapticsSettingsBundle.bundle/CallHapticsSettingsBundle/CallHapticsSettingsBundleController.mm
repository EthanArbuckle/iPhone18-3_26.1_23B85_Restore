@interface CallHapticsSettingsBundleController
+ (id)localizedStringForKey:(id)key;
- (CallHapticsSettingsBundleController)initWithParentListController:(id)controller;
- (PSListController)parentListController;
- (id)createCallHapticsSpecifier;
- (id)currentControllerSpecifierIdentifier;
- (id)getCallHapticsEnabled:(id)enabled;
- (id)specifiersWithSpecifier:(id)specifier;
- (void)refreshView;
- (void)setCallHapticsEnabled:(id)enabled specifier:(id)specifier;
@end

@implementation CallHapticsSettingsBundleController

- (CallHapticsSettingsBundleController)initWithParentListController:(id)controller
{
  v7.receiver = self;
  v7.super_class = CallHapticsSettingsBundleController;
  v3 = [(CallHapticsSettingsBundleController *)&v7 initWithParentListController:controller];
  if (v3)
  {
    v4 = objc_alloc_init(TUConfigurationProvider);
    configurationProvider = v3->_configurationProvider;
    v3->_configurationProvider = v4;

    [(TUConfigurationProvider *)v3->_configurationProvider setDelegate:v3];
  }

  return v3;
}

- (id)specifiersWithSpecifier:(id)specifier
{
  v4 = +[NSMutableArray array];
  activeSpecifier = [(CallHapticsSettingsBundleController *)self activeSpecifier];
  if (!activeSpecifier)
  {
    configurationProvider = [(CallHapticsSettingsBundleController *)self configurationProvider];
    isCallHapticsAvailable = [configurationProvider isCallHapticsAvailable];

    if (!isCallHapticsAvailable)
    {
      goto LABEL_8;
    }

    activeSpecifier = [PSSpecifier groupSpecifierWithID:@"CALL_HAPTICS" name:&stru_4198];
    v8 = [CallHapticsSettingsBundleController localizedStringForKey:@"CALL_HAPTICS_EXPLANATION"];
    [activeSpecifier setProperty:v8 forKey:PSFooterTextGroupKey];
    createCallHapticsSpecifier = [(CallHapticsSettingsBundleController *)self createCallHapticsSpecifier];
    v10 = createCallHapticsSpecifier;
    if (activeSpecifier && createCallHapticsSpecifier)
    {
      [v4 addObject:activeSpecifier];
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

+ (id)localizedStringForKey:(id)key
{
  keyCopy = key;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  localizationTableName = [self localizationTableName];
  v7 = [v5 localizedStringForKey:keyCopy value:&stru_4198 table:localizationTableName];

  return v7;
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (void)refreshView
{
  parentListController = [(CallHapticsSettingsBundleController *)self parentListController];
  activeSpecifier = [(CallHapticsSettingsBundleController *)self activeSpecifier];
  [parentListController reloadSpecifier:activeSpecifier];
}

- (void)setCallHapticsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  configurationProvider = [(CallHapticsSettingsBundleController *)self configurationProvider];
  bOOLValue = [enabledCopy BOOLValue];

  [configurationProvider setCallHapticsEnabled:bOOLValue];
}

- (id)getCallHapticsEnabled:(id)enabled
{
  configurationProvider = [(CallHapticsSettingsBundleController *)self configurationProvider];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [configurationProvider isCallHapticsEnabled]);

  return v4;
}

- (id)currentControllerSpecifierIdentifier
{
  parentListController = [(CallHapticsSettingsBundleController *)self parentListController];
  specifier = [parentListController specifier];
  identifier = [specifier identifier];

  if (identifier)
  {
    v5 = identifier;
  }

  else
  {
    v5 = &stru_4198;
  }

  return v5;
}

@end