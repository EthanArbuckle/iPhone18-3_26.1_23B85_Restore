@interface STCustomNotificationSettingsController
+ (id)screenTimeDefaults;
- (STCustomNotificationSettingsController)init;
- (STCustomNotificationSettingsController)initWithPersistenceController:(id)controller userDefaults:(id)defaults;
- (id)_createSpecifierWithNameKey:(id)key userDefaultsKey:(id)defaultsKey;
- (id)_isNotificationEnabled:(id)enabled;
- (id)specifiers;
- (void)_setIsNotificationEnabled:(id)enabled specifier:(id)specifier;
- (void)loadCustomSettingsWithCompletionHandler:(id)handler;
- (void)viewDidLoad;
@end

@implementation STCustomNotificationSettingsController

- (STCustomNotificationSettingsController)init
{
  v3 = +[STAdminPersistenceController sharedController];
  v4 = +[STCustomNotificationSettingsController screenTimeDefaults];
  v5 = [(STCustomNotificationSettingsController *)self initWithPersistenceController:v3 userDefaults:v4];

  return v5;
}

- (STCustomNotificationSettingsController)initWithPersistenceController:(id)controller userDefaults:(id)defaults
{
  controllerCopy = controller;
  defaultsCopy = defaults;
  v13.receiver = self;
  v13.super_class = STCustomNotificationSettingsController;
  v8 = [(STCustomNotificationSettingsController *)&v13 initWithNibName:0 bundle:0];
  persistenceController = v8->_persistenceController;
  v8->_persistenceController = controllerCopy;
  v10 = controllerCopy;

  userDefaults = v8->_userDefaults;
  v8->_userDefaults = defaultsCopy;

  return v8;
}

+ (id)screenTimeDefaults
{
  v2 = [NSUserDefaults alloc];
  v3 = [v2 initWithSuiteName:STScreenTimeAppGroupName];

  return v3;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = STCustomNotificationSettingsController;
  [(STCustomNotificationSettingsController *)&v3 viewDidLoad];
  [(STCustomNotificationSettingsController *)self loadCustomSettingsWithCompletionHandler:&stru_41C0];
}

- (void)loadCustomSettingsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  persistenceController = [(STCustomNotificationSettingsController *)self persistenceController];
  newBackgroundContext = [persistenceController newBackgroundContext];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_F0C;
  v9[3] = &unk_4210;
  selfCopy = self;
  v12 = handlerCopy;
  v10 = newBackgroundContext;
  v7 = handlerCopy;
  v8 = newBackgroundContext;
  [v8 performBlock:v9];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:4];
    v6 = +[STScreenTimeSettingsUIBundle bundle];
    v7 = objc_opt_new();
    uUIDString = [v7 UUIDString];
    v9 = [PSSpecifier groupSpecifierWithID:uUIDString];

    v10 = [v6 localizedStringForKey:@"WeeklyReportNotificationGroupSpecifierFooterText" value:&stru_4250 table:0];
    v11 = PSFooterTextGroupKey;
    [v9 setObject:v10 forKeyedSubscript:PSFooterTextGroupKey];

    [v5 addObject:v9];
    v12 = [(STCustomNotificationSettingsController *)self _createSpecifierWithNameKey:@"WeeklyReportNotificationSpecifierName" userDefaultsKey:STUserDefaultsKeyIsWeeklyReportNotificationDisabled];
    [v5 addObject:v12];
    if (_os_feature_enabled_impl() && [(STCustomNotificationSettingsController *)self isParent])
    {
      v13 = [v6 localizedStringForKey:@"ChildOrTeenGroupSpecifierName" value:&stru_4250 table:0];
      v14 = [PSSpecifier groupSpecifierWithName:v13];
      v15 = [v6 localizedStringForKey:@"ChildOrTeenGroupSpecifierFooter" value:&stru_4250 table:0];
      [v14 setObject:v15 forKeyedSubscript:v11];

      [v5 addObject:v14];
      v16 = [(STCustomNotificationSettingsController *)self _createSpecifierWithNameKey:@"ScreenTimePasscodeNotificationSpecifierName" userDefaultsKey:STUserDefaultsKeyIsPasscodeUseNotificationDisabled];
      [v5 addObject:v16];
    }

    v17 = [v5 copy];
    v18 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v17;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)_createSpecifierWithNameKey:(id)key userDefaultsKey:(id)defaultsKey
{
  defaultsKeyCopy = defaultsKey;
  keyCopy = key;
  v8 = +[STScreenTimeSettingsUIBundle bundle];
  v9 = [v8 localizedStringForKey:keyCopy value:&stru_4250 table:0];

  v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:"_setIsNotificationEnabled:specifier:" get:"_isNotificationEnabled:" detail:0 cell:6 edit:0];
  [v10 setIdentifier:defaultsKeyCopy];

  return v10;
}

- (void)_setIsNotificationEnabled:(id)enabled specifier:(id)specifier
{
  specifierCopy = specifier;
  LODWORD(enabled) = [enabled BOOLValue];
  userDefaults = [(STCustomNotificationSettingsController *)self userDefaults];
  identifier = [specifierCopy identifier];

  [userDefaults setBool:enabled ^ 1 forKey:identifier];
}

- (id)_isNotificationEnabled:(id)enabled
{
  enabledCopy = enabled;
  userDefaults = [(STCustomNotificationSettingsController *)self userDefaults];
  identifier = [enabledCopy identifier];

  v7 = [userDefaults BOOLForKey:identifier];

  return [NSNumber numberWithInt:v7 ^ 1];
}

@end