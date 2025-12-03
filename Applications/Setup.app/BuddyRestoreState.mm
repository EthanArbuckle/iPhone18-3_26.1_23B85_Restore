@interface BuddyRestoreState
+ (BOOL)hasStateFromPreferences:(id)preferences;
+ (id)_loadClassicState:(id)state;
+ (id)_loadModernState:(id)state;
+ (id)loadFromPreferences:(id)preferences;
+ (void)removeFromPreferences:(id)preferences;
- (BuddyRestoreState)initWithProductBuild:(id)build backup:(id)backup snapshot:(id)snapshot useLatestSnapshot:(BOOL)latestSnapshot allowCellularNetwork:(BOOL)network;
- (BuddyRestoreState)initWithProductBuild:(id)build backupUDID:(id)d backupUUID:(id)iD snapshotID:(unint64_t)snapshotID snapshotDate:(id)date useLatestSnapshot:(BOOL)snapshot allowCellularNetwork:(BOOL)network persistDate:(id)self0;
- (id)description;
- (void)persistUsingPreferences:(id)preferences;
@end

@implementation BuddyRestoreState

- (BuddyRestoreState)initWithProductBuild:(id)build backupUDID:(id)d backupUUID:(id)iD snapshotID:(unint64_t)snapshotID snapshotDate:(id)date useLatestSnapshot:(BOOL)snapshot allowCellularNetwork:(BOOL)network persistDate:(id)self0
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, build);
  obj = 0;
  objc_storeStrong(&obj, d);
  v25 = 0;
  objc_storeStrong(&v25, iD);
  snapshotIDCopy = snapshotID;
  v23 = 0;
  objc_storeStrong(&v23, date);
  snapshotCopy = snapshot;
  networkCopy = network;
  v20 = 0;
  objc_storeStrong(&v20, persistDate);
  if (location[0] && obj)
  {
    v15 = selfCopy;
    selfCopy = 0;
    v18.receiver = v15;
    v18.super_class = BuddyRestoreState;
    v16 = [(BuddyRestoreState *)&v18 init];
    selfCopy = v16;
    objc_storeStrong(&selfCopy, v16);
    if (v16)
    {
      objc_storeStrong(selfCopy + 2, location[0]);
      objc_storeStrong(selfCopy + 3, obj);
      objc_storeStrong(selfCopy + 4, v25);
      *(selfCopy + 5) = snapshotIDCopy;
      objc_storeStrong(selfCopy + 6, v23);
      *(selfCopy + 8) = snapshotCopy;
      *(selfCopy + 9) = networkCopy;
      objc_storeStrong(selfCopy + 7, v20);
    }

    v29 = selfCopy;
    v19 = 1;
  }

  else
  {
    v29 = 0;
    v19 = 1;
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v29;
}

- (BuddyRestoreState)initWithProductBuild:(id)build backup:(id)backup snapshot:(id)snapshot useLatestSnapshot:(BOOL)latestSnapshot allowCellularNetwork:(BOOL)network
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, build);
  v23 = 0;
  objc_storeStrong(&v23, backup);
  v22 = 0;
  objc_storeStrong(&v22, snapshot);
  latestSnapshotCopy = latestSnapshot;
  networkCopy = network;
  v11 = selfCopy;
  v12 = location[0];
  backupUDID = [v23 backupUDID];
  backupUUID = [v23 backupUUID];
  snapshotID = [v22 snapshotID];
  date = [v22 date];
  selfCopy = 0;
  LOBYTE(v19) = networkCopy;
  selfCopy = [v11 initWithProductBuild:v12 backupUDID:backupUDID backupUUID:backupUUID snapshotID:snapshotID snapshotDate:date useLatestSnapshot:latestSnapshotCopy allowCellularNetwork:v19 persistDate:0];
  v17 = selfCopy;

  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v17;
}

+ (id)loadFromPreferences:(id)preferences
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, preferences);
  v16 = [location[0] objectForKey:@"showiCloudRestoreOnLaunch" includeCache:0];
  v15 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [objc_opt_class() _loadClassicState:v16];
    v4 = v15;
    v15 = v3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [objc_opt_class() _loadModernState:v16];
      v6 = v15;
      v15 = v5;
    }
  }

  if (!v15)
  {
    oslog = _BYLoggingFacility();
    v13 = 16;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v7 = oslog;
      v8 = v13;
      sub_10006AA68(buf);
      _os_log_error_impl(&_mh_execute_header, v7, v8, "Missing or corrupt data when restoring backup restore state!", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v11 = _BYLoggingFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100071CBC(v18, v16);
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Raw data: %{public}@", v18, 0xCu);
    }

    objc_storeStrong(&v11, 0);
  }

  v9 = v15;
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  return v9;
}

+ (BOOL)hasStateFromPreferences:(id)preferences
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, preferences);
  v3 = [location[0] objectForKey:@"showiCloudRestoreOnLaunch"];
  v4 = v3 != 0;

  objc_storeStrong(location, 0);
  return v4;
}

- (void)persistUsingPreferences:(id)preferences
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, preferences);
  v11 = objc_alloc_init(NSMutableDictionary);
  productBuild = [(BuddyRestoreState *)selfCopy productBuild];
  [v11 setObject:productBuild forKeyedSubscript:@"productBuild"];

  backupUDID = [(BuddyRestoreState *)selfCopy backupUDID];
  [v11 setObject:backupUDID forKeyedSubscript:@"backupUDID"];

  backupUUID = [(BuddyRestoreState *)selfCopy backupUUID];
  [v11 setObject:backupUUID forKeyedSubscript:@"backupUUID"];

  v6 = [NSNumber numberWithUnsignedInteger:[(BuddyRestoreState *)selfCopy snapshotID]];
  [v11 setObject:v6 forKeyedSubscript:@"snapshotID"];

  snapshotDate = [(BuddyRestoreState *)selfCopy snapshotDate];
  [v11 setObject:snapshotDate forKeyedSubscript:@"snapshotDate"];

  v8 = [NSNumber numberWithBool:[(BuddyRestoreState *)selfCopy useLatestSnapshot]];
  [v11 setObject:v8 forKeyedSubscript:@"useLatestSnapshot"];

  v9 = [NSNumber numberWithBool:[(BuddyRestoreState *)selfCopy allowCellularNetwork]];
  [v11 setObject:v9 forKeyedSubscript:@"allowCellularNetwork"];

  v10 = +[NSDate date];
  [v11 setObject:v10 forKeyedSubscript:@"persistDate"];

  [location[0] setObject:v11 forKey:@"showiCloudRestoreOnLaunch" persistImmediately:1];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

+ (void)removeFromPreferences:(id)preferences
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, preferences);
  [location[0] removeObjectForKey:@"showiCloudRestoreOnLaunch" onlyFromMemory:0];
  objc_storeStrong(location, 0);
}

- (id)description
{
  v2 = objc_opt_class();
  productBuild = [(BuddyRestoreState *)self productBuild];
  backupUDID = [(BuddyRestoreState *)self backupUDID];
  backupUUID = [(BuddyRestoreState *)self backupUUID];
  snapshotID = [(BuddyRestoreState *)self snapshotID];
  snapshotDate = [(BuddyRestoreState *)self snapshotDate];
  v8 = [NSString stringWithFormat:@"<%@ : %p> Build: %@ Backup UDID: %@ Backup UUID: %@ Snapshot ID: %lu Snapshot Date: %@", v2, self, productBuild, backupUDID, backupUUID, snapshotID, snapshotDate];

  return v8;
}

+ (id)_loadClassicState:(id)state
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, state);
  if ([location[0] count] >= 3)
  {
    v38 = 0;
    v37 = 0;
    v36 = 0;
    unsignedIntegerValue = 0;
    v34 = 1;
    v3 = [location[0] objectAtIndexedSubscript:0];
    v32 = 0;
    isKindOfClass = 0;
    if (v3)
    {
      v33 = [location[0] objectAtIndexedSubscript:0];
      v32 = 1;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    if (v32)
    {
    }

    if (isKindOfClass)
    {
      v5 = [location[0] objectAtIndexedSubscript:0];
      v6 = v38;
      v38 = v5;
    }

    v7 = [location[0] objectAtIndexedSubscript:1];
    v30 = 0;
    v8 = 0;
    if (v7)
    {
      v31 = [location[0] objectAtIndexedSubscript:1];
      v30 = 1;
      objc_opt_class();
      v8 = objc_opt_isKindOfClass();
    }

    if (v30)
    {
    }

    if (v8)
    {
      v9 = [location[0] objectAtIndexedSubscript:1];
      v10 = v37;
      v37 = v9;
    }

    v11 = [location[0] objectAtIndexedSubscript:2];
    v28 = 0;
    v12 = 0;
    if (v11)
    {
      v29 = [location[0] objectAtIndexedSubscript:2];
      v28 = 1;
      objc_opt_class();
      v12 = objc_opt_isKindOfClass();
    }

    if (v28)
    {
    }

    if (v12)
    {
      v13 = [location[0] objectAtIndexedSubscript:2];
      unsignedIntegerValue = [v13 unsignedIntegerValue];
    }

    else
    {
      oslog = _BYLoggingFacility();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v14 = [location[0] objectAtIndexedSubscript:2];
        sub_10006AE18(buf, v14);
        _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Invalid type for snapshot ID when restoring backup restore state: %@", buf, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v34 = 0;
    }

    v25 = 0;
    v23 = 0;
    v15 = 0;
    if ([location[0] count] >= 4)
    {
      v26 = [location[0] objectAtIndexedSubscript:3];
      v25 = 1;
      v15 = 0;
      if (v26)
      {
        v24 = [location[0] objectAtIndexedSubscript:3];
        v23 = 1;
        objc_opt_class();
        v15 = objc_opt_isKindOfClass();
      }
    }

    if (v23)
    {
    }

    if (v25)
    {
    }

    if (v15)
    {
      v16 = [location[0] objectAtIndexedSubscript:3];
      v17 = v36;
      v36 = v16;
    }

    v18 = 0;
    if (v38)
    {
      v18 = v37 != 0;
    }

    v34 = v34 && v18;
    if (v34)
    {
      v19 = objc_alloc(objc_opt_class());
      LOBYTE(v22) = 0;
      v41 = [v19 initWithProductBuild:v38 backupUDID:v37 backupUUID:v36 snapshotID:unsignedIntegerValue snapshotDate:0 useLatestSnapshot:0 allowCellularNetwork:v22 persistDate:0];
    }

    else
    {
      v41 = 0;
    }

    v39 = 1;
    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v38, 0);
  }

  else
  {
    v41 = 0;
    v39 = 1;
  }

  objc_storeStrong(location, 0);
  v20 = v41;

  return v20;
}

+ (id)_loadModernState:(id)state
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, state);
  v17 = [location[0] objectForKeyedSubscript:@"productBuild"];
  v16 = [location[0] objectForKeyedSubscript:@"backupUDID"];
  v15 = [location[0] objectForKeyedSubscript:@"backupUUID"];
  v3 = [location[0] objectForKeyedSubscript:@"snapshotID"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  v14 = unsignedIntegerValue;
  v13 = [location[0] objectForKeyedSubscript:@"snapshotDate"];
  v5 = [location[0] objectForKeyedSubscript:@"useLatestSnapshot"];
  LOBYTE(unsignedIntegerValue) = [v5 BOOLValue];

  v12 = unsignedIntegerValue;
  v6 = [location[0] objectForKeyedSubscript:@"allowCellularNetwork"];
  LOBYTE(unsignedIntegerValue) = [v6 BOOLValue];

  v11 = unsignedIntegerValue;
  v10 = [location[0] objectForKeyedSubscript:@"persistDate"];
  LOBYTE(v9) = unsignedIntegerValue & 1;
  v7 = [objc_alloc(objc_opt_class()) initWithProductBuild:v17 backupUDID:v16 backupUUID:v15 snapshotID:v14 snapshotDate:v13 useLatestSnapshot:v12 & 1 allowCellularNetwork:v9 persistDate:v10];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);

  return v7;
}

@end