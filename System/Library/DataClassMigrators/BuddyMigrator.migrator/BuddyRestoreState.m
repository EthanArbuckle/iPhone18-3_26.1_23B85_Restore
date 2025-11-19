@interface BuddyRestoreState
+ (BOOL)hasStateFromPreferences:(id)a3;
+ (id)_loadClassicState:(id)a3;
+ (id)_loadModernState:(id)a3;
+ (id)loadFromPreferences:(id)a3;
- (BuddyRestoreState)initWithProductBuild:(id)a3 backupUDID:(id)a4 backupUUID:(id)a5 snapshotID:(unint64_t)a6 snapshotDate:(id)a7 useLatestSnapshot:(BOOL)a8 allowCellularNetwork:(BOOL)a9 persistDate:(id)a10;
- (id)description;
- (void)persistUsingPreferences:(id)a3;
@end

@implementation BuddyRestoreState

- (BuddyRestoreState)initWithProductBuild:(id)a3 backupUDID:(id)a4 backupUUID:(id)a5 snapshotID:(unint64_t)a6 snapshotDate:(id)a7 useLatestSnapshot:(BOOL)a8 allowCellularNetwork:(BOOL)a9 persistDate:(id)a10
{
  v15 = a3;
  v16 = a4;
  v25 = a5;
  v24 = a7;
  v17 = a10;
  v18 = 0;
  if (v15 && v16)
  {
    v26.receiver = self;
    v26.super_class = BuddyRestoreState;
    v19 = [(BuddyRestoreState *)&v26 init];
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_productBuild, a3);
      objc_storeStrong(&v20->_backupUDID, a4);
      objc_storeStrong(&v20->_backupUUID, a5);
      v20->_snapshotID = a6;
      objc_storeStrong(&v20->_snapshotDate, a7);
      v20->_useLatestSnapshot = a8;
      v20->_allowCellularNetwork = a9;
      objc_storeStrong(&v20->_persistDate, a10);
    }

    self = v20;
    v18 = self;
  }

  return v18;
}

+ (id)loadFromPreferences:(id)a3
{
  v3 = [a3 objectForKey:@"showiCloudRestoreOnLaunch" includeCache:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_opt_class() _loadClassicState:v3];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_opt_class() _loadModernState:v3];
LABEL_5:
    v5 = v4;
    if (v4)
    {
      goto LABEL_11;
    }
  }

  v6 = _BYLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_18FB0(v6);
  }

  v7 = _BYLoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_18FF4(v3, v7);
  }

  v5 = 0;
LABEL_11:

  return v5;
}

+ (BOOL)hasStateFromPreferences:(id)a3
{
  v3 = [a3 objectForKey:@"showiCloudRestoreOnLaunch"];
  v4 = v3 != 0;

  return v4;
}

- (void)persistUsingPreferences:(id)a3
{
  v4 = a3;
  v13 = objc_alloc_init(NSMutableDictionary);
  v5 = [(BuddyRestoreState *)self productBuild];
  [v13 setObject:v5 forKeyedSubscript:@"productBuild"];

  v6 = [(BuddyRestoreState *)self backupUDID];
  [v13 setObject:v6 forKeyedSubscript:@"backupUDID"];

  v7 = [(BuddyRestoreState *)self backupUUID];
  [v13 setObject:v7 forKeyedSubscript:@"backupUUID"];

  v8 = [NSNumber numberWithUnsignedInteger:[(BuddyRestoreState *)self snapshotID]];
  [v13 setObject:v8 forKeyedSubscript:@"snapshotID"];

  v9 = [(BuddyRestoreState *)self snapshotDate];
  [v13 setObject:v9 forKeyedSubscript:@"snapshotDate"];

  v10 = [NSNumber numberWithBool:[(BuddyRestoreState *)self useLatestSnapshot]];
  [v13 setObject:v10 forKeyedSubscript:@"useLatestSnapshot"];

  v11 = [NSNumber numberWithBool:[(BuddyRestoreState *)self allowCellularNetwork]];
  [v13 setObject:v11 forKeyedSubscript:@"allowCellularNetwork"];

  v12 = +[NSDate date];
  [v13 setObject:v12 forKeyedSubscript:@"persistDate"];

  [v4 setObject:v13 forKey:@"showiCloudRestoreOnLaunch" persistImmediately:1];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(BuddyRestoreState *)self productBuild];
  v5 = [(BuddyRestoreState *)self backupUDID];
  v6 = [(BuddyRestoreState *)self backupUUID];
  v7 = [(BuddyRestoreState *)self snapshotID];
  v8 = [(BuddyRestoreState *)self snapshotDate];
  v9 = [NSString stringWithFormat:@"<%@ : %p> Build: %@ Backup UDID: %@ Backup UUID: %@ Snapshot ID: %lu Snapshot Date: %@", v3, self, v4, v5, v6, v7, v8];

  return v9;
}

+ (id)_loadClassicState:(id)a3
{
  v3 = a3;
  if ([v3 count] >= 3)
  {
    v5 = [v3 objectAtIndexedSubscript:0];
    if (v5)
    {
      v6 = [v3 objectAtIndexedSubscript:0];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v5 = [v3 objectAtIndexedSubscript:0];
      }

      else
      {
        v5 = 0;
      }
    }

    v8 = [v3 objectAtIndexedSubscript:1];
    if (v8)
    {
      v9 = [v3 objectAtIndexedSubscript:1];
      objc_opt_class();
      v10 = objc_opt_isKindOfClass();

      if (v10)
      {
        v8 = [v3 objectAtIndexedSubscript:1];
      }

      else
      {
        v8 = 0;
      }
    }

    v11 = [v3 objectAtIndexedSubscript:2];
    if (v11 && (v12 = v11, [v3 objectAtIndexedSubscript:2], v13 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v14 = objc_opt_isKindOfClass(), v13, v12, (v14 & 1) != 0))
    {
      v15 = [v3 objectAtIndexedSubscript:2];
      v16 = [v15 unsignedIntegerValue];

      v17 = 1;
    }

    else
    {
      v18 = _BYLoggingFacility();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1906C(v3, v18);
      }

      v17 = 0;
      v16 = 0;
    }

    if ([v3 count] >= 4)
    {
      v19 = [v3 objectAtIndexedSubscript:3];
      if (!v19)
      {
LABEL_22:
        if (v5)
        {
          v22 = v8 == 0;
        }

        else
        {
          v22 = 1;
        }

        if (v22)
        {
          v23 = 0;
        }

        else
        {
          v23 = v17;
        }

        if (v23 == 1)
        {
          LOBYTE(v25) = 0;
          v4 = [objc_alloc(objc_opt_class()) initWithProductBuild:v5 backupUDID:v8 backupUUID:v19 snapshotID:v16 snapshotDate:0 useLatestSnapshot:0 allowCellularNetwork:v25 persistDate:0];
        }

        else
        {
          v4 = 0;
        }

        goto LABEL_32;
      }

      v20 = [v3 objectAtIndexedSubscript:3];
      objc_opt_class();
      v21 = objc_opt_isKindOfClass();

      if (v21)
      {
        v19 = [v3 objectAtIndexedSubscript:3];
        goto LABEL_22;
      }
    }

    v19 = 0;
    goto LABEL_22;
  }

  v4 = 0;
LABEL_32:

  return v4;
}

+ (id)_loadModernState:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"productBuild"];
  v5 = [v3 objectForKeyedSubscript:@"backupUDID"];
  v6 = [v3 objectForKeyedSubscript:@"backupUUID"];
  v7 = [v3 objectForKeyedSubscript:@"snapshotID"];
  v8 = [v7 unsignedIntegerValue];

  v9 = [v3 objectForKeyedSubscript:@"snapshotDate"];
  v10 = [v3 objectForKeyedSubscript:@"useLatestSnapshot"];
  v11 = [v10 BOOLValue];

  v12 = [v3 objectForKeyedSubscript:@"allowCellularNetwork"];
  v13 = [v12 BOOLValue];

  v14 = [v3 objectForKeyedSubscript:@"persistDate"];

  LOBYTE(v17) = v13;
  v15 = [objc_alloc(objc_opt_class()) initWithProductBuild:v4 backupUDID:v5 backupUUID:v6 snapshotID:v8 snapshotDate:v9 useLatestSnapshot:v11 allowCellularNetwork:v17 persistDate:v14];

  return v15;
}

@end