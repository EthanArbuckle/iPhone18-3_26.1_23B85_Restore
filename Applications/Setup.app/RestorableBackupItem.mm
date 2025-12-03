@interface RestorableBackupItem
+ (RestorableBackupItem)restorableBackupItemWithBackup:(id)backup snapshot:(id)snapshot;
+ (RestorableBackupItem)restorableBackupItemWithPendingBackupUDID:(id)d backupUUID:(id)iD snapshotID:(unint64_t)snapshotID;
- (BOOL)isCompatible;
- (BOOL)isCompatibleWithUpdateToSystemVersion:(id)version;
- (BOOL)isEqual:(id)equal;
- (BOOL)isThisDevice;
- (NSString)accessibilityIdentifier;
- (NSString)backupUDID;
- (NSString)backupUUID;
- (RestorableBackupItem)init;
- (id)dateStringWithStyle:(unint64_t)style;
- (id)description;
- (id)deviceInfoString;
- (id)hashString;
- (unint64_t)snapshotID;
- (void)fetchAccounts:(id)accounts;
@end

@implementation RestorableBackupItem

+ (RestorableBackupItem)restorableBackupItemWithBackup:(id)backup snapshot:(id)snapshot
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, backup);
  v8 = 0;
  objc_storeStrong(&v8, snapshot);
  v7 = objc_alloc_init(objc_opt_class());
  [v7 setBackup:location[0]];
  [v7 setSnapshot:v8];
  v5 = v7;
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v5;
}

+ (RestorableBackupItem)restorableBackupItemWithPendingBackupUDID:(id)d backupUUID:(id)iD snapshotID:(unint64_t)snapshotID
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v10 = 0;
  objc_storeStrong(&v10, iD);
  v9[1] = snapshotID;
  v9[0] = objc_alloc_init(objc_opt_class());
  [v9[0] setPendingBackupUDID:location[0]];
  [v9[0] setPendingBackupUUID:v10];
  [v9[0] setPendingSnapshotID:snapshotID];
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

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, equal);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = location[0];
    backupUDID = [(RestorableBackupItem *)selfCopy backupUDID];
    backupUDID2 = [v26 backupUDID];
    v5 = ![(NSString *)backupUDID isEqualToString:backupUDID2];

    if (v5)
    {
      v30 = 0;
      v27 = 1;
    }

    else
    {
      backupUUID = [(RestorableBackupItem *)selfCopy backupUUID];
      backupUUID2 = [v26 backupUUID];
      v8 = ![(NSString *)backupUUID isEqualToString:backupUUID2];

      if (v8)
      {
        v30 = 0;
        v27 = 1;
      }

      else
      {
        snapshotID = [(RestorableBackupItem *)selfCopy snapshotID];
        if (snapshotID == [v26 snapshotID])
        {
          snapshot = [(RestorableBackupItem *)selfCopy snapshot];
          snapshotUUID = [(MBSnapshot *)snapshot snapshotUUID];
          v24 = 0;
          v22 = 0;
          v20 = 0;
          v18 = 0;
          v16 = 0;
          v14 = 0;
          v12 = 0;
          if (snapshotUUID)
          {
            snapshot2 = [v26 snapshot];
            v24 = 1;
            snapshotUUID2 = [snapshot2 snapshotUUID];
            v22 = 1;
            v12 = 0;
            if (snapshotUUID2)
            {
              snapshot3 = [(RestorableBackupItem *)selfCopy snapshot];
              v20 = 1;
              snapshotUUID3 = [(MBSnapshot *)snapshot3 snapshotUUID];
              v18 = 1;
              snapshot4 = [v26 snapshot];
              v16 = 1;
              snapshotUUID4 = [snapshot4 snapshotUUID];
              v14 = 1;
              v12 = [snapshotUUID3 isEqualToString:?] ^ 1;
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
  backupUDID = [(RestorableBackupItem *)self backupUDID];
  backupUUID = [(RestorableBackupItem *)self backupUUID];
  snapshot = [(RestorableBackupItem *)self snapshot];
  v6 = [NSNumber numberWithUnsignedInteger:[(RestorableBackupItem *)self snapshotID]];
  backup = [(RestorableBackupItem *)self backup];
  v8 = [NSString stringWithFormat:@"<%@: %p backup with UDID %@, UUID %@, snapshot %@ with ID %@ for backup %@>", v2, self, backupUDID, backupUUID, snapshot, v6, backup];

  return v8;
}

- (BOOL)isThisDevice
{
  selfCopy = self;
  v5[1] = a2;
  v7 = MGCopyAnswer();
  v5[0] = v7;
  backupUDID = [(RestorableBackupItem *)selfCopy backupUDID];
  v3 = [(NSString *)backupUDID isEqualToString:v5[0]];

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
  backup = [(RestorableBackupItem *)self backup];
  backupUDID = [(MBBackup *)backup backupUDID];

  if (backupUDID)
  {
    backup2 = [(RestorableBackupItem *)self backup];
    backupUDID2 = [(MBBackup *)backup2 backupUDID];
  }

  else
  {
    backupUDID2 = [(RestorableBackupItem *)self pendingBackupUDID];
  }

  return backupUDID2;
}

- (NSString)backupUUID
{
  backup = [(RestorableBackupItem *)self backup];
  backupUUID = [(MBBackup *)backup backupUUID];

  if (backupUUID)
  {
    backup2 = [(RestorableBackupItem *)self backup];
    backupUUID2 = [(MBBackup *)backup2 backupUUID];
  }

  else
  {
    backupUUID2 = [(RestorableBackupItem *)self pendingBackupUUID];
  }

  return backupUUID2;
}

- (unint64_t)snapshotID
{
  snapshot = [(RestorableBackupItem *)self snapshot];

  if (!snapshot)
  {
    return [(RestorableBackupItem *)self pendingSnapshotID];
  }

  snapshot2 = [(RestorableBackupItem *)self snapshot];
  snapshotID = [(MBSnapshot *)snapshot2 snapshotID];

  return snapshotID;
}

- (BOOL)isCompatibleWithUpdateToSystemVersion:(id)version
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, version);
  snapshot = [(RestorableBackupItem *)selfCopy snapshot];
  systemVersion = [(MBSnapshot *)snapshot systemVersion];

  snapshot2 = [(RestorableBackupItem *)selfCopy snapshot];
  requiredProductVersion = [(MBSnapshot *)snapshot2 requiredProductVersion];

  if (requiredProductVersion)
  {
    snapshot3 = [(RestorableBackupItem *)selfCopy snapshot];
    requiredProductVersion2 = [(MBSnapshot *)snapshot3 requiredProductVersion];
    v8 = systemVersion;
    systemVersion = requiredProductVersion2;
  }

  v9 = [BuddyBackupUtilities canRestoreBackupMadeOnVersion:systemVersion toSystemVersion:location[0] toSystemVersionFetchedFromCurrentSystemVersion:0, systemVersion];
  objc_storeStrong(&systemVersion, 0);
  objc_storeStrong(location, 0);
  return v9 & 1;
}

- (id)dateStringWithStyle:(unint64_t)style
{
  if (!qword_1003A7158 || style != [qword_1003A7158 timeStyle])
  {
    v3 = objc_alloc_init(NSDateFormatter);
    v4 = qword_1003A7158;
    qword_1003A7158 = v3;

    [qword_1003A7158 setDateStyle:3];
    [qword_1003A7158 setDoesRelativeDateFormatting:1];
    [qword_1003A7158 setTimeStyle:style];
  }

  v5 = qword_1003A7158;
  snapshot = [(RestorableBackupItem *)self snapshot];
  date = [(MBSnapshot *)snapshot date];
  v8 = [v5 stringFromDate:date];

  return v8;
}

- (id)deviceInfoString
{
  selfCopy = self;
  location[1] = a2;
  backup = [(RestorableBackupItem *)self backup];
  location[0] = [(MBBackup *)backup marketingName];

  if (!location[0])
  {
    backup2 = [(RestorableBackupItem *)selfCopy backup];
    location[0] = [(MBBackup *)backup2 deviceClass];
  }

  if ([(RestorableBackupItem *)selfCopy isThisDevice])
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
  snapshot = [(RestorableBackupItem *)selfCopy snapshot];
  deviceName = [(MBSnapshot *)snapshot deviceName];
  v13 = [NSString localizedStringWithFormat:v10, deviceName, location[0]];

  objc_storeStrong(location, 0);

  return v13;
}

- (void)fetchAccounts:(id)accounts
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, accounts);
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
  accountsQueue = [(RestorableBackupItem *)selfCopy accountsQueue];
  block = _NSConcreteStackBlock;
  v14 = -1073741824;
  v15 = 0;
  v16 = sub_1001091E8;
  v17 = &unk_10032CCC0;
  v18[1] = &v19;
  v18[0] = selfCopy;
  v18[2] = &v26;
  dispatch_sync(accountsQueue, &block);

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
    v10 = selfCopy;
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
  selfCopy = self;
  location[1] = a2;
  snapshot = [(RestorableBackupItem *)self snapshot];
  location[0] = [(MBSnapshot *)snapshot deviceName];

  if (!location[0])
  {
    objc_storeStrong(location, &stru_10032F900);
  }

  backup = [(RestorableBackupItem *)selfCopy backup];
  marketingName = [(MBBackup *)backup marketingName];

  if (!marketingName)
  {
    objc_storeStrong(&marketingName, &stru_10032F900);
  }

  dateString = [(RestorableBackupItem *)selfCopy dateString];
  if (!dateString)
  {
    objc_storeStrong(&dateString, &stru_10032F900);
  }

  v4 = [NSString stringWithFormat:@"(%@)(%@)(%@)", location[0], marketingName, dateString];
  objc_storeStrong(&dateString, 0);
  objc_storeStrong(&marketingName, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (NSString)accessibilityIdentifier
{
  snapshot = [(RestorableBackupItem *)self snapshot];
  commitID = [(MBSnapshot *)snapshot commitID];
  v9 = 0;
  v7 = 0;
  v4 = 0;
  if (commitID)
  {
    snapshot2 = [(RestorableBackupItem *)self snapshot];
    v9 = 1;
    commitID2 = [(MBSnapshot *)snapshot2 commitID];
    v7 = 1;
    v4 = [commitID2 length] != 0;
  }

  if (v7)
  {
  }

  if (v9)
  {
  }

  snapshot3 = [(RestorableBackupItem *)self snapshot];
  if (v4)
  {
    commitID3 = [(MBSnapshot *)snapshot3 commitID];
  }

  else
  {
    commitID3 = [(MBSnapshot *)snapshot3 snapshotUUID];
  }

  return commitID3;
}

@end