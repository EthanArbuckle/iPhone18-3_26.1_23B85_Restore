@interface BuddyRestoreHelpers
+ (id)alertForBackupError:(id)a3 forBackup:(BOOL)a4 okButtonAction:(id)a5;
+ (id)alertForBackupError:(id)a3 okButtonAction:(id)a4;
@end

@implementation BuddyRestoreHelpers

+ (id)alertForBackupError:(id)a3 okButtonAction:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v5 = [objc_opt_class() alertForBackupError:location[0] forBackup:0 okButtonAction:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v5;
}

+ (id)alertForBackupError:(id)a3 forBackup:(BOOL)a4 okButtonAction:(id)a5
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v51 = a4;
  v50 = 0;
  objc_storeStrong(&v50, a5);
  v49 = 0;
  v48 = 0;
  v47 = 0;
  if (v51)
  {
    v19 = +[NSBundle mainBundle];
    v20 = [(NSBundle *)v19 localizedStringForKey:@"ERROR_TITLE_CANNOT_BACK_UP" value:&stru_10032F900 table:@"RestoreFromBackup"];
    v21 = v47;
    v47 = v20;

    v22 = [location[0] domain];
    v23 = [v22 isEqualToString:@"MBErrorDomain"];

    if ((v23 & 1) == 0)
    {
      goto LABEL_27;
    }

    v24 = [location[0] code];
    if (v24 == 13)
    {
      objc_storeStrong(&v49, @"ERROR_BACKING_UP_BACKUPS_BUSY");
      goto LABEL_27;
    }

    if (v24 == 300)
    {
      goto LABEL_22;
    }

    if (v24 == 302)
    {
      objc_storeStrong(&v49, @"ERROR_BACKING_UP_SERVER_ERROR");
      goto LABEL_27;
    }

    if (v24 == 304)
    {
      objc_storeStrong(&v49, @"ERROR_BACKING_UP_SERVER_UNAVAILABLE");
      goto LABEL_27;
    }

    if (v24 == 308)
    {
LABEL_22:
      objc_storeStrong(&v49, @"ERROR_BACKING_UP_LOST_NETWORK");
      v25 = +[NSBundle mainBundle];
      v26 = [(NSBundle *)v25 localizedStringForKey:@"ERROR_TITLE_LOST_NETWORK" value:&stru_10032F900 table:@"RestoreFromBackup"];
      v27 = v47;
      v47 = v26;

      goto LABEL_27;
    }

    objc_storeStrong(&v48, &stru_10032F900);
  }

  else
  {
    v7 = +[NSBundle mainBundle];
    v8 = [(NSBundle *)v7 localizedStringForKey:@"ERROR_TITLE_CANNOT_RESTORE" value:&stru_10032F900 table:@"RestoreFromBackup"];
    v9 = v47;
    v47 = v8;

    v10 = [location[0] domain];
    v11 = [v10 isEqualToString:@"MBErrorDomain"];

    if (v11)
    {
      v12 = [location[0] code];
      if (v12 == 13)
      {
        objc_storeStrong(&v49, @"ERROR_RESTORING_BACKUPS_BUSY");
      }

      else if (v12 == 205)
      {
        objc_storeStrong(&v49, @"ERROR_RESTORING_BAD_BACKUP_DATA");
      }

      else
      {
        if (v12 == 300)
        {
LABEL_9:
          v13 = SFLocalizableWAPIStringKeyForKey();
          v14 = v49;
          v49 = v13;

          v15 = +[NSBundle mainBundle];
          v16 = SFLocalizableWAPIStringKeyForKey();
          v17 = [(NSBundle *)v15 localizedStringForKey:v16 value:&stru_10032F900 table:@"RestoreFromBackup"];
          v18 = v47;
          v47 = v17;

          goto LABEL_27;
        }

        if (v12 == 302)
        {
          objc_storeStrong(&v49, @"ERROR_RESTORING_SERVER_ERROR");
        }

        else if (v12 == 304)
        {
          objc_storeStrong(&v49, @"ERROR_RESTORING_SERVER_UNAVAILABLE");
        }

        else
        {
          if (v12 == 308)
          {
            goto LABEL_9;
          }

          objc_storeStrong(&v48, &stru_10032F900);
        }
      }
    }
  }

LABEL_27:
  if (v49)
  {
    v28 = +[NSBundle mainBundle];
    v29 = [UIDevice modelSpecificLocalizedStringKeyForKey:v49];
    v30 = [(NSBundle *)v28 localizedStringForKey:v29 value:&stru_10032F900 table:@"RestoreFromBackup"];
    v31 = v48;
    v48 = v30;
  }

  if (![v48 length] && (os_variant_has_internal_ui() & 1) != 0)
  {
    v32 = [NSString stringWithFormat:@"Internal: %@", location[0]];
    v33 = v48;
    v48 = v32;
  }

  v46 = [UIAlertController alertControllerWithTitle:v47 message:v48 preferredStyle:1];
  v34 = v46;
  v35 = +[NSBundle mainBundle];
  v36 = [(NSBundle *)v35 localizedStringForKey:@"OK" value:&stru_10032F900 table:@"RestoreFromBackup"];
  v40 = _NSConcreteStackBlock;
  v41 = -1073741824;
  v42 = 0;
  v43 = sub_100223314;
  v44 = &unk_10032C658;
  v45 = v50;
  v37 = [UIAlertAction actionWithTitle:v36 style:0 handler:&v40];
  [v34 addAction:v37];

  v38 = v46;
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(location, 0);
  return v38;
}

@end