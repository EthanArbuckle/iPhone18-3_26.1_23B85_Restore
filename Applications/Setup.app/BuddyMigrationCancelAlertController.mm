@interface BuddyMigrationCancelAlertController
+ (id)alertControllerForSource:(id)a3;
+ (id)alertControllerForTargetWithNeedsErase:(BOOL)a3 completion:(id)a4;
@end

@implementation BuddyMigrationCancelAlertController

+ (id)alertControllerForSource:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"MIGRATION_CANCEL_CONFIRM_ALERT_TITLE" value:&stru_10032F900 table:@"Migration"];
  v20 = [UIAlertController alertControllerWithTitle:v4 message:0 preferredStyle:1];

  v5 = +[NSBundle mainBundle];
  v6 = [(NSBundle *)v5 localizedStringForKey:@"CONTINUE_TRANSFER" value:&stru_10032F900 table:@"Migration"];
  v7 = [UIAlertAction actionWithTitle:v6 style:0 handler:0];
  [v20 addAction:v7];

  v8 = v20;
  v9 = +[NSBundle mainBundle];
  v10 = [(NSBundle *)v9 localizedStringForKey:@"STOP_TRANSFER" value:&stru_10032F900 table:@"Migration"];
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_100151D18;
  v18 = &unk_10032C658;
  v19 = location[0];
  v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:&v14];
  [v8 addAction:v11];

  v12 = v20;
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  return v12;
}

+ (id)alertControllerForTargetWithNeedsErase:(BOOL)a3 completion:(id)a4
{
  v45 = a1;
  v44 = a2;
  v43 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v41 = 0;
  v40 = 0;
  v39 = 0;
  if (v43)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"MIGRATION_CANCEL_CONFIRM_ALERT_DETAIL"];
    v6 = [(NSBundle *)v4 localizedStringForKey:v5 value:&stru_10032F900 table:@"Migration"];
    v7 = v41;
    v41 = v6;

    v8 = +[NSBundle mainBundle];
    v9 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"STOP_TRANSFER_AND_RESET"];
    v10 = [(NSBundle *)v8 localizedStringForKey:v9 value:&stru_10032F900 table:@"Migration"];
    v11 = v40;
    v40 = v10;

    v39 = 2;
  }

  else
  {
    objc_storeStrong(&v41, 0);
    v12 = +[NSBundle mainBundle];
    v13 = [(NSBundle *)v12 localizedStringForKey:@"STOP_TRANSFER" value:&stru_10032F900 table:@"Migration"];
    v14 = v40;
    v40 = v13;

    v39 = 1;
  }

  v15 = +[NSBundle mainBundle];
  v16 = [(NSBundle *)v15 localizedStringForKey:@"MIGRATION_CANCEL_CONFIRM_ALERT_TITLE" value:&stru_10032F900 table:@"Migration"];
  v38 = [UIAlertController alertControllerWithTitle:v16 message:v41 preferredStyle:1];

  v17 = v38;
  v18 = +[NSBundle mainBundle];
  v19 = [(NSBundle *)v18 localizedStringForKey:@"CONTINUE_TRANSFER" value:&stru_10032F900 table:@"Migration"];
  v32 = _NSConcreteStackBlock;
  v33 = -1073741824;
  v34 = 0;
  v35 = sub_1001521EC;
  v36 = &unk_10032C658;
  v37 = location;
  v20 = [UIAlertAction actionWithTitle:v19 style:0 handler:&v32];
  [v17 addAction:v20];

  v21 = v38;
  v22 = v40;
  v23 = v39;
  v27 = _NSConcreteStackBlock;
  v28 = 3221225472;
  v29 = sub_100152248;
  v30 = &unk_10032C658;
  v31 = location;
  v24 = [UIAlertAction actionWithTitle:v22 style:v23 handler:&v27];
  [v21 addAction:{v24, v27, v28, v29, v30}];

  v25 = v38;
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&location, 0);
  return v25;
}

@end