@interface BuddyMigrationBaseErrorController
- (BuddyMigrationBaseErrorController)initWithError:(id)error;
- (id)initForInsufficientSpace;
- (void)viewDidLoad;
@end

@implementation BuddyMigrationBaseErrorController

- (BuddyMigrationBaseErrorController)initWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v3 = selfCopy;
  v4 = [UIImage imageNamed:@"Alert Icon"];
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = BuddyMigrationBaseErrorController;
  selfCopy = [(BuddyMigrationBaseErrorController *)&v7 initWithTitle:&stru_10032F900 detailText:&stru_10032F900 icon:v4];
  objc_storeStrong(&selfCopy, selfCopy);

  if (selfCopy)
  {
    objc_storeStrong(selfCopy + 2, location[0]);
  }

  v5 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (id)initForInsufficientSpace
{
  location = self;
  v4[1] = a2;
  v4[0] = [NSError errorWithDomain:@"MBErrorDomain" code:106 userInfo:0];
  location = [location initWithError:v4[0]];
  objc_storeStrong(&location, location);
  v2 = location;
  objc_storeStrong(v4, 0);
  objc_storeStrong(&location, 0);
  return v2;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = BuddyMigrationBaseErrorController;
  [(BuddyMigrationBaseErrorController *)&v6 viewDidLoad];
  headerView = [(BuddyMigrationBaseErrorController *)selfCopy headerView];
  [headerView setIconInheritsTint:1];

  v3 = +[UIColor redColor];
  headerView2 = [(BuddyMigrationBaseErrorController *)selfCopy headerView];
  [headerView2 setTintColor:v3];

  navigationItem = [(BuddyMigrationBaseErrorController *)selfCopy navigationItem];
  [navigationItem setHidesBackButton:1];
}

@end