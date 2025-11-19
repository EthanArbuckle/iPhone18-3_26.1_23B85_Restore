@interface BuddyAppStoreController
- (BuddyAppStoreController)init;
- (BuddyFindMyDisabledAlertPresenter)findMyDisabledAlertPresenter;
- (void)_continuePressed:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation BuddyAppStoreController

- (BuddyAppStoreController)init
{
  location = self;
  v11[1] = a2;
  v2 = +[UIScreen mainScreen];
  [(UIScreen *)v2 scale];
  v11[0] = [UIImage _applicationIconImageForBundleIdentifier:@"com.apple.AppStore" format:2 scale:?];

  v3 = location;
  v4 = +[NSBundle mainBundle];
  v5 = [(NSBundle *)v4 localizedStringForKey:@"APP_STORE_TITLE" value:&stru_10032F900 table:@"Localizable"];
  v6 = +[NSBundle mainBundle];
  v7 = [(NSBundle *)v6 localizedStringForKey:@"APP_STORE_DETAIL" value:&stru_10032F900 table:@"Localizable"];
  location = 0;
  v10.receiver = v3;
  v10.super_class = BuddyAppStoreController;
  location = [(BuddyAppStoreController *)&v10 initWithTitle:v5 detailText:v7 icon:v11[0]];
  objc_storeStrong(&location, location);

  v8 = location;
  objc_storeStrong(v11, 0);
  objc_storeStrong(&location, 0);
  return v8;
}

- (void)viewDidLoad
{
  v14 = self;
  v13 = a2;
  v12.receiver = self;
  v12.super_class = BuddyAppStoreController;
  [(BuddyAppStoreController *)&v12 viewDidLoad];
  v2 = [(BuddyAppStoreController *)v14 navigationItem];
  [v2 setHidesBackButton:1];

  v3 = [(BuddyAppStoreController *)v14 suspendTask];
  v4 = [(BuddySuspendTask *)v3 message];

  if (v4)
  {
    v5 = [(BuddyAppStoreController *)v14 headerView];
    v6 = [(BuddyAppStoreController *)v14 suspendTask];
    v7 = [(BuddySuspendTask *)v6 message];
    [v5 setDetailText:v7];
  }

  v8 = v14;
  v9 = +[NSBundle mainBundle];
  v10 = [(NSBundle *)v9 localizedStringForKey:@"CONTINUE" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v8 addBoldButton:v10 action:"_continuePressed:"];

  v11 = [(BuddyAppStoreController *)v14 view];
  [v11 setUserInteractionEnabled:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = BuddyAppStoreController;
  [(BuddyAppStoreController *)&v5 viewDidAppear:a3];
  v3 = [(BuddyAppStoreController *)v8 findMyDisabledAlertPresenter];
  [(BuddyFindMyDisabledAlertPresenter *)v3 presentFindMyDisabledAlertIfNeededOnViewController:v8];

  v4 = [(BuddyAppStoreController *)v8 view];
  [v4 setUserInteractionEnabled:1];
}

- (void)_continuePressed:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyAppStoreController *)v6 buddyPreferencesExcludedFromBackup];
  [(BYPreferencesController *)v3 setObject:&__kCFBooleanTrue forKey:@"AppStorePresented"];

  v4 = [(BuddyWelcomeController *)v6 delegate];
  [(BFFFlowItemDelegate *)v4 flowItemDone:v6];

  objc_storeStrong(location, 0);
}

- (BuddyFindMyDisabledAlertPresenter)findMyDisabledAlertPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_findMyDisabledAlertPresenter);

  return WeakRetained;
}

@end