@interface HeartRateNotificationsViewController
+ (BOOL)controllerNeedsToRunForBuddyControllerDelegate:(id)delegate;
- (HeartRateNotificationsViewController)init;
- (id)imageResourceBundleIdentifier;
- (id)okayButtonTitle;
- (id)titleString;
- (void)_resetHeartRateNotificationSettings;
- (void)okayButtonPressed:(id)pressed;
- (void)viewDidLoad;
@end

@implementation HeartRateNotificationsViewController

- (HeartRateNotificationsViewController)init
{
  v5.receiver = self;
  v5.super_class = HeartRateNotificationsViewController;
  v2 = [(HeartRateNotificationsViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HeartRateNotificationsViewController *)v2 setStyle:32];
  }

  return v3;
}

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = HeartRateNotificationsViewController;
  [(HeartRateNotificationsViewController *)&v20 viewDidLoad];
  _HKInitializeLogging();
  v3 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Heart Rate Notifications View Controller is loading", v19, 2u);
  }

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [UIImage imageNamed:@"WatchBuddy_HighHeartRate_FeatureList_Up" inBundle:v4];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"HR_HIGH_NOTIFICATIONS_FEATURE_TITLE" value:&stru_4190 table:@"Localizable"];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"HR_HIGH_NOTIFICATIONS_FEATURE_MESSAGE" value:&stru_4190 table:@"Localizable"];
  [(HeartRateNotificationsViewController *)self addBulletedListItemWithTitle:v7 description:v9 image:v5];

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [UIImage imageNamed:@"WatchBuddy_HighHeartRate_FeatureList_Down" inBundle:v10];

  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"HR_LOW_NOTIFICATIONS_FEATURE_TITLE" value:&stru_4190 table:@"Localizable"];
  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"HR_LOW_NOTIFICATIONS_FEATURE_MESSAGE" value:&stru_4190 table:@"Localizable"];
  [(HeartRateNotificationsViewController *)self addBulletedListItemWithTitle:v13 description:v15 image:v11];

  v16 = [NSUserDefaults alloc];
  v17 = [v16 initWithSuiteName:kHKHeartRateNotificationsPreferencesDomain];
  userDefaults = self->_userDefaults;
  self->_userDefaults = v17;

  [(HeartRateNotificationsViewController *)self _setTachycardiaEnabled:1];
  [(HeartRateNotificationsViewController *)self _setBradycardiaEnabled:1];
}

+ (BOOL)controllerNeedsToRunForBuddyControllerDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = +[NRPairedDeviceRegistry sharedInstance];
  v5 = +[NRPairedDeviceRegistry activeDeviceSelectorBlock];
  v6 = [v4 getDevicesMatching:v5];
  firstObject = [v6 firstObject];

  v8 = [[NSUUID alloc] initWithUUIDString:@"2A57E5FF-A774-4903-B58D-41F01654BC76"];
  v9 = [firstObject supportsCapability:v8];

  v10 = [NSUserDefaults alloc];
  v11 = [v10 initWithSuiteName:kHKHeartRateNotificationsPreferencesDomain];
  v12 = [v11 objectForKey:kHKHeartRateKeyEnableStationaryDiscordanceDetection];
  v13 = [v11 objectForKey:kHKHeartRateKeyEnableBradycardiaDetection];
  v14 = ((v12 | v13) == 0) & v9;
  setupFlowUserInfo = [delegateCopy setupFlowUserInfo];

  v16 = [setupFlowUserInfo objectForKeyedSubscript:BPSPairingFlowFamilyMember];

  if (v16)
  {
    v17 = ([v16 isChildAccount] ^ 1) & v14;
  }

  else
  {
    v18 = [NSUserDefaults alloc];
    v19 = [v18 initWithSuiteName:kHKAgeGatingDomain];
    v17 = ([v19 BOOLForKey:HKIsAgeGatedUserDefaultsHeartSensingKey] ^ 1) & v14;
  }

  return v17;
}

- (id)imageResourceBundleIdentifier
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  bundleIdentifier = [v2 bundleIdentifier];

  return bundleIdentifier;
}

- (id)titleString
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"HR_MODE_GETTING_STARTED_TITLE" value:&stru_4190 table:@"Localizable"];

  return v3;
}

- (id)okayButtonTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"HR_MODE_GETTING_STARTED_GET_STARTED" value:&stru_4190 table:@"Localizable"];

  return v3;
}

- (void)okayButtonPressed:(id)pressed
{
  delegate = [(HeartRateNotificationsViewController *)self delegate];
  [delegate buddyControllerDone:self];
}

- (void)_resetHeartRateNotificationSettings
{
  [(NSUserDefaults *)self->_userDefaults removeObjectForKey:kHKHeartRateKeyEnableStationaryDiscordanceDetection];
  [(NSUserDefaults *)self->_userDefaults removeObjectForKey:kHKHeartRateKeyStationaryDiscordanceMinimumBPM];
  [(NSUserDefaults *)self->_userDefaults removeObjectForKey:kHKHeartRateKeyEnableBradycardiaDetection];
  userDefaults = self->_userDefaults;
  v4 = kHKHeartRateKeyBradycardiaThresholdBPM;

  [(NSUserDefaults *)userDefaults removeObjectForKey:v4];
}

@end