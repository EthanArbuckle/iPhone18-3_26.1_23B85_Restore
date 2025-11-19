@interface STCustomNotificationSettingsController
+ (id)screenTimeDefaults;
- (STCustomNotificationSettingsController)init;
- (STCustomNotificationSettingsController)initWithPersistenceController:(id)a3 userDefaults:(id)a4;
- (id)_createSpecifierWithNameKey:(id)a3 userDefaultsKey:(id)a4;
- (id)_isNotificationEnabled:(id)a3;
- (id)specifiers;
- (void)_setIsNotificationEnabled:(id)a3 specifier:(id)a4;
- (void)loadCustomSettingsWithCompletionHandler:(id)a3;
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

- (STCustomNotificationSettingsController)initWithPersistenceController:(id)a3 userDefaults:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = STCustomNotificationSettingsController;
  v8 = [(STCustomNotificationSettingsController *)&v13 initWithNibName:0 bundle:0];
  persistenceController = v8->_persistenceController;
  v8->_persistenceController = v6;
  v10 = v6;

  userDefaults = v8->_userDefaults;
  v8->_userDefaults = v7;

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

- (void)loadCustomSettingsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STCustomNotificationSettingsController *)self persistenceController];
  v6 = [v5 newBackgroundContext];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_F0C;
  v9[3] = &unk_4210;
  v11 = self;
  v12 = v4;
  v10 = v6;
  v7 = v4;
  v8 = v6;
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
    v8 = [v7 UUIDString];
    v9 = [PSSpecifier groupSpecifierWithID:v8];

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

- (id)_createSpecifierWithNameKey:(id)a3 userDefaultsKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[STScreenTimeSettingsUIBundle bundle];
  v9 = [v8 localizedStringForKey:v7 value:&stru_4250 table:0];

  v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:"_setIsNotificationEnabled:specifier:" get:"_isNotificationEnabled:" detail:0 cell:6 edit:0];
  [v10 setIdentifier:v6];

  return v10;
}

- (void)_setIsNotificationEnabled:(id)a3 specifier:(id)a4
{
  v6 = a4;
  LODWORD(a3) = [a3 BOOLValue];
  v8 = [(STCustomNotificationSettingsController *)self userDefaults];
  v7 = [v6 identifier];

  [v8 setBool:a3 ^ 1 forKey:v7];
}

- (id)_isNotificationEnabled:(id)a3
{
  v4 = a3;
  v5 = [(STCustomNotificationSettingsController *)self userDefaults];
  v6 = [v4 identifier];

  v7 = [v5 BOOLForKey:v6];

  return [NSNumber numberWithInt:v7 ^ 1];
}

@end