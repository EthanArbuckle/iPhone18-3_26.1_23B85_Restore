@interface BuddyRestoreState
+ (BOOL)hasStateFromPreferences:(id)preferences;
+ (id)_loadClassicState:(id)state;
+ (id)_loadModernState:(id)state;
+ (id)loadFromPreferences:(id)preferences;
- (BuddyRestoreState)initWithProductBuild:(id)build backupUDID:(id)d backupUUID:(id)iD snapshotID:(unint64_t)snapshotID snapshotDate:(id)date useLatestSnapshot:(BOOL)snapshot allowCellularNetwork:(BOOL)network persistDate:(id)self0;
- (id)description;
- (void)persistUsingPreferences:(id)preferences;
@end

@implementation BuddyRestoreState

- (BuddyRestoreState)initWithProductBuild:(id)build backupUDID:(id)d backupUUID:(id)iD snapshotID:(unint64_t)snapshotID snapshotDate:(id)date useLatestSnapshot:(BOOL)snapshot allowCellularNetwork:(BOOL)network persistDate:(id)self0
{
  buildCopy = build;
  dCopy = d;
  iDCopy = iD;
  dateCopy = date;
  persistDateCopy = persistDate;
  selfCopy = 0;
  if (buildCopy && dCopy)
  {
    v26.receiver = self;
    v26.super_class = BuddyRestoreState;
    v19 = [(BuddyRestoreState *)&v26 init];
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_productBuild, build);
      objc_storeStrong(&v20->_backupUDID, d);
      objc_storeStrong(&v20->_backupUUID, iD);
      v20->_snapshotID = snapshotID;
      objc_storeStrong(&v20->_snapshotDate, date);
      v20->_useLatestSnapshot = snapshot;
      v20->_allowCellularNetwork = network;
      objc_storeStrong(&v20->_persistDate, persistDate);
    }

    self = v20;
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)loadFromPreferences:(id)preferences
{
  v3 = [preferences objectForKey:@"showiCloudRestoreOnLaunch" includeCache:0];
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

+ (BOOL)hasStateFromPreferences:(id)preferences
{
  v3 = [preferences objectForKey:@"showiCloudRestoreOnLaunch"];
  v4 = v3 != 0;

  return v4;
}

- (void)persistUsingPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v13 = objc_alloc_init(NSMutableDictionary);
  productBuild = [(BuddyRestoreState *)self productBuild];
  [v13 setObject:productBuild forKeyedSubscript:@"productBuild"];

  backupUDID = [(BuddyRestoreState *)self backupUDID];
  [v13 setObject:backupUDID forKeyedSubscript:@"backupUDID"];

  backupUUID = [(BuddyRestoreState *)self backupUUID];
  [v13 setObject:backupUUID forKeyedSubscript:@"backupUUID"];

  v8 = [NSNumber numberWithUnsignedInteger:[(BuddyRestoreState *)self snapshotID]];
  [v13 setObject:v8 forKeyedSubscript:@"snapshotID"];

  snapshotDate = [(BuddyRestoreState *)self snapshotDate];
  [v13 setObject:snapshotDate forKeyedSubscript:@"snapshotDate"];

  v10 = [NSNumber numberWithBool:[(BuddyRestoreState *)self useLatestSnapshot]];
  [v13 setObject:v10 forKeyedSubscript:@"useLatestSnapshot"];

  v11 = [NSNumber numberWithBool:[(BuddyRestoreState *)self allowCellularNetwork]];
  [v13 setObject:v11 forKeyedSubscript:@"allowCellularNetwork"];

  v12 = +[NSDate date];
  [v13 setObject:v12 forKeyedSubscript:@"persistDate"];

  [preferencesCopy setObject:v13 forKey:@"showiCloudRestoreOnLaunch" persistImmediately:1];
}

- (id)description
{
  v3 = objc_opt_class();
  productBuild = [(BuddyRestoreState *)self productBuild];
  backupUDID = [(BuddyRestoreState *)self backupUDID];
  backupUUID = [(BuddyRestoreState *)self backupUUID];
  snapshotID = [(BuddyRestoreState *)self snapshotID];
  snapshotDate = [(BuddyRestoreState *)self snapshotDate];
  v9 = [NSString stringWithFormat:@"<%@ : %p> Build: %@ Backup UDID: %@ Backup UUID: %@ Snapshot ID: %lu Snapshot Date: %@", v3, self, productBuild, backupUDID, backupUUID, snapshotID, snapshotDate];

  return v9;
}

+ (id)_loadClassicState:(id)state
{
  stateCopy = state;
  if ([stateCopy count] >= 3)
  {
    v5 = [stateCopy objectAtIndexedSubscript:0];
    if (v5)
    {
      v6 = [stateCopy objectAtIndexedSubscript:0];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v5 = [stateCopy objectAtIndexedSubscript:0];
      }

      else
      {
        v5 = 0;
      }
    }

    v8 = [stateCopy objectAtIndexedSubscript:1];
    if (v8)
    {
      v9 = [stateCopy objectAtIndexedSubscript:1];
      objc_opt_class();
      v10 = objc_opt_isKindOfClass();

      if (v10)
      {
        v8 = [stateCopy objectAtIndexedSubscript:1];
      }

      else
      {
        v8 = 0;
      }
    }

    v11 = [stateCopy objectAtIndexedSubscript:2];
    if (v11 && (v12 = v11, [stateCopy objectAtIndexedSubscript:2], v13 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v14 = objc_opt_isKindOfClass(), v13, v12, (v14 & 1) != 0))
    {
      v15 = [stateCopy objectAtIndexedSubscript:2];
      unsignedIntegerValue = [v15 unsignedIntegerValue];

      v17 = 1;
    }

    else
    {
      v18 = _BYLoggingFacility();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1906C(stateCopy, v18);
      }

      v17 = 0;
      unsignedIntegerValue = 0;
    }

    if ([stateCopy count] >= 4)
    {
      v19 = [stateCopy objectAtIndexedSubscript:3];
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
          v4 = [objc_alloc(objc_opt_class()) initWithProductBuild:v5 backupUDID:v8 backupUUID:v19 snapshotID:unsignedIntegerValue snapshotDate:0 useLatestSnapshot:0 allowCellularNetwork:v25 persistDate:0];
        }

        else
        {
          v4 = 0;
        }

        goto LABEL_32;
      }

      v20 = [stateCopy objectAtIndexedSubscript:3];
      objc_opt_class();
      v21 = objc_opt_isKindOfClass();

      if (v21)
      {
        v19 = [stateCopy objectAtIndexedSubscript:3];
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

+ (id)_loadModernState:(id)state
{
  stateCopy = state;
  v4 = [stateCopy objectForKeyedSubscript:@"productBuild"];
  v5 = [stateCopy objectForKeyedSubscript:@"backupUDID"];
  v6 = [stateCopy objectForKeyedSubscript:@"backupUUID"];
  v7 = [stateCopy objectForKeyedSubscript:@"snapshotID"];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  v9 = [stateCopy objectForKeyedSubscript:@"snapshotDate"];
  v10 = [stateCopy objectForKeyedSubscript:@"useLatestSnapshot"];
  bOOLValue = [v10 BOOLValue];

  v12 = [stateCopy objectForKeyedSubscript:@"allowCellularNetwork"];
  bOOLValue2 = [v12 BOOLValue];

  v14 = [stateCopy objectForKeyedSubscript:@"persistDate"];

  LOBYTE(v17) = bOOLValue2;
  v15 = [objc_alloc(objc_opt_class()) initWithProductBuild:v4 backupUDID:v5 backupUUID:v6 snapshotID:unsignedIntegerValue snapshotDate:v9 useLatestSnapshot:bOOLValue allowCellularNetwork:v17 persistDate:v14];

  return v15;
}

@end