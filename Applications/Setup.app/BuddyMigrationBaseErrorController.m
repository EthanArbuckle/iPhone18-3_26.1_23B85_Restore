@interface BuddyMigrationBaseErrorController
- (BuddyMigrationBaseErrorController)initWithError:(id)a3;
- (id)initForInsufficientSpace;
- (void)viewDidLoad;
@end

@implementation BuddyMigrationBaseErrorController

- (BuddyMigrationBaseErrorController)initWithError:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v4 = [UIImage imageNamed:@"Alert Icon"];
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = BuddyMigrationBaseErrorController;
  v9 = [(BuddyMigrationBaseErrorController *)&v7 initWithTitle:&stru_10032F900 detailText:&stru_10032F900 icon:v4];
  objc_storeStrong(&v9, v9);

  if (v9)
  {
    objc_storeStrong(v9 + 2, location[0]);
  }

  v5 = v9;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
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
  v8 = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = BuddyMigrationBaseErrorController;
  [(BuddyMigrationBaseErrorController *)&v6 viewDidLoad];
  v2 = [(BuddyMigrationBaseErrorController *)v8 headerView];
  [v2 setIconInheritsTint:1];

  v3 = +[UIColor redColor];
  v4 = [(BuddyMigrationBaseErrorController *)v8 headerView];
  [v4 setTintColor:v3];

  v5 = [(BuddyMigrationBaseErrorController *)v8 navigationItem];
  [v5 setHidesBackButton:1];
}

@end