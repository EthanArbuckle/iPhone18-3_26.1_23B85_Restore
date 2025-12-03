@interface ADIDManager
+ (id)sharedInstance;
- (ADIDManager)init;
- (BOOL)clearDSIDRecords;
- (BOOL)loadIDs;
- (BOOL)setDSIDDicToStorage:(id)storage;
- (id)deviceIdentifiers;
- (id)dsidRecord:(id)record fromDict:(id)dict;
- (id)encryptedIDForClientType:(int64_t)type;
- (id)getDSIDDicFromStorage;
- (id)idForClientType:(int64_t)type;
- (id)loadFakeRecord:(id)record;
- (id)reloadRecords:(id)records;
- (id)retrieveDeviceIDs;
- (int64_t)PersonalizedAdsMonthResetCount;
- (void)forceReconcile:(id)reconcile;
- (void)logIDs:(id)ds;
- (void)reloadRecords:(id)records completionHandler:(id)handler;
@end

@implementation ADIDManager

uint64_t __29__ADIDManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance__instance_1 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (ADIDManager)init
{
  v5.receiver = self;
  v5.super_class = ADIDManager;
  v2 = [(ADIDManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ADIDManager *)v2 loadIDs];
  }

  return v3;
}

- (BOOL)loadIDs
{
  v3 = +[ADCoreSettings sharedInstance];
  iTunesAccountDSID = [v3 iTunesAccountDSID];

  if (!iTunesAccountDSID || ![(__CFString *)iTunesAccountDSID length])
  {

    iTunesAccountDSID = @"0";
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Loading the record for DSID: %@", iTunesAccountDSID];
  _ADLog(@"iAdIDLogging", v5, 0);

  v6 = [(ADIDManager *)self reloadRecords:iTunesAccountDSID];
  if (!v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"No record was found for the current user (%@). Forcing a reconciliation.", iTunesAccountDSID];
    _ADLog(@"iAdInternalLogging", v7, 16);

    v8 = [(ADIDManager *)self loadFakeRecord:iTunesAccountDSID];
    [(ADIDManager *)self forceReconcile:&__block_literal_global_2];
  }

  return v6 != 0;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__ADIDManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance__onceToken_1, block);
  }

  v2 = sharedInstance__instance_1;

  return v2;
}

- (id)getDSIDDicFromStorage
{
  v10 = 0;
  v2 = GetKeychainPropertyListForKey(@"kADiAdIDStorageKey", &v10);
  v3 = v10;
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = v5;
  if (v3)
  {
    aD_jsonString = [v4 stringWithFormat:@"[%@]: Error %d reading keychain: %@", v5, v10, @"kADiAdIDStorageKey"];
    _ADLog(@"iAdIDLogging", aD_jsonString, 16);
  }

  else
  {
    aD_jsonString = [v2 AD_jsonString];
    v8 = [v4 stringWithFormat:@"[%@]: Successfully read keychain: %@", v6, aD_jsonString];
    _ADLog(@"iAdIDLogging", v8, 0);
  }

  return v2;
}

- (void)forceReconcile:(id)reconcile
{
  reconcileCopy = reconcile;
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.ap.adprivacyd.idmanager" options:4096];
  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285108738];
  [v5 setRemoteObjectInterface:v6];

  [v5 resume];
  remoteObjectProxy = [v5 remoteObjectProxy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__ADIDManager_AdCore__forceReconcile___block_invoke;
  v10[3] = &unk_278C55018;
  v8 = reconcileCopy;
  v11 = v5;
  v12 = v8;
  v9 = v5;
  [remoteObjectProxy forceReconcile:v10];

  objc_autoreleasePoolPop(v4);
}

uint64_t __38__ADIDManager_AdCore__forceReconcile___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

void __30__ADIDManager_AdCore__loadIDs__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Reconciliation should be done. Waiting for the 'kADIDManager_ChangedNotification' notification to reload the keychain. Error: %@", a2];
  _ADLog(@"iAdInternalLogging", v2, 0);
}

- (id)loadFakeRecord:(id)record
{
  v69[3] = *MEMORY[0x277D85DE8];
  recordCopy = record;
  recordCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Loading fake records for DSID %@", recordCopy];
  _ADLog(@"iAdStateLogging", recordCopy, 0);

  v5 = [@"BAAAAAAD" length];
  obj = self;
  objc_sync_enter(obj);
  v68[0] = @"iAdIDRecordsVersion";
  v68[1] = @"kADiADIDMonthResetKey";
  v69[0] = @"3";
  v69[1] = MEMORY[0x277CBEBF8];
  v68[2] = @"kADiAdIDManager_RecordsKey";
  v66 = recordCopy;
  v64 = @"kADDSIDRecord_iAdIDRecordsKey";
  v62[0] = @"0";
  v60 = @"kADiAdIDRecord_iAdIDKey";
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v45 = [uUIDString stringByReplacingCharactersInRange:0 withString:{v5, @"BAAAAAAD"}];
  v61 = v45;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
  v63[0] = v44;
  v62[1] = @"1";
  v58 = @"kADiAdIDRecord_iAdIDKey";
  uUID2 = [MEMORY[0x277CCAD78] UUID];
  uUIDString2 = [uUID2 UUIDString];
  v41 = [uUIDString2 stringByReplacingCharactersInRange:0 withString:{v5, @"BAAAAAAD"}];
  v59 = v41;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
  v63[1] = v40;
  v62[2] = @"2";
  v56 = @"kADiAdIDRecord_iAdIDKey";
  uUID3 = [MEMORY[0x277CCAD78] UUID];
  uUIDString3 = [uUID3 UUIDString];
  v37 = [uUIDString3 stringByReplacingCharactersInRange:0 withString:{v5, @"BAAAAAAD"}];
  v57 = v37;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
  v63[2] = v36;
  v62[3] = @"3";
  v54 = @"kADiAdIDRecord_iAdIDKey";
  uUID4 = [MEMORY[0x277CCAD78] UUID];
  uUIDString4 = [uUID4 UUIDString];
  v33 = [uUIDString4 stringByReplacingCharactersInRange:0 withString:{v5, @"BAAAAAAD"}];
  v55 = v33;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  v63[3] = v32;
  v62[4] = @"4";
  v52 = @"kADiAdIDRecord_iAdIDKey";
  uUID5 = [MEMORY[0x277CCAD78] UUID];
  uUIDString5 = [uUID5 UUIDString];
  v29 = [uUIDString5 stringByReplacingCharactersInRange:0 withString:{v5, @"BAAAAAAD"}];
  v53 = v29;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  v63[4] = v6;
  v62[5] = @"6";
  v50 = @"kADiAdIDRecord_iAdIDKey";
  uUID6 = [MEMORY[0x277CCAD78] UUID];
  uUIDString6 = [uUID6 UUIDString];
  v9 = [uUIDString6 stringByReplacingCharactersInRange:0 withString:{v5, @"BAAAAAAD"}];
  v51 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
  v63[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:6];
  v65 = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  v67 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
  v69[2] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:3];

  v15 = [(ADIDManager *)obj dsidRecord:recordCopy fromDict:v14];
  [(ADIDManager *)obj setActiveDSIDRecord:v15];

  objc_sync_exit(obj);
  v16 = +[ADCoreSettings sharedInstance];
  LODWORD(v12) = [v16 isProtoU13state];

  if (v12)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"This is a fake record but ProtoU13 is TRUE. Setting Enabled Proto State"];
    _ADLog(@"iAdStateLogging", v17, 0);

    activeDSIDRecord = [(ADIDManager *)obj activeDSIDRecord];
    [activeDSIDRecord setIsProtoU13:1];
  }

  v19 = +[ADCoreSettings sharedInstance];
  isProtoTeenState = [v19 isProtoTeenState];

  if (isProtoTeenState)
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"This is a fake record but Proto Teen is TRUE. Setting Enabled Proto Teen State"];
    _ADLog(@"iAdStateLogging", v21, 0);

    activeDSIDRecord2 = [(ADIDManager *)obj activeDSIDRecord];
    [activeDSIDRecord2 setIsProtoTeen:1];
  }

  v23 = MEMORY[0x277CCACA8];
  activeDSIDRecord3 = [(ADIDManager *)obj activeDSIDRecord];
  v25 = [v23 stringWithFormat:@"Fake record has been loaded: %@", activeDSIDRecord3];
  _ADLog(@"iAdStateLogging", v25, 0);

  activeDSIDRecord4 = [(ADIDManager *)obj activeDSIDRecord];

  v27 = *MEMORY[0x277D85DE8];

  return activeDSIDRecord4;
}

- (id)idForClientType:(int64_t)type
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [selfCopy->_activeDSIDRecord idForClientType:type];
  v6 = [v5 copy];

  objc_sync_exit(selfCopy);

  return v6;
}

- (id)encryptedIDForClientType:(int64_t)type
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [selfCopy->_activeDSIDRecord encryptedIDForClientType:type];
  v6 = [v5 copy];

  objc_sync_exit(selfCopy);

  return v6;
}

- (int64_t)PersonalizedAdsMonthResetCount
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSArray *)selfCopy->_monthlyResetArray count];
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)dsidRecord:(id)record fromDict:(id)dict
{
  recordCopy = record;
  if (dict)
  {
    dictCopy = dict;
    v8 = [dictCopy valueForKey:@"iAdIDRecordsVersion"];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 3];
    v10 = [v8 compare:v9];

    if (v10)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid version key %@", v8];
      _ADLog(@"ToroLogging", v11, 16);
    }

    v12 = [dictCopy valueForKey:@"kADiADIDMonthResetKey"];
    monthlyResetArray = self->_monthlyResetArray;
    self->_monthlyResetArray = v12;

    v14 = [dictCopy valueForKey:@"kADiAdIDManager_RecordsKey"];

    if (v14)
    {
      v15 = [v14 valueForKey:recordCopy];
      if (v15)
      {
        v16 = [[DSIDRecord alloc] initWithDSID:recordCopy serializedRecord:v15 version:3];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)reloadRecords:(id)records
{
  recordsCopy = records;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  getDSIDDicFromStorage = [(ADIDManager *)selfCopy getDSIDDicFromStorage];
  v8 = [getDSIDDicFromStorage mutableCopy];

  v9 = [v8 objectForKey:@"kADiAdIDManager_AppUsageVector"];

  if (v9)
  {
    [v8 removeObjectForKey:@"kADiAdIDManager_AppUsageVector"];
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    aD_jsonString = [v8 AD_jsonString];
    v13 = [v10 stringWithFormat:@"[%@]: Deprecated App Usage Vector detected. Rewriting the record as %@.", v11, aD_jsonString];
    _ADLog(@"iAdIDLogging", v13, 0);

    v14 = [v8 copy];
    [(ADIDManager *)selfCopy setDSIDDicToStorage:v14];
  }

  v15 = [v8 copy];
  v16 = [(ADIDManager *)selfCopy dsidRecord:recordsCopy fromDict:v15];

  objc_sync_exit(selfCopy);
  [(ADIDManager *)selfCopy setActiveDSIDRecord:v16];

  objc_autoreleasePoolPop(v5);
  activeDSIDRecord = [(ADIDManager *)selfCopy activeDSIDRecord];

  return activeDSIDRecord;
}

- (void)reloadRecords:(id)records completionHandler:(id)handler
{
  recordsCopy = records;
  handlerCopy = handler;
  v8 = +[ADServer workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__ADIDManager_reloadRecords_completionHandler___block_invoke;
  v11[3] = &unk_278C55330;
  v11[4] = self;
  v12 = recordsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = recordsCopy;
  [v8 addOperationWithBlock:v11];
}

void __47__ADIDManager_reloadRecords_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reloadRecords:*(a1 + 40)];
  v4 = [v2 copy];

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (id)deviceIdentifiers
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(ADIDManager *)self idForClientType:0];
  [dictionary setValue:v4 forKey:@"iAdID"];

  v5 = [(ADIDManager *)self idForClientType:5];
  if (v5)
  {
    v6 = [(ADIDManager *)self idForClientType:5];
    [dictionary setValue:v6 forKey:@"DPID"];
  }

  else
  {
    [dictionary setValue:@"(null)" forKey:@"DPID"];
  }

  v7 = [(ADIDManager *)self idForClientType:4];
  [dictionary setValue:v7 forKey:@"ToroID"];

  v8 = [(ADIDManager *)self idForClientType:6];
  [dictionary setValue:v8 forKey:@"DeviceNewsPlusSubscriberID"];

  v9 = [(ADIDManager *)self idForClientType:2];
  [dictionary setValue:v9 forKey:@"AnonymousDemandID"];

  v10 = [(ADIDManager *)self idForClientType:3];
  [dictionary setValue:v10 forKey:@"ContentID"];

  v11 = +[ADCoreSettings sharedInstance];
  if ([v11 isPersonalizedAdsEnabled])
  {
    v12 = @"ON";
  }

  else
  {
    v12 = @"OFF";
  }

  [dictionary setValue:v12 forKey:@"Personalized Ads"];

  activeDSIDRecord = [(ADIDManager *)self activeDSIDRecord];
  segmentData = [activeDSIDRecord segmentData];
  if (segmentData)
  {
    activeDSIDRecord2 = [(ADIDManager *)self activeDSIDRecord];
    segmentData2 = [activeDSIDRecord2 segmentData];
    [dictionary setObject:segmentData2 forKey:@"Segments"];
  }

  else
  {
    [dictionary setObject:@"(null)" forKey:@"Segments"];
  }

  activeDSIDRecord3 = [(ADIDManager *)self activeDSIDRecord];
  dSID = [activeDSIDRecord3 DSID];
  if (dSID)
  {
    activeDSIDRecord4 = [(ADIDManager *)self activeDSIDRecord];
    dSID2 = [activeDSIDRecord4 DSID];
    [dictionary setObject:dSID2 forKey:@"DSID"];
  }

  else
  {
    [dictionary setObject:@"(null)" forKey:@"DSID"];
  }

  activeDSIDRecord5 = [(ADIDManager *)self activeDSIDRecord];
  iCloudDSID = [activeDSIDRecord5 iCloudDSID];
  if (iCloudDSID)
  {
    activeDSIDRecord6 = [(ADIDManager *)self activeDSIDRecord];
    iCloudDSID2 = [activeDSIDRecord6 iCloudDSID];
    [dictionary setObject:iCloudDSID2 forKey:@"iCloud DSID"];
  }

  else
  {
    [dictionary setObject:@"(null)" forKey:@"iCloud DSID"];
  }

  return dictionary;
}

- (void)logIDs:(id)ds
{
  if (self->_activeDSIDRecord)
  {
    v4 = MEMORY[0x277CCACA8];
    dsCopy = ds;
    v6 = [[v4 alloc] initWithFormat:dsCopy arguments:&v11];

    v7 = MEMORY[0x277CCACA8];
    deviceIdentifiers = [(ADIDManager *)self deviceIdentifiers];
    aD_jsonString = [deviceIdentifiers AD_jsonString];
    v10 = [v7 stringWithFormat:@"%@ %@", v6, aD_jsonString];
    _ADLog(@"iAdIDLogging", v10, 0);
  }
}

- (id)retrieveDeviceIDs
{
  deviceIdentifiers = [(ADIDManager *)self deviceIdentifiers];
  v3 = [deviceIdentifiers copy];

  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 AD_jsonStringWithPrettyPrint:1];
  v6 = [v4 stringWithFormat:@"Device IDs:%@\n", v5];
  _ADLog(@"iAdIDLogging", v6, 1);

  v7 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.AdPlatforms"];
  if ([v7 BOOLForKey:@"AutomationLoggingEnabled"])
  {
    [v3 AD_jsonStringWithPrettyPrint:1];
  }

  else
  {
    [v3 descriptionInStringsFileFormat];
  }
  v8 = ;

  return v8;
}

- (BOOL)setDSIDDicToStorage:(id)storage
{
  storageCopy = storage;
  v4 = [storageCopy copy];
  v5 = SetKeychainPropertyListForKey(@"kADiAdIDStorageKey", v4);

  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = v7;
  if (v5)
  {
    aD_jsonString = [v6 stringWithFormat:@"[%@]: Error %d storing keychain: %@", v7, v5, @"kADiAdIDStorageKey"];
    _ADLog(@"iAdIDLogging", aD_jsonString, 16);
  }

  else
  {
    aD_jsonString = [storageCopy AD_jsonString];
    v10 = [v6 stringWithFormat:@"[%@]: Successfully stored disd to keychain: %@", v8, aD_jsonString];
    _ADLog(@"iAdIDLogging", v10, 0);
  }

  return v5 == 0;
}

- (BOOL)clearDSIDRecords
{
  v2 = ADWriteDataToKeychain(@"kADiAdIDStorageKey", 0);
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error resetting records: %d", v2];
    _ADLog(@"iAdInternalLogging", v3, 16);
  }

  return v2 == 0;
}

@end