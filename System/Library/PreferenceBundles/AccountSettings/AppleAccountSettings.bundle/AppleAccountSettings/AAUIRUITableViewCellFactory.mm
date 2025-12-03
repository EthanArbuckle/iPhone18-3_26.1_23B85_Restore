@interface AAUIRUITableViewCellFactory
+ (id)_appleCareRowWithDelegate:(id)delegate;
+ (id)_backupRowForDevice:(id)device appleAccount:(id)account delegate:(id)delegate;
+ (id)_backupStatusStringForAccount:(id)account;
+ (id)_fmipRowForDevice:(id)device section:(id)section delegate:(id)delegate;
+ (id)_fmipStatusString;
+ (id)ruiTableViewForRowType:(int64_t)type device:(id)device section:(id)section delegate:(id)delegate appleAccount:(id)account;
@end

@implementation AAUIRUITableViewCellFactory

+ (id)ruiTableViewForRowType:(int64_t)type device:(id)device section:(id)section delegate:(id)delegate appleAccount:(id)account
{
  deviceCopy = device;
  sectionCopy = section;
  delegateCopy = delegate;
  accountCopy = account;
  switch(type)
  {
    case 2:
      v16 = [self _appleCareRowWithDelegate:delegateCopy];
      goto LABEL_7;
    case 1:
      v16 = [self _backupRowForDevice:deviceCopy appleAccount:accountCopy delegate:delegateCopy];
      goto LABEL_7;
    case 0:
      v16 = [self _fmipRowForDevice:deviceCopy section:sectionCopy delegate:delegateCopy];
LABEL_7:
      v17 = v16;
      goto LABEL_9;
  }

  v17 = 0;
LABEL_9:

  return v17;
}

+ (id)_fmipRowForDevice:(id)device section:(id)section delegate:(id)delegate
{
  deviceCopy = device;
  delegateCopy = delegate;
  sectionCopy = section;
  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = [[RUITableViewRow alloc] initWithAttributes:v11 parent:sectionCopy];

  [v11 setValue:@"fmipRow" forKey:@"name"];
  aaui_localizedDeviceLocatorLabel = [deviceCopy aaui_localizedDeviceLocatorLabel];
  [v11 setValue:aaui_localizedDeviceLocatorLabel forKey:@"label"];

  [v11 setValue:@"labelColor" forKey:@"labelColor"];
  if ([deviceCopy currentDevice])
  {
    [v12 setDelegate:delegateCopy];
    _fmipStatusString = [self _fmipStatusString];
    [v11 setValue:_fmipStatusString forKey:@"detailLabel"];
    [v11 setValue:@"disclosure" forKey:@"accessory"];
    [v11 setValue:@"link" forKey:@"class"];
    v15 = @"true";
    v16 = @"value";
    v17 = v11;
  }

  else
  {
    [v11 setValue:@"label" forKey:@"class"];
    fmipEnabled = [deviceCopy fmipEnabled];
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = v19;
    if (fmipEnabled)
    {
      v21 = @"ON";
    }

    else
    {
      v21 = @"OFF";
    }

    _fmipStatusString = [v19 localizedStringForKey:v21 value:&stru_5A5F0 table:@"Localizable"];

    v16 = @"detailLabel";
    v17 = v11;
    v15 = _fmipStatusString;
  }

  [v17 setValue:v15 forKey:v16];

  [v11 setValue:@"secondaryLabelColor" forKey:@"detailLabelColor"];
  [v12 setAttributes:v11];
  tableCell = [v12 tableCell];
  [tableCell setTag:1001];

  v23 = [UIImage iconForSize:@"com.apple.findmy" bundleIdentifier:29.0, 29.0];
  [v12 setImage:v23];
  if ([deviceCopy currentDevice] && +[AADeviceInfo locationServicesRestricted](AADeviceInfo, "locationServicesRestricted"))
  {
    tableCell2 = [v12 tableCell];
    [tableCell2 setEnabled:0];

    tableCell3 = [v12 tableCell];
    textLabel = [tableCell3 textLabel];
    [textLabel setAlpha:0.5];

    tableCell4 = [v12 tableCell];
    imageView = [tableCell4 imageView];
    [imageView setAlpha:0.5];
  }

  return v12;
}

+ (id)_backupRowForDevice:(id)device appleAccount:(id)account delegate:(id)delegate
{
  accountCopy = account;
  delegateCopy = delegate;
  deviceCopy = device;
  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = objc_alloc_init(RUITableViewRow);
  [v11 setValue:@"backupRow" forKey:@"name"];
  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"BACKUP_CELL_LABEL" value:&stru_5A5F0 table:@"Localizable"];
  [v11 setValue:v14 forKey:@"label"];

  [v11 setValue:@"labelColor" forKey:@"labelColor"];
  [v11 setValue:@"secondaryLabelColor" forKey:@"detailLabelColor"];
  LODWORD(v13) = [deviceCopy currentDevice];

  if (v13)
  {
    [v12 setDelegate:delegateCopy];
    [v11 setValue:@"disclosure" forKey:@"accessory"];
    [v11 setValue:@"link" forKey:@"class"];
    [v11 setValue:@"true" forKey:@"value"];
    v15 = [self _backupStatusStringForAccount:accountCopy];
    [v11 setValue:v15 forKey:@"detailLabel"];
  }

  else
  {
    [v11 setValue:@"label" forKey:@"class"];
    [v11 setValue:@"-" forKey:@"detailLabel"];
  }

  [v12 setAttributes:v11];
  tableCell = [v12 tableCell];
  [tableCell setTag:1002];

  v17 = [UIImage iconForSize:@"com.apple.graphic-icon.icloud-backup" typeID:29.0, 29.0];
  [v12 setImage:v17];

  return v12;
}

+ (id)_appleCareRowWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = objc_alloc_init(RUITableViewRow);
  [v5 setDelegate:delegateCopy];

  [v4 setValue:@"appleCareRow" forKey:@"name"];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"APPLE_CARE_CELL_LABEL" value:&stru_5A5F0 table:@"Localizable"];
  [v4 setValue:v7 forKey:@"label"];

  [v4 setValue:@"labelColor" forKey:@"labelColor"];
  [v4 setValue:@"secondaryLabelColor" forKey:@"detailLabelColor"];
  [v4 setValue:@"disclosure" forKey:@"accessory"];
  [v4 setValue:@"link" forKey:@"class"];
  [v5 setAttributes:v4];
  tableCell = [v5 tableCell];
  [tableCell setTag:1003];

  v9 = [UIImage imageForTableUIWithType:@"com.apple.graphic-icon.applecare"];
  [v5 setImage:v9];

  return v5;
}

+ (id)_fmipStatusString
{
  v2 = +[AAUIDeviceLocatorService sharedInstance];
  isEnabled = [v2 isEnabled];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v4;
  if (isEnabled)
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

+ (id)_backupStatusStringForAccount:(id)account
{
  v3 = [account isEnabledForDataclass:kAccountDataclassBackup];
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