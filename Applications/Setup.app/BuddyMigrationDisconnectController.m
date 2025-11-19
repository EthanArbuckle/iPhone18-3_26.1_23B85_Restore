@interface BuddyMigrationDisconnectController
- (BuddyMigrationDisconnectController)initWithConnectionType:(int64_t)a3 featureFlags:(id)a4 deviceProvider:(id)a5 cancel:(id)a6;
- (void)cancelTapped:(id)a3;
- (void)viewDidLoad;
@end

@implementation BuddyMigrationDisconnectController

- (BuddyMigrationDisconnectController)initWithConnectionType:(int64_t)a3 featureFlags:(id)a4 deviceProvider:(id)a5 cancel:(id)a6
{
  v19 = self;
  v18 = a2;
  v17 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v14 = 0;
  objc_storeStrong(&v14, a6);
  v8 = v19;
  v19 = 0;
  v13.receiver = v8;
  v13.super_class = BuddyMigrationDisconnectController;
  v19 = [(BuddyMigrationBaseDisconnectController *)&v13 initWithConnectionType:v17 featureFlags:location deviceProvider:v15];
  objc_storeStrong(&v19, v19);
  if (v19)
  {
    v9 = objc_retainBlock(v14);
    v10 = *(v19 + 5);
    *(v19 + 5) = v9;
  }

  v11 = v19;
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v19, 0);
  return v11;
}

- (void)viewDidLoad
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = BuddyMigrationDisconnectController;
  [(BuddyMigrationBaseDisconnectController *)&v5 viewDidLoad];
  v2 = v7;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"CANCEL" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v2 addBoldButton:v4 action:"cancelTapped:"];
}

- (void)cancelTapped:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyMigrationDisconnectController *)v5 cancelBlock];
  v3[2](v3);

  objc_storeStrong(location, 0);
}

@end