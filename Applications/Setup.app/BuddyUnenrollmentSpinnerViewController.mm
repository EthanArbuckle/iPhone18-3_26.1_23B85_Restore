@interface BuddyUnenrollmentSpinnerViewController
- (BuddyUnenrollmentSpinnerViewController)init;
@end

@implementation BuddyUnenrollmentSpinnerViewController

- (BuddyUnenrollmentSpinnerViewController)init
{
  v8 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"REMOTE_MANAGEMENT_MIGRATION_STATUS_UNENROLLING" value:&stru_10032F900 table:@"Localizable"];
  location = 0;
  v7.receiver = self;
  v7.super_class = BuddyUnenrollmentSpinnerViewController;
  location = [(BuddyUnenrollmentSpinnerViewController *)&v7 initWithSpinnerText:v4];
  objc_storeStrong(&location, location);

  v5 = location;
  objc_storeStrong(&location, 0);
  return v5;
}

@end