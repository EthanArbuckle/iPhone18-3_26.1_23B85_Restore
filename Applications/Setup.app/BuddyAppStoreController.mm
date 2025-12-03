@interface BuddyAppStoreController
- (BuddyAppStoreController)init;
- (BuddyFindMyDisabledAlertPresenter)findMyDisabledAlertPresenter;
- (void)_continuePressed:(id)pressed;
- (void)viewDidAppear:(BOOL)appear;
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
  selfCopy = self;
  v13 = a2;
  v12.receiver = self;
  v12.super_class = BuddyAppStoreController;
  [(BuddyAppStoreController *)&v12 viewDidLoad];
  navigationItem = [(BuddyAppStoreController *)selfCopy navigationItem];
  [navigationItem setHidesBackButton:1];

  suspendTask = [(BuddyAppStoreController *)selfCopy suspendTask];
  message = [(BuddySuspendTask *)suspendTask message];

  if (message)
  {
    headerView = [(BuddyAppStoreController *)selfCopy headerView];
    suspendTask2 = [(BuddyAppStoreController *)selfCopy suspendTask];
    message2 = [(BuddySuspendTask *)suspendTask2 message];
    [headerView setDetailText:message2];
  }

  v8 = selfCopy;
  v9 = +[NSBundle mainBundle];
  v10 = [(NSBundle *)v9 localizedStringForKey:@"CONTINUE" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v8 addBoldButton:v10 action:"_continuePressed:"];

  view = [(BuddyAppStoreController *)selfCopy view];
  [view setUserInteractionEnabled:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v7 = a2;
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = BuddyAppStoreController;
  [(BuddyAppStoreController *)&v5 viewDidAppear:appear];
  findMyDisabledAlertPresenter = [(BuddyAppStoreController *)selfCopy findMyDisabledAlertPresenter];
  [(BuddyFindMyDisabledAlertPresenter *)findMyDisabledAlertPresenter presentFindMyDisabledAlertIfNeededOnViewController:selfCopy];

  view = [(BuddyAppStoreController *)selfCopy view];
  [view setUserInteractionEnabled:1];
}

- (void)_continuePressed:(id)pressed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
  buddyPreferencesExcludedFromBackup = [(BuddyAppStoreController *)selfCopy buddyPreferencesExcludedFromBackup];
  [(BYPreferencesController *)buddyPreferencesExcludedFromBackup setObject:&__kCFBooleanTrue forKey:@"AppStorePresented"];

  delegate = [(BuddyWelcomeController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];

  objc_storeStrong(location, 0);
}

- (BuddyFindMyDisabledAlertPresenter)findMyDisabledAlertPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_findMyDisabledAlertPresenter);

  return WeakRetained;
}

@end