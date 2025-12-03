@interface ADIDManager(Private)
+ (uint64_t)initialize;
- (BOOL)scheduleReconciliation:()Private;
- (id)init;
- (id)save;
- (id)saveAndNotifyIfNecessary;
- (uint64_t)reconcileInProgress;
- (uint64_t)runTask:()Private;
- (uint64_t)scheduleDailyUpdate;
- (uint64_t)setReconcileOperations:()Private;
- (void)cancelPendingReconcile;
- (void)checkOnTask:()Private activity:;
- (void)deleteRecords:()Private;
- (void)finishedReconciling:()Private withError:;
- (void)handleAccountChange:()Private;
- (void)incrementMonthlyResetCount;
- (void)notifyActiveRecordChanged;
- (void)performOperationAfterReconcile:()Private;
- (void)performOperationWhenNotReconciling:()Private;
- (void)prepareForPushNotification;
- (void)reconcile:()Private;
- (void)rotateAccountToken;
- (void)saveDataForPCD;
- (void)setDSID:()Private completionHandler:;
- (void)updateAccountData:()Private;
@end

@implementation ADIDManager(Private)

- (void)saveDataForPCD
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Saving latest accounts data for promotedcontentd."];
  _ADLog();

  activeDSIDRecord = [self activeDSIDRecord];
  idAccountsDictionaryRepresentation = [activeDSIDRecord idAccountsDictionaryRepresentation];
  ADSaveToPromotedContentKeychain();
  [self notifyActiveRecordChanged];
}

- (void)notifyActiveRecordChanged
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"Active record changed. Posting %@", @"kADIDManager_ChangedNotification"];
  _ADLog();

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter postNotificationName:@"kADIDManager_ChangedNotification" object:*MEMORY[0x277CE95A8]];
}

+ (uint64_t)initialize
{
  _reconcileRetryCount = 0;
  _reconcileOperations = objc_alloc_init(MEMORY[0x277CE9648]);

  return MEMORY[0x2821F96F8]();
}

- (id)init
{
  v16.receiver = self;
  v16.super_class = &off_28510FAA0;
  v1 = objc_msgSendSuper2(&v16, sel_init);
  if (v1)
  {
    v2 = _reconcileWatchdogToken;
    _reconcileWatchdogToken = 0;

    array = [MEMORY[0x277CBEB18] array];
    v4 = _postReconcileOperations;
    _postReconcileOperations = array;

    [MEMORY[0x277CE9600] registerTaskDelegate:v1 forRequestID:@"com.apple.ap.adprivacyd.reconcile"];
    [MEMORY[0x277CE9600] registerTaskDelegate:v1 forRequestID:@"com.apple.ap.adprivacyd.rotateDeviceNewsPlusSubscriberID"];
    mEMORY[0x277CE9638] = [MEMORY[0x277CE9638] sharedInstance];
    unitTesting = [mEMORY[0x277CE9638] unitTesting];

    if (unitTesting)
    {
      mEMORY[0x277CE9600]2 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Check On Task has been disabled. If you see this outside of unit tests, Please file a radar..."];
      _ADLog();
    }

    else
    {
      mEMORY[0x277CE9600] = [MEMORY[0x277CE9600] sharedInstance];
      [mEMORY[0x277CE9600] checkOnTask:@"com.apple.ap.adprivacyd.reconcile"];

      mEMORY[0x277CE9600]2 = [MEMORY[0x277CE9600] sharedInstance];
      [mEMORY[0x277CE9600]2 checkOnTask:@"com.apple.ap.adprivacyd.rotateDeviceNewsPlusSubscriberID"];
    }

    if (MGGetBoolAnswer())
    {
      defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
      v10 = *MEMORY[0x277CE95A8];
      mainQueue = [MEMORY[0x277CCABD8] mainQueue];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __28__ADIDManager_Private__init__block_invoke;
      v14[3] = &unk_278C57E38;
      v15 = v1;
      v12 = [defaultCenter addObserverForName:@"ClearMonthlyResetCount" object:v10 queue:mainQueue usingBlock:v14];
    }
  }

  return v1;
}

- (void)setDSID:()Private completionHandler:
{
  v6 = a3;
  v7 = a4;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__0;
  v13[4] = __Block_byref_object_dispose__0;
  v14 = [v6 copy];
  workQueue = [MEMORY[0x277CE96B8] workQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__ADIDManager_Private__setDSID_completionHandler___block_invoke;
  v10[3] = &unk_278C583F0;
  v10[4] = self;
  v12 = v13;
  v9 = v7;
  v11 = v9;
  [workQueue addOperationWithBlock:v10];

  _Block_object_dispose(v13, 8);
}

- (void)prepareForPushNotification
{
  activeDSIDRecord = [self activeDSIDRecord];
  [activeDSIDRecord setSegmentDataTimestamp:1];
}

- (void)deleteRecords:()Private
{
  v4 = a3;
  if (v4)
  {
    workQueue = [MEMORY[0x277CE96B8] workQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __38__ADIDManager_Private__deleteRecords___block_invoke;
    v6[3] = &unk_278C57E60;
    v6[4] = self;
    v7 = v4;
    [workQueue addOperationWithBlock:v6];
  }
}

- (void)incrementMonthlyResetCount
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2592000.0];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  v18[3] = v5;
  monthlyResetArray = [self monthlyResetArray];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __50__ADIDManager_Private__incrementMonthlyResetCount__block_invoke;
  v15 = &unk_278C58418;
  v17 = v18;
  v7 = v2;
  v16 = v7;
  [monthlyResetArray enumerateObjectsUsingBlock:&v12];

  v8 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceReferenceDate];
  v10 = [v8 numberWithDouble:?];
  [v7 addObject:v10];

  v11 = [MEMORY[0x277CBEA60] arrayWithArray:v7];
  [self setMonthlyResetArray:v11];

  _Block_object_dispose(v18, 8);
}

- (id)save
{
  v50 = *MEMORY[0x277D85DE8];
  activeDSIDRecord = [self activeDSIDRecord];

  if (activeDSIDRecord)
  {
    activeDSIDRecord2 = [self activeDSIDRecord];
    if (activeDSIDRecord2 && ([self activeDSIDRecord], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "dirty"), v4, activeDSIDRecord2, !v5))
    {
      v21 = 0;
    }

    else
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      activeDSIDRecord3 = [selfCopy activeDSIDRecord];
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.adprivacyd [%@ save] starting", objc_opt_class()];
      takeXPCTransaction();
      v44 = v8;
      mEMORY[0x277CE9658] = [MEMORY[0x277CE9658] sharedInstance];
      getDSIDDicFromStorage = [mEMORY[0x277CE9658] getDSIDDicFromStorage];
      v11 = [getDSIDDicFromStorage mutableCopy];

      if (!v11)
      {
        v12 = objc_alloc(MEMORY[0x277CBEB38]);
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 3];
        v11 = [v12 initWithObjectsAndKeys:{v13, @"iAdIDRecordsVersion", 0}];
      }

      v14 = [v11 valueForKey:@"kADiAdIDManager_RecordsKey"];
      v15 = [v14 mutableCopy];

      if (!v15)
      {
        v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      dSID = [activeDSIDRecord3 DSID];
      v17 = [v15 valueForKey:dSID];

      v18 = MEMORY[0x277CCACA8];
      dSID2 = [activeDSIDRecord3 DSID];
      if (v17)
      {
        [v18 stringWithFormat:@"Overwriting existing DSID record for %@.", dSID2];
      }

      else
      {
        [v18 stringWithFormat:@"Writing new record for DSID %@.", dSID2];
      }
      v20 = ;
      _ADLog();

      dictionaryRepresentation = [activeDSIDRecord3 dictionaryRepresentation];
      dSID3 = [activeDSIDRecord3 DSID];
      [v15 setObject:dictionaryRepresentation forKeyedSubscript:dSID3];

      [v11 setObject:v15 forKeyedSubscript:@"kADiAdIDManager_RecordsKey"];
      monthlyResetArray = [selfCopy monthlyResetArray];
      v25 = [monthlyResetArray copy];
      [v11 setObject:v25 forKeyedSubscript:@"kADiADIDMonthResetKey"];

      mEMORY[0x277CE9658]2 = [MEMORY[0x277CE9658] sharedInstance];
      LOBYTE(v20) = [mEMORY[0x277CE9658]2 setDSIDDicToStorage:v11];

      [selfCopy saveDataForPCD];
      v27 = MEMORY[0x277CCABB0];
      monthlyResetArray2 = [selfCopy monthlyResetArray];
      v29 = [v27 numberWithUnsignedLong:{objc_msgSend(monthlyResetArray2, "count")}];

      ADSaveToPromotedContentKeychain();
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"monthlyIDResetCount is %d.", objc_msgSend(v29, "intValue")];
      _ADLog();

      releaseXPCTransaction();
      if (v20)
      {
        [activeDSIDRecord3 setDirty:0];
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        aDIDRecords = [activeDSIDRecord3 ADIDRecords];
        allValues = [aDIDRecords allValues];

        v33 = [allValues countByEnumeratingWithState:&v45 objects:v49 count:16];
        if (v33)
        {
          v34 = *v46;
          do
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v46 != v34)
              {
                objc_enumerationMutation(allValues);
              }

              [*(*(&v45 + 1) + 8 * i) setDirty:0];
            }

            v33 = [allValues countByEnumeratingWithState:&v45 objects:v49 count:16];
          }

          while (v33);
        }

        v36 = v44;
        v21 = 0;
      }

      else
      {
        v21 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithAdCode:0 andDescription:@"Error writing DSID record to keychain."];
        if (v21)
        {
          v37 = MEMORY[0x277CCACA8];
          dSID4 = [activeDSIDRecord3 DSID];
          code = [v21 code];
          localizedDescription = [v21 localizedDescription];
          v41 = [v37 stringWithFormat:@"Failed to save DSID record for %@ to keychain with error %ld: %@", dSID4, code, localizedDescription];
          _ADLog();
        }

        v36 = v44;
      }

      objc_sync_exit(selfCopy);
    }
  }

  else
  {
    v21 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithAdCode:0 andDescription:{@"Aborting save, no DSID record."}];
    [v21 AD_Log:@"iAdIDLogging"];
  }

  v42 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)saveAndNotifyIfNecessary
{
  activeDSIDRecord = [self activeDSIDRecord];
  shouldSendNotification = [activeDSIDRecord shouldSendNotification];

  save = [self save];
  if (!save && shouldSendNotification)
  {
    [self notifyActiveRecordChanged];
    activeDSIDRecord2 = [self activeDSIDRecord];
    [activeDSIDRecord2 setNotificationRequired:0];
  }

  return save;
}

- (void)performOperationWhenNotReconciling:()Private
{
  v7 = a3;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (_reconcileInProgress == 1)
  {
    v5 = _postReconcileOperations;
    workQueue = MEMORY[0x23EF10BF0](v7);
    [v5 addObject:workQueue];
  }

  else
  {
    workQueue = [MEMORY[0x277CE96B8] workQueue];
    [workQueue addOperationWithBlock:v7];
  }

  objc_sync_exit(selfCopy);
}

- (void)performOperationAfterReconcile:()Private
{
  v7 = a3;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = _postReconcileOperations;
  v6 = MEMORY[0x23EF10BF0](v7);
  [v5 addObject:v6];

  objc_sync_exit(selfCopy);
}

- (void)finishedReconciling:()Private withError:
{
  v52 = *MEMORY[0x277D85DE8];
  v44 = a3;
  v45 = a4;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _reconcileInProgress = 0;
  objc_sync_exit(selfCopy);

  activeDSIDRecord = [selfCopy activeDSIDRecord];
  dSID = [activeDSIDRecord DSID];

  saveAndNotifyIfNecessary = [selfCopy saveAndNotifyIfNecessary];
  if (saveAndNotifyIfNecessary)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Error %ld saving the record to the keychain. We will retry...", objc_opt_class(), objc_msgSend(saveAndNotifyIfNecessary, "code")];
    _ADLog();

LABEL_5:
    ++_reconcileRetryCount;
    v16 = RequestRetryDelay();
    goto LABEL_6;
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = v11;
  if (v45)
  {
    code = [v45 code];
    localizedDescription = [v45 localizedDescription];
    v15 = [v10 stringWithFormat:@"[%@]: Error %ld reconciling DSID record: %@", v12, code, localizedDescription];
    _ADLog();

    [selfCopy logIDs:@"IDs after failed reconcile:"];
    goto LABEL_5;
  }

  v36 = [v10 stringWithFormat:@"[%@]: Successfully reconciled DSID record for DSID %@", v11, dSID];
  _ADLog();

  [selfCopy logIDs:@"Final reconciled IDs:"];
  _reconcileRetryCount = 0;
  activeDSIDRecord2 = [selfCopy activeDSIDRecord];
  segmentDataTimestamp = [activeDSIDRecord2 segmentDataTimestamp];
  mEMORY[0x277CE9638] = [MEMORY[0x277CE9638] sharedInstance];
  segmentRetrievalInterval = [mEMORY[0x277CE9638] segmentRetrievalInterval];
  date = [MEMORY[0x277CBEAA8] date];
  segmentRetrievalInterval2 = segmentRetrievalInterval + segmentDataTimestamp - [date AD_toServerTime];

  if (segmentRetrievalInterval2 < 0)
  {
    mEMORY[0x277CE9638]2 = [MEMORY[0x277CE9638] sharedInstance];
    segmentRetrievalInterval2 = [mEMORY[0x277CE9638]2 segmentRetrievalInterval];
  }

  v16 = segmentRetrievalInterval2;
LABEL_6:
  [selfCopy scheduleReconciliation:v16];
  if (dSID)
  {
    mEMORY[0x277CE9638]3 = [MEMORY[0x277CE9638] sharedInstance];
    iTunesAccountDSID = [mEMORY[0x277CE9638]3 iTunesAccountDSID];
    v19 = [iTunesAccountDSID isEqualToString:dSID];

    if ((v19 & 1) == 0)
    {
      v20 = MEMORY[0x277CCACA8];
      v21 = objc_opt_class();
      mEMORY[0x277CE9638]4 = [MEMORY[0x277CE9638] sharedInstance];
      iTunesAccountDSID2 = [mEMORY[0x277CE9638]4 iTunesAccountDSID];
      v24 = [v20 stringWithFormat:@"[%@]: DSID changed from %@ to %@ during reconcile process. Posting handleAccountChange to work queue.", v21, dSID, iTunesAccountDSID2];
      _ADLog();

      workQueue = [MEMORY[0x277CE96B8] workQueue];
      [workQueue addOperationWithBlock:&__block_literal_global_2];
    }
  }

  if (v44)
  {
    v44[2]();
  }

  [_reconcileOperations reset];
  releaseXPCTransaction();
  mEMORY[0x277CE96E8] = [MEMORY[0x277CE96E8] sharedInstance];
  [mEMORY[0x277CE96E8] removeWatchdogWithToken:_reconcileWatchdogToken];

  v27 = selfCopy;
  objc_sync_enter(v27);
  if ([_postReconcileOperations count])
  {
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Running post-reconcile operations"];
    _ADLog();
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v29 = _postReconcileOperations;
  v30 = [v29 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v30)
  {
    v31 = *v48;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v48 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = *(*(&v47 + 1) + 8 * i);
        workQueue2 = [MEMORY[0x277CE96B8] workQueue];
        [workQueue2 addOperationWithBlock:v33];
      }

      v30 = [v29 countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v30);
  }

  if ([_postReconcileOperations count])
  {
    [_postReconcileOperations removeAllObjects];
  }

  objc_sync_exit(v27);

  v35 = *MEMORY[0x277D85DE8];
}

- (void)updateAccountData:()Private
{
  v4 = a3;
  objc_initWeak(&location, self);
  activeDSIDRecord = [self activeDSIDRecord];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__ADIDManager_Private__updateAccountData___block_invoke;
  v7[3] = &unk_278C58490;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v7[4] = self;
  v8 = v6;
  [activeDSIDRecord retrieveSegmentDataFromiTunes:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)reconcile:()Private
{
  v4 = a3;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (_reconcileInProgress == 1)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: DSID record reconcile already in progress.", objc_opt_class()];
    v7 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithAdCode:1 andDescription:v6];
    [v7 AD_Log:@"iAdIDLogging"];
    if (v4)
    {
      v4[2](v4, v7);
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    _reconcileInProgress = 1;
    objc_sync_exit(selfCopy);

    mEMORY[0x277CE96E8] = [MEMORY[0x277CE96E8] sharedInstance];
    v9 = [mEMORY[0x277CE96E8] createNewWatchdog:@"Reconcile in progress" withTimer:1800];
    v10 = _reconcileWatchdogToken;
    _reconcileWatchdogToken = v9;

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.adprivacyd [%@ reconcile]", objc_opt_class()];
    v12 = _reconcileReason;
    _reconcileReason = v11;

    takeXPCTransaction();
    v13 = +[ADAdTrackingSchedulingManager sharedInstance];
    [v13 refreshConfiguration:0];

    mEMORY[0x277CE9638] = [MEMORY[0x277CE9638] sharedInstance];
    iTunesAccountDSID = [mEMORY[0x277CE9638] iTunesAccountDSID];

    if (!iTunesAccountDSID || ![(__CFString *)iTunesAccountDSID length])
    {

      iTunesAccountDSID = @"0";
    }

    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x3032000000;
    v23[3] = __Block_byref_object_copy__0;
    v23[4] = __Block_byref_object_dispose__0;
    v24 = 0;
    objc_initWeak(&location, selfCopy);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __34__ADIDManager_Private__reconcile___block_invoke;
    v17[3] = &unk_278C584E0;
    objc_copyWeak(&v21, &location);
    v19 = v4;
    v16 = iTunesAccountDSID;
    v18 = v16;
    v20 = v23;
    [selfCopy setDSID:v16 completionHandler:v17];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
    _Block_object_dispose(v23, 8);
  }
}

- (void)handleAccountChange:()Private
{
  v4 = a3;
  workQueue = [MEMORY[0x277CE96B8] workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__ADIDManager_Private__handleAccountChange___block_invoke;
  v7[3] = &unk_278C57E60;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [workQueue addOperationWithBlock:v7];
}

- (void)cancelPendingReconcile
{
  mEMORY[0x277CE9600] = [MEMORY[0x277CE9600] sharedInstance];
  [mEMORY[0x277CE9600] cancelBackgroundTask:@"com.apple.ap.adprivacyd.reconcile"];
}

- (BOOL)scheduleReconciliation:()Private
{
  v3 = _reconcileRetryCount;
  if (_reconcileRetryCount >= 4)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Not rescheduling reconcile, MAX_RETRY_COUNT of %d exceeded.", objc_opt_class(), 3];
    _ADLog();

    _reconcileRetryCount = 0;
    mEMORY[0x277CE9638] = [MEMORY[0x277CE9638] sharedInstance];
    [self scheduleReconciliation:{objc_msgSend(mEMORY[0x277CE9638], "segmentRetrievalInterval")}];
  }

  else
  {
    mEMORY[0x277CE9638] = [objc_alloc(MEMORY[0x277CE95F8]) initWithID:@"com.apple.ap.adprivacyd.reconcile"];
    [mEMORY[0x277CE9638] setPropertyAsInteger:@"kBackgroundTaskProperty_RetryCount" value:_reconcileRetryCount];
    [mEMORY[0x277CE9638] setDelay:a2];
    [mEMORY[0x277CE9638] setRequireClassCData:1];
    [mEMORY[0x277CE9638] setRequireBuddyComplete:1];
    date = [MEMORY[0x277CBEAA8] date];
    v7 = ([date AD_toServerTime] + a2);
    activeDSIDRecord = [self activeDSIDRecord];
    [activeDSIDRecord setNextReconcileTimestamp:v7];

    v9 = MEMORY[0x277CCACA8];
    v10 = objc_opt_class();
    delay = [mEMORY[0x277CE9638] delay];
    v12 = MEMORY[0x277CBEAA8];
    activeDSIDRecord2 = [self activeDSIDRecord];
    v14 = [v12 AD_dateFromServerTime:{objc_msgSend(activeDSIDRecord2, "nextReconcileTimestamp")}];
    aD_localDateTimeAsString = [v14 AD_localDateTimeAsString];
    v16 = [v9 stringWithFormat:@"[%@]: Rescheduling DSID record reconcile to run again in %lld seconds (%@).", v10, delay, aD_localDateTimeAsString];
    _ADLog();

    mEMORY[0x277CE9600] = [MEMORY[0x277CE9600] sharedInstance];
    [mEMORY[0x277CE9600] addBackgroundTask:mEMORY[0x277CE9638]];
  }

  return v3 < 4;
}

- (uint64_t)scheduleDailyUpdate
{
  v0 = [objc_alloc(MEMORY[0x277CE95F8]) initWithID:@"com.apple.ap.adprivacyd.rotateDeviceNewsPlusSubscriberID"];
  [v0 setGracePeriod:300];
  v1 = [MEMORY[0x277CCACA8] stringWithCString:*MEMORY[0x277D86350] encoding:4];
  [v0 setPriority:v1];

  [v0 setAllowBattery:1];
  [v0 setDelay:86400];
  [v0 setIsRepeating:0];
  [v0 setRequireSleep:1];
  [v0 setRequireClassCData:1];
  [v0 setRequiresNetworkConnectivity:0];
  [v0 setRequireBuddyComplete:1];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Rescheduling deviceNewsPlusSubscriberID rotation to run again in %lld seconds.", objc_opt_class(), objc_msgSend(v0, "delay")];
  _ADLog();

  mEMORY[0x277CE9600] = [MEMORY[0x277CE9600] sharedInstance];
  [mEMORY[0x277CE9600] addBackgroundTask:v0];

  return 1;
}

- (uint64_t)runTask:()Private
{
  v4 = a3;
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  requestIdentifier = [v4 requestIdentifier];
  v8 = [v5 stringWithFormat:@"[%@]: Received request to run background task %@.", v6, requestIdentifier];
  _ADLog();

  requestIdentifier2 = [v4 requestIdentifier];
  LODWORD(v6) = [requestIdentifier2 isEqualToString:@"com.apple.ap.adprivacyd.reconcile"];

  if (v6)
  {
    if (([v4 continueTask] & 1) == 0)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] ERROR: Unable to mark the task as being continue. Please file a radar...", objc_opt_class()];
      _ADLog();
    }

    workQueue = [MEMORY[0x277CE96B8] workQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __32__ADIDManager_Private__runTask___block_invoke;
    v19[3] = &unk_278C581F8;
    v19[4] = self;
    v20 = v4;
    [workQueue addOperationWithBlock:v19];

    resetDeviceNewsPlusSubscriberIDIfNeeded = 1;
  }

  else
  {
    requestIdentifier3 = [v4 requestIdentifier];
    v14 = [requestIdentifier3 isEqualToString:@"com.apple.ap.adprivacyd.rotateDeviceNewsPlusSubscriberID"];

    if (v14)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Rotate deviceNewsPlusSubscriberID", objc_opt_class()];
      _ADLog();

      activeDSIDRecord = [self activeDSIDRecord];
      resetDeviceNewsPlusSubscriberIDIfNeeded = [activeDSIDRecord resetDeviceNewsPlusSubscriberIDIfNeeded];

      if (resetDeviceNewsPlusSubscriberIDIfNeeded)
      {
        save = [self save];
      }

      [self scheduleDailyUpdate];
    }

    else
    {
      resetDeviceNewsPlusSubscriberIDIfNeeded = 0;
    }
  }

  return resetDeviceNewsPlusSubscriberIDIfNeeded;
}

- (void)checkOnTask:()Private activity:
{
  v11 = a3;
  v6 = a4;
  if (([v11 isEqualToString:@"com.apple.ap.adprivacyd.reconcile"] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"com.apple.ap.adprivacyd.rotateDeviceNewsPlusSubscriberID"))
  {
    v7 = xpc_activity_copy_criteria(v6);
    if (!v7)
    {
      if ([v11 isEqualToString:@"com.apple.ap.adprivacyd.reconcile"])
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Checking in on task %@ - PLIST Launch", objc_opt_class(), v11];
        _ADLog();

        [self scheduleReconciliation:0.0];
        goto LABEL_9;
      }

      if ([v11 isEqualToString:@"com.apple.ap.adprivacyd.rotateDeviceNewsPlusSubscriberID"])
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Checking in on task %@ - PLIST Launch", objc_opt_class(), v11];
        _ADLog();

        [self scheduleDailyUpdate];
        goto LABEL_9;
      }
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Reconcile task %@ already scheduled: %@", objc_opt_class(), v11, v7];
    _ADLog();

LABEL_9:
  }
}

- (uint64_t)reconcileInProgress
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = _reconcileInProgress;
  objc_sync_exit(selfCopy);

  return v2;
}

- (uint64_t)setReconcileOperations:()Private
{
  _reconcileOperations = [a3 copy];

  return MEMORY[0x2821F96F8]();
}

- (void)rotateAccountToken
{
  v0 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v0 initWithSuiteName:*MEMORY[0x277CE95C8]];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Setting UUID - %@ for account DSID state.", objc_opt_class(), uUIDString];
  _ADLog();

  [v4 setObject:uUIDString forKey:@"AccountStateUUID"];
}

@end