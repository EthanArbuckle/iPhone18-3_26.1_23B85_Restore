@interface BuddyBetaReEnrollmentLearnMoreController
- (BuddyBetaReEnrollmentLearnMoreController)init;
- (void)_doneTapped:(id)a3;
- (void)viewDidLoad;
@end

@implementation BuddyBetaReEnrollmentLearnMoreController

- (BuddyBetaReEnrollmentLearnMoreController)init
{
  location = self;
  v9[1] = a2;
  v2 = +[NSBundle mainBundle];
  v9[0] = [(NSBundle *)v2 localizedStringForKey:@"ABOUT_APPLE_SOFTWARE_BETA_PROGRAM_TITLE" value:&stru_10032F900 table:@"BetaReEnrollment"];

  v3 = +[NSBundle mainBundle];
  v8 = [(NSBundle *)v3 localizedStringForKey:@"ABOUT_APPLE_SOFTWARE_BETA_PROGRAM_DETAIL" value:&stru_10032F900 table:@"BetaReEnrollment"];

  v4 = location;
  location = 0;
  v7.receiver = v4;
  v7.super_class = BuddyBetaReEnrollmentLearnMoreController;
  location = [(BuddyBetaReEnrollmentLearnMoreController *)&v7 initWithTitle:v9[0] detailText:v8 icon:0];
  objc_storeStrong(&location, location);
  v5 = location;
  objc_storeStrong(&v8, 0);
  objc_storeStrong(v9, 0);
  objc_storeStrong(&location, 0);
  return v5;
}

- (void)viewDidLoad
{
  v9 = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = BuddyBetaReEnrollmentLearnMoreController;
  [(BuddyBetaReEnrollmentLearnMoreController *)&v7 viewDidLoad];
  v2 = [UIBarButtonItem alloc];
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"DONE" value:&stru_10032F900 table:@"Localizable"];
  v5 = [v2 initWithTitle:v4 style:2 target:v9 action:"_doneTapped:"];
  v6 = [(BuddyBetaReEnrollmentLearnMoreController *)v9 navigationItem];
  [v6 setRightBarButtonItem:v5];
}

- (void)_doneTapped:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyBetaReEnrollmentLearnMoreController *)v5 presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];

  objc_storeStrong(location, 0);
}

@end