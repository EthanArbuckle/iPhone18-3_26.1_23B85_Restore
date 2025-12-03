@interface BuddyUpdateFinishedController
- (BuddyUpdateFinishedController)init;
- (void)_continuePressed:(id)pressed;
- (void)viewDidLoad;
@end

@implementation BuddyUpdateFinishedController

- (BuddyUpdateFinishedController)init
{
  selfCopy = self;
  location[1] = a2;
  v2 = +[NSBundle mainBundle];
  v3 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"SOFTWARE_UPDATE_COMPLETE_DETAIL"];
  v4 = [(NSBundle *)v2 localizedStringForKey:v3 value:&stru_10032F900 table:@"Localizable"];
  v5 = +[UIDevice currentDevice];
  systemVersion = [(UIDevice *)v5 systemVersion];
  location[0] = [NSString localizedStringWithFormat:v4, systemVersion];

  v7 = selfCopy;
  v8 = +[NSBundle mainBundle];
  v9 = [(NSBundle *)v8 localizedStringForKey:@"SOFTWARE_UPDATE_COMPLETE_TITLE" value:&stru_10032F900 table:@"Localizable"];
  selfCopy = 0;
  v12.receiver = v7;
  v12.super_class = BuddyUpdateFinishedController;
  selfCopy = [(BuddyUpdateFinishedController *)&v12 initWithTitle:v9 detailText:location[0] symbolName:@"gearshape.arrow.trianglehead.2.clockwise.rotate.90"];
  v10 = selfCopy;

  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = BuddyUpdateFinishedController;
  [(BuddyUpdateFinishedController *)&v5 viewDidLoad];
  v2 = selfCopy;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"CONTINUE" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v2 addBoldButton:v4 action:"_continuePressed:"];
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