@interface ADClientDPIDManager
+ (id)DPIDOperationTypeToString:(unint64_t)a3;
+ (id)sharedInstance;
- (ADClientDPIDManager)init;
- (BOOL)canContinueProcessing:(id)a3;
- (BOOL)canGenerateDPID;
- (BOOL)devicePersonalizedAdsEnabled;
- (BOOL)iCloudAccountSubscribed;
- (BOOL)isLoggedIntoiTunes;
- (BOOL)isRestrictedByApple;
- (BOOL)shouldSyncDPID;
- (id)conformDPIDToUseWithRecord:(id)a3 legacyRecord:(id)a4;
- (id)containerWithIDString:(id)a3;
- (id)generateDPID;
- (id)insecureContainer;
- (id)operationQueueLog;
- (id)primaryiCloudAccountAltDSID;
- (id)secureContainer;
- (id)subscriptionIdentifier;
- (unint64_t)primaryiCloudAccountSecurityLevel;
- (void)backupFlowForCloudKitWorkAtTime:(id)a3 with:(id)a4;
- (void)continueReconcileWithAccountStatus:(int64_t)a3 andError:(id)a4 with:(id)a5;
- (void)createErrorForPrivateDB:(id)a3 completionHandler:(id)a4;
- (void)fetchDPIDfromiCloud:(id)a3;
- (void)finishOperation:(unint64_t)a3;
- (void)handleCloudKitError:(id)a3;
- (void)handlePushNotification:(id)a3 completionHandler:(id)a4;
- (void)reconcileDPID:(id)a3;
- (void)removeDPIDfromiCloud:(id)a3;
- (void)resetDPID:(id)a3;
- (void)resetEncryptedZone:(id)a3;
- (void)resolveAccountVsStoredManateeState:(int64_t)a3 andError:(id)a4 with:(id)a5;
- (void)retryIfNeeded:(id)a3;
- (void)saveDPIDtoiCloud:(id)a3 completionHandler:(id)a4;
- (void)setDPID:(id)a3;
- (void)setiCloudAccountSubscribed:(BOOL)a3;
- (void)setupLocalDPID;
- (void)setupiCloudSubscription:(id)a3;
- (void)startOperation:(unint64_t)a3;
- (void)syncDPIDWithiCloud:(id)a3;
- (void)teardowniCloudSubscription:(id)a3;
- (void)updateActiveRecordICloudDSID;
- (void)writeDPIDtoKeychain;
@end

@implementation ADClientDPIDManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ADClientDPIDManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __37__ADClientDPIDManager_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(ADClientDPIDManager);

  return MEMORY[0x2821F96F8]();
}

+ (id)DPIDOperationTypeToString:(unint64_t)a3
{
  if (a3 < 0xA)
  {
    return off_278C58288[a3];
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"Unexpected DPIDOperationType.", v3, v4}];
  return 0;
}

- (ADClientDPIDManager)init
{
  v22.receiver = self;
  v22.super_class = ADClientDPIDManager;
  v2 = [(ADClientDPIDManager *)&v22 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = *MEMORY[0x277CBBF00];
    v5 = [MEMORY[0x277CCABD8] mainQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __27__ADClientDPIDManager_init__block_invoke;
    v20[3] = &unk_278C57E38;
    v6 = v2;
    v21 = v6;
    v7 = [v3 addObserverForName:v4 object:0 queue:v5 usingBlock:v20];

    [(ADClientDPIDManager *)v6 setSandboxEnvironment:0];
    v8 = objc_alloc(MEMORY[0x277CBC5F8]);
    v9 = [v8 initWithZoneName:@"DPIDZone" ownerName:*MEMORY[0x277CBBF28]];
    [(ADClientDPIDManager *)v6 setZoneID:v9];

    v10 = objc_alloc(MEMORY[0x277CBC5D0]);
    v11 = [(ADClientDPIDManager *)v6 zoneID];
    v12 = [v10 initWithRecordName:@"DPIDRecordID" zoneID:v11];
    [(ADClientDPIDManager *)v6 setRecordIDLegacy:v12];

    v13 = objc_alloc(MEMORY[0x277CBC5D0]);
    v14 = [(ADClientDPIDManager *)v6 zoneID];
    v15 = [v13 initWithRecordName:@"DPIDRecordIDForATP" zoneID:v14];
    [(ADClientDPIDManager *)v6 setRecordID:v15];

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(ADClientDPIDManager *)v6 setOperationsInProgress:v16];

    [(ADClientDPIDManager *)v6 setQualityOfService:17];
    [(ADClientDPIDManager *)v6 setDpidReconcileState:0];
    [(ADClientDPIDManager *)v6 setDpidReconcileStartDate:0];
    v17 = dispatch_queue_create("com.apple.ap.adprivacyd.DPIDBackupFlow", 0);
    backupFlowQueue = v6->_backupFlowQueue;
    v6->_backupFlowQueue = v17;
  }

  return v2;
}

void __27__ADClientDPIDManager_init__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CE96B8] workQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __27__ADClientDPIDManager_init__block_invoke_2;
  v3[3] = &unk_278C57E10;
  v4 = *(a1 + 32);
  [v2 addOperationWithBlock:v3];
}

void __27__ADClientDPIDManager_init__block_invoke_2(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = [*(a1 + 32) secureContainer];
  v2 = v7[5];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __27__ADClientDPIDManager_init__block_invoke_36;
  v3[3] = &unk_278C57DE8;
  v4 = *(a1 + 32);
  v5 = &v6;
  [v2 accountInfoWithCompletionHandler:v3];

  _Block_object_dispose(&v6, 8);
}

void __27__ADClientDPIDManager_init__block_invoke_36(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CE96B8] workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __27__ADClientDPIDManager_init__block_invoke_2_37;
  v12[3] = &unk_278C57DC0;
  v13 = v6;
  v14 = *(a1 + 32);
  v15 = v5;
  v8 = v5;
  v9 = v6;
  [v7 addOperationWithBlock:v12];

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;
}

uint64_t __27__ADClientDPIDManager_init__block_invoke_2_37(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] ERROR: There was an error getting the account info of the user: %@", objc_opt_class(), *(a1 + 32)];
    _ADLog();
  }

  v4 = [*(a1 + 48) supportsDeviceToDeviceEncryption];
  result = [*(a1 + 40) supportsDeviceToDeviceEncryption];
  if (v4 != result)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = *(a1 + 40);
    v8 = objc_opt_class();
    v9 = [*(a1 + 40) supportsDeviceToDeviceEncryption];
    v10 = @"No";
    if (v9)
    {
      v11 = @"Yes";
    }

    else
    {
      v11 = @"No";
    }

    if (v4)
    {
      v10 = @"Yes";
    }

    v12 = [v6 stringWithFormat:@"[%@] Resetting the local container due to Manatee state change from %@ to %@", v8, v11, v10];
    _ADLog();

    v13 = *(a1 + 40);

    return [v13 setPrivateContainer:0];
  }

  return result;
}

- (void)updateActiveRecordICloudDSID
{
  v2 = [MEMORY[0x277CE9658] sharedInstance];
  v3 = [v2 activeDSIDRecord];
  v11 = [v3 iCloudDSID];

  v4 = [MEMORY[0x277CE9638] sharedInstance];
  v5 = [v4 iCloudDSID];

  if (([v11 isEqualToString:v5] & 1) == 0)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Changing the record's iCloud Identifier: %@ => %@", v11, v5];
    _ADLog();

    v7 = [MEMORY[0x277CE9638] sharedInstance];
    v8 = [v7 iCloudDSID];
    v9 = [MEMORY[0x277CE9658] sharedInstance];
    v10 = [v9 activeDSIDRecord];
    [v10 setICloudDSID:v8];
  }
}

- (BOOL)canContinueProcessing:(id)a3
{
  v4 = a3;
  if ([(ADClientDPIDManager *)self dpidReconcileState]== 1)
  {
    v5 = [(ADClientDPIDManager *)self dpidReconcileStartDate];
    v6 = v5 == v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = [(ADClientDPIDManager *)self dpidReconcileState];
  v9 = [v4 AD_doubleDateTimeAsString];
  v10 = [(ADClientDPIDManager *)self dpidReconcileStartDate];
  v11 = [v10 AD_doubleDateTimeAsString];
  v12 = v11;
  v13 = @"Wont";
  if (v6)
  {
    v13 = @"Will";
  }

  v14 = [v7 stringWithFormat:@"DPID Reconcile state is %lu. Caller started at %@. Current flow started at %@. %@ continue.", v8, v9, v11, v13];
  _ADLog();

  return v6;
}

- (void)reconcileDPID:(id)a3
{
  v49[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Starting DPID Reconcile."];
  _ADLog();

  if ([(ADClientDPIDManager *)self dpidReconcileState])
  {
    [ADClientDPIDManager reconcileDPID:?];
  }

  [(ADClientDPIDManager *)self startOperation:0];
  v6 = [MEMORY[0x277CE9658] sharedInstance];
  v7 = [v6 idForClientType:5];
  DPID = self->_DPID;
  self->_DPID = v7;

  if ([(ADClientDPIDManager *)self isRestrictedByApple])
  {
    v9 = [MEMORY[0x277CE96B8] workQueue];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __37__ADClientDPIDManager_reconcileDPID___block_invoke;
    v46[3] = &unk_278C57E60;
    v46[4] = self;
    v47 = v4;
    [v9 addOperationWithBlock:v46];
  }

  else
  {
    v10 = [MEMORY[0x277CE9658] sharedInstance];
    v11 = [v10 activeDSIDRecord];

    v12 = [v11 isDPIDLocal];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"isDPIDLocal flag is %d", v12];
    _ADLog();

    if ((v12 & 1) == 0)
    {
      [(ADClientDPIDManager *)self setDPID:0];
      [(ADClientDPIDManager *)self setupLocalDPID];
    }

    v14 = [MEMORY[0x277CE9630] sharedInstance];
    [v14 setInteger:1 forKey:@"CKDPIDSyncState"];

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"We need to sync with iCloud"];
    _ADLog();

    if ([(ADClientDPIDManager *)self shouldSyncDPID])
    {
      v16 = [(ADClientDPIDManager *)self secureContainer];
      objc_storeStrong(&self->_privateContainer, v16);
      if (v16)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"DPID reconcile with iCloud"];
        _ADLog();

        v18 = [MEMORY[0x277CBEAA8] date];
        self->_dpidReconcileState = 1;
        objc_storeStrong(&self->_dpidReconcileStartDate, v18);
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Creating the backup DPID flow."];
        _ADLog();

        v20 = dispatch_time(0, 120000000000);
        backupFlowQueue = self->_backupFlowQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __37__ADClientDPIDManager_reconcileDPID___block_invoke_4;
        block[3] = &unk_278C57EB0;
        block[4] = self;
        v22 = v18;
        v39 = v22;
        v23 = v4;
        v40 = v23;
        dispatch_after(v20, backupFlowQueue, block);
        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Starting to wait for the account status."];
        _ADLog();

        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __37__ADClientDPIDManager_reconcileDPID___block_invoke_5;
        v34[3] = &unk_278C57F50;
        v35 = v22;
        v36 = self;
        v37 = v23;
        v25 = v22;
        [v16 accountInfoWithCompletionHandler:v34];

        v26 = v39;
      }

      else
      {
        v28 = MEMORY[0x277CCA9B8];
        v29 = *MEMORY[0x277CE95B0];
        v48 = *MEMORY[0x277CCA450];
        v49[0] = @"DPID reconcile: Couldn't create CKContainer";
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
        v31 = [v28 errorWithDomain:v29 code:9 userInfo:v30];

        [(ADClientDPIDManager *)self finishOperation:0];
        v32 = [MEMORY[0x277CE96B8] workQueue];
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __37__ADClientDPIDManager_reconcileDPID___block_invoke_3;
        v41[3] = &unk_278C57E88;
        v42 = v31;
        v43 = v4;
        v25 = v31;
        [v32 addOperationWithBlock:v41];

        v26 = v43;
      }
    }

    else
    {
      v27 = [MEMORY[0x277CE96B8] workQueue];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __37__ADClientDPIDManager_reconcileDPID___block_invoke_2;
      v44[3] = &unk_278C57E60;
      v44[4] = self;
      v45 = v4;
      [v27 addOperationWithBlock:v44];
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __37__ADClientDPIDManager_reconcileDPID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) finishOperation:0];
  [*(a1 + 32) updateActiveRecordICloudDSID];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __37__ADClientDPIDManager_reconcileDPID___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) finishOperation:0];
  [*(a1 + 32) updateActiveRecordICloudDSID];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __37__ADClientDPIDManager_reconcileDPID___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __37__ADClientDPIDManager_reconcileDPID___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CE96B8] workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__ADClientDPIDManager_reconcileDPID___block_invoke_6;
  v11[3] = &unk_278C57F28;
  v12 = v5;
  v13 = *(a1 + 32);
  v14 = v6;
  v8 = *(a1 + 48);
  v15 = *(a1 + 40);
  v16 = v8;
  v9 = v6;
  v10 = v5;
  [v7 addOperationWithBlock:v11];
}

void __37__ADClientDPIDManager_reconcileDPID___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) accountStatus];
  v3 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSinceDate:*(a1 + 40)];
  v5 = v4;
  v6 = MEMORY[0x277CCACA8];
  v7 = [*(a1 + 40) AD_doubleDateTimeAsString];
  v8 = [v6 stringWithFormat:@"DPID reconcile (started at %@): accountStatusWithCompletionHandler called after %f seconds: accountStatus %ld, error %@", v7, v5, v2, *(a1 + 48)];
  _ADLog();

  v9 = [*(a1 + 56) canContinueProcessing:*(a1 + 40)];
  v10 = *(a1 + 56);
  if (v9)
  {
    [v10 setDpidReconcileState:2];
    [*(a1 + 56) setSupportsDeviceToDeviceEncryption:{objc_msgSend(*(a1 + 32), "supportsDeviceToDeviceEncryption")}];
    if (([*(a1 + 56) supportsDeviceToDeviceEncryption] & 1) != 0 && !*(a1 + 48))
    {
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"privateContainer matched what we needed. isPrivateContainerSecure is %d", *(*(a1 + 56) + 17)];
      _ADLog();

      [*(a1 + 56) resolveAccountVsStoredManateeState:v2 andError:*(a1 + 48) with:*(a1 + 64)];
    }

    else
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [*(a1 + 56) supportsDeviceToDeviceEncryption];
      v13 = @"No";
      if (v12)
      {
        v13 = @"Yes";
      }

      v14 = [v11 stringWithFormat:@"Falling back to insecure container due to manatee available (%@) or error: %@", v13, *(a1 + 48)];
      _ADLog();

      v15 = [*(a1 + 56) insecureContainer];
      v16 = *(a1 + 56);
      v17 = *(v16 + 64);
      *(v16 + 64) = v15;

      v19 = *(a1 + 56);
      v18 = *(a1 + 64);
      v20 = *(v19 + 64);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __37__ADClientDPIDManager_reconcileDPID___block_invoke_7;
      v23[3] = &unk_278C57F00;
      v23[4] = v19;
      v24 = v18;
      [v20 accountInfoWithCompletionHandler:v23];
    }
  }

  else
  {
    if ([v10 dpidReconcileState] == 2)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"The fallback flow is actively being run right now. Maybe we should extend the delay?"];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"The DPID manager was not able to find the CloudKit Account Status in time. An error has already been propagated."];
    }
    v21 = ;
    _ADLog();
  }
}

void __37__ADClientDPIDManager_reconcileDPID___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CE96B8] workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __37__ADClientDPIDManager_reconcileDPID___block_invoke_8;
  v12[3] = &unk_278C57ED8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v15 = v6;
  v16 = v9;
  v10 = v6;
  v11 = v5;
  [v7 addOperationWithBlock:v12];
}

uint64_t __37__ADClientDPIDManager_reconcileDPID___block_invoke_8(uint64_t a1)
{
  v2 = [*(a1 + 32) accountStatus];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v3 resolveAccountVsStoredManateeState:v2 andError:v4 with:v5];
}

- (void)resolveAccountVsStoredManateeState:(int64_t)a3 andError:(id)a4 with:(id)a5
{
  v25 = a4;
  v8 = a5;
  if (self->_isPrivateContainerSecure)
  {
    v9 = @"Container is secure.";
  }

  else
  {
    v9 = @"Container is NOT secure.";
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:v9];
  _ADLog();

  v11 = [MEMORY[0x277CE9658] sharedInstance];
  v12 = [v11 activeDSIDRecord];

  v13 = [v12 isDPIDManatee];
  if (v13)
  {
    v14 = @"DPID was previously stored as Manatee.";
  }

  else
  {
    v14 = @"DPID was not previously stored as Manatee.";
  }

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:v14];
  _ADLog();

  if (self->_isPrivateContainerSecure == v13)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Container type matches DPID type."];
    _ADLog();

    v17 = [MEMORY[0x277CE9658] sharedInstance];
    v18 = [v17 idForClientType:5];
    DPID = self->_DPID;
    self->_DPID = v18;
  }

  else
  {
    [(ADClientDPIDManager *)self setDPID:0];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Container type does not match DPID type. Creating a new DPID locally"];
    _ADLog();

    [(ADClientDPIDManager *)self setupLocalDPID];
  }

  v21 = MEMORY[0x277CCACA8];
  v22 = [(ADClientDPIDManager *)self supportsDeviceToDeviceEncryption];
  v23 = @"NO";
  if (v22)
  {
    v23 = @"YES";
  }

  v24 = [v21 stringWithFormat:@"iCloud container supportsDeviceToDeviceEncryption: %@", v23];
  _ADLog();

  [(ADClientDPIDManager *)self continueReconcileWithAccountStatus:a3 andError:v25 with:v8];
}

- (void)backupFlowForCloudKitWorkAtTime:(id)a3 with:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CE96B8] workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__ADClientDPIDManager_backupFlowForCloudKitWorkAtTime_with___block_invoke;
  v11[3] = &unk_278C57EB0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [v8 addOperationWithBlock:v11];
}

void __60__ADClientDPIDManager_backupFlowForCloudKitWorkAtTime_with___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [*(a1 + 32) AD_doubleDateTimeAsString];
  v4 = [v2 stringWithFormat:@"The backup flow started at %@ has been fired. Checking to see if we need to run.", v3];
  _ADLog();

  if ([*(a1 + 40) canContinueProcessing:*(a1 + 32)])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"We are still waiting for the iCloud Account Status. Continue with backup flow and provide an error so the DPID can be resolved later."];
    _ADLog();

    [*(a1 + 40) setDpidReconcileState:2];
    v6 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithAdCode:9 andDescription:@"Something went wrong while attempting to get the iCloud Account Status."];
    v7 = *(a1 + 48);
    v8 = v6;
    [*(a1 + 40) continueReconcileWithAccountStatus:0 andError:? with:?];
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"We are no longer waiting for the account status (%lu).", objc_msgSend(*(a1 + 40), "dpidReconcileState")];
    _ADLog();
  }
}

- (void)continueReconcileWithAccountStatus:(int64_t)a3 andError:(id)a4 with:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3 != 1 || v8)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"DPID reconcile - iCloud account not available accountStatus %ld", a3];
    _ADLog();

    [(ADClientDPIDManager *)self setupLocalDPID];
    [(ADClientDPIDManager *)self setDpidReconcileState:0];
    if (!v8)
    {
      [(ADClientDPIDManager *)self updateActiveRecordICloudDSID];
    }

    [(ADClientDPIDManager *)self finishOperation:0];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Done reconciling the DPID."];
    _ADLog();

    if (v9)
    {
      v9[2](v9, v8);
    }
  }

  else
  {
    if ([(ADClientDPIDManager *)self iCloudAccountSubscribed])
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"DPID reconcile - iCloud account already subscribed for push notifications. "];
      _ADLog();

      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __72__ADClientDPIDManager_continueReconcileWithAccountStatus_andError_with___block_invoke_3;
      v16[3] = &unk_278C57F78;
      v16[4] = self;
      v11 = &v17;
      v17 = v9;
      [(ADClientDPIDManager *)self retryIfNeeded:v16];
    }

    else
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"DPID reconcile - iCloud account not subscribed for push notifications. "];
      _ADLog();

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __72__ADClientDPIDManager_continueReconcileWithAccountStatus_andError_with___block_invoke;
      v18[3] = &unk_278C57F78;
      v18[4] = self;
      v11 = &v19;
      v19 = v9;
      [(ADClientDPIDManager *)self setupiCloudSubscription:v18];
    }

    [(ADClientDPIDManager *)self finishOperation:0];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Done reconciling the DPID."];
    _ADLog();
  }
}

void __72__ADClientDPIDManager_continueReconcileWithAccountStatus_andError_with___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    [*(a1 + 32) setDpidReconcileState:0];
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, v3);
    }
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __72__ADClientDPIDManager_continueReconcileWithAccountStatus_andError_with___block_invoke_2;
    v6[3] = &unk_278C57F78;
    v6[4] = v4;
    v7 = *(a1 + 40);
    [v4 syncDPIDWithiCloud:v6];
  }
}

uint64_t __72__ADClientDPIDManager_continueReconcileWithAccountStatus_andError_with___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"DPID sync failed with error: %@", v3];
    _ADLog();
  }

  else
  {
    [*(a1 + 32) updateActiveRecordICloudDSID];
  }

  [*(a1 + 32) setDpidReconcileState:0];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v7);
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __72__ADClientDPIDManager_continueReconcileWithAccountStatus_andError_with___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  [*(a1 + 32) setDpidReconcileState:0];
  if (!v5)
  {
    [*(a1 + 32) updateActiveRecordICloudDSID];
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v5);
  }

  return MEMORY[0x2821F96F8]();
}

- (void)handlePushNotification:(id)a3 completionHandler:(id)a4
{
  v4 = a4;
  v5 = [MEMORY[0x277CE96B8] workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__ADClientDPIDManager_handlePushNotification_completionHandler___block_invoke;
  v7[3] = &unk_278C57FC8;
  v8 = v4;
  v6 = v4;
  [v5 addOperationWithBlock:v7];
}

void __64__ADClientDPIDManager_handlePushNotification_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"DPID handlePushNotification"];
  _ADLog();

  v3 = [MEMORY[0x277CE9658] sharedInstance];
  [v3 prepareForPushNotification];

  v4 = [MEMORY[0x277CE9630] sharedInstance];
  [v4 setInteger:2 forKey:@"CKDPIDSyncState"];

  v5 = [MEMORY[0x277CE9658] sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__ADClientDPIDManager_handlePushNotification_completionHandler___block_invoke_2;
  v6[3] = &unk_278C57FA0;
  v7 = *(a1 + 32);
  [v5 reconcile:v6];
}

uint64_t __64__ADClientDPIDManager_handlePushNotification_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)resetDPID:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"DPID reset"];
  _ADLog();

  if ([(ADClientDPIDManager *)self canGenerateDPID])
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Resetting DPID Locally"];
    _ADLog();

    v7 = [(ADClientDPIDManager *)self generateDPID];
    [(ADClientDPIDManager *)self setDPID:v7];

    [(ADClientDPIDManager *)self setIsDPIDLocalTo:1];
    if ([(ADClientDPIDManager *)self shouldSyncDPID])
    {
      v8 = [(ADClientDPIDManager *)self DPID];
      [(ADClientDPIDManager *)self saveDPIDtoiCloud:v8 completionHandler:0];

      v9 = [MEMORY[0x277CE9630] sharedInstance];
      [v9 setInteger:0 forKey:@"CKDPIDSyncState"];
      goto LABEL_9;
    }

    v11 = MEMORY[0x277CCACA8];
    v12 = @"Not resetting DPID in iCloud";
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Removing DPID Locally"];
    _ADLog();

    [(ADClientDPIDManager *)self setDPID:0];
    [(ADClientDPIDManager *)self setIsDPIDLocalTo:0];
    if ([(ADClientDPIDManager *)self shouldSyncDPID])
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __33__ADClientDPIDManager_resetDPID___block_invoke;
      v13[3] = &unk_278C57FA0;
      v14 = v4;
      [(ADClientDPIDManager *)self removeDPIDfromiCloud:v13];

      goto LABEL_11;
    }

    v11 = MEMORY[0x277CCACA8];
    v12 = @"Not removing DPID from iCloud";
  }

  v9 = [v11 stringWithFormat:v12];
  _ADLog();
LABEL_9:

  if (v4)
  {
    (*(v4 + 2))(v4, 0);
  }

LABEL_11:
}

uint64_t __33__ADClientDPIDManager_resetDPID___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)isLoggedIntoiTunes
{
  v2 = [MEMORY[0x277CE9658] sharedInstance];
  v3 = [v2 activeDSIDRecord];

  v4 = [v3 DSID];
  if (v4)
  {
    v5 = [v3 DSID];
    v6 = [v5 isEqualToString:@"0"] ^ 1;
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"isLoggedIntoiTunes: DSID is NULL"];
    _ADLog();
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)primaryiCloudAccountAltDSID
{
  v2 = [MEMORY[0x277CE9638] sharedInstance];
  v3 = [v2 iCloudAccount];

  v4 = [MEMORY[0x277CF0130] sharedInstance];
  v5 = [v4 altDSIDForAccount:v3];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Primary account AltDSID %@", v5];
  _ADLog();

  return v5;
}

- (unint64_t)primaryiCloudAccountSecurityLevel
{
  v2 = [(ADClientDPIDManager *)self primaryiCloudAccountAltDSID];
  if ([v2 length])
  {
    v3 = [MEMORY[0x277CF0130] sharedInstance];
    v4 = [v3 authKitAccountWithAltDSID:v2];
    if (v4)
    {
      v5 = [v3 securityLevelForAccount:v4];
    }

    else
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not get account for altDSID %@", v2];
      _ADLog();

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isRestrictedByApple
{
  v2 = [MEMORY[0x277CE9658] sharedInstance];
  v3 = [v2 activeDSIDRecord];

  LOBYTE(v2) = [v3 isRestrictedByApple];
  return v2;
}

- (BOOL)devicePersonalizedAdsEnabled
{
  v2 = [MEMORY[0x277CE9638] sharedInstance];
  v3 = [v2 isPersonalizedAdsEnabled];

  return v3;
}

- (void)writeDPIDtoKeychain
{
  v3 = [MEMORY[0x277CE9658] sharedInstance];
  v4 = [v3 activeDSIDRecord];
  v5 = [v4 DSID];

  if (v5)
  {
    v23 = 0;
    v6 = GetKeychainPropertyListForKey();
    if (!v6)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"No DPID record found in keychain, creating new entry"];
      _ADLog();

      v6 = MEMORY[0x277CBEC10];
    }

    v8 = [v6 mutableCopy];
    v9 = [(ADClientDPIDManager *)self DPID];

    if (v9)
    {
      v10 = [MEMORY[0x277CE9658] sharedInstance];
      v11 = [MEMORY[0x277CE9648] initWithFlags:4];
      [v10 setReconcileOperations:v11];

      v12 = [MEMORY[0x277CBEB38] dictionary];
      v13 = [(ADClientDPIDManager *)self DPID];
      [v12 setObject:v13 forKeyedSubscript:@"ADClientDPIDRecordKey"];

      [v8 setObject:v12 forKeyedSubscript:v5];
    }

    else
    {
      [v8 removeObjectForKey:v5];
    }

    v22 = 0;
    v14 = [MEMORY[0x277CCAC58] dataWithPropertyList:v8 format:200 options:0 error:&v22];
    v15 = v22;
    v16 = v15;
    if (v15)
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = [v15 code];
      v19 = [v16 userInfo];
      v20 = [v17 stringWithFormat:@"Error serializing property list. Error %lu.\n%@", v18, v19];
      _ADLog();
    }

    else
    {
      v21 = ADWriteDataToKeychain();
      if (!v21)
      {
LABEL_12:

        goto LABEL_13;
      }

      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error writing DPID to keychain: %d", v21];
      _ADLog();
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (id)subscriptionIdentifier
{
  v3 = [MEMORY[0x277CE9638] sharedInstance];
  v4 = [v3 iCloudAccountIdentifier];

  if ([(ADClientDPIDManager *)self supportsDeviceToDeviceEncryption])
  {
    v5 = [v4 stringByAppendingString:@"-secure"];

    v4 = v5;
  }

  if ([(ADClientDPIDManager *)self sandboxEnvironment])
  {
    v6 = [v4 stringByAppendingString:@"-sandbox"];

    v4 = v6;
  }

  return v4;
}

- (BOOL)iCloudAccountSubscribed
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(ADClientDPIDManager *)v2 subscriptionIdentifier];
  if (v3)
  {
    v12 = 0;
    v4 = ADCopyDataFromKeychain();
    v5 = v4;
    if (!v4)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"No data to read from keychain for key %@.", @"ADClientiCloudSubscribedAccountsKey"];
      _ADLog();
      v9 = 0;
LABEL_12:

      goto LABEL_13;
    }

    v11 = 0;
    v6 = [MEMORY[0x277CCAC58] propertyListWithData:v4 options:0 format:0 error:&v11];
    v7 = v11;
    if (v7)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not read from keychain for %@. Error %ld", @"ADClientiCloudSubscribedAccountsKey", v12];
      _ADLog();
    }

    else if (v6)
    {
      v9 = [v6 containsObject:v3];
      goto LABEL_11;
    }

    v9 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v9 = 0;
LABEL_13:

  objc_sync_exit(v2);
  return v9;
}

- (void)setiCloudAccountSubscribed:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(ADClientDPIDManager *)v4 subscriptionIdentifier];
  if (v5)
  {
    v23 = 0;
    v6 = ADCopyDataFromKeychain();
    v7 = v6;
    if (v6)
    {
      v22 = 0;
      v8 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:0 error:&v22];
      v9 = v22;
      if (v9 || !v8)
      {
        v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      else
      {
        v10 = [v8 mutableCopy];
      }

      v12 = v10;
      if (v3)
      {
        if (([v10 containsObject:v5] & 1) == 0)
        {
          [v12 addObject:v5];
        }
      }

      else
      {
        [v10 removeObject:v5];
      }
    }

    else
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Nothing previously stored in keychain for key %@", @"ADClientiCloudSubscribedAccountsKey"];
      _ADLog();

      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v21 = 0;
    v13 = [MEMORY[0x277CCAC58] dataWithPropertyList:v12 format:200 options:0 error:&v21];
    v14 = v21;
    v15 = v14;
    if (v14)
    {
      v16 = MEMORY[0x277CCACA8];
      v17 = [v14 code];
      v18 = [v15 userInfo];
      v19 = [v16 stringWithFormat:@"Error serializing property list. Error %lu.\n%@", v17, v18];
      _ADLog();
    }

    else
    {
      v20 = ADWriteDataToKeychain();
      if (v20)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"Error writing ADClientiCloudSubscribedAccountsKey to keychain: %d", v20];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"Added subscribed iCloud account to keychain"];
      }
      v18 = ;
      _ADLog();
    }
  }

  objc_sync_exit(v4);
}

- (id)operationQueueLog
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(ADClientDPIDManager *)self operationsInProgress];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = +[ADClientDPIDManager DPIDOperationTypeToString:](ADClientDPIDManager, "DPIDOperationTypeToString:", [*(*(&v13 + 1) + 8 * i) integerValue]);
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 componentsJoinedByString:{@", "}];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)startOperation:(unint64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  v4 = [(ADClientDPIDManager *)obj operationsInProgress];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v4 addObject:v5];

  v6 = MEMORY[0x277CCACA8];
  v7 = [ADClientDPIDManager DPIDOperationTypeToString:a3];
  v8 = [v6 stringWithFormat:@"startOperation: %@", v7];
  _ADLog();

  v9 = MEMORY[0x277CCACA8];
  v10 = [(ADClientDPIDManager *)obj operationQueueLog];
  v11 = [v9 stringWithFormat:@"    operationsInProgress: %@", v10];
  _ADLog();

  objc_sync_exit(obj);
}

- (void)finishOperation:(unint64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  v4 = [(ADClientDPIDManager *)obj operationsInProgress];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v6 = [v4 containsObject:v5];

  if (v6)
  {
    v7 = [(ADClientDPIDManager *)obj operationsInProgress];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v9 = [v7 indexOfObject:v8];

    v10 = [(ADClientDPIDManager *)obj operationsInProgress];
    [v10 removeObjectAtIndex:v9];

    v11 = MEMORY[0x277CCACA8];
    v12 = [ADClientDPIDManager DPIDOperationTypeToString:a3];
    v13 = [v11 stringWithFormat:@"finishOperation: %@", v12];
    _ADLog();

    v14 = MEMORY[0x277CCACA8];
    v15 = [(ADClientDPIDManager *)obj operationQueueLog];
    [v14 stringWithFormat:@"    operationsInProgress: %@", v15];
  }

  else
  {
    v17 = MEMORY[0x277CCACA8];
    v15 = [ADClientDPIDManager DPIDOperationTypeToString:a3];
    [v17 stringWithFormat:@"******** Attempt to remove operation that wasn't present %@", v15];
  }
  v16 = ;
  _ADLog();

  objc_sync_exit(obj);
}

- (id)containerWithIDString:(id)a3
{
  if (self->_sandboxEnvironment)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = MEMORY[0x277CBC220];
  v5 = a3;
  v6 = [[v4 alloc] initWithContainerIdentifier:v5 environment:v3];

  v7 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v6];

  return v7;
}

- (id)secureContainer
{
  v3 = [(ADClientDPIDManager *)self containerWithIDString:@"com.apple.iad-cloudkit-secure"];
  [v3 setSourceApplicationBundleIdentifier:*MEMORY[0x277CE95D8]];
  self->_isPrivateContainerSecure = 1;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Created secure privateContainer %@ %@. isPrivateContainerSecure is %d.", @"com.apple.iad-cloudkit-secure", v3, 1];
  _ADLog();

  return v3;
}

- (id)insecureContainer
{
  v3 = [(ADClientDPIDManager *)self containerWithIDString:@"com.apple.iad-cloudkit"];
  [v3 setSourceApplicationBundleIdentifier:*MEMORY[0x277CE95D8]];
  self->_isPrivateContainerSecure = 0;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Created insecure privateContainer %@ %@. isPrivateContainerSecure is %d", @"com.apple.iad-cloudkit", v3, 0];;
  _ADLog();

  return v3;
}

- (void)setDPID:(id)a3
{
  v10 = a3;
  if (([(NSString *)self->_DPID isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_DPID, a3);
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Setting DPID to %@.", self->_DPID];
    _ADLog();

    [(ADClientDPIDManager *)self writeDPIDtoKeychain];
    v6 = [MEMORY[0x277CE9658] sharedInstance];
    v7 = [v6 activeDSIDRecord];

    if (v10)
    {
      [v7 setID:v10 forClientType:5];
      if ([(ADClientDPIDManager *)self supportsDeviceToDeviceEncryption])
      {
        v8 = v7;
        v9 = 1;
      }

      else
      {
        v8 = v7;
        v9 = 0;
      }

      [v8 setIsDPIDManatee:v9];
    }

    else
    {
      [v7 removeIDForClientType:5];
    }
  }
}

- (void)setupLocalDPID
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"setupLocalDPID:"];
  _ADLog();

  v4 = [(ADClientDPIDManager *)self canGenerateDPID];
  v5 = [(ADClientDPIDManager *)self DPID];
  v6 = v5;
  if (!v4)
  {

    if (!v6)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Keeping NULL DPID %@", self->_DPID];
      _ADLog();
      goto LABEL_10;
    }

    [(ADClientDPIDManager *)self setDPID:0];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Removing DPID locally."];
    _ADLog();

    [(ADClientDPIDManager *)self setIsDPIDLocalTo:0];
LABEL_8:
    v17 = [MEMORY[0x277CE9630] sharedInstance];
    [v17 setInteger:1 forKey:@"CKDPIDSyncState"];
    goto LABEL_10;
  }

  if (!v6)
  {
    [(ADClientDPIDManager *)self setIsDPIDLocalTo:1];
    v13 = [(ADClientDPIDManager *)self generateDPID];
    [(ADClientDPIDManager *)self setDPID:v13];

    v14 = MEMORY[0x277CCACA8];
    v15 = [(ADClientDPIDManager *)self DPID];
    v16 = [v14 stringWithFormat:@"Storing NEW DPID locally. %@.", v15];
    _ADLog();

    goto LABEL_8;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"DPID %@ Already exists, checking for isDPIDLocal flag", self->_DPID];
  _ADLog();

  v8 = [MEMORY[0x277CE9658] sharedInstance];
  v17 = [v8 activeDSIDRecord];

  v9 = [v17 isDPIDLocal];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"isDPIDLocal flag is %d", v9];
  _ADLog();

  if ((v9 & 1) == 0)
  {
    v11 = [(ADClientDPIDManager *)self generateDPID];
    [(ADClientDPIDManager *)self setDPID:v11];

    [(ADClientDPIDManager *)self setIsDPIDLocalTo:1];
  }

LABEL_10:
}

- (id)generateDPID
{
  v2 = [MEMORY[0x277CCAD78] UUID];
  v3 = [v2 UUIDString];
  v4 = [@"DPID-" stringByAppendingString:v3];

  return v4;
}

- (BOOL)shouldSyncDPID
{
  v2 = [MEMORY[0x277CE9638] sharedInstance];
  v3 = [v2 iCloudAccount];

  if (v3)
  {
    v4 = [MEMORY[0x277CE9658] sharedInstance];
    v5 = [v4 activeDSIDRecord];

    v6 = [v5 DSID];
    v7 = [MEMORY[0x277CE9638] sharedInstance];
    v8 = [v7 iCloudDSID];

    v9 = MEMORY[0x277CCACA8];
    v10 = [v8 isEqualToString:v6];
    v11 = @"NO";
    if (v10)
    {
      v11 = @"YES";
    }

    v12 = [v9 stringWithFormat:@"\nshouldSyncDPID:\t%@\niCloudDSID:\t%@\niTunesDSID:\t%@\n", v11, v8, v6];
    _ADLog();

    v13 = [v8 isEqualToString:v6];
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"shouldSyncDPID: No iCloud Account, not syncing"];
    _ADLog();
    v13 = 0;
  }

  return v13;
}

- (BOOL)canGenerateDPID
{
  v3 = [(ADClientDPIDManager *)self isLoggedIntoiTunes];
  v4 = [(ADClientDPIDManager *)self isRestrictedByApple];
  v5 = [(ADClientDPIDManager *)self devicePersonalizedAdsEnabled];
  v6 = v5 && !v4;
  v7 = @"NO";
  if (v3)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = v3 & v6;
  if ((v3 & v6) != 0)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (v4)
  {
    v11 = @"NO";
  }

  else
  {
    v11 = @"YES";
  }

  if (v5)
  {
    v7 = @"YES";
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"\nCan Generate DPID:\t\t%@\niTunes Logged In:\t\t%@\nNot Restricted By Apple:\t%@\nPersonalized Ads Enabled:\t\t\t%@", v10, v8, v11, v7];
  _ADLog();

  return v9;
}

- (void)retryIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CE9630] sharedInstance];
  v6 = [v5 integerForKey:@"CKDPIDSyncState"];

  if (v6 <= 1)
  {
    if (v6 == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Retrying DPID Sync", objc_opt_class()];
      _ADLog();

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __37__ADClientDPIDManager_retryIfNeeded___block_invoke;
      v17[3] = &unk_278C57FA0;
      v18 = v4;
      [(ADClientDPIDManager *)self syncDPIDWithiCloud:v17];
      v8 = v18;
      goto LABEL_9;
    }
  }

  else
  {
    switch(v6)
    {
      case 2:
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Retrying DPID Fetch", objc_opt_class()];
        _ADLog();

        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __37__ADClientDPIDManager_retryIfNeeded___block_invoke_3;
        v13[3] = &unk_278C57FF0;
        v13[4] = self;
        v14 = v4;
        [(ADClientDPIDManager *)self fetchDPIDfromiCloud:v13];
        v8 = v14;
        goto LABEL_9;
      case 3:
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Retrying DPID Save", objc_opt_class()];
        _ADLog();

        v12 = [(ADClientDPIDManager *)self DPID];
        [(ADClientDPIDManager *)self saveDPIDtoiCloud:v12 completionHandler:0];

        break;
      case 4:
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Retrying DPID Remove", objc_opt_class()];
        _ADLog();

        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __37__ADClientDPIDManager_retryIfNeeded___block_invoke_2;
        v15[3] = &unk_278C57FA0;
        v16 = v4;
        [(ADClientDPIDManager *)self removeDPIDfromiCloud:v15];
        v8 = v16;
LABEL_9:

        goto LABEL_13;
    }
  }

  if (v4)
  {
    (*(v4 + 2))(v4, 0);
  }

LABEL_13:
}

uint64_t __37__ADClientDPIDManager_retryIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Retry: Failed to sync DPID in iCloud with error: %@", v3];
    _ADLog();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v7);
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __37__ADClientDPIDManager_retryIfNeeded___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Retry: Failed to remove DPID record from iCloud with error: %@", v3];
    _ADLog();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v7);
  }

  return MEMORY[0x2821F96F8]();
}

void __37__ADClientDPIDManager_retryIfNeeded___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Retry: Failed to fetch DPID from iCloud with error: %@", v5];
    _ADLog();
  }

  else
  {
    [*(a1 + 32) setDPID:v8];
    [*(a1 + 32) setIsDPIDLocalTo:0];
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v5);
  }
}

- (void)resetEncryptedZone:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = [(ADClientDPIDManager *)self dpidReconcileStartDate];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Deleting inaccessible encrypted container"];
  _ADLog();

  v6 = [(ADClientDPIDManager *)self privateContainer];
  v7 = [v6 privateCloudDatabase];

  [(ADClientDPIDManager *)self startOperation:9];
  v8 = objc_alloc(MEMORY[0x277CBC490]);
  v9 = [(ADClientDPIDManager *)self zoneID];
  v20[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v11 = [v8 initWithRecordZonesToSave:0 recordZoneIDsToDelete:v10];

  [v11 setQualityOfService:{-[ADClientDPIDManager qualityOfService](self, "qualityOfService")}];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __42__ADClientDPIDManager_resetEncryptedZone___block_invoke;
  v17 = &unk_278C58040;
  v18 = self;
  v19 = v4;
  v12 = v4;
  [v11 setModifyRecordZonesCompletionBlock:&v14];
  [(ADClientDPIDManager *)self setDpidReconcileState:1, v14, v15, v16, v17, v18];
  [v7 addOperation:v11];

  v13 = *MEMORY[0x277D85DE8];
}

void __42__ADClientDPIDManager_resetEncryptedZone___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [MEMORY[0x277CE96B8] workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__ADClientDPIDManager_resetEncryptedZone___block_invoke_2;
  v12[3] = &unk_278C58018;
  v9 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v9;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  [v8 addOperationWithBlock:v12];
}

uint64_t __42__ADClientDPIDManager_resetEncryptedZone___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) canContinueProcessing:*(a1 + 40)])
  {
    [*(a1 + 32) setiCloudAccountSubscribed:0];
    [*(a1 + 32) setDpidReconcileState:2];
    v2 = MEMORY[0x277CCACA8];
    v3 = [*(a1 + 48) firstObject];
    [v2 stringWithFormat:@"Deleted DPID zone %@ with error %@.", v3, *(a1 + 56)];
  }

  else
  {
    v4 = MEMORY[0x277CCACA8];
    v3 = [*(a1 + 40) AD_doubleDateTimeAsString];
    [v4 stringWithFormat:@"We were unable to delete the encrypted zone in enough time. (Started at %@)", v3, v8];
  }
  v5 = ;
  _ADLog();

  v6 = *(a1 + 32);

  return [v6 finishOperation:9];
}

- (void)setupiCloudSubscription:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ADClientDPIDManager *)self dpidReconcileStartDate];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Beginning DPID Subscription Installation"];
  _ADLog();

  v7 = [(ADClientDPIDManager *)self privateContainer];
  v8 = [v7 privateCloudDatabase];

  if (v8)
  {
    [(ADClientDPIDManager *)self startOperation:1];
    v9 = objc_alloc(MEMORY[0x277CBC5E8]);
    v10 = [(ADClientDPIDManager *)self zoneID];
    v11 = [v9 initWithZoneID:v10];

    v12 = objc_alloc(MEMORY[0x277CBC490]);
    v25[0] = v11;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    v14 = [v12 initWithRecordZonesToSave:v13 recordZoneIDsToDelete:0];

    [v14 setQualityOfService:{-[ADClientDPIDManager qualityOfService](self, "qualityOfService")}];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __47__ADClientDPIDManager_setupiCloudSubscription___block_invoke;
    v20 = &unk_278C580B8;
    v21 = self;
    v22 = v5;
    v15 = v8;
    v23 = v15;
    v24 = v4;
    [v14 setModifyRecordZonesCompletionBlock:&v17];
    [(ADClientDPIDManager *)self setDpidReconcileState:1, v17, v18, v19, v20, v21];
    [v15 addOperation:v14];
  }

  else
  {
    [(ADClientDPIDManager *)self createErrorForPrivateDB:@"Unable to set up iCloud subscription due to missing iCloud container" completionHandler:v4];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __47__ADClientDPIDManager_setupiCloudSubscription___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [MEMORY[0x277CE96B8] workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__ADClientDPIDManager_setupiCloudSubscription___block_invoke_2;
  v12[3] = &unk_278C58090;
  v9 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v9;
  v14 = v6;
  v15 = v7;
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v10 = v7;
  v11 = v6;
  [v8 addOperationWithBlock:v12];
}

uint64_t __47__ADClientDPIDManager_setupiCloudSubscription___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) canContinueProcessing:*(a1 + 40)])
  {
    [*(a1 + 32) setDpidReconcileState:2];
    v2 = MEMORY[0x277CCACA8];
    v3 = [*(a1 + 48) firstObject];
    v4 = [v2 stringWithFormat:@"Created DPID zone %@ with error code %ld %@ ", v3, objc_msgSend(*(a1 + 56), "code"), *(a1 + 56)];
    _ADLog();

    if (*(a1 + 56))
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed To create DPID zone with error %@. Handling CloudKit error.", *(a1 + 56)];
      _ADLog();

      [*(a1 + 32) handleCloudKitError:*(a1 + 56)];
      v6 = *(a1 + 72);
      if (v6)
      {
        (*(v6 + 16))(v6, *(a1 + 56));
      }
    }

    else
    {
      v12 = objc_alloc(MEMORY[0x277CBC618]);
      v13 = [*(a1 + 32) zoneID];
      v14 = [v12 initWithZoneID:v13 subscriptionID:@"com.apple.AdSheetPhone.DPID.push.subscription"];

      if (!v14)
      {
        __47__ADClientDPIDManager_setupiCloudSubscription___block_invoke_2_cold_1();
      }

      v15 = objc_opt_new();
      [v15 setShouldSendContentAvailable:1];
      [v14 setNotificationInfo:v15];
      [*(a1 + 32) setDpidReconcileState:1];
      v16 = *(a1 + 64);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __47__ADClientDPIDManager_setupiCloudSubscription___block_invoke_3;
      v18[3] = &unk_278C58068;
      v17 = *(a1 + 40);
      v18[4] = *(a1 + 32);
      v19 = v17;
      v20 = *(a1 + 72);
      [v16 saveSubscription:v14 completionHandler:v18];
    }

    return [*(a1 + 32) finishOperation:1];
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [*(a1 + 40) AD_doubleDateTimeAsString];
    v9 = [v7 stringWithFormat:@"We were unable to Create a CloudKit zone to create a subscription in enough time. (Started at %@)", v8];
    _ADLog();

    v10 = *(a1 + 32);

    return [v10 finishOperation:1];
  }
}

void __47__ADClientDPIDManager_setupiCloudSubscription___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CE96B8] workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__ADClientDPIDManager_setupiCloudSubscription___block_invoke_4;
  v11[3] = &unk_278C57F28;
  v8 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v8;
  v13 = v6;
  v14 = v5;
  v15 = *(a1 + 48);
  v9 = v5;
  v10 = v6;
  [v7 addOperationWithBlock:v11];
}

uint64_t __47__ADClientDPIDManager_setupiCloudSubscription___block_invoke_4(uint64_t a1)
{
  if ([*(a1 + 32) canContinueProcessing:*(a1 + 40)])
  {
    [*(a1 + 32) setDpidReconcileState:2];
    v3 = *(a1 + 48);
    v2 = *(a1 + 56);
    if (v3)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed To create DPID subscription %@ with error %@.", *(a1 + 56), v3];
      _ADLog();
    }

    else
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Created DPID subscription %@ ", *(a1 + 56)];
      _ADLog();

      [*(a1 + 32) setiCloudAccountSubscribed:1];
    }

    result = *(a1 + 64);
    if (result)
    {
      v11 = *(a1 + 48);
      v12 = *(result + 16);

      return v12();
    }
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [*(a1 + 40) AD_doubleDateTimeAsString];
    v7 = [v5 stringWithFormat:@"We were unable to finish the CloudKit subscription process on time. (Started at %@)", v6];
    _ADLog();

    v8 = *(a1 + 32);

    return [v8 finishOperation:1];
  }

  return result;
}

- (void)teardowniCloudSubscription:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Beginning DPID Teardown action"];
  _ADLog();

  v6 = [(ADClientDPIDManager *)self privateContainer];
  v7 = [v6 privateCloudDatabase];

  if (v7)
  {
    [(ADClientDPIDManager *)self startOperation:2];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__ADClientDPIDManager_teardowniCloudSubscription___block_invoke;
    v8[3] = &unk_278C581A8;
    v8[4] = self;
    v10 = v4;
    v9 = v7;
    [v9 fetchAllSubscriptionsWithCompletionHandler:v8];
  }

  else
  {
    [(ADClientDPIDManager *)self createErrorForPrivateDB:@"Unable to tear down iCloud subscription due to missing iCloud container" completionHandler:v4];
  }
}

void __50__ADClientDPIDManager_teardowniCloudSubscription___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CE96B8] workQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__ADClientDPIDManager_teardowniCloudSubscription___block_invoke_2;
  v10[3] = &unk_278C58180;
  v11 = v6;
  v12 = v5;
  v13 = *(a1 + 32);
  v15 = *(a1 + 48);
  v14 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  [v7 addOperationWithBlock:v10];
}

uint64_t __50__ADClientDPIDManager_teardowniCloudSubscription___block_invoke_2(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    if ([*(a1 + 40) count])
    {
      v5 = objc_alloc(MEMORY[0x277CBC5E8]);
      v6 = [*(a1 + 48) zoneID];
      v7 = [v5 initWithZoneID:v6];

      v8 = objc_alloc(MEMORY[0x277CBC490]);
      v22[0] = v7;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
      v10 = [v8 initWithRecordZonesToSave:v9 recordZoneIDsToDelete:0];

      [v10 setQualityOfService:{objc_msgSend(*(a1 + 48), "qualityOfService")}];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __50__ADClientDPIDManager_teardowniCloudSubscription___block_invoke_3;
      v19[3] = &unk_278C580B8;
      v11 = *(a1 + 40);
      v12 = *(a1 + 56);
      v18 = *(a1 + 48);
      v13 = *(a1 + 64);
      *&v14 = v18;
      *(&v14 + 1) = v13;
      *&v15 = v11;
      *(&v15 + 1) = v12;
      v20 = v15;
      v21 = v14;
      [v10 setModifyRecordZonesCompletionBlock:v19];
      [*(a1 + 56) addOperation:v10];

      goto LABEL_6;
    }

    v2 = *(a1 + 32);
  }

  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"fetchAllSubscriptionsWithCompletionHandler subscriptions %@ error %@.", *(a1 + 40), v2];
  _ADLog();

  [*(a1 + 48) setiCloudAccountSubscribed:0];
  v4 = *(a1 + 64);
  if (v4)
  {
    (*(v4 + 16))(v4, *(a1 + 32));
  }

LABEL_6:
  result = [*(a1 + 48) finishOperation:2];
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void __50__ADClientDPIDManager_teardowniCloudSubscription___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CE96B8] workQueue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __50__ADClientDPIDManager_teardowniCloudSubscription___block_invoke_4;
  v19[3] = &unk_278C58158;
  v20 = v7;
  v21 = v8;
  v22 = v9;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v18 = *(a1 + 48);
  v13 = *(&v18 + 1);
  *&v14 = v11;
  *(&v14 + 1) = v12;
  v23 = v14;
  v24 = v18;
  v15 = v9;
  v16 = v8;
  v17 = v7;
  [v10 addOperationWithBlock:v19];
}

void __50__ADClientDPIDManager_teardowniCloudSubscription___block_invoke_4(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Saved DPID zone: savedRecordZones %@ deletedRecordZoneIDs %@ with error %@.", *(a1 + 32), *(a1 + 40), *(a1 + 48)];
  _ADLog();

  if (!*(a1 + 48))
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = *(a1 + 56);
    v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          v11 = *(a1 + 64);
          v12 = [v10 subscriptionID];
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __50__ADClientDPIDManager_teardowniCloudSubscription___block_invoke_5;
          v17[3] = &unk_278C58130;
          v13 = *(a1 + 72);
          v14 = *(a1 + 80);
          v17[4] = v10;
          v17[5] = v13;
          v20 = v14;
          v18 = *(a1 + 64);
          v19 = *(a1 + 48);
          [v11 deleteSubscriptionWithID:v12 completionHandler:v17];
        }

        v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }

    goto LABEL_14;
  }

  v3 = *(a1 + 80);
  if (!v3)
  {
LABEL_14:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  v4 = *(v3 + 16);
  v5 = *MEMORY[0x277D85DE8];

  v4();
}

void __50__ADClientDPIDManager_teardowniCloudSubscription___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x277CE96B8] workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__ADClientDPIDManager_teardowniCloudSubscription___block_invoke_6;
  v12[3] = &unk_278C58108;
  v12[4] = *(a1 + 32);
  v13 = v4;
  v11 = *(a1 + 40);
  v6 = *(a1 + 64);
  v7 = *(a1 + 48);
  *&v8 = *(a1 + 56);
  *(&v8 + 1) = v6;
  *&v9 = v11;
  *(&v9 + 1) = v7;
  v14 = v9;
  v15 = v8;
  v10 = v4;
  [v5 addOperationWithBlock:v12];
}

void __50__ADClientDPIDManager_teardowniCloudSubscription___block_invoke_6(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Deleted DPID subscription %@ with error %@.", *(a1 + 32), *(a1 + 40)];
  _ADLog();

  if (!*(a1 + 40))
  {
    [*(a1 + 48) setiCloudAccountSubscribed:0];
    v7 = objc_alloc(MEMORY[0x277CBC490]);
    v8 = [*(a1 + 48) zoneID];
    v14[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v10 = [v7 initWithRecordZonesToSave:0 recordZoneIDsToDelete:v9];

    [v10 setQualityOfService:{objc_msgSend(*(a1 + 48), "qualityOfService")}];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__ADClientDPIDManager_teardowniCloudSubscription___block_invoke_7;
    v12[3] = &unk_278C580E0;
    v13 = *(a1 + 72);
    [v10 setModifyRecordZonesCompletionBlock:v12];
    [*(a1 + 56) addOperation:v10];

    goto LABEL_7;
  }

  v3 = *(a1 + 72);
  if (!v3)
  {
LABEL_7:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  v4 = *(a1 + 64);
  v5 = *(v3 + 16);
  v6 = *MEMORY[0x277D85DE8];

  v5();
}

void __50__ADClientDPIDManager_teardowniCloudSubscription___block_invoke_7(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CE96B8] workQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__ADClientDPIDManager_teardowniCloudSubscription___block_invoke_8;
  v14[3] = &unk_278C57ED8;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = *(a1 + 32);
  v11 = v9;
  v12 = v8;
  v13 = v7;
  [v10 addOperationWithBlock:v14];
}

uint64_t __50__ADClientDPIDManager_teardowniCloudSubscription___block_invoke_8(void *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Deleted DPID zone: savedRecordZones %@ deletedRecordZoneIDs %@ with error %@.", a1[4], a1[5], a1[6]];
  _ADLog();

  result = a1[7];
  if (result)
  {
    v4 = a1[6];
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)createErrorForPrivateDB:(id)a3 completionHandler:(id)a4
{
  v8 = a4;
  v5 = MEMORY[0x277CCA9B8];
  v6 = a3;
  v7 = [[v5 alloc] initWithAdCode:9 andDescription:v6];

  [v7 AD_Log:@"DPIDLogging"];
  if (v8)
  {
    v8[2](v8, v7);
  }
}

- (id)conformDPIDToUseWithRecord:(id)a3 legacyRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 stringWithFormat:@"[%@] Found a migrated DPID record!", v11];
    v13 = v6;
LABEL_5:
    _ADLog();

    v16 = v13;
    if ([(ADClientDPIDManager *)self supportsDeviceToDeviceEncryption])
    {
      v17 = [v16 encryptedValuesByKey];
      v18 = [v17 objectForKeyedSubscript:@"DPID"];

      [MEMORY[0x277CCACA8] stringWithFormat:@"Reading encrypted DPID %@", v18];
    }

    else
    {
      v18 = [v16 objectForKeyedSubscript:@"DPID"];
      [MEMORY[0x277CCACA8] stringWithFormat:@"Reading unencrypted DPID %@", v18];
    }
    v19 = ;
    goto LABEL_9;
  }

  v14 = MEMORY[0x277CCACA8];
  if (v7)
  {
    v15 = objc_opt_class();
    v11 = NSStringFromClass(v15);
    v12 = [v14 stringWithFormat:@"[%@] Found a legacy DPID record!", v11];
    v13 = v8;
    goto LABEL_5;
  }

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"The error is real. No DPID found in iCloud. Returning nil DPID."];
  v16 = 0;
  v18 = 0;
LABEL_9:
  _ADLog();

  return v18;
}

- (void)fetchDPIDfromiCloud:(id)a3
{
  v27[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ADClientDPIDManager *)self dpidReconcileStartDate];
  if ([(ADClientDPIDManager *)self devicePersonalizedAdsEnabled])
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attempting to fetch the DPID from iCloud."];
    _ADLog();

    v7 = [MEMORY[0x277CE9630] sharedInstance];
    [v7 setInteger:2 forKey:@"CKDPIDSyncState"];

    [(ADClientDPIDManager *)self startOperation:5];
    v8 = [(ADClientDPIDManager *)self privateContainer];
    v9 = [v8 privateCloudDatabase];

    if (v9)
    {
      [(ADClientDPIDManager *)self setDpidReconcileState:1];
      v10 = objc_alloc(MEMORY[0x277CBC3E0]);
      v11 = [(ADClientDPIDManager *)self recordID];
      v27[0] = v11;
      v12 = [(ADClientDPIDManager *)self recordIDLegacy];
      v27[1] = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
      v14 = [v10 initWithRecordIDs:v13];

      [v14 setQualityOfService:{-[ADClientDPIDManager qualityOfService](self, "qualityOfService")}];
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __43__ADClientDPIDManager_fetchDPIDfromiCloud___block_invoke_2;
      v21 = &unk_278C581D0;
      v22 = self;
      v23 = v5;
      v24 = v4;
      [v14 setFetchRecordsCompletionBlock:&v18];
      [v9 addOperation:{v14, v18, v19, v20, v21, v22}];
    }

    else
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __43__ADClientDPIDManager_fetchDPIDfromiCloud___block_invoke;
      v25[3] = &unk_278C57F78;
      v25[4] = self;
      v26 = v4;
      [(ADClientDPIDManager *)self createErrorForPrivateDB:@"Unable to fetch iCloud DPID due to missing iCloud container" completionHandler:v25];
    }
  }

  else
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"fetchDPIDfromiCloud: Personalized Ads is disabled, not fetching"];
    _ADLog();

    v16 = [MEMORY[0x277CE9630] sharedInstance];
    [v16 setInteger:0 forKey:@"CKDPIDSyncState"];

    if (v4)
    {
      (*(v4 + 2))(v4, 0, 0, 0);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __43__ADClientDPIDManager_fetchDPIDfromiCloud___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) finishOperation:5];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, 0, v4, 0);
  }
}

void __43__ADClientDPIDManager_fetchDPIDfromiCloud___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CE96B8] workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__ADClientDPIDManager_fetchDPIDfromiCloud___block_invoke_3;
  v11[3] = &unk_278C57F28;
  v8 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v8;
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 48);
  v9 = v6;
  v10 = v5;
  [v7 addOperationWithBlock:v11];
}

void __43__ADClientDPIDManager_fetchDPIDfromiCloud___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) canContinueProcessing:*(a1 + 40)])
  {
    [*(a1 + 32) setDpidReconcileState:2];
    v2 = *(a1 + 48);
    v3 = [*(a1 + 32) recordID];
    v25 = [v2 objectForKeyedSubscript:v3];

    v4 = *(a1 + 48);
    v5 = [*(a1 + 32) recordIDLegacy];
    v6 = [v4 objectForKeyedSubscript:v5];

    v7 = *(a1 + 56);
    if (v7)
    {
      v8 = [v7 code];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"iCloud returned an error fetching records: %@ code %ld. Checking if there is an actual error.", v7, v8];
      _ADLog();

      if (v8 == 11 || v8 == 2)
      {

        v10 = [*(a1 + 32) conformDPIDToUseWithRecord:v25 legacyRecord:v6];
        v11 = v10;
        if (v6)
        {
          v12 = v10 == 0;
        }

        else
        {
          v12 = 1;
        }

        v14 = !v12 && v25 == 0;
        v15 = [MEMORY[0x277CE9630] sharedInstance];
        [v15 setInteger:0 forKey:@"CKDPIDSyncState"];

        v7 = 0;
        goto LABEL_26;
      }

      [*(a1 + 32) handleCloudKitError:*(a1 + 56)];
    }

    else
    {
      if (v25)
      {
        if ([*(a1 + 32) supportsDeviceToDeviceEncryption])
        {
          v20 = [v25 encryptedValuesByKey];
          v11 = [v20 objectForKeyedSubscript:@"DPID"];

          [MEMORY[0x277CCACA8] stringWithFormat:@"Reading encrypted DPID %@", v11];
        }

        else
        {
          v11 = [v25 objectForKeyedSubscript:@"DPID"];
          [MEMORY[0x277CCACA8] stringWithFormat:@"Reading unencrypted DPID %@", v11];
        }
        v22 = ;
        _ADLog();

        v23 = [MEMORY[0x277CE9630] sharedInstance];
        [v23 setInteger:0 forKey:@"CKDPIDSyncState"];

        v7 = 0;
        v14 = 0;
        goto LABEL_26;
      }

      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"iCloud Returned no error but failed to fetch record, please file a radar."];
      _ADLog();

      v7 = 0;
    }

    v14 = 0;
    v11 = 0;
LABEL_26:
    [*(a1 + 32) finishOperation:5];
    v24 = *(a1 + 64);
    if (v24)
    {
      (*(v24 + 16))(v24, v11, v7, v14);
    }

    return;
  }

  v16 = MEMORY[0x277CCACA8];
  v17 = [*(a1 + 40) AD_doubleDateTimeAsString];
  v18 = [v16 stringWithFormat:@"We were unable to fetch the record in time. (Started at %@)", v17];
  _ADLog();

  v19 = *(a1 + 32);

  [v19 finishOperation:5];
}

- (void)removeDPIDfromiCloud:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Beginning DPID Remove action"];
  _ADLog();

  v6 = [(ADClientDPIDManager *)self privateContainer];
  v7 = [v6 privateCloudDatabase];

  if (v7)
  {
    v8 = [MEMORY[0x277CE9630] sharedInstance];
    [v8 setInteger:4 forKey:@"CKDPIDSyncState"];

    [(ADClientDPIDManager *)self startOperation:8];
    if (v4)
    {
      v4[2](v4, 0);
    }

    v9 = objc_alloc(MEMORY[0x277CBC4A0]);
    v10 = [(ADClientDPIDManager *)self recordID];
    v15[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v12 = [v9 initWithRecordsToSave:MEMORY[0x277CBEBF8] recordIDsToDelete:v11];

    [v12 setQualityOfService:{-[ADClientDPIDManager qualityOfService](self, "qualityOfService")}];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __44__ADClientDPIDManager_removeDPIDfromiCloud___block_invoke;
    v14[3] = &unk_278C58220;
    v14[4] = self;
    [v12 setModifyRecordsCompletionBlock:v14];
    [v7 addOperation:v12];
  }

  else
  {
    [(ADClientDPIDManager *)self createErrorForPrivateDB:@"Unable to remove iCloud DPID due to missing iCloud container" completionHandler:v4];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __44__ADClientDPIDManager_removeDPIDfromiCloud___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [MEMORY[0x277CE96B8] workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__ADClientDPIDManager_removeDPIDfromiCloud___block_invoke_2;
  v9[3] = &unk_278C581F8;
  v7 = *(a1 + 32);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v6 addOperationWithBlock:v9];
}

uint64_t __44__ADClientDPIDManager_removeDPIDfromiCloud___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to remove DPID record in iCloud with error: %@", v2];
    _ADLog();
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Removed DPID record in iCloud for current user."];
    _ADLog();

    v3 = [MEMORY[0x277CE9630] sharedInstance];
    [v3 setInteger:0 forKey:@"CKDPIDSyncState"];
  }

  v5 = *(a1 + 40);

  return [v5 finishOperation:8];
}

- (void)handleCloudKitError:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 code];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] handleCloudKitError. error code %ld", objc_opt_class(), v5];
  _ADLog();

  if (v5 == 5008)
  {
    v7 = @"We need to wait and try again later because of CKErrorInternalUnsyncedKeychain";
  }

  else
  {
    if (v5 != 5006)
    {
      goto LABEL_6;
    }

    v7 = @"We have attempted to use an encrypted container on a non HSA2 account CKErrorInternaliCDPRequired, please file a radar.";
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:v7];
  _ADLog();

LABEL_6:
  v9 = [v4 domain];
  v10 = *MEMORY[0x277CBBF50];
  v11 = [v9 isEqualToString:*MEMORY[0x277CBBF50]];

  v12 = MEMORY[0x277CCACA8];
  if (v11)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Correctly identified as cloudkit domain"];
    _ADLog();

    if (v5 == 2)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got error code as CKErrorPartialFailure. Need to get the exact reason for partial failure."];
      _ADLog();

      v18 = [v4 userInfo];
      v19 = [v18 objectForKey:*MEMORY[0x277CBBFB0]];

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = v19;
      v20 = [v19 allValues];
      v21 = [v20 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v33;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v33 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v32 + 1) + 8 * i);
            v26 = [v25 domain];
            if ([v26 isEqualToString:v10])
            {
              v27 = [v25 code];

              if (v27 == 112)
              {
                v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Found error code as CKErrorPrivateMissingManateeIdentity"];
                _ADLog();

                goto LABEL_23;
              }
            }

            else
            {
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v22);
      }
    }

    else if (v5 == 112)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got error code as CKErrorPrivateMissingManateeIdentity"];
      _ADLog();

LABEL_23:
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"We need to delete and re-create the zone due to CKErrorPrivateMissingManateeIdentity"];
      _ADLog();

      [(ADClientDPIDManager *)self resetEncryptedZone:&__block_literal_global_488];
    }
  }

  else
  {
    v15 = [v4 domain];
    v16 = [v12 stringWithFormat:@"Incorrectly identified domain. Domain is %@", v15];
    _ADLog();
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __43__ADClientDPIDManager_handleCloudKitError___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error resetting Encrypted zone %@, please file a radar.", a2];
    _ADLog();
  }
}

- (void)saveDPIDtoiCloud:(id)a3 completionHandler:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Beginning DPID Save action"];
  _ADLog();

  v9 = [MEMORY[0x277CE9630] sharedInstance];
  [v9 setInteger:3 forKey:@"CKDPIDSyncState"];

  v10 = [(ADClientDPIDManager *)self privateContainer];
  v11 = [v10 privateCloudDatabase];

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CBC5A0]);
    v13 = [(ADClientDPIDManager *)self recordID];
    v14 = [v12 initWithRecordType:@"DPIDRecord" recordID:v13];

    if ([(ADClientDPIDManager *)self supportsDeviceToDeviceEncryption])
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Writing encrypted DPID %@", v6];
      _ADLog();

      v16 = [v14 encryptedValuesByKey];
      [v16 setObject:v6 forKeyedSubscript:@"DPID"];
    }

    else
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Writing unencrypted DPID %@", v6];
      _ADLog();

      [v14 setObject:v6 forKeyedSubscript:@"DPID"];
    }

    [(ADClientDPIDManager *)self startOperation:7];
    v18 = objc_alloc(MEMORY[0x277CBC4A0]);
    v24[0] = v14;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v20 = [v18 initWithRecordsToSave:v19 recordIDsToDelete:0];

    [v20 setSavePolicy:1];
    [v20 setQualityOfService:{-[ADClientDPIDManager qualityOfService](self, "qualityOfService")}];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __58__ADClientDPIDManager_saveDPIDtoiCloud_completionHandler___block_invoke;
    v22[3] = &unk_278C58268;
    v22[4] = self;
    v23 = v7;
    [v20 setModifyRecordsCompletionBlock:v22];
    [v11 addOperation:v20];
  }

  else
  {
    [(ADClientDPIDManager *)self createErrorForPrivateDB:@"Unable to save iCloud DPID due to missing iCloud container" completionHandler:v7];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __58__ADClientDPIDManager_saveDPIDtoiCloud_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [MEMORY[0x277CE96B8] workQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__ADClientDPIDManager_saveDPIDtoiCloud_completionHandler___block_invoke_2;
  v10[3] = &unk_278C57EB0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v5;
  v12 = v7;
  v13 = v8;
  v9 = v5;
  [v6 addOperationWithBlock:v10];
}

uint64_t __58__ADClientDPIDManager_saveDPIDtoiCloud_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to save DPID record to iCloud with error: %@", v2];
    _ADLog();

    [*(a1 + 40) handleCloudKitError:*(a1 + 32)];
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Updated DPID record in iCloud"];
    _ADLog();

    v5 = [MEMORY[0x277CE9630] sharedInstance];
    [v5 setInteger:0 forKey:@"CKDPIDSyncState"];

    [*(a1 + 40) setIsDPIDLocalTo:0];
  }

  [*(a1 + 40) finishOperation:7];
  result = *(a1 + 48);
  if (result)
  {
    v7 = *(a1 + 32);
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

- (void)syncDPIDWithiCloud:(id)a3
{
  v4 = a3;
  [(ADClientDPIDManager *)self startOperation:4];
  v5 = [MEMORY[0x277CE9630] sharedInstance];
  [v5 setInteger:1 forKey:@"CKDPIDSyncState"];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__ADClientDPIDManager_syncDPIDWithiCloud___block_invoke;
  v7[3] = &unk_278C57FF0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(ADClientDPIDManager *)self fetchDPIDfromiCloud:v7];
}

void __42__ADClientDPIDManager_syncDPIDWithiCloud___block_invoke(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  if (v8)
  {
    [*(a1 + 32) finishOperation:4];
    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = *(v9 + 16);
LABEL_15:
      v10();
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (!v7)
  {
    goto LABEL_7;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"syncDPIDWithiCloud: Downloaded DPID %@", v7];
  _ADLog();

  [*(a1 + 32) setDPID:v7];
  [*(a1 + 32) setIsDPIDLocalTo:0];
  v12 = MEMORY[0x277CCACA8];
  v13 = *(a1 + 32);
  v14 = objc_opt_class();
  if (a4)
  {
    v15 = [v12 stringWithFormat:@"[%@] The DPID requires migration to the new iCloud container", v14];
    _ADLog();

LABEL_7:
    if ([*(a1 + 32) canGenerateDPID])
    {
      if (!v7 || (a4 & 1) == 0)
      {
        v16 = [*(a1 + 32) generateDPID];
        [*(a1 + 32) setDPID:v16];

        [*(a1 + 32) setIsDPIDLocalTo:1];
      }

      v17 = *(a1 + 32);
      v18 = [v17 DPID];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __42__ADClientDPIDManager_syncDPIDWithiCloud___block_invoke_2;
      v23[3] = &unk_278C57F78;
      v19 = *(a1 + 40);
      v23[4] = *(a1 + 32);
      v24 = v19;
      [v17 saveDPIDtoiCloud:v18 completionHandler:v23];

      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v20 = [v12 stringWithFormat:@"[%@] No migration required. Done syncing with iCloud.", v14];
  _ADLog();

  v21 = [MEMORY[0x277CE9630] sharedInstance];
  [v21 setInteger:0 forKey:@"CKDPIDSyncState"];

LABEL_13:
  [*(a1 + 32) finishOperation:4];
  v22 = *(a1 + 40);
  if (v22)
  {
    v10 = *(v22 + 16);
    goto LABEL_15;
  }

LABEL_16:
}

void __42__ADClientDPIDManager_syncDPIDWithiCloud___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [MEMORY[0x277CE9630] sharedInstance];
  if (v7)
  {
    [v3 setInteger:3 forKey:@"CKDPIDSyncState"];
  }

  else
  {
    [v3 setInteger:0 forKey:@"CKDPIDSyncState"];

    v4 = MEMORY[0x277CCACA8];
    v3 = [*(a1 + 32) DPID];
    v5 = [v4 stringWithFormat:@"syncDPIDWithiCloud: Uploaded new DPID %@", v3];
    _ADLog();
  }

  [*(a1 + 32) finishOperation:4];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }
}

- (void)reconcileDPID:(void *)a1 .cold.1(void *a1)
{
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] We have gotten into an impossible state (%lu). We are going to crash now. Goodbye.", objc_opt_class(), objc_msgSend(a1, "dpidReconcileState")];
  _ADLog();

  __assert_rtn("[ADClientDPIDManager reconcileDPID:]", "ADClientDPIDManager.m", 257, "false");
}

@end