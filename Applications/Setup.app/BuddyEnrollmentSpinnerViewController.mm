@interface BuddyEnrollmentSpinnerViewController
- (BuddyEnrollmentSpinnerViewController)init;
- (id)_messageForError:(id)a3;
- (id)alertControllerForError:(id)a3 dismissAction:(id)a4;
- (void)_presentMoreInfoForError:(id)a3 dismissAction:(id)a4;
@end

@implementation BuddyEnrollmentSpinnerViewController

- (BuddyEnrollmentSpinnerViewController)init
{
  v8 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"REMOTE_MANAGEMENT_MIGRATION_STATUS_ENROLLING" value:&stru_10032F900 table:@"Localizable"];
  location = 0;
  v7.receiver = self;
  v7.super_class = BuddyEnrollmentSpinnerViewController;
  location = [(BuddyEnrollmentSpinnerViewController *)&v7 initWithSpinnerText:v4];
  objc_storeStrong(&location, location);

  v5 = location;
  objc_storeStrong(&location, 0);
  return v5;
}

- (id)alertControllerForError:(id)a3 dismissAction:(id)a4
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = 0;
  objc_storeStrong(&v24, a4);
  v23 = [(BuddyEnrollmentSpinnerViewController *)v26 _messageForError:location[0]];
  if (v23)
  {
    objc_initWeak(&from, v26);
    v5 = +[NSBundle mainBundle];
    v6 = [(NSBundle *)v5 localizedStringForKey:@"REMOTE_MANAGEMENT_MIGRATION_NETWORK_ERROR_MORE_INFO" value:&stru_10032F900 table:@"Localizable"];
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_10016CA30;
    v16 = &unk_10032DC90;
    objc_copyWeak(&v19, &from);
    v17 = location[0];
    v18 = v24;
    v20 = [UIAlertAction actionWithTitle:v6 style:0 handler:&v12];

    v7 = +[NSBundle mainBundle];
    v8 = [(NSBundle *)v7 localizedStringForKey:@"REMOTE_MANAGEMENT_MIGRATION_NETWORK_ERROR_TITLE" value:&stru_10032F900 table:@"Localizable"];
    v11 = [UIAlertController alertControllerWithTitle:v8 message:v23 preferredStyle:1];

    [v11 addAction:v20];
    [v11 addAction:v24];
    v27 = v11;
    v22 = 1;
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&from);
  }

  else
  {
    v27 = 0;
    v22 = 1;
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  v9 = v27;

  return v9;
}

- (id)_messageForError:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  v19 = &v18;
  v20 = 838860800;
  v21 = 48;
  v22 = sub_10016CCDC;
  v23 = sub_10016CD20;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x20000000;
  v16 = 32;
  v17 = 0;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10016CD2C;
  v10 = &unk_10032DCB8;
  v11 = &v13;
  v12 = &v18;
  [location[0] buddy_enumerateErrorTreeWithHandler:&v6];
  if (v19[5])
  {
    v26 = v19[5];
  }

  else if (v14[3])
  {
    v3 = +[NSBundle mainBundle];
    v26 = [(NSBundle *)v3 localizedStringForKey:@"REMOTE_MANAGEMENT_MIGRATION_NETWORK_ERROR_UNEXPECTED" value:&stru_10032F900 table:@"Localizable"];
  }

  else
  {
    v26 = 0;
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v18, 8);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  v4 = v26;

  return v4;
}

- (void)_presentMoreInfoForError:(id)a3 dismissAction:(id)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = [location[0] localizedDescription];
  v14 = 0;
  v5 = 0;
  if (os_variant_has_internal_ui())
  {
    v15 = [location[0] underlyingErrors];
    v14 = 1;
    v5 = v15 != 0;
  }

  if (v14)
  {
  }

  if (v5)
  {
    v6 = [location[0] underlyingErrors];
    v7 = [v6 firstObject];
    v8 = [v7 description];
    v9 = [NSString stringWithFormat:@"%@\n\n[Internal only]\n%@", v16, v8];
    v10 = v16;
    v16 = v9;
  }

  v11 = +[NSBundle mainBundle];
  v12 = [(NSBundle *)v11 localizedStringForKey:@"REMOTE_MANAGEMENT_MIGRATION_NETWORK_ERROR_TITLE" value:&stru_10032F900 table:@"Localizable"];
  v13 = [UIAlertController alertControllerWithTitle:v12 message:v16 preferredStyle:1];

  [v13 addAction:v17];
  [(BuddyEnrollmentSpinnerViewController *)v19 presentViewController:v13 animated:1 completion:0];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

@end