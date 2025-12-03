@interface BuddyEraseAlertController
+ (id)alertControllerWithWindow:(id)window navigationController:(id)controller proximitySetupController:(id)setupController analyticsManager:(id)manager;
+ (void)eraseWithWindow:(id)window navigationController:(id)controller proximitySetupController:(id)setupController analyticsManager:(id)manager;
@end

@implementation BuddyEraseAlertController

+ (id)alertControllerWithWindow:(id)window navigationController:(id)controller proximitySetupController:(id)setupController analyticsManager:(id)manager
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, window);
  v37 = 0;
  objc_storeStrong(&v37, controller);
  v36 = 0;
  objc_storeStrong(&v36, setupController);
  v35 = 0;
  objc_storeStrong(&v35, manager);
  v9 = +[NSBundle mainBundle];
  v10 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ERASE_START_OVER"];
  v11 = [(NSBundle *)v9 localizedStringForKey:v10 value:&stru_10032F900 table:@"Localizable"];
  v12 = +[NSBundle mainBundle];
  v13 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ERASE_START_OVER_BODY"];
  v14 = [(NSBundle *)v12 localizedStringForKey:v13 value:&stru_10032F900 table:@"Localizable"];
  v34 = [BuddyEraseAlertController alertControllerWithTitle:v11 message:v14 preferredStyle:1];

  v15 = v34;
  v16 = +[NSBundle mainBundle];
  v17 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ERASE_DEVICE"];
  v18 = [(NSBundle *)v16 localizedStringForKey:v17 value:&stru_10032F900 table:@"Localizable"];
  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_1000B7CF4;
  v29 = &unk_10032C218;
  v33[1] = selfCopy;
  v30 = location[0];
  v31 = v37;
  v32 = v36;
  v33[0] = v35;
  v19 = [UIAlertAction actionWithTitle:v18 style:2 handler:&v26];
  [v15 addAction:{v19, v26, v27, v28, v29, v30, v31, v32}];

  v20 = v34;
  v21 = +[NSBundle mainBundle];
  v22 = [(NSBundle *)v21 localizedStringForKey:@"CANCEL" value:&stru_10032F900 table:@"Localizable"];
  v23 = [UIAlertAction actionWithTitle:v22 style:1 handler:0];
  [v20 addAction:v23];

  v24 = v34;
  objc_storeStrong(v33, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
  return v24;
}

+ (void)eraseWithWindow:(id)window navigationController:(id)controller proximitySetupController:(id)setupController analyticsManager:(id)manager
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, window);
  v21 = 0;
  objc_storeStrong(&v21, controller);
  v20 = 0;
  objc_storeStrong(&v20, setupController);
  v19 = 0;
  objc_storeStrong(&v19, manager);
  [location[0] setUserInteractionEnabled:0];
  v9 = dispatch_get_global_queue(2, 0);
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1000B7F18;
  v14 = &unk_10032B9A0;
  v15 = v20;
  v16 = v19;
  v17 = v21;
  v18 = location[0];
  dispatch_async(v9, &v10);

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

@end