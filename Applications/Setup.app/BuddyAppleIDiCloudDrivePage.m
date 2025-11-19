@interface BuddyAppleIDiCloudDrivePage
- (BOOL)controllerNeedsToRun;
- (BuddyAppleIDiCloudDrivePage)init;
- (void)_continueTapped:(id)a3;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)viewDidLoad;
@end

@implementation BuddyAppleIDiCloudDrivePage

- (BuddyAppleIDiCloudDrivePage)init
{
  v10 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"ICLOUD_DRIVE_TITLE" value:&stru_10032F900 table:@"Localizable"];
  v5 = +[NSBundle mainBundle];
  v6 = [(NSBundle *)v5 localizedStringForKey:@"ICLOUD_DRIVE_DETAIL" value:&stru_10032F900 table:@"Localizable"];
  location = 0;
  v9.receiver = self;
  v9.super_class = BuddyAppleIDiCloudDrivePage;
  location = [(BuddyAppleIDiCloudDrivePage *)&v9 initWithTitle:v4 detailText:v6 symbolName:@"icloud.fill"];
  objc_storeStrong(&location, location);

  v7 = location;
  objc_storeStrong(&location, 0);
  return v7;
}

- (void)viewDidLoad
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = BuddyAppleIDiCloudDrivePage;
  [(BuddyAppleIDiCloudDrivePage *)&v5 viewDidLoad];
  v2 = v7;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"CONTINUE" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v2 addBoldButton:v4 action:"_continueTapped:"];
}

- (void)_continueTapped:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = +[ACAccountStore defaultStore];
  v20 = [v3 aa_primaryAppleAccount];

  v19 = [v20 aa_personID];
  v18 = [[AACloudKitStartMigrationRequest alloc] initWithAccount:v20];
  oslog = _BYLoggingFacility();
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = oslog;
    v5 = v16;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v4, v5, "Starting request to begin CloudKit migration...", buf, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v6 = v18;
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_1000F8F98;
  v13 = &unk_10032CD28;
  v14 = v19;
  [v6 performRequestWithHandler:&v9];
  [v20 aa_setUsesCloudDocs:1];
  v7 = +[ACAccountStore defaultStore];
  [v7 saveAccount:v20 withCompletionHandler:0];

  v8 = [(BuddyWelcomeController *)v22 delegate];
  [(BFFFlowItemDelegate *)v8 flowItemDone:v22];

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRun
{
  v7 = self;
  location[1] = a2;
  v2 = +[ACAccountStore defaultStore];
  location[0] = [v2 aa_primaryAppleAccount];

  if (location[0])
  {
    v3 = [(BuddyAppleIDiCloudDrivePage *)v7 managedConfiguration];
    v4 = [(MCProfileConnection *)v3 BOOLRestrictionForFeature:MCFeatureCloudDocumentSyncAllowed];

    v8 = v4 != 2;
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong(location, 0);
  return v8;
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = +[ACAccountStore defaultStore];
  v17 = [v3 aa_primaryAppleAccount];

  v16 = [[AACloudKitMigrationStateRequest alloc] initWithAccount:v17];
  oslog = _BYLoggingFacility();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = oslog;
    v5 = v14;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v4, v5, "Fetching CloudKit migration state...", buf, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v6 = v16;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1000F93F0;
  v11 = &unk_10032C330;
  v12 = location[0];
  [v6 performRequestWithHandler:&v7];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

@end