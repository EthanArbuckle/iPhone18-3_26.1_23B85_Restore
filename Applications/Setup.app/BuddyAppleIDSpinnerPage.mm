@interface BuddyAppleIDSpinnerPage
- (BuddyAppleIDSpinnerPage)init;
- (BuddyAppleIDSpinnerPage)initWithAccountMode:(unint64_t)mode;
- (BuddyAppleIDSpinnerPageDelegate)spinnerDelegate;
- (id)initForSilentAuthentication;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation BuddyAppleIDSpinnerPage

- (BuddyAppleIDSpinnerPage)init
{
  v8 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"SIGN_IN_APPLE_ID_WORDY" value:&stru_10032F900 table:@"Localizable"];
  location = 0;
  v7.receiver = self;
  v7.super_class = BuddyAppleIDSpinnerPage;
  location = [(BuddyAppleIDSpinnerPage *)&v7 initWithSpinnerText:v4];
  v5 = location;

  objc_storeStrong(&location, 0);
  return v5;
}

- (BuddyAppleIDSpinnerPage)initWithAccountMode:(unint64_t)mode
{
  selfCopy = self;
  location[2] = a2;
  location[1] = mode;
  location[0] = 0;
  if (!mode)
  {
    goto LABEL_8;
  }

  if (mode - 1 < 2)
  {
    v3 = +[NSBundle mainBundle];
    v4 = [(NSBundle *)v3 localizedStringForKey:@"SIGN_IN_APPLE_ID_WORDY" value:&stru_10032F900 table:@"Localizable"];
    v5 = location[0];
    location[0] = v4;

    goto LABEL_9;
  }

  if (mode == 3)
  {
LABEL_8:
    v9 = +[NSBundle mainBundle];
    v10 = [(NSBundle *)v9 localizedStringForKey:@"UPGRADING_ICLOUD_WORDY" value:&stru_10032F900 table:@"Localizable"];
    v11 = location[0];
    location[0] = v10;

    goto LABEL_9;
  }

  if (mode == 4)
  {
    v6 = +[NSBundle mainBundle];
    v7 = [(NSBundle *)v6 localizedStringForKey:@"UPGRADING_APPLE_ID_WORDY" value:&stru_10032F900 table:@"Localizable"];
    v8 = location[0];
    location[0] = v7;
  }

LABEL_9:
  v12 = selfCopy;
  selfCopy = 0;
  v15.receiver = v12;
  v15.super_class = BuddyAppleIDSpinnerPage;
  selfCopy = [(BuddyAppleIDSpinnerPage *)&v15 initWithSpinnerText:location[0]];
  v13 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v13;
}

- (id)initForSilentAuthentication
{
  v9 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"SIGN_IN_APPLE_ID_WORDY_SILENT"];
  v5 = [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_10032F900 table:@"Localizable"];
  location = 0;
  v8.receiver = self;
  v8.super_class = BuddyAppleIDSpinnerPage;
  location = [(BuddyAppleIDSpinnerPage *)&v8 initWithSpinnerText:v5];
  v6 = location;

  objc_storeStrong(&location, 0);
  return v6;
}

- (void)loadView
{
  selfCopy = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = BuddyAppleIDSpinnerPage;
  [(BuddyAppleIDSpinnerPage *)&v4 loadView];
  navigationItem = [(BuddyAppleIDSpinnerPage *)selfCopy navigationItem];
  [navigationItem setTitle:&stru_10032F900];

  navigationItem2 = [(BuddyAppleIDSpinnerPage *)selfCopy navigationItem];
  [navigationItem2 setHidesBackButton:1 animated:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v8 = a2;
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = BuddyAppleIDSpinnerPage;
  [(BuddyAppleIDSpinnerPage *)&v6 viewDidAppear:appear];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_spinnerDelegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&selfCopy->_spinnerDelegate);
    [v5 buddyAppleIDSpinnerPageDidAppear:selfCopy];
  }
}

- (BuddyAppleIDSpinnerPageDelegate)spinnerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_spinnerDelegate);

  return WeakRetained;
}

@end