@interface BuddyAppleIDSpinnerPage
- (BuddyAppleIDSpinnerPage)init;
- (BuddyAppleIDSpinnerPage)initWithAccountMode:(unint64_t)a3;
- (BuddyAppleIDSpinnerPageDelegate)spinnerDelegate;
- (id)initForSilentAuthentication;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
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

- (BuddyAppleIDSpinnerPage)initWithAccountMode:(unint64_t)a3
{
  v17 = self;
  location[2] = a2;
  location[1] = a3;
  location[0] = 0;
  if (!a3)
  {
    goto LABEL_8;
  }

  if (a3 - 1 < 2)
  {
    v3 = +[NSBundle mainBundle];
    v4 = [(NSBundle *)v3 localizedStringForKey:@"SIGN_IN_APPLE_ID_WORDY" value:&stru_10032F900 table:@"Localizable"];
    v5 = location[0];
    location[0] = v4;

    goto LABEL_9;
  }

  if (a3 == 3)
  {
LABEL_8:
    v9 = +[NSBundle mainBundle];
    v10 = [(NSBundle *)v9 localizedStringForKey:@"UPGRADING_ICLOUD_WORDY" value:&stru_10032F900 table:@"Localizable"];
    v11 = location[0];
    location[0] = v10;

    goto LABEL_9;
  }

  if (a3 == 4)
  {
    v6 = +[NSBundle mainBundle];
    v7 = [(NSBundle *)v6 localizedStringForKey:@"UPGRADING_APPLE_ID_WORDY" value:&stru_10032F900 table:@"Localizable"];
    v8 = location[0];
    location[0] = v7;
  }

LABEL_9:
  v12 = v17;
  v17 = 0;
  v15.receiver = v12;
  v15.super_class = BuddyAppleIDSpinnerPage;
  v17 = [(BuddyAppleIDSpinnerPage *)&v15 initWithSpinnerText:location[0]];
  v13 = v17;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v17, 0);
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
  v6 = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = BuddyAppleIDSpinnerPage;
  [(BuddyAppleIDSpinnerPage *)&v4 loadView];
  v2 = [(BuddyAppleIDSpinnerPage *)v6 navigationItem];
  [v2 setTitle:&stru_10032F900];

  v3 = [(BuddyAppleIDSpinnerPage *)v6 navigationItem];
  [v3 setHidesBackButton:1 animated:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6.receiver = self;
  v6.super_class = BuddyAppleIDSpinnerPage;
  [(BuddyAppleIDSpinnerPage *)&v6 viewDidAppear:a3];
  WeakRetained = objc_loadWeakRetained(&v9->_spinnerDelegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&v9->_spinnerDelegate);
    [v5 buddyAppleIDSpinnerPageDidAppear:v9];
  }
}

- (BuddyAppleIDSpinnerPageDelegate)spinnerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_spinnerDelegate);

  return WeakRetained;
}

@end