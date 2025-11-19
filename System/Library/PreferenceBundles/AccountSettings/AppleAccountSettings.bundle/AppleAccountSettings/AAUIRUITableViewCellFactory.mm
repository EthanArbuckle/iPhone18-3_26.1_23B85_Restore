@interface AAUIRUITableViewCellFactory
+ (id)_appleCareRowWithDelegate:(id)a3;
+ (id)_backupRowForDevice:(id)a3 appleAccount:(id)a4 delegate:(id)a5;
+ (id)_backupStatusStringForAccount:(id)a3;
+ (id)_fmipRowForDevice:(id)a3 section:(id)a4 delegate:(id)a5;
+ (id)_fmipStatusString;
+ (id)ruiTableViewForRowType:(int64_t)a3 device:(id)a4 section:(id)a5 delegate:(id)a6 appleAccount:(id)a7;
@end

@implementation AAUIRUITableViewCellFactory

+ (id)ruiTableViewForRowType:(int64_t)a3 device:(id)a4 section:(id)a5 delegate:(id)a6 appleAccount:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  switch(a3)
  {
    case 2:
      v16 = [a1 _appleCareRowWithDelegate:v14];
      goto LABEL_7;
    case 1:
      v16 = [a1 _backupRowForDevice:v12 appleAccount:v15 delegate:v14];
      goto LABEL_7;
    case 0:
      v16 = [a1 _fmipRowForDevice:v12 section:v13 delegate:v14];
LABEL_7:
      v17 = v16;
      goto LABEL_9;
  }

  v17 = 0;
LABEL_9:

  return v17;
}

+ (id)_fmipRowForDevice:(id)a3 section:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = [[RUITableViewRow alloc] initWithAttributes:v11 parent:v10];

  [v11 setValue:@"fmipRow" forKey:@"name"];
  v13 = [v8 aaui_localizedDeviceLocatorLabel];
  [v11 setValue:v13 forKey:@"label"];

  [v11 setValue:@"labelColor" forKey:@"labelColor"];
  if ([v8 currentDevice])
  {
    [v12 setDelegate:v9];
    v14 = [a1 _fmipStatusString];
    [v11 setValue:v14 forKey:@"detailLabel"];
    [v11 setValue:@"disclosure" forKey:@"accessory"];
    [v11 setValue:@"link" forKey:@"class"];
    v15 = @"true";
    v16 = @"value";
    v17 = v11;
  }

  else
  {
    [v11 setValue:@"label" forKey:@"class"];
    v18 = [v8 fmipEnabled];
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = v19;
    if (v18)
    {
      v21 = @"ON";
    }

    else
    {
      v21 = @"OFF";
    }

    v14 = [v19 localizedStringForKey:v21 value:&stru_5A5F0 table:@"Localizable"];

    v16 = @"detailLabel";
    v17 = v11;
    v15 = v14;
  }

  [v17 setValue:v15 forKey:v16];

  [v11 setValue:@"secondaryLabelColor" forKey:@"detailLabelColor"];
  [v12 setAttributes:v11];
  v22 = [v12 tableCell];
  [v22 setTag:1001];

  v23 = [UIImage iconForSize:@"com.apple.findmy" bundleIdentifier:29.0, 29.0];
  [v12 setImage:v23];
  if ([v8 currentDevice] && +[AADeviceInfo locationServicesRestricted](AADeviceInfo, "locationServicesRestricted"))
  {
    v24 = [v12 tableCell];
    [v24 setEnabled:0];

    v25 = [v12 tableCell];
    v26 = [v25 textLabel];
    [v26 setAlpha:0.5];

    v27 = [v12 tableCell];
    v28 = [v27 imageView];
    [v28 setAlpha:0.5];
  }

  return v12;
}

+ (id)_backupRowForDevice:(id)a3 appleAccount:(id)a4 delegate:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = objc_alloc_init(RUITableViewRow);
  [v11 setValue:@"backupRow" forKey:@"name"];
  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"BACKUP_CELL_LABEL" value:&stru_5A5F0 table:@"Localizable"];
  [v11 setValue:v14 forKey:@"label"];

  [v11 setValue:@"labelColor" forKey:@"labelColor"];
  [v11 setValue:@"secondaryLabelColor" forKey:@"detailLabelColor"];
  LODWORD(v13) = [v10 currentDevice];

  if (v13)
  {
    [v12 setDelegate:v9];
    [v11 setValue:@"disclosure" forKey:@"accessory"];
    [v11 setValue:@"link" forKey:@"class"];
    [v11 setValue:@"true" forKey:@"value"];
    v15 = [a1 _backupStatusStringForAccount:v8];
    [v11 setValue:v15 forKey:@"detailLabel"];
  }

  else
  {
    [v11 setValue:@"label" forKey:@"class"];
    [v11 setValue:@"-" forKey:@"detailLabel"];
  }

  [v12 setAttributes:v11];
  v16 = [v12 tableCell];
  [v16 setTag:1002];

  v17 = [UIImage iconForSize:@"com.apple.graphic-icon.icloud-backup" typeID:29.0, 29.0];
  [v12 setImage:v17];

  return v12;
}

+ (id)_appleCareRowWithDelegate:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = objc_alloc_init(RUITableViewRow);
  [v5 setDelegate:v3];

  [v4 setValue:@"appleCareRow" forKey:@"name"];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"APPLE_CARE_CELL_LABEL" value:&stru_5A5F0 table:@"Localizable"];
  [v4 setValue:v7 forKey:@"label"];

  [v4 setValue:@"labelColor" forKey:@"labelColor"];
  [v4 setValue:@"secondaryLabelColor" forKey:@"detailLabelColor"];
  [v4 setValue:@"disclosure" forKey:@"accessory"];
  [v4 setValue:@"link" forKey:@"class"];
  [v5 setAttributes:v4];
  v8 = [v5 tableCell];
  [v8 setTag:1003];

  v9 = [UIImage imageForTableUIWithType:@"com.apple.graphic-icon.applecare"];
  [v5 setImage:v9];

  return v5;
}

+ (id)_fmipStatusString
{
  v2 = +[AAUIDeviceLocatorService sharedInstance];
  v3 = [v2 isEnabled];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v3)
  {
    v6 = @"ON";
  }

  else
  {
    v6 = @"OFF";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_5A5F0 table:@"Localizable"];

  return v7;
}

+ (id)_backupStatusStringForAccount:(id)a3
{
  v3 = [a3 isEnabledForDataclass:kAccountDataclassBackup];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v3)
  {
    v6 = @"ON";
  }

  else
  {
    v6 = @"OFF";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_5A5F0 table:@"Localizable"];

  return v7;
}

@end