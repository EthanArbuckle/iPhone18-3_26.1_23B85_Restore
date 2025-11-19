@interface BuddyRestoreNetworkAlertController
+ (id)_alertControllerForCellular:(int64_t)a3;
+ (id)alertControllerForNetworkConnectionWithProvider:(id)a3 estimatedRestoreSize:(int64_t)a4;
+ (id)alertControllerForUnsupportedNetworkWithCellularRestoreSupport:(BOOL)a3;
@end

@implementation BuddyRestoreNetworkAlertController

+ (id)alertControllerForNetworkConnectionWithProvider:(id)a3 estimatedRestoreSize:(int64_t)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] currentNetworkSupportsRestore] & 1) == 0 || (objc_msgSend(location[0], "currentNetworkRequiresDataUsageWarningForRestore"))
  {
    if ([location[0] currentNetworkSupportsRestore])
    {
      if ([location[0] currentNetworkRequiresDataUsageWarningForRestore])
      {
        v8 = [objc_opt_class() _alertControllerForCellular:a4];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = [objc_opt_class() alertControllerForUnsupportedNetworkWithCellularRestoreSupport:{objc_msgSend(location[0], "deviceSupportsCellularRestore") & 1}];
    }
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong(location, 0);
  v5 = v8;

  return v5;
}

+ (id)alertControllerForUnsupportedNetworkWithCellularRestoreSupport:(BOOL)a3
{
  v30 = a1;
  v29 = a2;
  v28 = a3;
  v3 = +[NSBundle mainBundle];
  v4 = SFLocalizableWAPIStringKeyForKey();
  v27 = [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_10032F900 table:@"RestoreFromBackup"];

  v5 = +[NSBundle mainBundle];
  v6 = SFLocalizableWAPIStringKeyForKey();
  v26 = [(NSBundle *)v5 localizedStringForKey:v6 value:&stru_10032F900 table:@"RestoreFromBackup"];

  val = [BuddyRestoreNetworkAlertController alertControllerWithTitle:v27 message:v26 preferredStyle:1];
  objc_initWeak(&location, val);
  v7 = val;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = SFLocalizableWAPIStringKeyForKey();
  v10 = [(NSBundle *)v8 localizedStringForKey:v9 value:&stru_10032F900 table:@"Localizable"];
  v18 = _NSConcreteStackBlock;
  v19 = -1073741824;
  v20 = 0;
  v21 = sub_1001A4654;
  v22 = &unk_10032B928;
  objc_copyWeak(v23, &location);
  v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:&v18];
  [v7 addAction:v11];

  v12 = val;
  v13 = +[NSBundle mainBundle];
  v14 = [(NSBundle *)v13 localizedStringForKey:@"RESTORE_LATER" value:&stru_10032F900 table:@"RestoreFromBackup"];
  v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:0];
  [v12 addAction:v15];

  v16 = val;
  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
  objc_storeStrong(&val, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  return v16;
}

+ (id)_alertControllerForCellular:(int64_t)a3
{
  v45 = a1;
  v44 = a2;
  v43 = a3;
  v3 = +[NSBundle mainBundle];
  v4 = SFLocalizableWAPIStringKeyForKey();
  v42 = [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_10032F900 table:@"RestoreFromBackup"];

  v41 = 0;
  if (v43 > 0)
  {
    location = [NSByteCountFormatter stringFromByteCount:v43 countStyle:2];
    v5 = +[NSBundle mainBundle];
    v6 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"RESTORE_OVER_CELLULAR_PROMPT_MESSAGE_ESTIMATE"];
    v7 = [(NSBundle *)v5 localizedStringForKey:v6 value:&stru_10032F900 table:@"RestoreFromBackup"];
    v8 = [NSString localizedStringWithFormat:v7, location];
    v9 = v41;
    v41 = v8;

    objc_storeStrong(&location, 0);
  }

  v39 = [BuddyRestoreNetworkAlertController alertControllerWithTitle:v42 message:v41 preferredStyle:1];
  objc_initWeak(&from, v39);
  v10 = v39;
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = SFLocalizableWAPIStringKeyForKey();
  v13 = [(NSBundle *)v11 localizedStringForKey:v12 value:&stru_10032F900 table:@"Localizable"];
  v32 = _NSConcreteStackBlock;
  v33 = -1073741824;
  v34 = 0;
  v35 = sub_1001A4C68;
  v36 = &unk_10032B928;
  objc_copyWeak(v37, &from);
  v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:&v32];
  [v10 addAction:v14];
  v31 = 0;

  v15 = v39;
  v16 = +[NSBundle mainBundle];
  v17 = [(NSBundle *)v16 localizedStringForKey:@"RESTORE_OVER_CELLULAR" value:&stru_10032F900 table:@"RestoreFromBackup"];
  v25 = _NSConcreteStackBlock;
  v26 = -1073741824;
  v27 = 0;
  v28 = sub_1001A4CF0;
  v29 = &unk_10032B928;
  objc_copyWeak(&v30, &from);
  v18 = [UIAlertAction actionWithTitle:v17 style:0 handler:&v25];
  [v15 addAction:v18];

  v19 = v39;
  v20 = [NSBundle bundleForClass:objc_opt_class()];
  v21 = [(NSBundle *)v20 localizedStringForKey:@"CANCEL" value:&stru_10032F900 table:@"Localizable"];
  v22 = [UIAlertAction actionWithTitle:v21 style:1 handler:0];
  [v19 addAction:v22];

  v23 = v39;
  objc_destroyWeak(&v30);
  objc_destroyWeak(v37);
  objc_destroyWeak(&from);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  return v23;
}

@end