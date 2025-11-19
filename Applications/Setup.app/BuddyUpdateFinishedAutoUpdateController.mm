@interface BuddyUpdateFinishedAutoUpdateController
- (void)viewDidLoad;
@end

@implementation BuddyUpdateFinishedAutoUpdateController

- (void)viewDidLoad
{
  v18 = self;
  v17 = a2;
  v16.receiver = self;
  v16.super_class = BuddyUpdateFinishedAutoUpdateController;
  [(BuddyAutoUpdateController *)&v16 viewDidLoad];
  v2 = [(BuddyUpdateFinishedAutoUpdateController *)v18 headerView];
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"SOFTWARE_UPDATE_COMPLETE_TITLE" value:&stru_10032F900 table:@"Localizable"];
  [v2 setTitle:v4];

  v5 = +[NSBundle mainBundle];
  v6 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"SOFTWARE_UPDATE_COMPLETE_DETAIL"];
  v7 = [(NSBundle *)v5 localizedStringForKey:v6 value:&stru_10032F900 table:@"Localizable"];
  v8 = +[UIDevice currentDevice];
  v9 = [(UIDevice *)v8 systemVersion];
  location = [NSString stringWithFormat:v7, v9];

  v10 = +[NSBundle mainBundle];
  v11 = [(NSBundle *)v10 localizedStringForKey:@"AUTO_UPDATE_DESCRIPTION" value:&stru_10032F900 table:@"Localizable"];
  v12 = [location stringByAppendingFormat:@"\n\n%@", v11];
  v13 = location;
  location = v12;

  v14 = [(BuddyUpdateFinishedAutoUpdateController *)v18 headerView];
  [v14 setDetailText:location];

  objc_storeStrong(&location, 0);
}

@end