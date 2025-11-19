@interface BuddySettingsDataUsageController
- (BOOL)controllerNeedsToRun;
- (BuddySettingsDataUsageController)init;
- (void)_learnMoreTapped:(id)a3;
- (void)continueTapped:(id)a3;
- (void)viewDidLoad;
@end

@implementation BuddySettingsDataUsageController

- (BuddySettingsDataUsageController)init
{
  location = self;
  v18[1] = a2;
  v2 = +[UIScreen mainScreen];
  [(UIScreen *)v2 scale];
  v18[0] = [UIImage _applicationIconImageForBundleIdentifier:@"com.apple.Preferences" format:2 scale:?];

  if ((+[PDCPreflightManager isPreflightFeatureEnabled]& 1) != 0)
  {
    v3 = location;
    v4 = +[NSBundle mainBundle];
    v5 = [(NSBundle *)v4 localizedStringForKey:@"SETTINGS_DATA_USAGE_TITLE" value:&stru_10032F900 table:@"Localizable"];
    v6 = +[NSBundle mainBundle];
    v7 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"SETTINGS_DATA_USAGE_DETAIL"];
    v8 = [(NSBundle *)v6 localizedStringForKey:v7 value:&stru_10032F900 table:@"Localizable"];
    location = 0;
    v17.receiver = v3;
    v17.super_class = BuddySettingsDataUsageController;
    location = [(BuddySettingsDataUsageController *)&v17 initWithTitle:v5 detailText:v8 icon:v18[0]];
    objc_storeStrong(&location, location);
  }

  else
  {
    v9 = location;
    v10 = +[NSBundle mainBundle];
    v11 = [(NSBundle *)v10 localizedStringForKey:@"SETTINGS_CONTACTS_TITLE" value:&stru_10032F900 table:@"Localizable"];
    v12 = +[NSBundle mainBundle];
    v13 = [(NSBundle *)v12 localizedStringForKey:@"SETTINGS_CONTACTS_DETAIL" value:&stru_10032F900 table:@"Localizable"];
    location = 0;
    v16.receiver = v9;
    v16.super_class = BuddySettingsDataUsageController;
    location = [(BuddySettingsDataUsageController *)&v16 initWithTitle:v11 detailText:v13 icon:v18[0]];
    objc_storeStrong(&location, location);
  }

  v14 = location;
  objc_storeStrong(v18, 0);
  objc_storeStrong(&location, 0);
  return v14;
}

- (void)viewDidLoad
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = BuddySettingsDataUsageController;
  [(BuddyDataUsageController *)&v5 viewDidLoad];
  if ((+[PDCPreflightManager isPreflightFeatureEnabled]& 1) != 0)
  {
    v2 = v7;
    v3 = +[NSBundle mainBundle];
    v4 = [(NSBundle *)v3 localizedStringForKey:@"LEARN_MORE" value:&stru_10032F900 table:@"Localizable"];
    [(BuddyWelcomeController *)v2 addLinkButton:v4 action:"_learnMoreTapped:"];
  }
}

- (void)continueTapped:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ((+[PDCPreflightManager isPreflightFeatureEnabled]& 1) != 0)
  {
    v3 = +[BYPreferencesController buddyPreferences];
    [v3 setObject:&__kCFBooleanTrue forKey:@"SettingsDataUsagePresented"];
  }

  else
  {
    v3 = +[BYPreferencesController buddyPreferences];
    [v3 setObject:&__kCFBooleanTrue forKey:@"SettingsContactsPresented"];
  }

  v4.receiver = v6;
  v4.super_class = BuddySettingsDataUsageController;
  [(BuddyDataUsageController *)&v4 continueTapped:v6];
  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRun
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = BuddySettingsDataUsageController;
  if ([(BuddyDataUsageController *)&v5 controllerNeedsToRun])
  {
    if ((+[PDCPreflightManager isPreflightFeatureEnabled]& 1) != 0)
    {
      v2 = [(BuddyDataUsageController *)v7 existingSettings];
      v3 = [(BuddyExistingSettings *)v2 backupMetadata];
      v8 = ([v3 settingsDataUsagePresented] ^ 1) & 1;
    }

    else
    {
      v2 = [(BuddyDataUsageController *)v7 existingSettings];
      v3 = [(BuddyExistingSettings *)v2 backupMetadata];
      v8 = ([v3 settingsContactsPresented] ^ 1) & 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (void)_learnMoreTapped:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  obj = 0;
  v3 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.Preferences" allowPlaceholder:0 error:&obj];
  objc_storeStrong(&v16, obj);
  v15 = v3;
  if (v16)
  {
    oslog = _BYLoggingFacility();
    v12 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v8 = 0;
      if (_BYIsInternalInstall())
      {
        v4 = v16;
      }

      else if (v16)
      {
        v11 = [v16 domain];
        v10 = 1;
        v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v11, [v16 code]);
        v9 = v4;
        v8 = 1;
      }

      else
      {
        v4 = 0;
      }

      sub_100071CBC(buf, v4);
      _os_log_error_impl(&_mh_execute_header, oslog, v12, "Failed to retrieve application record: %{public}@", buf, 0xCu);
      if (v8)
      {
      }

      if (v10)
      {
      }
    }

    objc_storeStrong(&oslog, 0);
  }

  v5 = [v15 identities];
  v7 = [v5 firstObject];

  v6 = PDUDisclosureReviewViewControllerForApplicationWithVariant();
  [(BuddySettingsDataUsageController *)v18 presentViewController:v6 animated:1 completion:0];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

@end