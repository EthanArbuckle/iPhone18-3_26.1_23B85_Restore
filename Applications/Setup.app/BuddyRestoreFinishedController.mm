@interface BuddyRestoreFinishedController
- (BuddyRestoreFinishedController)init;
- (void)_continuePressed:(id)pressed;
- (void)viewDidLoad;
@end

@implementation BuddyRestoreFinishedController

- (BuddyRestoreFinishedController)init
{
  selfCopy = self;
  location[1] = a2;
  location[0] = @"apps.iphone.badge.checkmark";
  if (BFFIsiPad())
  {
    objc_storeStrong(location, @"apps.ipad.badge.checkmark");
  }

  v2 = selfCopy;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"RESTORE_COMPLETED_TITLE" value:&stru_10032F900 table:@"Localizable"];
  v5 = +[NSBundle mainBundle];
  v6 = [(NSBundle *)v5 localizedStringForKey:@"RESTORE_COMPLETED_DETAIL" value:&stru_10032F900 table:@"Localizable"];
  selfCopy = 0;
  v9.receiver = v2;
  v9.super_class = BuddyRestoreFinishedController;
  selfCopy = [(BuddyRestoreFinishedController *)&v9 initWithTitle:v4 detailText:v6 symbolName:location[0]];
  v7 = selfCopy;

  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = BuddyRestoreFinishedController;
  [(BuddyRestoreFinishedController *)&v7 viewDidLoad];
  headerView = [(BuddyRestoreFinishedController *)selfCopy headerView];
  LODWORD(v3) = 0;
  [headerView setTitleHyphenationFactor:v3];

  v4 = selfCopy;
  v5 = +[NSBundle mainBundle];
  v6 = [(NSBundle *)v5 localizedStringForKey:@"CONTINUE" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v4 addBoldButton:v6 action:"_continuePressed:"];
}

- (void)_continuePressed:(id)pressed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
  delegate = [(BuddyWelcomeController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];

  objc_storeStrong(location, 0);
}

@end