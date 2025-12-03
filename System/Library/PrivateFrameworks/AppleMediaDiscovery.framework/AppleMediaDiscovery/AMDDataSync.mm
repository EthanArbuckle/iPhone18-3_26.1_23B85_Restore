@interface AMDDataSync
+ (id)fetchDeviceID:(id *)d;
+ (id)generateDeviceIDFileAtLocation:(id)location error:(id *)error;
+ (id)processDataReplicationPayload:(id)payload error:(id *)error;
- (AMDDataSync)initWithDataReplicationConfig:(id)config error:(id *)error;
- (id)clearUserDataForDevice:(id)device fromTimestamp:(id)timestamp;
- (id)createDeviceEntryWithDevicesData:(id)data error:(id *)error;
- (id)fetch:(id)fetch SortedEventListFromTimestamp:(id)timestamp forCurrentDevice:(BOOL)device error:(id *)error;
- (id)fetch:(id)fetch SortedEventListFromTimestamp:(id)timestamp onlyForCurrentDevice:(BOOL)device forStream:(id)stream error:(id *)error;
- (id)fetchEventsForStream:(id)stream withPredicates:(id)predicates error:(id *)error;
- (id)fetchLastReadTimestampFromPayload:(id)payload;
- (id)fetchLastReadTimestampFromPayload:(id)payload forStream:(id)stream;
- (id)filterEventsList:(id)list withLastReadTimestamp:(id)timestamp;
- (id)findAvailableDeviceForFullSyncIn:(id)in;
- (id)generateFullSyncPayloadWithDevicesData:(id)data error:(id *)error;
- (id)ingestDataFromDevice:(id)device withDevicePayload:(id)payload forStream:(id)stream fromTimestamp:(id)timestamp error:(id *)error;
- (id)ingestEventsIntoCoreData:(id)data withPreviousCheckpoint:(id *)checkpoint andStreamCheckpointDict:(id)dict error:(id *)error;
- (id)ingestEventsIntoSQLite:(id)lite forStream:(id)stream withPreviousCheckpoint:(id *)checkpoint andStreamCheckpointDict:(id)dict error:(id *)error;
- (id)performDataReplicationPayloadUpdates:(id)updates withDeviceRegistry:(id)registry error:(id *)error;
- (id)pruneInactiveDevicesFrom:(id)from;
- (id)updateDataDeletionDict:(id)dict withDevicesData:(id)data error:(id *)error;
- (void)ingestFullSyncEventsFor:(id)for withDeviceData:(id)data error:(id *)error;
- (void)performEventDeltaUpdateFor:(id)for withDeviceData:(id)data error:(id *)error;
- (void)pushFullSyncDataFrom:(id)from withDeviceData:(id)data error:(id *)error;
@end

@implementation AMDDataSync

- (AMDDataSync)initWithDataReplicationConfig:(id)config error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, config);
  errorCopy = error;
  v4 = selfCopy;
  selfCopy = 0;
  v34.receiver = v4;
  v34.super_class = AMDDataSync;
  selfCopy = [(AMDDataSync *)&v34 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (location[0])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = MEMORY[0x277D82BE0](location[0]);
      v25 = [v26 objectForKey:@"isEnabled"];
      if (v25 && ([v25 BOOLValue] & 1) != 0)
      {
        v19 = [v26 objectForKey:@"eventsDeltaSize"];
        [selfCopy setEventsDeltaSize:?];
        MEMORY[0x277D82BD8](v19);
        eventsDeltaSize = [selfCopy eventsDeltaSize];
        MEMORY[0x277D82BD8](eventsDeltaSize);
        if (!eventsDeltaSize)
        {
          [selfCopy setEventsDeltaSize:&unk_2852BA800];
        }

        v17 = [v26 objectForKey:@"eventLifetime"];
        [selfCopy setEventLifetimeDays:?];
        MEMORY[0x277D82BD8](v17);
        eventLifetimeDays = [selfCopy eventLifetimeDays];
        MEMORY[0x277D82BD8](eventLifetimeDays);
        if (!eventLifetimeDays)
        {
          [selfCopy setEventLifetimeDays:&unk_2852BA818];
        }

        v15 = [v26 objectForKey:@"deviceForgetThreshold"];
        [selfCopy setDeviceForgetThresholdDays:?];
        MEMORY[0x277D82BD8](v15);
        deviceForgetThresholdDays = [selfCopy deviceForgetThresholdDays];
        MEMORY[0x277D82BD8](deviceForgetThresholdDays);
        if (!deviceForgetThresholdDays)
        {
          [selfCopy setDeviceForgetThresholdDays:&unk_2852BA830];
        }

        v13 = [v26 objectForKey:@"fullSyncEventsDeltaSize"];
        [selfCopy setFullSyncEventsDeltaSize:?];
        MEMORY[0x277D82BD8](v13);
        fullSyncEventsDeltaSize = [selfCopy fullSyncEventsDeltaSize];
        MEMORY[0x277D82BD8](fullSyncEventsDeltaSize);
        if (!fullSyncEventsDeltaSize)
        {
          [selfCopy setFullSyncEventsDeltaSize:&unk_2852BA848];
        }

        v11 = [v26 objectForKey:@"fullSyncDeviceResetThreshold"];
        [selfCopy setFullSyncDeviceResetThresholdDays:?];
        MEMORY[0x277D82BD8](v11);
        fullSyncDeviceResetThresholdDays = [selfCopy fullSyncDeviceResetThresholdDays];
        MEMORY[0x277D82BD8](fullSyncDeviceResetThresholdDays);
        if (!fullSyncDeviceResetThresholdDays)
        {
          [selfCopy setFullSyncDeviceResetThresholdDays:&unk_2852BA860];
        }

        v9 = [v26 objectForKey:@"supportedStreams"];
        [selfCopy setStreamsToSync:?];
        MEMORY[0x277D82BD8](v9);
        streamsToSync = [selfCopy streamsToSync];
        MEMORY[0x277D82BD8](streamsToSync);
        if (!streamsToSync)
        {
          v39 = @"AppUsageDataCoreData";
          v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
          [selfCopy setStreamsToSync:?];
          MEMORY[0x277D82BD8](v8);
        }

        v24 = [AMDDataSync fetchDeviceID:errorCopy];
        if (*errorCopy)
        {
          v38 = 0;
        }

        else
        {
          [selfCopy setLocalDeviceId:v24];
          v38 = MEMORY[0x277D82BE0](selfCopy);
        }

        v30 = 1;
        objc_storeStrong(&v24, 0);
      }

      else
      {
        v38 = 0;
        v30 = 1;
      }

      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v26, 0);
    }

    else
    {
      v29 = MEMORY[0x277D82BE0](@"Data Replication Config is not a dictionary");
      v28 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v27 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v40, v29);
        _os_log_error_impl(&dword_240CB9000, v28, v27, "%@", v40, 0xCu);
      }

      objc_storeStrong(&v28, 0);
      v21 = [AMDError allocError:10 withMessage:v29];
      v6 = v21;
      *errorCopy = v21;
      v38 = 0;
      v30 = 1;
      objc_storeStrong(&v29, 0);
    }
  }

  else
  {
    v33 = MEMORY[0x277D82BE0](@"Missing Data Replication Config");
    v32 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v31 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v41, v33);
      _os_log_error_impl(&dword_240CB9000, v32, v31, "%@", v41, 0xCu);
    }

    objc_storeStrong(&v32, 0);
    v22 = [AMDError allocError:10 withMessage:v33];
    v5 = v22;
    *errorCopy = v22;
    v38 = 0;
    v30 = 1;
    objc_storeStrong(&v33, 0);
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x277D85DE8];
  return v38;
}

+ (id)generateDeviceIDFileAtLocation:(id)location error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, location);
  errorCopy = error;
  v11 = objc_alloc_init(MEMORY[0x277CCAD78]);
  uUIDString = [v11 UUIDString];
  v23 = [@"__DR__" stringByAppendingString:?];
  MEMORY[0x277D82BD8](uUIDString);
  MEMORY[0x277D82BD8](v11);
  v12 = +[AMDMiscHelpers getCurrentEpochSeconds];
  longLongValue = [v12 longLongValue];
  MEMORY[0x277D82BD8](v12);
  v22[1] = longLongValue;
  v14 = [MEMORY[0x277CCABB0] numberWithLong:longLongValue];
  v22[0] = [v14 stringValue];
  MEMORY[0x277D82BD8](v14);
  v15 = [v23 stringByAppendingString:@"_"];
  v21 = [v15 stringByAppendingString:v22[0]];
  MEMORY[0x277D82BD8](v15);
  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v20 setObject:v21 forKey:@"deviceUUID"];
  v19 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v20 options:1 error:error];
  if (*error)
  {
    v18 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v17 = 16;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      log = v18;
      type = v17;
      localizedDescription = [*errorCopy localizedDescription];
      v16 = MEMORY[0x277D82BE0](localizedDescription);
      __os_log_helper_16_2_1_8_64(v27, v16);
      _os_log_error_impl(&dword_240CB9000, log, type, "DeviceId creation failed. Error: %@", v27, 0xCu);
      MEMORY[0x277D82BD8](localizedDescription);
      objc_storeStrong(&v16, 0);
    }

    objc_storeStrong(&v18, 0);
    v26 = 0;
  }

  else
  {
    [v19 writeToURL:location[0] atomically:1];
    v26 = MEMORY[0x277D82BE0](v23);
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v4 = v26;

  return v4;
}

+ (id)fetchDeviceID:(id *)d
{
  v30 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v26 = a2;
  dCopy = d;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [defaultManager URLsForDirectory:14 inDomains:1];
  lastObject = [v12 lastObject];
  MEMORY[0x277D82BD8](v12);
  v22 = [lastObject URLByAppendingPathComponent:0x2852AD488];
  v13 = [v22 URLByAppendingPathComponent:@"__deviceId"];
  v21 = [v13 URLByAppendingPathExtension:@"json"];
  MEMORY[0x277D82BD8](v13);
  v20 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v21];
  v19 = 0;
  if (!v20)
  {
    v3 = [selfCopy generateDeviceIDFileAtLocation:v21 error:dCopy];
    v4 = v19;
    v19 = v3;
    MEMORY[0x277D82BD8](v4);
    if (*dCopy)
    {
      v28 = 0;
      v18 = 1;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v17 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v20 options:4 error:dCopy];
  if (*dCopy)
  {
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v10 = type;
      localizedDescription = [*dCopy localizedDescription];
      v14 = MEMORY[0x277D82BE0](localizedDescription);
      __os_log_helper_16_2_1_8_64(v29, v14);
      _os_log_error_impl(&dword_240CB9000, log, v10, "DeviceId read failed. Error: %@", v29, 0xCu);
      MEMORY[0x277D82BD8](localizedDescription);
      objc_storeStrong(&v14, 0);
    }

    objc_storeStrong(&oslog, 0);
    v28 = 0;
    v18 = 1;
  }

  else
  {
    v5 = [v17 objectForKey:@"deviceUUID"];
    v6 = v19;
    v19 = v5;
    MEMORY[0x277D82BD8](v6);
    v18 = 0;
  }

  objc_storeStrong(&v17, 0);
  if (!v18)
  {
LABEL_11:
    v28 = MEMORY[0x277D82BE0](v19);
    v18 = 1;
  }

LABEL_12:
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&lastObject, 0);
  objc_storeStrong(&defaultManager, 0);
  *MEMORY[0x277D85DE8];
  v7 = v28;

  return v7;
}

- (id)findAvailableDeviceForFullSyncIn:(id)in
{
  v22 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, in);
  v19 = MEMORY[0x277D82BE0](&stru_2852A6E28);
  longLongValue2 = 0;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v12 = [obj countByEnumeratingWithState:__b objects:v21 count:16];
  if (v12)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v12;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(__b[1] + 8 * v9);
      v15 = [location[0] objectForKey:v17];
      v6 = [v15 objectForKey:@"fullSyncResponse"];
      MEMORY[0x277D82BD8](v6);
      if (v6)
      {
        v14 = 3;
      }

      else
      {
        v13 = [v15 objectForKey:@"lastUpdateTimeMilliSeconds"];
        longLongValue = [v13 longLongValue];
        if (longLongValue > longLongValue2)
        {
          longLongValue2 = [v13 longLongValue];
          objc_storeStrong(&v19, v17);
        }

        objc_storeStrong(&v13, 0);
        v14 = 0;
      }

      objc_storeStrong(&v15, 0);
      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v21 count:16];
        if (!v10)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v5 = MEMORY[0x277D82BE0](v19);
  v14 = 1;
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v5;
}

- (id)generateFullSyncPayloadWithDevicesData:(id)data error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  errorCopy = error;
  if ([location[0] count])
  {
    v21 = 1;
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](location[0]);
    v13 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
    if (v13)
    {
      v9 = *__b[2];
      v10 = 0;
      v11 = v13;
      while (1)
      {
        v8 = v10;
        if (*__b[2] != v9)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(__b[1] + 8 * v10);
        v18 = [location[0] objectForKey:v20];
        if ([v18 count])
        {
          v21 = 0;
        }

        objc_storeStrong(&v18, 0);
        ++v10;
        if (v8 + 1 >= v11)
        {
          v10 = 0;
          v11 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
          if (!v11)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    if (v21)
    {
      v26 = 0;
      v22 = 1;
    }

    else
    {
      v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v16 = [(AMDDataSync *)selfCopy findAvailableDeviceForFullSyncIn:location[0]];
      [v17 setObject:v16 forKey:@"sourceUUID"];
      [v17 setObject:MEMORY[0x277CBEC10] forKey:@"fsCheckpoint"];
      v6 = MEMORY[0x277CCABB0];
      v7 = +[AMDMiscHelpers getCurrentEpochSeconds];
      v15 = [v6 numberWithLongLong:{1000 * objc_msgSend(v7, "longLongValue")}];
      MEMORY[0x277D82BD8](v7);
      [v17 setObject:v15 forKey:@"fsRequestTime"];
      v26 = MEMORY[0x277D82BE0](v17);
      v22 = 1;
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v17, 0);
    }
  }

  else
  {
    v26 = 0;
    v22 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v4 = v26;

  return v4;
}

- (id)fetchLastReadTimestampFromPayload:(id)payload
{
  v28 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  v13 = +[AMDMiscHelpers getCurrentEpochSeconds];
  v14 = 1000 * [v13 longLongValue];
  MEMORY[0x277D82BD8](v13);
  unsignedLongLongValue2 = v14;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v16 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
  if (v16)
  {
    v10 = *__b[2];
    v11 = 0;
    v12 = v16;
    while (1)
    {
      v9 = v11;
      if (*__b[2] != v10)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(__b[1] + 8 * v11);
      v20 = [location[0] objectForKey:v22];
      v19 = [v20 objectForKey:@"checkpoints"];
      v6 = v19;
      localDeviceId = [(AMDDataSync *)selfCopy localDeviceId];
      v18 = [v6 objectForKey:?];
      MEMORY[0x277D82BD8](localDeviceId);
      v8 = [v20 objectForKey:@"fullSyncRequest"];
      MEMORY[0x277D82BD8](v8);
      if (v8)
      {
        v17 = 3;
      }

      else if (v18)
      {
        unsignedLongLongValue = [v18 unsignedLongLongValue];
        if (unsignedLongLongValue < unsignedLongLongValue2)
        {
          unsignedLongLongValue2 = [v18 unsignedLongLongValue];
        }

        v17 = 0;
      }

      else
      {
        v26 = MEMORY[0x277D82BE0](&unk_2852BA878);
        v17 = 1;
      }

      objc_storeStrong(&v18, 0);
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v20, 0);
      if (v17)
      {
        if (v17 != 3)
        {
          break;
        }
      }

      ++v11;
      if (v9 + 1 >= v12)
      {
        v11 = 0;
        v12 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
        if (!v12)
        {
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
LABEL_16:
    v17 = 0;
  }

  MEMORY[0x277D82BD8](obj);
  if (!v17)
  {
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedLongLongValue2];
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v4 = v26;

  return v4;
}

- (id)fetchLastReadTimestampFromPayload:(id)payload forStream:(id)stream
{
  v32 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  v27 = 0;
  objc_storeStrong(&v27, stream);
  v15 = +[AMDMiscHelpers getCurrentEpochSeconds];
  v16 = 1000 * [v15 longLongValue];
  MEMORY[0x277D82BD8](v15);
  unsignedLongLongValue2 = v16;
  memset(__b, 0, sizeof(__b));
  v17 = MEMORY[0x277D82BE0](location[0]);
  v18 = [v17 countByEnumeratingWithState:__b objects:v31 count:16];
  if (v18)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v18;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(v17);
      }

      v25 = *(__b[1] + 8 * v12);
      v23 = [location[0] objectForKey:v25];
      v9 = [v23 objectForKey:@"fullSyncRequest"];
      MEMORY[0x277D82BD8](v9);
      if (v9)
      {
        v22 = 3;
      }

      else
      {
        v21 = [v23 objectForKey:@"checkpoints"];
        v20 = [v21 objectForKey:v27];
        if (v20)
        {
          v7 = v20;
          localDeviceId = [(AMDDataSync *)selfCopy localDeviceId];
          v19 = [v7 objectForKey:?];
          MEMORY[0x277D82BD8](localDeviceId);
          if (v19)
          {
            unsignedLongLongValue = [v19 unsignedLongLongValue];
            if (unsignedLongLongValue < unsignedLongLongValue2)
            {
              unsignedLongLongValue2 = [v19 unsignedLongLongValue];
            }

            v22 = 0;
          }

          else
          {
            v30 = MEMORY[0x277D82BE0](&unk_2852BA878);
            v22 = 1;
          }

          objc_storeStrong(&v19, 0);
        }

        else
        {
          v22 = 3;
        }

        objc_storeStrong(&v20, 0);
        objc_storeStrong(&v21, 0);
      }

      objc_storeStrong(&v23, 0);
      if (v22)
      {
        if (v22 != 3)
        {
          break;
        }
      }

      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [v17 countByEnumeratingWithState:__b objects:v31 count:16];
        if (!v13)
        {
          goto LABEL_20;
        }
      }
    }
  }

  else
  {
LABEL_20:
    v22 = 0;
  }

  MEMORY[0x277D82BD8](v17);
  if (!v22)
  {
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedLongLongValue2];
    v22 = 1;
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v5 = v30;

  return v5;
}

- (id)pruneInactiveDevicesFrom:(id)from
{
  v25 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, from);
  v12 = +[AMDMiscHelpers getCurrentEpochSeconds];
  longLongValue = [v12 longLongValue];
  deviceForgetThresholdDays = [(AMDDataSync *)selfCopy deviceForgetThresholdDays];
  v13 = 1000 * (longLongValue - 86400 * [(NSNumber *)deviceForgetThresholdDays longValue]);
  MEMORY[0x277D82BD8](deviceForgetThresholdDays);
  MEMORY[0x277D82BD8](v12);
  v21 = v13;
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v15 = [obj countByEnumeratingWithState:__b objects:v24 count:16];
  if (v15)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v15;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(__b[1] + 8 * v8);
      v17 = [location[0] objectForKey:v19];
      v16 = [v17 objectForKey:@"lastUpdateTimeMilliSeconds"];
      longLongValue2 = [v16 longLongValue];
      if (longLongValue2 < v21)
      {
        [v20 addObject:v19];
      }

      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v17, 0);
      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [obj countByEnumeratingWithState:__b objects:v24 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  [AMDFrameworkMetrics log:v20 withKey:@"prunedDeviceIds" atVerbosity:0];
  v5 = MEMORY[0x277D82BE0](v20);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v5;
}

- (id)filterEventsList:(id)list withLastReadTimestamp:(id)timestamp
{
  v34 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, list);
  v30 = 0;
  objc_storeStrong(&v30, timestamp);
  v17 = +[AMDMiscHelpers getCurrentEpochSeconds];
  longLongValue = [v17 longLongValue];
  eventLifetimeDays = [(AMDDataSync *)selfCopy eventLifetimeDays];
  v18 = 1000 * (longLongValue - 86400 * [(NSNumber *)eventLifetimeDays longValue]);
  MEMORY[0x277D82BD8](eventLifetimeDays);
  MEMORY[0x277D82BD8](v17);
  v29 = v18;
  v28 = v18;
  unsignedLongLongValue = [v30 unsignedLongLongValue];
  if (v18 >= unsignedLongLongValue)
  {
    v13 = v28;
  }

  else
  {
    v13 = unsignedLongLongValue;
  }

  v26 = v13;
  v29 = v13;
  v25 = 0;
  memset(__b, 0, sizeof(__b));
  v11 = MEMORY[0x277D82BE0](location[0]);
  v12 = [v11 countByEnumeratingWithState:__b objects:v33 count:16];
  if (v12)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v12;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(v11);
      }

      v24 = *(__b[1] + 8 * v9);
      v22 = [v24 objectForKey:@"time"];
      if ([v22 unsignedLongLongValue] <= v29)
      {
        ++v25;
        v21 = 0;
      }

      else
      {
        v21 = 2;
      }

      objc_storeStrong(&v22, 0);
      if (v21)
      {
        break;
      }

      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [v11 countByEnumeratingWithState:__b objects:v33 count:16];
        if (!v10)
        {
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
LABEL_14:
    v21 = 0;
  }

  MEMORY[0x277D82BD8](v11);
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = v25; i < [location[0] count]; ++i)
  {
    v6 = [location[0] objectAtIndex:i];
    [v20 addObject:?];
    MEMORY[0x277D82BD8](v6);
  }

  v5 = MEMORY[0x277D82BE0](v20);
  v21 = 1;
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v5;
}

- (id)fetch:(id)fetch SortedEventListFromTimestamp:(id)timestamp forCurrentDevice:(BOOL)device error:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fetch);
  v45 = 0;
  objc_storeStrong(&v45, timestamp);
  deviceCopy = device;
  errorCopy = error;
  v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (device)
  {
    v23 = MEMORY[0x277CCAC30];
    localDeviceId = [(AMDDataSync *)selfCopy localDeviceId];
    v24 = [v23 predicateWithFormat:@"deviceId == %@ || deviceId == %@", localDeviceId, @"undefined"];
    [v42 addObject:?];
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](localDeviceId);
  }

  if (v45)
  {
    v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"time > %llu", objc_msgSend(v45, "longLongValue")];
    [v42 addObject:?];
    MEMORY[0x277D82BD8](v22);
  }

  v41 = [AMDAppEvent fetchEventsWithPredicate:v42 error:errorCopy];
  v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
  memset(__b, 0, sizeof(__b));
  v20 = MEMORY[0x277D82BE0](v41);
  v21 = [v20 countByEnumeratingWithState:__b objects:v54 count:16];
  if (v21)
  {
    v17 = *__b[2];
    v18 = 0;
    v19 = v21;
    while (1)
    {
      v16 = v18;
      if (*__b[2] != v17)
      {
        objc_enumerationMutation(v20);
      }

      v39 = *(__b[1] + 8 * v18);
      v14 = [v39 objectForKey:0x2852ACD28];
      v15 = [v14 isEqualToString:@"undefined"];
      MEMORY[0x277D82BD8](v14);
      if (v15)
      {
        v37 = [v39 mutableCopy];
        v12 = v37;
        localDeviceId2 = [(AMDDataSync *)selfCopy localDeviceId];
        [v12 setObject:? forKey:?];
        MEMORY[0x277D82BD8](localDeviceId2);
        [v40 addObject:v37];
        objc_storeStrong(&v37, 0);
      }

      else
      {
        [v40 addObject:v39];
      }

      ++v18;
      if (v16 + 1 >= v19)
      {
        v18 = 0;
        v19 = [v20 countByEnumeratingWithState:__b objects:v54 count:16];
        if (!v19)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v20);
  if (*errorCopy)
  {
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v10 = type;
      localizedDescription = [*errorCopy localizedDescription];
      v34 = MEMORY[0x277D82BE0](localizedDescription);
      __os_log_helper_16_2_1_8_64(v53, v34);
      _os_log_error_impl(&dword_240CB9000, log, v10, "Event fetch failed during data sync with error: %@", v53, 0xCu);
      MEMORY[0x277D82BD8](localizedDescription);
      objc_storeStrong(&v34, 0);
    }

    objc_storeStrong(&oslog, 0);
    v48 = 0;
    v33 = 1;
  }

  else
  {
    v32 = [AMDMiscHelpers sortArrayElements:v40 inDescendingOrder:0 withComparisonKey:0x2852AC9C8 isKeyString:0];
    v30 = [v32 count];
    intValue = [location[0] intValue];
    if (v30 >= intValue)
    {
      v8 = intValue;
    }

    else
    {
      v8 = v30;
    }

    v50 = 0;
    v49 = v8;
    v51 = 0;
    v52 = v8;
    v31 = [v32 subarrayWithRange:{0, v8}];
    v48 = MEMORY[0x277D82BE0](v31);
    v33 = 1;
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
  }

  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v6 = v48;

  return v6;
}

- (id)fetchEventsForStream:(id)stream withPredicates:(id)predicates error:(id *)error
{
  v51[5] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, stream);
  v47 = 0;
  objc_storeStrong(&v47, predicates);
  errorCopy = error;
  v45 = +[AMDSQLite getSharedInstance];
  if ([v45 isUsable])
  {
    getDataSchema = [v45 getDataSchema];
    v42 = [getDataSchema getTableForStream:location[0]];
    if (v42)
    {
      v50[0] = 0x2852AF4C8;
      v51[0] = @"fetchEventsFromTable";
      v50[1] = 0x2852AF668;
      v51[1] = v42;
      v50[2] = 0x2852AF4A8;
      v17 = [AMDSQLiteSchema fetchColumnSpecsForTable:v42];
      v51[2] = v17;
      v50[3] = 0x2852AF5E8;
      v51[3] = v47;
      v50[4] = 0x2852AF648;
      v51[4] = @"time ASC";
      v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:5];
      MEMORY[0x277D82BD8](v17);
      v18 = [AMDFetchDescriptor alloc];
      getDataSchema2 = [v45 getDataSchema];
      v39 = [AMDFetchDescriptor initWithDict:v18 usingSchema:"initWithDict:usingSchema:error:" error:v40];
      MEMORY[0x277D82BD8](getDataSchema2);
      if (*errorCopy)
      {
        v49 = 0;
        v44 = 1;
      }

      else
      {
        v38 = [v45 fetchRows:v39 andPersist:0 error:errorCopy];
        v37 = [v38 objectForKey:0x2852A76C8];
        v36 = [v37 objectForKey:0x2852A9368];
        v35 = [v37 objectForKey:0x2852A9348];
        v34 = [v36 count];
        if (v34)
        {
          firstObject = [v36 firstObject];
          v15 = [firstObject count];
          MEMORY[0x277D82BD8](firstObject);
          v32 = v15;
          v31 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v15];
          for (i = 0; i < v32; ++i)
          {
            v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
            [v31 addObject:?];
            MEMORY[0x277D82BD8](v13);
          }

          for (j = 0; j < v34; ++j)
          {
            v28 = [v36 objectAtIndex:j];
            v27 = [v35 objectAtIndex:j];
            for (k = 0; k < v32; ++k)
            {
              v25 = [v31 objectAtIndex:k];
              v24 = [v28 objectAtIndex:k];
              v11 = v25;
              v10 = v24;
              v12 = [v27 objectForKey:0x2852A70A8];
              [v11 setObject:v10 forKey:?];
              MEMORY[0x277D82BD8](v12);
              objc_storeStrong(&v24, 0);
              objc_storeStrong(&v25, 0);
            }

            objc_storeStrong(&v27, 0);
            objc_storeStrong(&v28, 0);
          }

          v49 = MEMORY[0x277D82BE0](v31);
          v44 = 1;
          objc_storeStrong(&v31, 0);
        }

        else
        {
          v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"No column info returned by descriptor"];
          v16 = [AMDError allocError:22 withMessage:v33];
          v7 = v16;
          *errorCopy = v16;
          v49 = 0;
          v44 = 1;
          objc_storeStrong(&v33, 0);
        }

        objc_storeStrong(&v35, 0);
        objc_storeStrong(&v36, 0);
        objc_storeStrong(&v37, 0);
        objc_storeStrong(&v38, 0);
      }

      objc_storeStrong(&v39, 0);
      objc_storeStrong(&v40, 0);
    }

    else
    {
      v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"No table found for stream: %@", location[0]];
      v20 = [AMDError allocError:22 withMessage:v41];
      v6 = v20;
      *errorCopy = v20;
      v49 = 0;
      v44 = 1;
      objc_storeStrong(&v41, 0);
    }

    objc_storeStrong(&v42, 0);
    objc_storeStrong(&getDataSchema, 0);
  }

  else
  {
    generateDBLoadError = [v45 generateDBLoadError];
    v5 = generateDBLoadError;
    *errorCopy = generateDBLoadError;
    v49 = 0;
    v44 = 1;
  }

  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v8 = v49;

  return v8;
}

- (id)fetch:(id)fetch SortedEventListFromTimestamp:(id)timestamp onlyForCurrentDevice:(BOOL)device forStream:(id)stream error:(id *)error
{
  v69 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fetch);
  v59 = 0;
  objc_storeStrong(&v59, timestamp);
  deviceCopy = device;
  v57 = 0;
  objc_storeStrong(&v57, stream);
  errorCopy = error;
  v55 = 0;
  if ([v57 isEqualToString:@"AppUsageDataCoreData"])
  {
    v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (deviceCopy)
    {
      v31 = MEMORY[0x277CCAC30];
      localDeviceId = [(AMDDataSync *)selfCopy localDeviceId];
      v32 = [v31 predicateWithFormat:@"deviceId == %@ || deviceId == %@", localDeviceId, @"undefined"];
      [v54 addObject:?];
      MEMORY[0x277D82BD8](v32);
      MEMORY[0x277D82BD8](localDeviceId);
    }

    if (v59)
    {
      v30 = [MEMORY[0x277CCAC30] predicateWithFormat:@"time > %llu", objc_msgSend(v59, "longLongValue")];
      [v54 addObject:?];
      MEMORY[0x277D82BD8](v30);
    }

    v53 = [AMDAppEvent fetchEventsWithPredicate:v54 error:errorCopy];
    v7 = [AMDMiscHelpers sortArrayElements:v53 inDescendingOrder:0 withComparisonKey:0x2852AC9C8 isKeyString:0];
    v8 = v55;
    v55 = v7;
    MEMORY[0x277D82BD8](v8);
    objc_storeStrong(&v53, 0);
    objc_storeStrong(&v54, 0);
LABEL_15:
    v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
    memset(__b, 0, sizeof(__b));
    v26 = MEMORY[0x277D82BE0](v55);
    v27 = [v26 countByEnumeratingWithState:__b objects:v68 count:16];
    if (v27)
    {
      v23 = *__b[2];
      v24 = 0;
      v25 = v27;
      while (1)
      {
        v22 = v24;
        if (*__b[2] != v23)
        {
          objc_enumerationMutation(v26);
        }

        v46 = *(__b[1] + 8 * v24);
        v20 = [v46 objectForKey:0x2852ACD28];
        v21 = [v20 isEqualToString:@"undefined"];
        MEMORY[0x277D82BD8](v20);
        if (v21)
        {
          v44 = [v46 mutableCopy];
          v18 = v44;
          localDeviceId2 = [(AMDDataSync *)selfCopy localDeviceId];
          [v18 setObject:? forKey:?];
          MEMORY[0x277D82BD8](localDeviceId2);
          [v47 addObject:v44];
          objc_storeStrong(&v44, 0);
        }

        else
        {
          [v47 addObject:v46];
        }

        ++v24;
        if (v22 + 1 >= v25)
        {
          v24 = 0;
          v25 = [v26 countByEnumeratingWithState:__b objects:v68 count:16];
          if (!v25)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v26);
    if (*errorCopy)
    {
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        log = oslog;
        v16 = type;
        localizedDescription = [*errorCopy localizedDescription];
        v41 = MEMORY[0x277D82BE0](localizedDescription);
        __os_log_helper_16_2_1_8_64(v67, v41);
        _os_log_error_impl(&dword_240CB9000, log, v16, "Event fetch failed during data sync with error: %@", v67, 0xCu);
        MEMORY[0x277D82BD8](localizedDescription);
        objc_storeStrong(&v41, 0);
      }

      objc_storeStrong(&oslog, 0);
      v62 = 0;
      v48 = 1;
    }

    else
    {
      v14 = v55;
      v39 = [v55 count];
      intValue = [location[0] intValue];
      if (v39 >= intValue)
      {
        v13 = intValue;
      }

      else
      {
        v13 = v39;
      }

      v64 = 0;
      v63 = v13;
      v65 = 0;
      v66 = v13;
      v40 = [v14 subarrayWithRange:{0, v13}];
      v62 = MEMORY[0x277D82BE0](v40);
      v48 = 1;
      objc_storeStrong(&v40, 0);
    }

    objc_storeStrong(&v47, 0);
    goto LABEL_33;
  }

  v52 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (deviceCopy)
  {
    v28 = MEMORY[0x277CCACA8];
    localDeviceId3 = [(AMDDataSync *)selfCopy localDeviceId];
    v51 = [v28 stringWithFormat:@"deviceId = '%@' OR deviceId = '%@'", localDeviceId3, @"undefined"];
    MEMORY[0x277D82BD8](localDeviceId3);
    [v52 addObject:v51];
    objc_storeStrong(&v51, 0);
  }

  if (v59)
  {
    v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"time > %llu", objc_msgSend(v59, "longLongValue")];
    [v52 addObject:v50];
    objc_storeStrong(&v50, 0);
  }

  v49 = [v52 componentsJoinedByString:@" AND "];
  v9 = [(AMDDataSync *)selfCopy fetchEventsForStream:v57 withPredicates:v49 error:errorCopy];
  v10 = v55;
  v55 = v9;
  MEMORY[0x277D82BD8](v10);
  if (*errorCopy)
  {
    v62 = 0;
    v48 = 1;
  }

  else
  {
    v48 = 0;
  }

  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v52, 0);
  if (!v48)
  {
    goto LABEL_15;
  }

LABEL_33:
  objc_storeStrong(&v55, 0);
  objc_storeStrong(&v57, 0);
  objc_storeStrong(&v59, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v11 = v62;

  return v11;
}

- (id)createDeviceEntryWithDevicesData:(id)data error:(id *)error
{
  v56 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  errorCopy = error;
  v49 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v48 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v47 = objc_alloc_init(MEMORY[0x277CBEB38]);
  memset(__b, 0, sizeof(__b));
  obj = [(AMDDataSync *)selfCopy streamsToSync];
  v33 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v55 count:16];
  if (v33)
  {
    v28 = *__b[2];
    v29 = 0;
    v30 = v33;
    while (1)
    {
      v27 = v29;
      if (*__b[2] != v28)
      {
        objc_enumerationMutation(obj);
      }

      v46 = *(__b[1] + 8 * v29);
      v44 = 0;
      v24 = selfCopy;
      eventsDeltaSize = [(AMDDataSync *)selfCopy eventsDeltaSize];
      v42 = v44;
      v25 = [AMDDataSync fetch:v24 SortedEventListFromTimestamp:"fetch:SortedEventListFromTimestamp:onlyForCurrentDevice:forStream:error:" onlyForCurrentDevice:? forStream:? error:?];
      objc_storeStrong(&v44, v42);
      v43 = v25;
      MEMORY[0x277D82BD8](eventsDeltaSize);
      if (v44)
      {
        oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        type = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          log = oslog;
          v22 = type;
          v20 = v46;
          localizedDescription = [v44 localizedDescription];
          v39 = MEMORY[0x277D82BE0](localizedDescription);
          __os_log_helper_16_2_2_8_64_8_64(v54, v20, v39);
          _os_log_error_impl(&dword_240CB9000, log, v22, "Data fetch failed for stream: %@ error: %@", v54, 0x16u);
          MEMORY[0x277D82BD8](localizedDescription);
          objc_storeStrong(&v39, 0);
        }

        objc_storeStrong(&oslog, 0);
        v18 = v48;
        localizedDescription2 = [v44 localizedDescription];
        [v18 setObject:? forKey:?];
        MEMORY[0x277D82BD8](localizedDescription2);
        v38 = 3;
      }

      else
      {
        [v47 setObject:v43 forKey:v46];
        v16 = v48;
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v43, "count")}];
        [v16 setObject:? forKey:?];
        MEMORY[0x277D82BD8](v17);
        v38 = 0;
      }

      objc_storeStrong(&v43, 0);
      objc_storeStrong(&v44, 0);
      ++v29;
      if (v27 + 1 >= v30)
      {
        v29 = 0;
        v30 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v55 count:16];
        if (!v30)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  [AMDFrameworkMetrics log:v48 withKey:@"NewDevicePayloadDataFetchSummary" atVerbosity:?];
  [v49 setObject:v47 forKey:@"eventsDict"];
  v10 = +[AMDMiscHelpers getCurrentEpochSeconds];
  v11 = 1000 * [v10 longLongValue];
  MEMORY[0x277D82BD8](v10);
  v37[1] = v11;
  v12 = v49;
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
  [v12 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v13);
  v37[0] = objc_alloc_init(MEMORY[0x277CBEB38]);
  memset(v35, 0, sizeof(v35));
  streamsToSync = [(AMDDataSync *)selfCopy streamsToSync];
  v15 = [(NSArray *)streamsToSync countByEnumeratingWithState:v35 objects:v53 count:16];
  if (v15)
  {
    v7 = *v35[2];
    v8 = 0;
    v9 = v15;
    while (1)
    {
      v6 = v8;
      if (*v35[2] != v7)
      {
        objc_enumerationMutation(streamsToSync);
      }

      v36 = *(v35[1] + 8 * v8);
      [v37[0] setObject:MEMORY[0x277CBEC10] forKey:v36];
      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [(NSArray *)streamsToSync countByEnumeratingWithState:v35 objects:v53 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](streamsToSync);
  [v49 setObject:v37[0] forKey:@"checkpoints"];
  [v49 setObject:MEMORY[0x277CBEC10] forKey:@"bookmarks"];
  v34 = [(AMDDataSync *)selfCopy generateFullSyncPayloadWithDevicesData:location[0] error:errorCopy];
  if (v34)
  {
    [v49 setObject:v34 forKey:@"fullSyncRequest"];
  }

  v5 = MEMORY[0x277D82BE0](v49);
  v38 = 1;
  objc_storeStrong(&v34, 0);
  objc_storeStrong(v37, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v5;
}

- (id)ingestDataFromDevice:(id)device withDevicePayload:(id)payload forStream:(id)stream fromTimestamp:(id)timestamp error:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, device);
  v43 = 0;
  objc_storeStrong(&v43, payload);
  v42 = 0;
  objc_storeStrong(&v42, stream);
  v41 = 0;
  objc_storeStrong(&v41, timestamp);
  errorCopy = error;
  v39 = [v43 objectForKey:@"eventsDict"];
  v38 = [v39 objectForKey:v42];
  if (v38)
  {
    v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
    memset(__b, 0, sizeof(__b));
    v18 = MEMORY[0x277D82BE0](v38);
    v19 = [v18 countByEnumeratingWithState:__b objects:v47 count:16];
    if (v19)
    {
      v15 = *__b[2];
      v16 = 0;
      v17 = v19;
      while (1)
      {
        v14 = v16;
        if (*__b[2] != v15)
        {
          objc_enumerationMutation(v18);
        }

        v31 = *(__b[1] + 8 * v16);
        v29 = [v31 mutableCopy];
        [v29 setObject:location[0] forKey:0x2852ACD28];
        [v32 addObject:v29];
        objc_storeStrong(&v29, 0);
        ++v16;
        if (v14 + 1 >= v17)
        {
          v16 = 0;
          v17 = [v18 countByEnumeratingWithState:__b objects:v47 count:16];
          if (!v17)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v18);
    v28 = 0;
    v27 = MEMORY[0x277D82BE0](v41);
    if ([v42 isEqualToString:@"AppUsageDataCoreData"])
    {
      v26 = v27;
      v13 = [(AMDDataSync *)selfCopy ingestEventsIntoCoreData:v32 withPreviousCheckpoint:&v26 andStreamCheckpointDict:0 error:errorCopy];
      objc_storeStrong(&v27, v26);
      v8 = v28;
      v28 = v13;
      MEMORY[0x277D82BD8](v8);
    }

    else
    {
      v25 = v27;
      v12 = [(AMDDataSync *)selfCopy ingestEventsIntoSQLite:v32 forStream:v42 withPreviousCheckpoint:&v25 andStreamCheckpointDict:0 error:errorCopy];
      objc_storeStrong(&v27, v25);
      v9 = v28;
      v28 = v12;
      MEMORY[0x277D82BD8](v9);
    }

    if (*errorCopy)
    {
      v46 = 0;
      v34 = 1;
    }

    else
    {
      [v33 setObject:v28 forKey:@"eventsSaved"];
      if (v27)
      {
        [v33 setObject:v27 forKey:@"lastSavedEventTimestamp"];
      }

      v46 = MEMORY[0x277D82BE0](v33);
      v34 = 1;
    }

    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v33, 0);
  }

  else
  {
    v37 = MEMORY[0x277D82BE0](@"Missing events list");
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v48, v37);
      _os_log_error_impl(&dword_240CB9000, oslog, type, "%@", v48, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v20 = [AMDError allocError:10 withMessage:v37];
    v7 = v20;
    *errorCopy = v20;
    v46 = 0;
    v34 = 1;
    objc_storeStrong(&v37, 0);
  }

  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v10 = v46;

  return v10;
}

- (id)clearUserDataForDevice:(id)device fromTimestamp:(id)timestamp
{
  v36 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, device);
  v31 = 0;
  objc_storeStrong(&v31, timestamp);
  v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
  memset(__b, 0, sizeof(__b));
  streamsToSync = [(AMDDataSync *)selfCopy streamsToSync];
  v21 = [(NSArray *)streamsToSync countByEnumeratingWithState:__b objects:v35 count:16];
  if (v21)
  {
    v16 = *__b[2];
    v17 = 0;
    v18 = v21;
    while (1)
    {
      v15 = v17;
      if (*__b[2] != v16)
      {
        objc_enumerationMutation(streamsToSync);
      }

      v29 = *(__b[1] + 8 * v17);
      v27 = 0;
      if ([v29 isEqualToString:@"AppUsageDataCoreData"])
      {
        v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
        v10 = v26;
        v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"time < %llu", objc_msgSend(v31, "longLongValue")];
        [v10 addObject:?];
        MEMORY[0x277D82BD8](v11);
        v12 = v26;
        v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"deviceId == %@", location[0]];
        [v12 addObject:?];
        MEMORY[0x277D82BD8](v13);
        v24 = v27;
        v14 = [AMDAppEvent deleteUsingPredicates:v26 error:&v24];
        objc_storeStrong(&v27, v24);
        v25 = v14;
        if (v27)
        {
          v8 = v30;
          localizedDescription = [v27 localizedDescription];
          [v8 setObject:? forKey:?];
          MEMORY[0x277D82BD8](localizedDescription);
        }

        else
        {
          [v30 setObject:v25 forKey:v29];
        }

        objc_storeStrong(&v25, 0);
        objc_storeStrong(&v26, 0);
      }

      else
      {
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"deviceId = '%@' AND time < %llu", location[0], objc_msgSend(v31, "longLongValue")];
        v6 = v23;
        v34 = v29;
        v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
        v22 = [AMDSQLite deleteEventsWithPredicate:v6 forStreams:?];
        MEMORY[0x277D82BD8](v7);
        [v30 setObject:v22 forKey:v29];
        objc_storeStrong(&v22, 0);
        objc_storeStrong(&v23, 0);
      }

      objc_storeStrong(&v27, 0);
      ++v17;
      if (v15 + 1 >= v18)
      {
        v17 = 0;
        v18 = [(NSArray *)streamsToSync countByEnumeratingWithState:__b objects:v35 count:16];
        if (!v18)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](streamsToSync);
  v5 = MEMORY[0x277D82BE0](v30);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v5;
}

- (id)updateDataDeletionDict:(id)dict withDevicesData:(id)data error:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dict);
  v40 = 0;
  objc_storeStrong(&v40, data);
  errorCopy = error;
  v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v37 = [location[0] mutableCopy];
  v36 = [location[0] objectForKey:@"otherDevicesStatus"];
  v35 = 0;
  if (v36)
  {
    v5 = [v36 mutableCopy];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v6 = v35;
  v35 = v5;
  MEMORY[0x277D82BD8](v6);
  memset(__b, 0, sizeof(__b));
  v18 = MEMORY[0x277D82BE0](v40);
  v19 = [v18 countByEnumeratingWithState:__b objects:v45 count:16];
  if (v19)
  {
    v15 = *__b[2];
    v16 = 0;
    v17 = v19;
    while (1)
    {
      v14 = v16;
      if (*__b[2] != v15)
      {
        objc_enumerationMutation(v18);
      }

      v34 = *(__b[1] + 8 * v16);
      v32 = [v40 objectForKey:v34];
      v31 = [v32 objectForKey:@"clearData"];
      if (v31)
      {
        v29 = [v31 objectForKey:@"RequestTimeMilliSeconds"];
        if (v29)
        {
          v28 = [v35 objectForKey:v34];
          if (v28 && (v13 = [v28 longLongValue], v13 >= objc_msgSend(v29, "longLongValue")))
          {
            longLongValue = [v28 longLongValue];
            if (longLongValue > [v29 longLongValue])
            {
              [AMDFrameworkMetrics log:@"LogicalError" withKey:@"DataSyncDeletionError" atVerbosity:0];
            }

            v30 = 3;
          }

          else
          {
            v27 = [(AMDDataSync *)selfCopy clearUserDataForDevice:v34 fromTimestamp:v29];
            [v38 setObject:v27 forKey:v34];
            [v35 setObject:v29 forKey:v34];
            objc_storeStrong(&v27, 0);
            v30 = 0;
          }

          objc_storeStrong(&v28, 0);
        }

        else
        {
          v30 = 3;
        }

        objc_storeStrong(&v29, 0);
      }

      else
      {
        v30 = 3;
      }

      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v32, 0);
      ++v16;
      if (v14 + 1 >= v17)
      {
        v16 = 0;
        v17 = [v18 countByEnumeratingWithState:__b objects:v45 count:16];
        if (!v17)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v18);
  [v37 setObject:v35 forKey:@"otherDevicesStatus"];
  v26 = [AMDKVStore fetchValueForKey:0x2852AB208 error:errorCopy];
  if (*errorCopy)
  {
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v10 = type;
      localizedDescription = [*errorCopy localizedDescription];
      v23 = MEMORY[0x277D82BE0](localizedDescription);
      __os_log_helper_16_2_1_8_64(v44, v23);
      _os_log_error_impl(&dword_240CB9000, log, v10, "Clear user data timestamp fetch failed: %@", v44, 0xCu);
      MEMORY[0x277D82BD8](localizedDescription);
      objc_storeStrong(&v23, 0);
    }

    objc_storeStrong(&oslog, 0);
    v43 = 0;
    v30 = 1;
  }

  else
  {
    if (v26)
    {
      v22 = [v26 objectForKey:@"time"];
      [v37 setObject:v22 forKey:@"RequestTimeMilliSeconds"];
      objc_storeStrong(&v22, 0);
    }

    [AMDFrameworkMetrics log:v38 withKey:@"DataSyncDeletionSummary" atVerbosity:0];
    v43 = MEMORY[0x277D82BE0](v37);
    v30 = 1;
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v7 = v43;

  return v7;
}

- (void)performEventDeltaUpdateFor:(id)for withDeviceData:(id)data error:(id *)error
{
  v57 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, for);
  v53 = 0;
  objc_storeStrong(&v53, data);
  v52[1] = error;
  v52[0] = objc_alloc_init(MEMORY[0x277CBEB38]);
  v29 = [location[0] objectForKey:@"eventsDict"];
  v51 = [v29 mutableCopy];
  MEMORY[0x277D82BD8](v29);
  v30 = [location[0] objectForKey:@"checkpoints"];
  v50 = [v30 mutableCopy];
  MEMORY[0x277D82BD8](v30);
  v31 = [location[0] objectForKey:@"bookmarks"];
  v49 = [v31 mutableCopy];
  MEMORY[0x277D82BD8](v31);
  memset(__b, 0, sizeof(__b));
  streamsToSync = [(AMDDataSync *)selfCopy streamsToSync];
  v33 = [(NSArray *)streamsToSync countByEnumeratingWithState:__b objects:v56 count:16];
  if (v33)
  {
    v24 = *__b[2];
    v25 = 0;
    v26 = v33;
    while (1)
    {
      v23 = v25;
      if (*__b[2] != v24)
      {
        objc_enumerationMutation(streamsToSync);
      }

      v48 = *(__b[1] + 8 * v25);
      v46 = 0;
      v45 = [v51 objectForKey:v48];
      v44 = 0;
      if (v45)
      {
        v41 = [(AMDDataSync *)selfCopy fetchLastReadTimestampFromPayload:v53 forStream:v48];
        v40 = [(AMDDataSync *)selfCopy filterEventsList:v45 withLastReadTimestamp:v41];
        eventsDeltaSize = [(AMDDataSync *)selfCopy eventsDeltaSize];
        longValue = [(NSNumber *)eventsDeltaSize longValue];
        v14 = longValue - [v40 count];
        MEMORY[0x277D82BD8](eventsDeltaSize);
        v39 = v14;
        v38 = [v49 objectForKey:v48];
        v15 = selfCopy;
        v17 = [MEMORY[0x277CCABB0] numberWithLong:v39];
        v36 = v46;
        v16 = [AMDDataSync fetch:v15 SortedEventListFromTimestamp:"fetch:SortedEventListFromTimestamp:onlyForCurrentDevice:forStream:error:" onlyForCurrentDevice:? forStream:? error:?];
        objc_storeStrong(&v46, v36);
        v37 = v16;
        MEMORY[0x277D82BD8](v17);
        if (v46)
        {
          v10 = v52[0];
          localizedDescription = [v46 localizedDescription];
          [v10 setObject:? forKey:?];
          MEMORY[0x277D82BD8](localizedDescription);
          v42 = 3;
        }

        else
        {
          v6 = [v40 arrayByAddingObjectsFromArray:v37];
          v7 = v44;
          v44 = v6;
          MEMORY[0x277D82BD8](v7);
          v42 = 0;
        }

        objc_storeStrong(&v37, 0);
        objc_storeStrong(&v38, 0);
        objc_storeStrong(&v40, 0);
        objc_storeStrong(&v41, 0);
        if (!v42)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v20 = selfCopy;
        eventsDeltaSize2 = [(AMDDataSync *)selfCopy eventsDeltaSize];
        v43 = v46;
        v21 = [AMDDataSync fetch:v20 SortedEventListFromTimestamp:"fetch:SortedEventListFromTimestamp:onlyForCurrentDevice:forStream:error:" onlyForCurrentDevice:? forStream:? error:?];
        objc_storeStrong(&v46, v43);
        v5 = v44;
        v44 = v21;
        MEMORY[0x277D82BD8](v5);
        MEMORY[0x277D82BD8](eventsDeltaSize2);
        if (!v46)
        {
          [v50 setObject:MEMORY[0x277CBEC10] forKey:v48];
LABEL_13:
          [v51 setObject:v44 forKey:v48];
          if ([v44 count])
          {
            lastObject = [v44 lastObject];
            v34 = [lastObject objectForKey:@"time"];
            [v49 setObject:v34 forKey:v48];
            objc_storeStrong(&v34, 0);
            objc_storeStrong(&lastObject, 0);
          }

          v8 = v52[0];
          v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v44, "count")}];
          [v8 setObject:? forKey:?];
          MEMORY[0x277D82BD8](v9);
          v42 = 0;
          goto LABEL_16;
        }

        v18 = v52[0];
        localizedDescription2 = [v46 localizedDescription];
        [v18 setObject:? forKey:?];
        MEMORY[0x277D82BD8](localizedDescription2);
        v42 = 3;
      }

LABEL_16:
      objc_storeStrong(&v44, 0);
      objc_storeStrong(&v45, 0);
      objc_storeStrong(&v46, 0);
      ++v25;
      if (v23 + 1 >= v26)
      {
        v25 = 0;
        v26 = [(NSArray *)streamsToSync countByEnumeratingWithState:__b objects:v56 count:16];
        if (!v26)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](streamsToSync);
  [location[0] setObject:v51 forKey:@"eventsDict"];
  [location[0] setObject:v50 forKey:@"checkpoints"];
  [location[0] setObject:v49 forKey:@"bookmarks"];
  [AMDFrameworkMetrics log:v52[0] withKey:@"EventDeltaPushStatus" atVerbosity:0];
  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(v52, 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)pushFullSyncDataFrom:(id)from withDeviceData:(id)data error:(id *)error
{
  v83 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, from);
  v75 = 0;
  objc_storeStrong(&v75, data);
  errorCopy = error;
  v73 = 0;
  v72 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v71 = [location[0] objectForKey:@"fullSyncResponse"];
  if (v71)
  {
    v5 = [v71 objectForKey:@"targetUUID"];
    v6 = v73;
    v73 = v5;
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    memset(__b, 0, sizeof(__b));
    v35 = MEMORY[0x277D82BE0](v75);
    v36 = [v35 countByEnumeratingWithState:__b objects:v82 count:16];
    if (v36)
    {
      v32 = *__b[2];
      v33 = 0;
      v34 = v36;
      while (1)
      {
        v31 = v33;
        if (*__b[2] != v32)
        {
          objc_enumerationMutation(v35);
        }

        v70 = *(__b[1] + 8 * v33);
        v68 = [v75 objectForKey:v70];
        v67 = [v68 objectForKey:@"fullSyncRequest"];
        if (v67)
        {
          v65 = [v67 objectForKey:@"sourceUUID"];
          v28 = v65;
          localDeviceId = [(AMDDataSync *)selfCopy localDeviceId];
          v30 = [v28 isEqualToString:?];
          MEMORY[0x277D82BD8](localDeviceId);
          if (v30)
          {
            objc_storeStrong(&v73, v70);
            v66 = 2;
          }

          else
          {
            v66 = 0;
          }

          objc_storeStrong(&v65, 0);
        }

        else
        {
          v66 = 3;
        }

        objc_storeStrong(&v67, 0);
        objc_storeStrong(&v68, 0);
        if (v66)
        {
          if (v66 != 3)
          {
            break;
          }
        }

        ++v33;
        if (v31 + 1 >= v34)
        {
          v33 = 0;
          v34 = [v35 countByEnumeratingWithState:__b objects:v82 count:16];
          if (!v34)
          {
            goto LABEL_16;
          }
        }
      }
    }

    else
    {
LABEL_16:
      v66 = 0;
    }

    MEMORY[0x277D82BD8](v35);
  }

  if (v73)
  {
    v64 = [v75 objectForKey:v73];
    if (v64)
    {
      v61 = [v64 objectForKey:@"fullSyncRequest"];
      v59 = 0;
      v57 = 0;
      LOBYTE(v27) = 1;
      if (v61)
      {
        v60 = [v61 objectForKey:@"sourceUUID"];
        v59 = 1;
        localDeviceId2 = [(AMDDataSync *)selfCopy localDeviceId];
        v57 = 1;
        v27 = [v60 isEqualToString:?] ^ 1;
      }

      if (v57)
      {
        MEMORY[0x277D82BD8](localDeviceId2);
      }

      if (v59)
      {
        MEMORY[0x277D82BD8](v60);
      }

      if (v27)
      {
        if (v61)
        {
          v53 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v52 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            v22 = v53;
            v23 = v52;
            v24 = [v61 objectForKey:@"sourceUUID"];
            v51 = MEMORY[0x277D82BE0](v24);
            __os_log_helper_16_2_1_8_64(v80, v51);
            _os_log_impl(&dword_240CB9000, v22, v23, "Full Sync target device changed source: %@", v80, 0xCu);
            MEMORY[0x277D82BD8](v24);
            objc_storeStrong(&v51, 0);
          }

          objc_storeStrong(&v53, 0);
          [v72 setObject:@"FullSyncTargetDeviceChangedSource" forKey:@"Status"];
        }

        else
        {
          v56 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v55 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            v25 = v56;
            v26 = v55;
            __os_log_helper_16_0_0(v54);
            _os_log_impl(&dword_240CB9000, v25, v26, "Full Sync request completed", v54, 2u);
          }

          objc_storeStrong(&v56, 0);
          [v72 setObject:@"TargetDeviceFullSyncRequestCompleted" forKey:@"Status"];
        }

        [AMDFrameworkMetrics log:v72 withKey:@"FullSyncDataPushStatus" atVerbosity:2];
        [location[0] removeObjectForKey:@"fullSyncResponse"];
        v66 = 1;
      }

      else
      {
        v50 = [v61 objectForKey:@"fsCheckpoint"];
        if (v50)
        {
          v46 = objc_alloc_init(MEMORY[0x277CBEB38]);
          memset(v44, 0, sizeof(v44));
          streamsToSync = [(AMDDataSync *)selfCopy streamsToSync];
          v20 = [(NSArray *)streamsToSync countByEnumeratingWithState:v44 objects:v78 count:16];
          if (v20)
          {
            v16 = *v44[2];
            v17 = 0;
            v18 = v20;
            while (1)
            {
              v15 = v17;
              if (*v44[2] != v16)
              {
                objc_enumerationMutation(streamsToSync);
              }

              v45 = *(v44[1] + 8 * v17);
              v43 = 0;
              v42 = [v50 objectForKey:v45];
              v12 = selfCopy;
              fullSyncEventsDeltaSize = [(AMDDataSync *)selfCopy fullSyncEventsDeltaSize];
              v40 = v43;
              v13 = [AMDDataSync fetch:v12 SortedEventListFromTimestamp:"fetch:SortedEventListFromTimestamp:onlyForCurrentDevice:forStream:error:" onlyForCurrentDevice:? forStream:? error:?];
              objc_storeStrong(&v43, v40);
              v41 = v13;
              MEMORY[0x277D82BD8](fullSyncEventsDeltaSize);
              if (v43)
              {
                v10 = v72;
                localizedDescription = [v43 localizedDescription];
                [v10 setObject:? forKey:?];
                MEMORY[0x277D82BD8](localizedDescription);
                v66 = 5;
              }

              else
              {
                [v46 setObject:v41 forKey:v45];
                v8 = v72;
                v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v41, "count")}];
                [v8 setObject:? forKey:?];
                MEMORY[0x277D82BD8](v9);
                v66 = 0;
              }

              objc_storeStrong(&v41, 0);
              objc_storeStrong(&v42, 0);
              objc_storeStrong(&v43, 0);
              ++v17;
              if (v15 + 1 >= v18)
              {
                v17 = 0;
                v18 = [(NSArray *)streamsToSync countByEnumeratingWithState:v44 objects:v78 count:16];
                if (!v18)
                {
                  break;
                }
              }
            }
          }

          MEMORY[0x277D82BD8](streamsToSync);
          v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
          [v39 setObject:v73 forKey:@"targetUUID"];
          [v39 setObject:v46 forKey:@"events"];
          [location[0] setObject:v39 forKey:@"fullSyncResponse"];
          [v72 setObject:@"Ongoing" forKey:@"Status"];
          [AMDFrameworkMetrics log:v72 withKey:@"FullSyncDataPushStatus" atVerbosity:2];
          objc_storeStrong(&v39, 0);
          objc_storeStrong(&v46, 0);
          v66 = 0;
        }

        else
        {
          v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"Full Sync Request payload missing checkpoint dict for device %@", v73];
          v48 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v47 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_1_8_64(v79, v49);
            _os_log_error_impl(&dword_240CB9000, v48, v47, "%@", v79, 0xCu);
          }

          objc_storeStrong(&v48, 0);
          v21 = [AMDError allocError:10 withMessage:v49];
          v7 = v21;
          *errorCopy = v21;
          v66 = 1;
          objc_storeStrong(&v49, 0);
        }

        objc_storeStrong(&v50, 0);
      }

      objc_storeStrong(&v61, 0);
    }

    else
    {
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      type = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_64(v81, v73);
        _os_log_impl(&dword_240CB9000, oslog, type, "Target device payload absent for devId: %@", v81, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      [v72 setObject:@"TargetDevicePayloadNil" forKey:@"Status"];
      [AMDFrameworkMetrics log:v72 withKey:@"FullSyncDataPushStatus" atVerbosity:2];
      [location[0] removeObjectForKey:@"fullSyncResponse"];
      v66 = 1;
    }

    objc_storeStrong(&v64, 0);
  }

  else
  {
    v66 = 1;
  }

  objc_storeStrong(&v71, 0);
  objc_storeStrong(&v72, 0);
  objc_storeStrong(&v73, 0);
  objc_storeStrong(&v75, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)ingestEventsIntoCoreData:(id)data withPreviousCheckpoint:(id *)checkpoint andStreamCheckpointDict:(id)dict error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  checkpointCopy = checkpoint;
  v39 = 0;
  objc_storeStrong(&v39, dict);
  errorCopy = error;
  v37 = 0;
  v36 = 0;
  if ([location[0] count])
  {
    memset(__b, 0, sizeof(__b));
    v20 = MEMORY[0x277D82BE0](location[0]);
    v21 = [v20 countByEnumeratingWithState:__b objects:v44 count:16];
    if (v21)
    {
      v17 = *__b[2];
      v18 = 0;
      v19 = v21;
      while (1)
      {
        v16 = v18;
        if (*__b[2] != v17)
        {
          objc_enumerationMutation(v20);
        }

        v34 = *(__b[1] + 8 * v18);
        v32 = [v34 objectForKey:@"time"];
        if (*checkpointCopy && (v15 = [v32 longLongValue], v15 <= objc_msgSend(*checkpointCopy, "longLongValue")))
        {
          v35 = 3;
        }

        else
        {
          v31 = 0;
          v29 = 0;
          v14 = [AMDAppEvent saveEvent:v34 error:&v29];
          objc_storeStrong(&v31, v29);
          v30 = v14;
          if (!v31 && v30)
          {
            ++v37;
            objc_storeStrong(&v36, v32);
            if (v39)
            {
              v25 = [v34 objectForKey:@"deviceId"];
              [v39 setObject:v32 forKey:v25];
              objc_storeStrong(&v25, 0);
            }

            v35 = 0;
          }

          else
          {
            oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            type = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
            {
              log = oslog;
              v12 = type;
              v10 = v34;
              localizedDescription = [v31 localizedDescription];
              v26 = MEMORY[0x277D82BE0](localizedDescription);
              __os_log_helper_16_2_2_8_64_8_64(v43, v10, v26);
              _os_log_error_impl(&dword_240CB9000, log, v12, "Event save operation failed for dictionary: %@ with error: %@", v43, 0x16u);
              MEMORY[0x277D82BD8](localizedDescription);
              objc_storeStrong(&v26, 0);
            }

            objc_storeStrong(&oslog, 0);
            v35 = 3;
          }

          objc_storeStrong(&v31, 0);
        }

        objc_storeStrong(&v32, 0);
        ++v18;
        if (v16 + 1 >= v19)
        {
          v18 = 0;
          v19 = [v20 countByEnumeratingWithState:__b objects:v44 count:16];
          if (!v19)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v20);
    v9 = v36;
    v6 = v36;
    *checkpointCopy = v9;
    v42 = [MEMORY[0x277CCABB0] numberWithInt:v37];
    v35 = 1;
  }

  else
  {
    v42 = MEMORY[0x277D82BE0](&unk_2852BA878);
    v35 = 1;
  }

  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v7 = v42;

  return v7;
}

- (id)ingestEventsIntoSQLite:(id)lite forStream:(id)stream withPreviousCheckpoint:(id *)checkpoint andStreamCheckpointDict:(id)dict error:(id *)error
{
  v58 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, lite);
  v50 = 0;
  objc_storeStrong(&v50, stream);
  checkpointCopy = checkpoint;
  v48 = 0;
  objc_storeStrong(&v48, dict);
  errorCopy = error;
  v46 = 0;
  v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
  memset(__b, 0, sizeof(__b));
  v31 = MEMORY[0x277D82BE0](location[0]);
  v32 = [v31 countByEnumeratingWithState:__b objects:v57 count:16];
  if (v32)
  {
    v24 = *__b[2];
    v25 = 0;
    v26 = v32;
    while (1)
    {
      v23 = v25;
      if (*__b[2] != v24)
      {
        objc_enumerationMutation(v31);
      }

      v44 = *(__b[1] + 8 * v25);
      v42 = [v44 objectForKey:@"time"];
      if (*checkpointCopy && (v22 = [v42 longLongValue], v22 <= objc_msgSend(*checkpointCopy, "longLongValue")))
      {
        v41 = 3;
      }

      else
      {
        [v45 addObject:v44];
        v41 = 0;
      }

      objc_storeStrong(&v42, 0);
      ++v25;
      if (v23 + 1 >= v26)
      {
        v25 = 0;
        v26 = [v31 countByEnumeratingWithState:__b objects:v57 count:16];
        if (!v26)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v31);
  if ([v45 count])
  {
    v55[0] = 0x2852A9148;
    v56[0] = v50;
    v55[1] = 0x2852A9128;
    v56[1] = v45;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
    v7 = [AMDSQLite saveEvents:v40 error:errorCopy];
    if (*errorCopy)
    {
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        log = oslog;
        v20 = type;
        localizedDescription = [*errorCopy localizedDescription];
        v37 = MEMORY[0x277D82BE0](localizedDescription);
        __os_log_helper_16_2_1_8_64(v54, v37);
        _os_log_error_impl(&dword_240CB9000, log, v20, "Event save operation failed with error: %@", v54, 0xCu);
        MEMORY[0x277D82BD8](localizedDescription);
        objc_storeStrong(&v37, 0);
      }

      objc_storeStrong(&oslog, 0);
      v52 = 0;
      v41 = 1;
    }

    else
    {
      lastObject = [v45 lastObject];
      v18 = [lastObject objectForKey:@"time"];
      v8 = v18;
      *checkpointCopy = v18;
      MEMORY[0x277D82BD8](lastObject);
      v46 = [v45 count];
      if (v48)
      {
        memset(v35, 0, sizeof(v35));
        v15 = MEMORY[0x277D82BE0](v45);
        v16 = [v15 countByEnumeratingWithState:v35 objects:v53 count:16];
        if (v16)
        {
          v12 = *v35[2];
          v13 = 0;
          v14 = v16;
          while (1)
          {
            v11 = v13;
            if (*v35[2] != v12)
            {
              objc_enumerationMutation(v15);
            }

            v36 = *(v35[1] + 8 * v13);
            v34 = [v36 objectForKey:@"time"];
            v33 = [v36 objectForKey:@"deviceId"];
            [v48 setObject:v34 forKey:v33];
            objc_storeStrong(&v33, 0);
            objc_storeStrong(&v34, 0);
            ++v13;
            if (v11 + 1 >= v14)
            {
              v13 = 0;
              v14 = [v15 countByEnumeratingWithState:v35 objects:v53 count:16];
              if (!v14)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x277D82BD8](v15);
        v52 = [MEMORY[0x277CCABB0] numberWithInt:v46];
        v41 = 1;
      }

      else
      {
        v52 = [MEMORY[0x277CCABB0] numberWithInt:v46];
        v41 = 1;
      }
    }

    objc_storeStrong(&v40, 0);
  }

  else
  {
    v52 = MEMORY[0x277D82BE0](&unk_2852BA878);
    v41 = 1;
  }

  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v9 = v52;

  return v9;
}

- (void)ingestFullSyncEventsFor:(id)for withDeviceData:(id)data error:(id *)error
{
  v111 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, for);
  v101 = 0;
  objc_storeStrong(&v101, data);
  v100[1] = error;
  v100[0] = objc_alloc_init(MEMORY[0x277CBEB38]);
  v99 = [location[0] objectForKey:@"fullSyncRequest"];
  v98 = [v99 objectForKey:@"sourceUUID"];
  if (v98)
  {
    if ([v98 isEqualToString:&stru_2852A6E28])
    {
      v96 = [(AMDDataSync *)selfCopy findAvailableDeviceForFullSyncIn:v101];
      v95 = [v99 mutableCopy];
      [v95 setObject:v96 forKey:@"sourceUUID"];
      [location[0] setObject:v95 forKey:@"fullSyncRequest"];
      [v100[0] setObject:@"SourceDeviceNotAssigned" forKey:@"Status"];
      [AMDFrameworkMetrics log:v100[0] withKey:@"FullSyncDataIngestionStatus" atVerbosity:2];
      v97 = 1;
      objc_storeStrong(&v95, 0);
      objc_storeStrong(&v96, 0);
    }

    else
    {
      v94 = [v101 objectForKey:v98];
      v41 = +[AMDMiscHelpers getCurrentEpochSeconds];
      longLongValue = [v41 longLongValue];
      fullSyncDeviceResetThresholdDays = [(AMDDataSync *)selfCopy fullSyncDeviceResetThresholdDays];
      v42 = 1000 * (longLongValue - 86400 * [(NSNumber *)fullSyncDeviceResetThresholdDays intValue]);
      MEMORY[0x277D82BD8](fullSyncDeviceResetThresholdDays);
      MEMORY[0x277D82BD8](v41);
      v93 = v42;
      if (v94)
      {
        v89 = [v94 objectForKey:@"fullSyncResponse"];
        if (v89)
        {
          v84 = [v89 objectForKey:@"events"];
          if (v84)
          {
            v35 = [v99 objectForKey:@"fsCheckpoint"];
            v80 = [v35 mutableCopy];
            MEMORY[0x277D82BD8](v35);
            v36 = [location[0] objectForKey:@"checkpoints"];
            v79 = [v36 mutableCopy];
            MEMORY[0x277D82BD8](v36);
            memset(__b, 0, sizeof(__b));
            streamsToSync = [(AMDDataSync *)selfCopy streamsToSync];
            v38 = [(NSArray *)streamsToSync countByEnumeratingWithState:__b objects:v107 count:16];
            if (v38)
            {
              v32 = *__b[2];
              v33 = 0;
              v34 = v38;
              while (1)
              {
                v31 = v33;
                if (*__b[2] != v32)
                {
                  objc_enumerationMutation(streamsToSync);
                }

                v78 = *(__b[1] + 8 * v33);
                v76 = [v84 objectForKey:v78];
                v30 = [v79 objectForKey:v78];
                v73 = 0;
                v71 = 0;
                v69 = 0;
                if (v30)
                {
                  v74 = [v79 objectForKey:v78];
                  v73 = 1;
                  v72 = [v74 mutableCopy];
                  v71 = 1;
                  v6 = MEMORY[0x277D82BE0](v72);
                }

                else
                {
                  v70 = objc_alloc_init(MEMORY[0x277CBEB38]);
                  v69 = 1;
                  v6 = MEMORY[0x277D82BE0](v70);
                }

                v75 = v6;
                if (v69)
                {
                  MEMORY[0x277D82BD8](v70);
                }

                if (v71)
                {
                  MEMORY[0x277D82BD8](v72);
                }

                if (v73)
                {
                  MEMORY[0x277D82BD8](v74);
                }

                MEMORY[0x277D82BD8](v30);
                v29 = [v80 objectForKey:v78];
                v66 = 0;
                if (v29)
                {
                  v67 = [v80 objectForKey:v78];
                  v66 = 1;
                  v7 = MEMORY[0x277D82BE0](v67);
                }

                else
                {
                  v7 = MEMORY[0x277D82BE0](&unk_2852BA878);
                }

                v68 = v7;
                if (v66)
                {
                  MEMORY[0x277D82BD8](v67);
                }

                MEMORY[0x277D82BD8](v29);
                if (v76)
                {
                  v65 = 0;
                  v64 = 0;
                  if ([v78 isEqualToString:@"AppUsageDataCoreData"])
                  {
                    v63 = v68;
                    v62 = v64;
                    v28 = [(AMDDataSync *)selfCopy ingestEventsIntoCoreData:v76 withPreviousCheckpoint:&v63 andStreamCheckpointDict:v75 error:&v62];
                    objc_storeStrong(&v68, v63);
                    objc_storeStrong(&v64, v62);
                    v8 = v65;
                    v65 = v28;
                  }

                  else
                  {
                    v61 = v68;
                    v60 = v64;
                    v27 = [(AMDDataSync *)selfCopy ingestEventsIntoSQLite:v76 forStream:v78 withPreviousCheckpoint:&v61 andStreamCheckpointDict:v75 error:&v60];
                    objc_storeStrong(&v68, v61);
                    objc_storeStrong(&v64, v60);
                    v8 = v65;
                    v65 = v27;
                  }

                  MEMORY[0x277D82BD8](v8);
                  if (v64)
                  {
                    v97 = 3;
                  }

                  else
                  {
                    [v79 setObject:v75 forKey:v78];
                    [v80 setObject:v68 forKey:v78];
                    [v100[0] setObject:v65 forKey:v78];
                    v97 = 0;
                  }

                  objc_storeStrong(&v64, 0);
                  objc_storeStrong(&v65, 0);
                }

                else
                {
                  [v100[0] setObject:@"New stream added" forKey:v78];
                  v97 = 3;
                }

                objc_storeStrong(&v68, 0);
                objc_storeStrong(&v75, 0);
                objc_storeStrong(&v76, 0);
                ++v33;
                if (v31 + 1 >= v34)
                {
                  v33 = 0;
                  v34 = [(NSArray *)streamsToSync countByEnumeratingWithState:__b objects:v107 count:16];
                  if (!v34)
                  {
                    break;
                  }
                }
              }
            }

            MEMORY[0x277D82BD8](streamsToSync);
            v59 = 1;
            memset(v57, 0, sizeof(v57));
            streamsToSync2 = [(AMDDataSync *)selfCopy streamsToSync];
            v26 = [(NSArray *)streamsToSync2 countByEnumeratingWithState:v57 objects:v106 count:16];
            if (v26)
            {
              v22 = *v57[2];
              v23 = 0;
              v24 = v26;
              while (1)
              {
                v21 = v23;
                if (*v57[2] != v22)
                {
                  objc_enumerationMutation(streamsToSync2);
                }

                v58 = *(v57[1] + 8 * v23);
                v56 = [v80 objectForKey:v58];
                memset(v54, 0, sizeof(v54));
                v19 = MEMORY[0x277D82BE0](v101);
                v20 = [v19 countByEnumeratingWithState:v54 objects:v105 count:16];
                if (v20)
                {
                  v16 = *v54[2];
                  v17 = 0;
                  v18 = v20;
                  while (1)
                  {
                    v15 = v17;
                    if (*v54[2] != v16)
                    {
                      objc_enumerationMutation(v19);
                    }

                    v55 = *(v54[1] + 8 * v17);
                    v53 = [v101 objectForKey:v55];
                    v52 = [v53 objectForKey:@"eventsDict"];
                    v51 = [v52 objectForKey:v58];
                    if (v51)
                    {
                      firstObject = [v51 firstObject];
                      if (firstObject)
                      {
                        v49 = [firstObject objectForKey:0x2852AB308];
                        longLongValue2 = [v56 longLongValue];
                        if (longLongValue2 < [v49 longLongValue])
                        {
                          v59 = 0;
                          v97 = 6;
                        }

                        else
                        {
                          v97 = 0;
                        }

                        objc_storeStrong(&v49, 0);
                      }

                      else
                      {
                        v97 = 7;
                      }

                      objc_storeStrong(&firstObject, 0);
                    }

                    else
                    {
                      v97 = 7;
                    }

                    objc_storeStrong(&v51, 0);
                    objc_storeStrong(&v52, 0);
                    objc_storeStrong(&v53, 0);
                    if (v97)
                    {
                      if (v97 != 7)
                      {
                        break;
                      }
                    }

                    ++v17;
                    if (v15 + 1 >= v18)
                    {
                      v17 = 0;
                      v18 = [v19 countByEnumeratingWithState:v54 objects:v105 count:16];
                      if (!v18)
                      {
                        goto LABEL_70;
                      }
                    }
                  }
                }

                else
                {
LABEL_70:
                  v97 = 0;
                }

                MEMORY[0x277D82BD8](v19);
                v97 = (v59 & 1) != 0 ? 0 : 4;
                objc_storeStrong(&v56, 0);
                if (v97)
                {
                  break;
                }

                ++v23;
                if (v21 + 1 >= v24)
                {
                  v23 = 0;
                  v24 = [(NSArray *)streamsToSync2 countByEnumeratingWithState:v57 objects:v106 count:16];
                  if (!v24)
                  {
                    goto LABEL_77;
                  }
                }
              }
            }

            else
            {
LABEL_77:
              v97 = 0;
            }

            MEMORY[0x277D82BD8](streamsToSync2);
            if (v59)
            {
              v47[0] = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              v46 = OS_LOG_TYPE_DEBUG;
              if (os_log_type_enabled(v47[0], OS_LOG_TYPE_DEBUG))
              {
                v9 = v47[0];
                v10 = v46;
                v11 = +[AMDMiscHelpers getCurrentEpochSeconds];
                v45 = MEMORY[0x277D82BE0](v11);
                __os_log_helper_16_2_1_8_64(v104, v45);
                _os_log_debug_impl(&dword_240CB9000, v9, v10, "Full sync done at time: %@", v104, 0xCu);
                MEMORY[0x277D82BD8](v11);
                objc_storeStrong(&v45, 0);
              }

              objc_storeStrong(v47, 0);
              [location[0] removeObjectForKey:@"fullSyncRequest"];
              [v100[0] setObject:@"Complete" forKey:@"Status"];
            }

            else
            {
              v48 = [v99 mutableCopy];
              v12 = [v94 objectForKey:@"lastUpdateTimeMilliSeconds"];
              longLongValue3 = [v12 longLongValue];
              MEMORY[0x277D82BD8](v12);
              v47[1] = longLongValue3;
              if (longLongValue3 < v93)
              {
                [v48 setObject:&stru_2852A6E28 forKey:@"sourceUUID"];
              }

              [v48 setObject:v80 forKey:@"fsCheckpoint"];
              [location[0] setObject:v48 forKey:@"fullSyncRequest"];
              [v100[0] setObject:@"Incomplete" forKey:@"Status"];
              objc_storeStrong(&v48, 0);
            }

            [location[0] setObject:v79 forKey:@"checkpoints"];
            [AMDFrameworkMetrics log:v100[0] withKey:@"FullSyncDataIngestionStatus" atVerbosity:2];
            objc_storeStrong(&v79, 0);
            objc_storeStrong(&v80, 0);
            v97 = 0;
          }

          else
          {
            v83 = MEMORY[0x277D82BE0](@"Events dict is absent for source device");
            v82 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v81 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_2_1_8_64(v108, v83);
              _os_log_error_impl(&dword_240CB9000, v82, v81, "%@", v108, 0xCu);
            }

            objc_storeStrong(&v82, 0);
            [AMDFrameworkMetrics log:v83 withKey:@"FullSyncInternalErrorNoEvents" atVerbosity:2];
            v97 = 1;
            objc_storeStrong(&v83, 0);
          }

          objc_storeStrong(&v84, 0);
        }

        else
        {
          v88 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v87 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_2_1_8_64(v109, v98);
            _os_log_impl(&dword_240CB9000, v88, v87, "The source device %@ has not responded to the full sync request", v109, 0xCu);
          }

          objc_storeStrong(&v88, 0);
          v86 = [v99 objectForKey:@"fsRequestTime"];
          longLongValue4 = [v86 longLongValue];
          if (longLongValue4 >= v93)
          {
            [v100[0] setObject:@"FullSyncRequestContinue" forKey:@"Status"];
          }

          else
          {
            v85 = [v99 mutableCopy];
            [v85 setObject:&stru_2852A6E28 forKey:@"sourceUUID"];
            [location[0] setObject:v85 forKey:@"fullSyncRequest"];
            [v100[0] setObject:@"FullSyncRequestResetTimeout" forKey:@"Status"];
            objc_storeStrong(&v85, 0);
          }

          [v100[0] setObject:v86 forKey:@"FullSyncRequestTime"];
          [AMDFrameworkMetrics log:v100[0] withKey:@"FullSyncDataIngestionStatus" atVerbosity:2];
          v97 = 1;
          objc_storeStrong(&v86, 0);
        }

        objc_storeStrong(&v89, 0);
      }

      else
      {
        oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        type = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_64(v110, v98);
          _os_log_impl(&dword_240CB9000, oslog, type, "Source device payload is absent for devId: %@", v110, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        v90 = [v99 mutableCopy];
        [v90 setObject:&stru_2852A6E28 forKey:@"sourceUUID"];
        [location[0] setObject:v90 forKey:@"fullSyncRequest"];
        [v100[0] setObject:@"SourceDevicePayloadUnavailable" forKey:@"Status"];
        [AMDFrameworkMetrics log:v100[0] withKey:@"FullSyncDataIngestionStatus" atVerbosity:2];
        v97 = 1;
        objc_storeStrong(&v90, 0);
      }

      objc_storeStrong(&v94, 0);
    }
  }

  else
  {
    [v100[0] setObject:@"SourceDeviceUndefined" forKey:@"Status"];
    [AMDFrameworkMetrics log:v100[0] withKey:@"FullSyncDataIngestionStatus" atVerbosity:2];
    v97 = 1;
  }

  objc_storeStrong(&v98, 0);
  objc_storeStrong(&v99, 0);
  objc_storeStrong(v100, 0);
  objc_storeStrong(&v101, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)performDataReplicationPayloadUpdates:(id)updates withDeviceRegistry:(id)registry error:(id *)error
{
  v93 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, updates);
  v82 = 0;
  objc_storeStrong(&v82, registry);
  errorCopy = error;
  v80 = [location[0] mutableCopy];
  v79 = 0;
  v49 = v82;
  localDeviceId = [(AMDDataSync *)selfCopy localDeviceId];
  v51 = [v49 objectForKey:?];
  MEMORY[0x277D82BD8](v51);
  MEMORY[0x277D82BD8](localDeviceId);
  if (v51)
  {
    localDeviceId2 = [(AMDDataSync *)selfCopy localDeviceId];
    v78 = [v80 objectForKey:?];
    MEMORY[0x277D82BD8](localDeviceId2);
    if (v78 && [v78 count])
    {
      v5 = [v78 mutableCopy];
      v6 = v79;
      v79 = v5;
      MEMORY[0x277D82BD8](v6);
      localDeviceId3 = [(AMDDataSync *)selfCopy localDeviceId];
      [v80 removeObjectForKey:?];
      MEMORY[0x277D82BD8](localDeviceId3);
    }

    else if ([v78 count])
    {
      v43 = MEMORY[0x277CCACA8];
      localDeviceId4 = [(AMDDataSync *)selfCopy localDeviceId];
      v77 = [v43 stringWithFormat:@"DeviceId present in the registry but payload absent for: %@", localDeviceId4];
      MEMORY[0x277D82BD8](localDeviceId4);
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v92, v77);
        _os_log_error_impl(&dword_240CB9000, oslog, type, "%@", v92, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      [AMDFrameworkMetrics log:v77 withKey:@"DataReplicationError" atVerbosity:0];
      objc_storeStrong(&v77, 0);
    }

    else
    {
      objc_storeStrong(&v79, 0);
    }

    objc_storeStrong(&v78, 0);
  }

  v74 = [(AMDDataSync *)selfCopy pruneInactiveDevicesFrom:v80];
  if (v79)
  {
    [(AMDDataSync *)selfCopy performEventDeltaUpdateFor:v79 withDeviceData:v80 error:errorCopy];
    if (*errorCopy)
    {
      v85 = 0;
      v73 = 1;
      goto LABEL_55;
    }

    [(AMDDataSync *)selfCopy pushFullSyncDataFrom:v79 withDeviceData:v80 error:errorCopy];
    if (*errorCopy)
    {
      v85 = 0;
      v73 = 1;
      goto LABEL_55;
    }
  }

  else
  {
    v7 = [(AMDDataSync *)selfCopy createDeviceEntryWithDevicesData:v80 error:errorCopy];
    v8 = v79;
    v79 = v7;
    MEMORY[0x277D82BD8](v8);
    if (*errorCopy)
    {
      v85 = 0;
      v73 = 1;
      goto LABEL_55;
    }

    v41 = v82;
    localDeviceId5 = [(AMDDataSync *)selfCopy localDeviceId];
    [v41 setObject:MEMORY[0x277CBEC10] forKey:?];
    MEMORY[0x277D82BD8](localDeviceId5);
  }

  v40 = [v79 objectForKey:@"fullSyncRequest"];
  MEMORY[0x277D82BD8](v40);
  if (v40)
  {
    [(AMDDataSync *)selfCopy ingestFullSyncEventsFor:v79 withDeviceData:v80 error:errorCopy];
  }

  else
  {
    v72 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v37 = [v79 objectForKey:@"checkpoints"];
    v71 = [v37 mutableCopy];
    MEMORY[0x277D82BD8](v37);
    memset(__b, 0, sizeof(__b));
    streamsToSync = [(AMDDataSync *)selfCopy streamsToSync];
    v39 = [(NSArray *)streamsToSync countByEnumeratingWithState:__b objects:v91 count:16];
    if (v39)
    {
      v34 = *__b[2];
      v35 = 0;
      v36 = v39;
      while (1)
      {
        v33 = v35;
        if (*__b[2] != v34)
        {
          objc_enumerationMutation(streamsToSync);
        }

        v70 = *(__b[1] + 8 * v35);
        v68 = 0;
        v32 = [v71 objectForKey:v70];
        MEMORY[0x277D82BD8](v32);
        if (v32)
        {
          v31 = [v71 objectForKey:v70];
          v9 = [v31 mutableCopy];
          v10 = v68;
          v68 = v9;
          MEMORY[0x277D82BD8](v10);
          MEMORY[0x277D82BD8](v31);
        }

        else
        {
          v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v12 = v68;
          v68 = v11;
          MEMORY[0x277D82BD8](v12);
        }

        v67 = objc_alloc_init(MEMORY[0x277CBEB38]);
        if (!v68)
        {
          v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v14 = v68;
          v68 = v13;
          MEMORY[0x277D82BD8](v14);
        }

        memset(v65, 0, sizeof(v65));
        v29 = MEMORY[0x277D82BE0](v80);
        v30 = [v29 countByEnumeratingWithState:v65 objects:v90 count:16];
        if (v30)
        {
          v26 = *v65[2];
          v27 = 0;
          v28 = v30;
          while (1)
          {
            v25 = v27;
            if (*v65[2] != v26)
            {
              objc_enumerationMutation(v29);
            }

            v66 = *(v65[1] + 8 * v27);
            v64 = [v80 objectForKey:v66];
            v63 = [v68 objectForKey:v66];
            v62 = 0;
            v60 = 0;
            v24 = [(AMDDataSync *)selfCopy ingestDataFromDevice:v66 withDevicePayload:v64 forStream:v70 fromTimestamp:v63 error:&v60];
            objc_storeStrong(&v62, v60);
            v61 = v24;
            if (v62)
            {
              v22 = MEMORY[0x277CCACA8];
              v21 = v66;
              localizedDescription = [v62 localizedDescription];
              v59 = [v22 stringWithFormat:@"Data ingestion failed for device: %@ with error: %@", v21, localizedDescription];
              MEMORY[0x277D82BD8](localizedDescription);
              v58 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              v57 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                v19 = v58;
                v20 = v57;
                __os_log_helper_16_2_1_8_64(v89, v59);
                _os_log_error_impl(&dword_240CB9000, v19, v20, "%@", v89, 0xCu);
              }

              objc_storeStrong(&v58, 0);
              [v72 setObject:v59 forKey:v66];
              v73 = 5;
              objc_storeStrong(&v59, 0);
            }

            else
            {
              v56 = [v61 objectForKey:@"lastSavedEventTimestamp"];
              if (v56)
              {
                [v68 setObject:v56 forKey:v66];
                [v67 setObject:v61 forKey:v66];
                v73 = 0;
              }

              else
              {
                v55 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                v54 = OS_LOG_TYPE_INFO;
                if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
                {
                  v18 = v55;
                  __os_log_helper_16_2_1_8_64(v88, v66);
                  _os_log_impl(&dword_240CB9000, v18, v54, "No data was ingested for deviceId: %@", v88, 0xCu);
                }

                objc_storeStrong(&v55, 0);
                v73 = 5;
              }

              objc_storeStrong(&v56, 0);
            }

            objc_storeStrong(&v61, 0);
            objc_storeStrong(&v62, 0);
            objc_storeStrong(&v63, 0);
            objc_storeStrong(&v64, 0);
            ++v27;
            if (v25 + 1 >= v28)
            {
              v27 = 0;
              v28 = [v29 countByEnumeratingWithState:v65 objects:v90 count:16];
              if (!v28)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x277D82BD8](v29);
        [v71 setObject:v68 forKey:v70];
        [v72 setObject:v67 forKey:v70];
        objc_storeStrong(&v67, 0);
        objc_storeStrong(&v68, 0);
        ++v35;
        if (v33 + 1 >= v36)
        {
          v35 = 0;
          v36 = [(NSArray *)streamsToSync countByEnumeratingWithState:__b objects:v91 count:16];
          if (!v36)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](streamsToSync);
    [v79 setObject:v71 forKey:@"checkpoints"];
    [AMDFrameworkMetrics log:v72 withKey:@"EventDeltaIngestionStatus" atVerbosity:0];
    objc_storeStrong(&v71, 0);
    objc_storeStrong(&v72, 0);
  }

  v53 = [v79 objectForKey:@"clearData"];
  if (!v53)
  {
    objc_storeStrong(&v53, MEMORY[0x277CBEC10]);
  }

  v52 = [(AMDDataSync *)selfCopy updateDataDeletionDict:v53 withDevicesData:v80 error:errorCopy];
  if (*errorCopy)
  {
    v85 = 0;
  }

  else
  {
    [v79 setObject:v52 forKey:@"clearData"];
    v86[0] = @"myUUID";
    localDeviceId6 = [(AMDDataSync *)selfCopy localDeviceId];
    v87[0] = localDeviceId6;
    v86[1] = @"localDeviceData";
    v87[1] = v79;
    v86[2] = @"expiredDeviceIds";
    v87[2] = v74;
    v86[3] = @"deviceRegistry";
    v87[3] = v82;
    v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:4];
    MEMORY[0x277D82BD8](localDeviceId6);
  }

  v73 = 1;
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&v53, 0);
LABEL_55:
  objc_storeStrong(&v74, 0);
  objc_storeStrong(&v79, 0);
  objc_storeStrong(&v80, 0);
  objc_storeStrong(&v82, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v15 = v85;

  return v15;
}

+ (id)processDataReplicationPayload:(id)payload error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  errorCopy = error;
  v34 = [location[0] objectForKey:@"drConfig"];
  v33 = [location[0] objectForKey:@"drData"];
  v32 = [location[0] objectForKey:@"deviceRegistry"];
  v31 = [[AMDDataSync alloc] initWithDataReplicationConfig:v34 error:error];
  if (*error)
  {
    v37 = 0;
    v30 = 1;
  }

  else if (v33)
  {
    if (v32)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = MEMORY[0x277D82BE0](v33);
          v16 = [v32 mutableCopy];
          v15 = [v31 performDataReplicationPayloadUpdates:v17 withDeviceRegistry:v16 error:errorCopy];
          if (*errorCopy)
          {
            v37 = 0;
          }

          else
          {
            v37 = MEMORY[0x277D82BE0](v15);
          }

          v30 = 1;
          objc_storeStrong(&v15, 0);
          objc_storeStrong(&v16, 0);
          objc_storeStrong(&v17, 0);
        }

        else
        {
          v20 = MEMORY[0x277D82BE0](@"Device registry is not a dictionary");
          oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v18 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_1_8_64(v38, v20);
            _os_log_error_impl(&dword_240CB9000, oslog, v18, "%@", v38, 0xCu);
          }

          objc_storeStrong(&oslog, 0);
          v10 = [AMDError allocError:10 withMessage:v20];
          v7 = v10;
          *errorCopy = v10;
          v37 = 0;
          v30 = 1;
          objc_storeStrong(&v20, 0);
        }
      }

      else
      {
        v23 = MEMORY[0x277D82BE0](@"Data Replication data is not a dictionary");
        v22 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v21 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v39, v23);
          _os_log_error_impl(&dword_240CB9000, v22, v21, "%@", v39, 0xCu);
        }

        objc_storeStrong(&v22, 0);
        v11 = [AMDError allocError:10 withMessage:v23];
        v6 = v11;
        *errorCopy = v11;
        v37 = 0;
        v30 = 1;
        objc_storeStrong(&v23, 0);
      }
    }

    else
    {
      v26 = MEMORY[0x277D82BE0](@"Missing Device registry dict");
      v25 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v24 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v40, v26);
        _os_log_error_impl(&dword_240CB9000, v25, v24, "%@", v40, 0xCu);
      }

      objc_storeStrong(&v25, 0);
      v12 = [AMDError allocError:10 withMessage:v26];
      v5 = v12;
      *errorCopy = v12;
      v37 = 0;
      v30 = 1;
      objc_storeStrong(&v26, 0);
    }
  }

  else
  {
    v29 = MEMORY[0x277D82BE0](@"Missing DR Data payload");
    v28 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v27 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v41, v29);
      _os_log_error_impl(&dword_240CB9000, v28, v27, "%@", v41, 0xCu);
    }

    objc_storeStrong(&v28, 0);
    v13 = [AMDError allocError:10 withMessage:v29];
    v4 = v13;
    *errorCopy = v13;
    v37 = 0;
    v30 = 1;
    objc_storeStrong(&v29, 0);
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v8 = v37;

  return v8;
}

@end