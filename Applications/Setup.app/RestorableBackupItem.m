@interface RestorableBackupItem
+ (RestorableBackupItem)restorableBackupItemWithBackup:(id)a3 snapshot:(id)a4;
+ (RestorableBackupItem)restorableBackupItemWithPendingBackupUDID:(id)a3 backupUUID:(id)a4 snapshotID:(unint64_t)a5;
- (BOOL)isCompatible;
- (BOOL)isCompatibleWithUpdateToSystemVersion:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isThisDevice;
- (NSString)accessibilityIdentifier;
- (NSString)backupUDID;
- (NSString)backupUUID;
- (RestorableBackupItem)init;
- (id)dateStringWithStyle:(unint64_t)a3;
- (id)description;
- (id)deviceInfoString;
- (id)hashString;
- (unint64_t)snapshotID;
- (void)fetchAccounts:(id)a3;
@end

@implementation RestorableBackupItem

+ (RestorableBackupItem)restorableBackupItemWithBackup:(id)a3 snapshot:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = objc_alloc_init(objc_opt_class());
  [v7 setBackup:location[0]];
  [v7 setSnapshot:v8];
  v5 = v7;
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v5;
}

+ (RestorableBackupItem)restorableBackupItemWithPendingBackupUDID:(id)a3 backupUUID:(id)a4 snapshotID:(unint64_t)a5
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9[1] = a5;
  v9[0] = objc_alloc_init(objc_opt_class());
  [v9[0] setPendingBackupUDID:location[0]];
  [v9[0] setPendingBackupUUID:v10];
  [v9[0] setPendingSnapshotID:a5];
  v7 = v9[0];
  objc_storeStrong(v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v7;
}

- (RestorableBackupItem)init
{
  v7 = a2;
  location = 0;
  v6.receiver = self;
  v6.super_class = RestorableBackupItem;
  location = [(RestorableBackupItem *)&v6 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v2 = dispatch_queue_create("Backup Item Accounts Queue", 0);
    v3 = *(location + 6);
    *(location + 6) = v2;
  }

  v4 = location;
  objc_storeStrong(&location, 0);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = location[0];
    v3 = [(RestorableBackupItem *)v29 backupUDID];
    v4 = [v26 backupUDID];
    v5 = ![(NSString *)v3 isEqualToString:v4];

    if (v5)
    {
      v30 = 0;
      v27 = 1;
    }

    else
    {
      v6 = [(RestorableBackupItem *)v29 backupUUID];
      v7 = [v26 backupUUID];
      v8 = ![(NSString *)v6 isEqualToString:v7];

      if (v8)
      {
        v30 = 0;
        v27 = 1;
      }

      else
      {
        v9 = [(RestorableBackupItem *)v29 snapshotID];
        if (v9 == [v26 snapshotID])
        {
          v10 = [(RestorableBackupItem *)v29 snapshot];
          v11 = [(MBSnapshot *)v10 snapshotUUID];
          v24 = 0;
          v22 = 0;
          v20 = 0;
          v18 = 0;
          v16 = 0;
          v14 = 0;
          v12 = 0;
          if (v11)
          {
            v25 = [v26 snapshot];
            v24 = 1;
            v23 = [v25 snapshotUUID];
            v22 = 1;
            v12 = 0;
            if (v23)
            {
              v21 = [(RestorableBackupItem *)v29 snapshot];
              v20 = 1;
              v19 = [(MBSnapshot *)v21 snapshotUUID];
              v18 = 1;
              v17 = [v26 snapshot];
              v16 = 1;
              v15 = [v17 snapshotUUID];
              v14 = 1;
              v12 = [v19 isEqualToString:?] ^ 1;
            }
          }

          if (v14)
          {
          }

          if (v16)
          {
          }

          if (v18)
          {
          }

          if (v20)
          {
          }

          if (v22)
          {
          }

          if (v24)
          {
          }

          v30 = (v12 & 1) == 0;
          v27 = 1;
        }

        else
        {
          v30 = 0;
          v27 = 1;
        }
      }
    }

    objc_storeStrong(&v26, 0);
  }

  else
  {
    v30 = 0;
    v27 = 1;
  }

  objc_storeStrong(location, 0);
  return v30;
}

- (id)description
{
  v2 = objc_opt_class();
  v3 = [(RestorableBackupItem *)self backupUDID];
  v4 = [(RestorableBackupItem *)self backupUUID];
  v5 = [(RestorableBackupItem *)self snapshot];
  v6 = [NSNumber numberWithUnsignedInteger:[(RestorableBackupItem *)self snapshotID]];
  v7 = [(RestorableBackupItem *)self backup];
  v8 = [NSString stringWithFormat:@"<%@: %p backup with UDID %@, UUID %@, snapshot %@ with ID %@ for backup %@>", v2, self, v3, v4, v5, v6, v7];

  return v8;
}

- (BOOL)isThisDevice
{
  v6 = self;
  v5[1] = a2;
  v7 = MGCopyAnswer();
  v5[0] = v7;
  v2 = [(RestorableBackupItem *)v6 backupUDID];
  v3 = [(NSString *)v2 isEqualToString:v5[0]];

  objc_storeStrong(v5, 0);
  return v3 & 1;
}

- (BOOL)isCompatible
{
  v2 = [(RestorableBackupItem *)self snapshot:a2];
  v3 = [BuddyBackupUtilities snapshotIsCompatibleWithCurrentSystemVersion:v2];

  return v3 & 1;
}

- (NSString)backupUDID
{
  v2 = [(RestorableBackupItem *)self backup];
  v3 = [(MBBackup *)v2 backupUDID];

  if (v3)
  {
    v4 = [(RestorableBackupItem *)self backup];
    v7 = [(MBBackup *)v4 backupUDID];
  }

  else
  {
    v7 = [(RestorableBackupItem *)self pendingBackupUDID];
  }

  return v7;
}

- (NSString)backupUUID
{
  v2 = [(RestorableBackupItem *)self backup];
  v3 = [(MBBackup *)v2 backupUUID];

  if (v3)
  {
    v4 = [(RestorableBackupItem *)self backup];
    v7 = [(MBBackup *)v4 backupUUID];
  }

  else
  {
    v7 = [(RestorableBackupItem *)self pendingBackupUUID];
  }

  return v7;
}

- (unint64_t)snapshotID
{
  v2 = [(RestorableBackupItem *)self snapshot];

  if (!v2)
  {
    return [(RestorableBackupItem *)self pendingSnapshotID];
  }

  v3 = [(RestorableBackupItem *)self snapshot];
  v6 = [(MBSnapshot *)v3 snapshotID];

  return v6;
}

- (BOOL)isCompatibleWithUpdateToSystemVersion:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(RestorableBackupItem *)v13 snapshot];
  v11 = [(MBSnapshot *)v3 systemVersion];

  v4 = [(RestorableBackupItem *)v13 snapshot];
  v5 = [(MBSnapshot *)v4 requiredProductVersion];

  if (v5)
  {
    v6 = [(RestorableBackupItem *)v13 snapshot];
    v7 = [(MBSnapshot *)v6 requiredProductVersion];
    v8 = v11;
    v11 = v7;
  }

  v9 = [BuddyBackupUtilities canRestoreBackupMadeOnVersion:v11 toSystemVersion:location[0] toSystemVersionFetchedFromCurrentSystemVersion:0, v11];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v9 & 1;
}

- (id)dateStringWithStyle:(unint64_t)a3
{
  if (!qword_1003A7158 || a3 != [qword_1003A7158 timeStyle])
  {
    v3 = objc_alloc_init(NSDateFormatter);
    v4 = qword_1003A7158;
    qword_1003A7158 = v3;

    [qword_1003A7158 setDateStyle:3];
    [qword_1003A7158 setDoesRelativeDateFormatting:1];
    [qword_1003A7158 setTimeStyle:a3];
  }

  v5 = qword_1003A7158;
  v6 = [(RestorableBackupItem *)self snapshot];
  v7 = [(MBSnapshot *)v6 date];
  v8 = [v5 stringFromDate:v7];

  return v8;
}

- (id)deviceInfoString
{
  v16 = self;
  location[1] = a2;
  v2 = [(RestorableBackupItem *)self backup];
  location[0] = [(MBBackup *)v2 marketingName];

  if (!location[0])
  {
    v3 = [(RestorableBackupItem *)v16 backup];
    location[0] = [(MBBackup *)v3 deviceClass];
  }

  if ([(RestorableBackupItem *)v16 isThisDevice])
  {
    v4 = +[NSBundle mainBundle];
    v5 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"THIS_DEVICE"];
    v6 = [(NSBundle *)v4 localizedStringForKey:v5 value:&stru_10032F900 table:@"RestoreFromBackup"];
    v7 = [NSString localizedStringWithFormat:v6, location[0]];
    v8 = location[0];
    location[0] = v7;
  }

  v9 = +[NSBundle mainBundle];
  v10 = [(NSBundle *)v9 localizedStringForKey:@"JOIN_DEVICE_NAME_AND_INFO_%@_%@" value:&stru_10032F900 table:@"RestoreFromBackup"];
  v11 = [(RestorableBackupItem *)v16 snapshot];
  v12 = [(MBSnapshot *)v11 deviceName];
  v13 = [NSString localizedStringWithFormat:v10, v12, location[0]];

  objc_storeStrong(location, 0);

  return v13;
}

- (void)fetchAccounts:(id)a3
{
  v34 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  v27 = &v26;
  v28 = 838860800;
  v29 = 48;
  v30 = sub_100109198;
  v31 = sub_1001091DC;
  v32 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 838860800;
  v22 = 48;
  v23 = sub_100109198;
  v24 = sub_1001091DC;
  v25 = 0;
  v3 = [(RestorableBackupItem *)v34 accountsQueue];
  block = _NSConcreteStackBlock;
  v14 = -1073741824;
  v15 = 0;
  v16 = sub_1001091E8;
  v17 = &unk_10032CCC0;
  v18[1] = &v19;
  v18[0] = v34;
  v18[2] = &v26;
  dispatch_sync(v3, &block);

  if (v20[5])
  {
    if (location[0])
    {
      (*(location[0] + 2))(location[0], v20[5], v27[5], 0);
    }

    v12 = 1;
  }

  else
  {
    v4 = dispatch_get_global_queue(25, 0);
    v5 = _NSConcreteStackBlock;
    v6 = -1073741824;
    v7 = 0;
    v8 = sub_100109268;
    v9 = &unk_10032C970;
    v10 = v34;
    v11[1] = &v19;
    v11[2] = &v26;
    v11[0] = location[0];
    dispatch_async(v4, &v5);

    objc_storeStrong(v11, 0);
    objc_storeStrong(&v10, 0);
    v12 = 0;
  }

  objc_storeStrong(v18, 0);
  _Block_object_dispose(&v19, 8);
  objc_storeStrong(&v25, 0);
  _Block_object_dispose(&v26, 8);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
}

- (id)hashString
{
  v9 = self;
  location[1] = a2;
  v2 = [(RestorableBackupItem *)self snapshot];
  location[0] = [(MBSnapshot *)v2 deviceName];

  if (!location[0])
  {
    objc_storeStrong(location, &stru_10032F900);
  }

  v3 = [(RestorableBackupItem *)v9 backup];
  v7 = [(MBBackup *)v3 marketingName];

  if (!v7)
  {
    objc_storeStrong(&v7, &stru_10032F900);
  }

  v6 = [(RestorableBackupItem *)v9 dateString];
  if (!v6)
  {
    objc_storeStrong(&v6, &stru_10032F900);
  }

  v4 = [NSString stringWithFormat:@"(%@)(%@)(%@)", location[0], v7, v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (NSString)accessibilityIdentifier
{
  v2 = [(RestorableBackupItem *)self snapshot];
  v3 = [(MBSnapshot *)v2 commitID];
  v9 = 0;
  v7 = 0;
  v4 = 0;
  if (v3)
  {
    v10 = [(RestorableBackupItem *)self snapshot];
    v9 = 1;
    v8 = [(MBSnapshot *)v10 commitID];
    v7 = 1;
    v4 = [v8 length] != 0;
  }

  if (v7)
  {
  }

  if (v9)
  {
  }

  v5 = [(RestorableBackupItem *)self snapshot];
  if (v4)
  {
    v12 = [(MBSnapshot *)v5 commitID];
  }

  else
  {
    v12 = [(MBSnapshot *)v5 snapshotUUID];
  }

  return v12;
}

@end