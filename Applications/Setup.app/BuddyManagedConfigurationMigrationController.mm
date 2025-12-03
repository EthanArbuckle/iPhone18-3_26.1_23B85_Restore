@interface BuddyManagedConfigurationMigrationController
- (BuddyManagedConfigurationMigrationController)init;
- (void)loadView;
- (void)performExtendedInitializationWithCompletion:(id)completion;
@end

@implementation BuddyManagedConfigurationMigrationController

- (BuddyManagedConfigurationMigrationController)init
{
  v3 = [NSBundle mainBundle:a2];
  v4 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"COMPLETING_SETUP"];
  v5 = [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_10032F900 table:@"Localizable"];
  location = [(BuddyManagedConfigurationMigrationController *)self initWithSpinnerText:v5];
  v6 = location;

  objc_storeStrong(&location, 0);
  return v6;
}

- (void)loadView
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = BuddyManagedConfigurationMigrationController;
  [(BuddyManagedConfigurationMigrationController *)&v3 loadView];
  navigationItem = [(BuddyManagedConfigurationMigrationController *)selfCopy navigationItem];
  [navigationItem setHidesBackButton:1];
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  [(BuddyManagedConfigurationMigrationController *)selfCopy setWaitingForMigration:1];
  v3 = dispatch_time(0, 2000000000);
  v4 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v14 = -1073741824;
  v15 = 0;
  v16 = sub_1001E53D8;
  v17 = &unk_10032AFD0;
  v18 = selfCopy;
  v19 = location[0];
  dispatch_after(v3, v4, &block);

  v5 = dispatch_get_global_queue(0, 0);
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1001E54B4;
  v10 = &unk_10032AFD0;
  v11 = selfCopy;
  v12 = location[0];
  dispatch_async(v5, &v6);

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

@end