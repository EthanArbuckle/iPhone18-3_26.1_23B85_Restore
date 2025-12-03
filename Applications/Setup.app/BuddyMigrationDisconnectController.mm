@interface BuddyMigrationDisconnectController
- (BuddyMigrationDisconnectController)initWithConnectionType:(int64_t)type featureFlags:(id)flags deviceProvider:(id)provider cancel:(id)cancel;
- (void)cancelTapped:(id)tapped;
- (void)viewDidLoad;
@end

@implementation BuddyMigrationDisconnectController

- (BuddyMigrationDisconnectController)initWithConnectionType:(int64_t)type featureFlags:(id)flags deviceProvider:(id)provider cancel:(id)cancel
{
  selfCopy = self;
  v18 = a2;
  typeCopy = type;
  location = 0;
  objc_storeStrong(&location, flags);
  v15 = 0;
  objc_storeStrong(&v15, provider);
  v14 = 0;
  objc_storeStrong(&v14, cancel);
  v8 = selfCopy;
  selfCopy = 0;
  v13.receiver = v8;
  v13.super_class = BuddyMigrationDisconnectController;
  selfCopy = [(BuddyMigrationBaseDisconnectController *)&v13 initWithConnectionType:typeCopy featureFlags:location deviceProvider:v15];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v9 = objc_retainBlock(v14);
    v10 = *(selfCopy + 5);
    *(selfCopy + 5) = v9;
  }

  v11 = selfCopy;
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = BuddyMigrationDisconnectController;
  [(BuddyMigrationBaseDisconnectController *)&v5 viewDidLoad];
  v2 = selfCopy;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"CANCEL" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v2 addBoldButton:v4 action:"cancelTapped:"];
}

- (void)cancelTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  cancelBlock = [(BuddyMigrationDisconnectController *)selfCopy cancelBlock];
  cancelBlock[2](cancelBlock);

  objc_storeStrong(location, 0);
}

@end