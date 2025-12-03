@interface HPRFMindBreatheRateController
+ (id)mindBreatheRate;
- (HPRFMindBreatheRateController)init;
- (id)applicationBundleIdentifier;
- (id)bundle;
- (id)localizedPaneTitle;
- (id)specifiers;
- (void)dealloc;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation HPRFMindBreatheRateController

+ (id)mindBreatheRate
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"BreathRate", kNLMindPreferencesDomain, &keyExistsAndHasValidFormat);
  v3 = 7;
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppIntegerValue;
  }

  v4 = [NSString stringWithFormat:@"%@%ld", @"ID_BPM_", v3];
  v5 = sub_46D0(v4, 1);

  return v5;
}

- (HPRFMindBreatheRateController)init
{
  v6.receiver = self;
  v6.super_class = HPRFMindBreatheRateController;
  v2 = [(HPRFMindBreatheRateController *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    syncManager = v2->_syncManager;
    v2->_syncManager = v3;
  }

  return v2;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = HPRFMindBreatheRateController;
  [(HPRFMindBreatheRateController *)&v9 viewDidLoad];
  localizedPaneTitle = [(HPRFMindBreatheRateController *)self localizedPaneTitle];
  [(HPRFMindBreatheRateController *)self setTitle:localizedPaneTitle];

  objc_initWeak(&location, self);
  v4 = kNLMindPreferencesChangedNotification;
  v5 = &_dispatch_main_q;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_49A4;
  v6[3] = &unk_18A70;
  objc_copyWeak(&v7, &location);
  notify_register_dispatch(v4, &self->_notifyToken, &_dispatch_main_q, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
  }

  v4.receiver = self;
  v4.super_class = HPRFMindBreatheRateController;
  [(HPRFMindBreatheRateController *)&v4 dealloc];
}

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PANE_TITLE" value:&stru_19170 table:@"MindBreathingBreathRate"];

  return v3;
}

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = [PSSpecifier groupSpecifierWithID:@"MIND_BREATHE_RATE_GROUP_ID"];
    [v6 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    v7 = sub_5038();
    v8 = [v7 hk_map:&stru_18C78];

    v9 = [v8 hk_map:&stru_18C10];
    v21 = v6;
    v10 = [NSArray arrayWithObjects:&v21 count:1];
    v11 = [v10 arrayByAddingObjectsFromArray:v9];

    v12 = *&self->BPSNotificationAppController_opaque[v2];
    *&self->BPSNotificationAppController_opaque[v2] = v11;
    v13 = v11;

    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"BreathRate", kNLMindPreferencesDomain, &keyExistsAndHasValidFormat);
    v15 = 7;
    if (keyExistsAndHasValidFormat)
    {
      v15 = AppIntegerValue;
    }

    v16 = *&self->BPSNotificationAppController_opaque[v2];
    v17 = [NSString stringWithFormat:@"%@%ld", @"ID_BPM_", v15];
    v18 = [v16 specifierForID:v17];

    [v6 setProperty:v18 forKey:PSRadioGroupCheckedSpecifierKey];
    v4 = *&self->BPSNotificationAppController_opaque[v2];
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(HPRFMindBreatheRateController *)self indexForIndexPath:pathCopy];
  v9 = [*&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  v10 = sub_5038();
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_50B8;
  v22[3] = &unk_18C38;
  v11 = v9;
  v23 = v11;
  v12 = [v10 hk_firstObjectPassingTest:v22];
  v13 = v12;
  if (v12)
  {
    v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 integerValue]);
    v15 = kNLMindPreferencesDomain;
    CFPreferencesSetAppValue(@"BreathRate", v14, kNLMindPreferencesDomain);
    CFPreferencesAppSynchronize(v15);
    syncManager = self->_syncManager;
    v24 = @"BreathRate";
    v17 = [NSArray arrayWithObjects:&v24 count:1];
    v18 = [NSSet setWithArray:v17];
    [(NPSManager *)syncManager synchronizeUserDefaultsDomain:v15 keys:v18];
  }

  [(HPRFMindBreatheRateController *)self reloadSpecifiers];
  WeakRetained = objc_loadWeakRetained(&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSViewController__parentController]);
  specifier = [(HPRFMindBreatheRateController *)self specifier];
  [WeakRetained reloadSpecifier:specifier];

  v21.receiver = self;
  v21.super_class = HPRFMindBreatheRateController;
  [(HPRFMindBreatheRateController *)&v21 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

- (id)bundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (id)applicationBundleIdentifier
{
  bundle = [(HPRFMindBreatheRateController *)self bundle];
  bundleIdentifier = [bundle bundleIdentifier];

  return bundleIdentifier;
}

@end