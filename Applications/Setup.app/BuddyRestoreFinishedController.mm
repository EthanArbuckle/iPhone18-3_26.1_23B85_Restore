@interface BuddyRestoreFinishedController
- (BuddyRestoreFinishedController)init;
- (void)_continuePressed:(id)a3;
- (void)viewDidLoad;
@end

@implementation BuddyRestoreFinishedController

- (BuddyRestoreFinishedController)init
{
  v11 = self;
  location[1] = a2;
  location[0] = @"apps.iphone.badge.checkmark";
  if (BFFIsiPad())
  {
    objc_storeStrong(location, @"apps.ipad.badge.checkmark");
  }

  v2 = v11;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"RESTORE_COMPLETED_TITLE" value:&stru_10032F900 table:@"Localizable"];
  v5 = +[NSBundle mainBundle];
  v6 = [(NSBundle *)v5 localizedStringForKey:@"RESTORE_COMPLETED_DETAIL" value:&stru_10032F900 table:@"Localizable"];
  v11 = 0;
  v9.receiver = v2;
  v9.super_class = BuddyRestoreFinishedController;
  v11 = [(BuddyRestoreFinishedController *)&v9 initWithTitle:v4 detailText:v6 symbolName:location[0]];
  v7 = v11;

  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (void)viewDidLoad
{
  v9 = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = BuddyRestoreFinishedController;
  [(BuddyRestoreFinishedController *)&v7 viewDidLoad];
  v2 = [(BuddyRestoreFinishedController *)v9 headerView];
  LODWORD(v3) = 0;
  [v2 setTitleHyphenationFactor:v3];

  v4 = v9;
  v5 = +[NSBundle mainBundle];
  v6 = [(NSBundle *)v5 localizedStringForKey:@"CONTINUE" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v4 addBoldButton:v6 action:"_continuePressed:"];
}

- (void)_continuePressed:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyWelcomeController *)v5 delegate];
  [(BFFFlowItemDelegate *)v3 flowItemDone:v5];

  objc_storeStrong(location, 0);
}

@end