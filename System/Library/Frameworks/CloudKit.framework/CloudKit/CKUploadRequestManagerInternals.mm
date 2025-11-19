@interface CKUploadRequestManagerInternals
- (BOOL)canPerformFunction:(int64_t)a3;
- (BOOL)isRepairRecordActionable:(id)a3;
- (CKUploadRequestManagerInternals)initWithContainer:(id)a3 repairContainerOverrides:(id)a4;
- (CKUploadRequestManagerInternals)initWithContainer:(id)a3 repairContainerOverrides:(id)a4 ignoringSystemConditions:(BOOL)a5;
- (CKUploadRequestManagerStateMachine)stateMachine;
- (NSString)activityIdentifierForSchedulingRepairs;
- (NSString)machServiceName;
- (double)cancelledErrorRetryTime;
- (double)notificationDebouncePeriod;
- (double)recurringFetchPeriod;
- (double)retryableErrorMaxRetryCount;
- (double)retryableErrorRetryTime;
- (double)tryAgainLaterRetryTime;
- (id)createDatabase;
- (id)createStateMachine;
- (id)nextRepairDateForDate:(id)a3;
- (id)repairZoneID;
- (id)repairableAssetsForDate:(id)a3;
- (void)assetRepairScheduler:(id)a3 completedRepairWithMetadata:(id)a4 error:(id)a5;
- (void)assetRepairScheduler:(id)a3 completedRequestWithMetadata:(id)a4 result:(int64_t)a5;
- (void)assetRepairSchedulerAllRequestsComplete:(id)a3;
- (void)cancelScheduledEvent;
- (void)checkAccountID;
- (void)checkAccountStatus;
- (void)checkNetworkReachability;
- (void)closeSyncEngine;
- (void)commonInitWithContainer:(id)a3 repairContainerOverrides:(id)a4;
- (void)dealloc;
- (void)dispatchAsyncOnStateQueue:(id)a3;
- (void)dispatchEvent:(int64_t)a3;
- (void)dispatchEvent:(int64_t)a3 synchronously:(BOOL)a4;
- (void)fetchRepairContainerMetadata;
- (void)fetchServerChanges:(id)a3;
- (void)invokeCallbackForOverridePoint:(int64_t)a3 withError:(id)a4 onCallbackQueue:(BOOL)a5;
- (void)manuallyTriggerUploadRequests;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)openSyncEngine;
- (void)performRepairs;
- (void)registerForAccountNotifications;
- (void)registerForFetchAllNotifications;
- (void)registerForNetworkReachability;
- (void)registerForRepairScheduler;
- (void)respondToStateMachineChangeState:(int64_t)a3 enter:(BOOL)a4;
- (void)scheduleNextSync;
- (void)scheduleOrInvokeRepairsNow;
- (void)scheduleRecordRepair:(id)a3 withDelay:(double)a4 increasingCount:(BOOL)a5;
- (void)scheduleRecurringFetch;
- (void)scheduleRepairsWithDelay:(double)a3;
- (void)setCallback:(id)a3 forOverridePoint:(int64_t)a4;
- (void)setMachServiceName:(id)a3;
- (void)setReachability:(__SCNetworkReachability *)a3;
- (void)setRepairActivityHandler:(id)a3;
- (void)setStateMachine:(id)a3;
- (void)syncEngine:(id)a3 didFetchRecord:(id)a4;
- (void)syncEngine:(id)a3 didUpdateMetadata:(id)a4;
- (void)syncEngine:(id)a3 recordWithIDWasDeleted:(id)a4 recordType:(id)a5;
- (void)syncEngine:(id)a3 zoneWithIDChanged:(id)a4;
- (void)syncEngine:(id)a3 zoneWithIDWasDeleted:(id)a4;
- (void)syncEngine:(id)a3 zoneWithIDWasPurged:(id)a4;
- (void)unregisterFromAccountNotifications;
- (void)unregisterFromFetchAllNotifications;
- (void)unregisterFromNetworkReachability;
@end

@implementation CKUploadRequestManagerInternals

- (double)recurringFetchPeriod
{
  result = self->_recurringFetchPeriod;
  if (result == -1.0)
  {
    return 604800.0;
  }

  return result;
}

- (double)tryAgainLaterRetryTime
{
  result = self->_tryAgainLaterRetryTime;
  if (result == -1.0)
  {
    return 604800.0;
  }

  return result;
}

- (double)retryableErrorRetryTime
{
  result = self->_retryableErrorRetryTime;
  if (result == -1.0)
  {
    return 259200.0;
  }

  return result;
}

- (double)cancelledErrorRetryTime
{
  result = self->_cancelledErrorRetryTime;
  if (result == -1.0)
  {
    return 86400.0;
  }

  return result;
}

- (double)retryableErrorMaxRetryCount
{
  result = self->_retryableErrorMaxRetryCount;
  if (result == -1.0)
  {
    return 10.0;
  }

  return result;
}

- (double)notificationDebouncePeriod
{
  result = self->_notificationDebouncePeriod;
  if (result == -1.0)
  {
    return 0.2;
  }

  return result;
}

- (CKUploadRequestManagerInternals)initWithContainer:(id)a3 repairContainerOverrides:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CKUploadRequestManagerInternals;
  v8 = [(CKUploadRequestManagerInternals *)&v12 init];
  v10 = v8;
  if (v8)
  {
    objc_msgSend_commonInitWithContainer_repairContainerOverrides_(v8, v9, v6, v7);
  }

  return v10;
}

- (CKUploadRequestManagerInternals)initWithContainer:(id)a3 repairContainerOverrides:(id)a4 ignoringSystemConditions:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = CKUploadRequestManagerInternals;
  v10 = [(CKUploadRequestManagerInternals *)&v14 init];
  v12 = v10;
  if (v10)
  {
    v10->_ignoringSystemConditions = a5;
    objc_msgSend_commonInitWithContainer_repairContainerOverrides_(v10, v11, v8, v9);
  }

  return v12;
}

- (void)commonInitWithContainer:(id)a3 repairContainerOverrides:(id)a4
{
  v99 = a3;
  __asm { FMOV            V0.2D, #-1.0 }

  *&self->_recurringFetchPeriod = _Q0;
  *&self->_retryableErrorRetryTime = _Q0;
  *&self->_retryableErrorMaxRetryCount = _Q0;
  self->_assetRepairSchedulerRepairBatchCountLimit = -1;
  self->_assetRepairSchedulerDefaultSuspensionTime = -1.0;
  self->_assetRepairSchedulerRepairRetryCount = -1;
  if (__sTestOverridesAvailable[0] == 1)
  {
    v11 = a4;
    v12 = objc_alloc(sub_1885188C0());
    v15 = objc_msgSend_containerID(v99, v13, v14);
    v18 = objc_msgSend_options(v99, v16, v17);
    v21 = objc_msgSend_options(v99, v19, v20);
    v24 = objc_msgSend_testDeviceReferenceProtocol(v21, v22, v23);
    v26 = objc_msgSend_initWithContainerID_options_testDeviceReferenceProtocol_(v12, v25, v15, v18, v24);
  }

  else
  {
    v27 = a4;
    v28 = [CKContainer alloc];
    v15 = objc_msgSend_containerID(v99, v29, v30);
    v18 = objc_msgSend_options(v99, v31, v32);
    v26 = objc_msgSend_initWithContainerID_options_(v28, v33, v15, v18);
  }

  container = self->_container;
  self->_container = v26;
  v35 = v26;

  v37 = objc_msgSend_createRepairContainerFromContainer_withOverrides_(CKAssetRepairOperationUtilities, v36, v99, a4);
  repairContainer = self->_repairContainer;
  self->_repairContainer = v37;

  v41 = objc_msgSend_copy(a4, v39, v40);
  repairContainerOverrides = self->_repairContainerOverrides;
  self->_repairContainerOverrides = v41;

  v43 = MEMORY[0x1E696AEC0];
  v46 = objc_msgSend_containerID(v99, v44, v45);
  v49 = objc_msgSend_containerIdentifier(v46, v47, v48);
  v51 = objc_msgSend_stringWithFormat_(v43, v50, @"%@.%@", @"com.apple.cloudkit.uploadrequest.statemachine", v49);
  v52 = v51;
  v55 = objc_msgSend_UTF8String(v52, v53, v54);
  v56 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v57 = dispatch_queue_create(v55, v56);
  p_stateMachineQueue = &self->_stateMachineQueue;
  stateMachineQueue = self->_stateMachineQueue;
  self->_stateMachineQueue = v57;

  v60 = MEMORY[0x1E696AEC0];
  v63 = objc_msgSend_containerID(v99, v61, v62);
  v66 = objc_msgSend_containerIdentifier(v63, v64, v65);
  v68 = objc_msgSend_stringWithFormat_(v60, v67, @"%@.%@", @"com.apple.cloudkit.uploadrequest.state", v66);
  v69 = v68;
  v72 = objc_msgSend_UTF8String(v69, v70, v71);
  v73 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v74 = dispatch_queue_create(v72, v73);
  p_stateQueue = &self->_stateQueue;
  stateQueue = self->_stateQueue;
  self->_stateQueue = v74;

  v77 = MEMORY[0x1E696AEC0];
  v80 = objc_msgSend_containerID(v99, v78, v79);
  v83 = objc_msgSend_containerIdentifier(v80, v81, v82);
  v85 = objc_msgSend_stringWithFormat_(v77, v84, @"%@.%@", @"com.apple.cloudkit.uploadrequest.callback", v83);
  v86 = v85;
  v89 = objc_msgSend_UTF8String(v86, v87, v88);
  v90 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v91 = dispatch_queue_create(v89, v90);
  callbackQueue = self->_callbackQueue;
  p_callbackQueue = &self->_callbackQueue;
  *p_callbackQueue = v91;

  dispatch_queue_set_specific(*p_stateMachineQueue, p_stateMachineQueue, 1, 0);
  dispatch_queue_set_specific(*p_stateQueue, p_stateQueue, 1, 0);
  dispatch_queue_set_specific(*p_callbackQueue, p_callbackQueue, 1, 0);
  v94 = objc_opt_new();
  v95 = *(p_callbackQueue - 3);
  *(p_callbackQueue - 3) = v94;

  v97 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v96, &unk_1EFA85B30);
  objc_msgSend_setActionsToThrottle_(*(p_callbackQueue - 3), v98, v97);
}

- (void)dealloc
{
  reachability = self->_reachability;
  if (reachability)
  {
    CFRelease(reachability);
    self->_reachability = 0;
  }

  v4.receiver = self;
  v4.super_class = CKUploadRequestManagerInternals;
  [(CKUploadRequestManagerInternals *)&v4 dealloc];
}

- (NSString)activityIdentifierForSchedulingRepairs
{
  v4 = objc_msgSend_container(self, a2, v2);
  v6 = objc_msgSend_activityIdentifierForSchedulingRepairsInContainer_(CKUploadRequestManager, v5, v4);

  if (objc_msgSend_ignoringSystemConditions(self, v7, v8))
  {
    v10 = objc_msgSend_identifierWithImmediateInvocationForIdentifier_(CKScheduler, v9, v6);

    v6 = v10;
  }

  return v6;
}

- (NSString)machServiceName
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_machServiceName;
  objc_sync_exit(v2);

  return v3;
}

- (void)setMachServiceName:(id)a3
{
  v23 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if ((objc_msgSend_isEqualToString_(v4->_machServiceName, v5, v23) & 1) == 0)
  {
    v10 = objc_msgSend_assignedMachServiceName(v4, v6, v7);
    if (v10)
    {
      v11 = objc_msgSend_assignedMachServiceName(v4, v8, v9);
      isEqualToString = objc_msgSend_isEqualToString_(v23, v12, v11);

      if ((isEqualToString & 1) == 0)
      {
        v16 = [CKException alloc];
        v19 = objc_msgSend_assignedMachServiceName(v4, v17, v18);
        v21 = objc_msgSend_initWithCode_format_(v16, v20, 12, @"Cannot assign new machServiceName %@ when previous port %@ is still being used", v23, v19);
        v22 = v21;

        objc_exception_throw(v21);
      }
    }

    v14 = objc_msgSend_copy(v23, v8, v9);
    machServiceName = v4->_machServiceName;
    v4->_machServiceName = v14;
  }

  objc_sync_exit(v4);
}

- (id)repairZoneID
{
  v3 = objc_msgSend_repairContainerOverrides(self, a2, v2);
  v6 = objc_msgSend_repairZoneID(v3, v4, v5);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [CKRecordZoneID alloc];
    v8 = objc_msgSend_initWithZoneName_ownerName_(v9, v10, @"RepairZone", @"__defaultOwner__");
  }

  v11 = v8;

  return v11;
}

- (void)setRepairActivityHandler:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_stateQueue(self, v5, v6);
  dispatch_assert_queue_V2(v7);

  if (self->_repairActivityHandler != v4)
  {
    v8 = _Block_copy(v4);
    repairActivityHandler = self->_repairActivityHandler;
    self->_repairActivityHandler = v8;

    if (v4)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v10 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
      {
        v14 = 0;
        v11 = "Setting handler when entering repair activity";
        v12 = &v14;
LABEL_12:
        _os_log_debug_impl(&dword_1883EA000, v10, OS_LOG_TYPE_DEBUG, v11, v12, 2u);
      }
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v10 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
      {
        v13 = 0;
        v11 = "Clearing handler when exiting repair activity";
        v12 = &v13;
        goto LABEL_12;
      }
    }
  }
}

- (CKUploadRequestManagerStateMachine)stateMachine
{
  v4 = objc_msgSend_stateMachineQueue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  stateMachine = self->_stateMachine;
  if (!stateMachine)
  {
    v8 = objc_msgSend_createStateMachine(self, v5, v6);
    v9 = self->_stateMachine;
    self->_stateMachine = v8;

    objc_msgSend_start(self->_stateMachine, v10, v11);
    stateMachine = self->_stateMachine;
  }

  return stateMachine;
}

- (void)setStateMachine:(id)a3
{
  v10 = a3;
  v7 = objc_msgSend_stateMachineQueue(self, v5, v6);
  dispatch_assert_queue_V2(v7);

  stateMachine = self->_stateMachine;
  p_stateMachine = &self->_stateMachine;
  if (stateMachine != v10)
  {
    objc_storeStrong(p_stateMachine, a3);
  }
}

- (id)createDatabase
{
  v4 = objc_msgSend_container(self, a2, v2);
  v7 = objc_msgSend_containerIdentifier(v4, v5, v6);

  v8 = MEMORY[0x1E696AEC0];
  v11 = objc_msgSend_CKSafeStringForPathComponent(v7, v9, v10);
  v13 = objc_msgSend_stringWithFormat_(v8, v12, @"com.apple.cloudkit.uploadrequest.%@.cache", v11);

  v14 = [CKUploadRequestPersistentStore alloc];
  v15 = MEMORY[0x1E695DFF8];
  v18 = objc_msgSend_cachesDirectory(self, v16, v17);
  v20 = objc_msgSend_stringByAppendingPathComponent_(v18, v19, v13);
  v22 = objc_msgSend_fileURLWithPath_isDirectory_(v15, v21, v20, 0);
  v24 = objc_msgSend_initWithDatabaseURL_(v14, v23, v22);

  return v24;
}

- (void)setReachability:(__SCNetworkReachability *)a3
{
  reachability = self->_reachability;
  if (reachability != a3)
  {
    if (a3)
    {
      CFRetain(a3);
      reachability = self->_reachability;
    }

    self->_reachability = a3;
    if (reachability)
    {

      CFRelease(reachability);
    }
  }
}

- (void)fetchServerChanges:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_stateQueue(self, v5, v6);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_18862FF94;
  v9[3] = &unk_1E70BC940;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  ck_call_or_dispatch_sync_if_not_key(v7, &self->_stateQueue, v9);
}

- (void)manuallyTriggerUploadRequests
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_188630298;
  v2[3] = &unk_1E70BC388;
  v2[4] = self;
  objc_msgSend_fetchServerChanges_(self, a2, v2);
}

- (void)dispatchEvent:(int64_t)a3 synchronously:(BOOL)a4
{
  v4 = a4;
  if (a4)
  {
    v7 = MEMORY[0x1E69E97D0];
  }

  else
  {
    v7 = MEMORY[0x1E69E9750];
  }

  v8 = objc_msgSend_stateQueue(self, a2, a3);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_188630388;
  v12[3] = &unk_1E70BF2B8;
  v12[4] = self;
  v12[5] = a3;
  v7(v8, v12);

  if (v4)
  {
    v11 = objc_msgSend_stateQueue(self, v9, v10);
    dispatch_sync(v11, &unk_1EFA2F648);
  }
}

- (void)dispatchAsyncOnStateQueue:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_stateQueue(self, v5, v6);
  dispatch_async(v7, v4);
}

- (void)setCallback:(id)a3 forOverridePoint:(int64_t)a4
{
  v6 = a3;
  v9 = objc_msgSend_stateQueue(self, v7, v8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1886304B8;
  v11[3] = &unk_1E70BF410;
  v12 = v6;
  v13 = a4;
  v11[4] = self;
  v10 = v6;
  ck_call_or_dispatch_sync_if_not_key(v9, &self->_stateQueue, v11);
}

- (void)invokeCallbackForOverridePoint:(int64_t)a3 withError:(id)a4 onCallbackQueue:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1883EE144;
  v24 = sub_1883EF764;
  v25 = 0;
  v11 = objc_msgSend_stateQueue(self, v9, v10);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_18863073C;
  v19[3] = &unk_1E70BF438;
  v19[4] = self;
  v19[5] = &v20;
  v19[6] = a3;
  ck_call_or_dispatch_sync_if_not_key(v11, &self->_stateQueue, v19);

  v14 = v21[5];
  if (v14)
  {
    if (v5)
    {
      v15 = objc_msgSend_callbackQueue(self, v12, v13);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1886307C8;
      block[3] = &unk_1E70BE500;
      v18 = &v20;
      v17 = v8;
      dispatch_async(v15, block);
    }

    else
    {
      (*(v14 + 16))(v14, v8);
    }
  }

  _Block_object_dispose(&v20, 8);
}

- (void)assetRepairScheduler:(id)a3 completedRequestWithMetadata:(id)a4 result:(int64_t)a5
{
  if (a5 == 2)
  {
    v7 = objc_msgSend_repairZoneRecordID(a4, a2, a3);
    objc_msgSend_tryAgainLaterRetryTime(self, v8, v9);
    objc_msgSend_scheduleRecordRepair_withDelay_increasingCount_(self, v10, v7, 0);

    v16 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v11, @"CKInternalErrorDomain", 10003, @"Repair deferred by caller");
    v14 = objc_msgSend_CKClientSuitableError(v16, v12, v13);
    objc_msgSend_invokeCallbackForOverridePoint_withError_onCallbackQueue_(self, v15, 4, v14, 1);
  }
}

- (void)assetRepairScheduler:(id)a3 completedRepairWithMetadata:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v11 = objc_msgSend_stateQueue(self, v9, v10);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_188630C70;
  v14[3] = &unk_1E70BC360;
  v14[4] = self;
  v15 = v8;
  v16 = v7;
  v12 = v7;
  v13 = v8;
  ck_call_or_dispatch_sync_if_not_key(v11, &self->_stateQueue, v14);
}

- (void)assetRepairSchedulerAllRequestsComplete:(id)a3
{
  v4 = objc_msgSend_stateQueue(self, a2, a3);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1886312EC;
  v5[3] = &unk_1E70BC388;
  v5[4] = self;
  ck_call_or_dispatch_sync_if_not_key(v4, &self->_stateQueue, v5);
}

- (void)syncEngine:(id)a3 didFetchRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1883EA000, "client/data-repair-record-was-changed", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  objc_msgSend_invokeCallbackForOverridePoint_withError_onCallbackQueue_(self, v9, 3, 0, 1);
  v12 = objc_msgSend_stateQueue(self, v10, v11);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_188631430;
  v14[3] = &unk_1E70BEEC0;
  v14[4] = self;
  v13 = v7;
  v15 = v13;
  ck_call_or_dispatch_sync_if_not_key(v12, &self->_stateQueue, v14);

  os_activity_scope_leave(&state);
}

- (void)syncEngine:(id)a3 recordWithIDWasDeleted:(id)a4 recordType:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&dword_1883EA000, "client/data-repair-record-was-deleted", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  v14 = objc_msgSend_stateQueue(self, v12, v13);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_18863185C;
  v16[3] = &unk_1E70BEEC0;
  v16[4] = self;
  v15 = v9;
  v17 = v15;
  ck_call_or_dispatch_sync_if_not_key(v14, &self->_stateQueue, v16);

  os_activity_scope_leave(&state);
}

- (void)syncEngine:(id)a3 didUpdateMetadata:(id)a4
{
  v5 = a4;
  v8 = objc_msgSend_stateQueue(self, v6, v7);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_188631AD0;
  v10[3] = &unk_1E70BEEC0;
  v10[4] = self;
  v11 = v5;
  v9 = v5;
  ck_call_or_dispatch_sync_if_not_key(v8, &self->_stateQueue, v10);
}

- (void)syncEngine:(id)a3 zoneWithIDChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1883EA000, "client/data-repair-zone-was-changed", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v11 = objc_msgSend_stateQueue(self, v9, v10);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_188631D58;
  v13[3] = &unk_1E70BEEC0;
  v12 = v7;
  v14 = v12;
  v15 = self;
  ck_call_or_dispatch_sync_if_not_key(v11, &self->_stateQueue, v13);

  os_activity_scope_leave(&state);
}

- (void)syncEngine:(id)a3 zoneWithIDWasDeleted:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1883EA000, "client/data-repair-zone-was-deleted", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v11 = objc_msgSend_stateQueue(self, v9, v10);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_188631F70;
  v13[3] = &unk_1E70BEEC0;
  v13[4] = self;
  v12 = v7;
  v14 = v12;
  ck_call_or_dispatch_sync_if_not_key(v11, &self->_stateQueue, v13);

  os_activity_scope_leave(&state);
}

- (void)syncEngine:(id)a3 zoneWithIDWasPurged:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1883EA000, "client/data-repair-zone-was-purged", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v11 = objc_msgSend_stateQueue(self, v9, v10);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_188632294;
  v13[3] = &unk_1E70BEEC0;
  v13[4] = self;
  v12 = v7;
  v14 = v12;
  ck_call_or_dispatch_sync_if_not_key(v11, &self->_stateQueue, v13);

  os_activity_scope_leave(&state);
}

- (BOOL)isRepairRecordActionable:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = objc_msgSend_stateQueue(self, v5, v6);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1886325B0;
  v10[3] = &unk_1E70BF460;
  v8 = v4;
  v12 = self;
  v13 = &v14;
  v11 = v8;
  ck_call_or_dispatch_sync_if_not_key(v7, &self->_stateQueue, v10);

  LOBYTE(self) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return self;
}

- (void)scheduleRepairsWithDelay:(double)a3
{
  v5 = _os_activity_create(&dword_1883EA000, "client/data-repair-schedule-repairs", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v8 = objc_msgSend_stateQueue(self, v6, v7);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_188632B5C;
  v9[3] = &unk_1E70BF2B8;
  v9[4] = self;
  *&v9[5] = a3;
  ck_call_or_dispatch_sync_if_not_key(v8, &self->_stateQueue, v9);

  os_activity_scope_leave(&state);
}

- (void)scheduleOrInvokeRepairsNow
{
  v4 = objc_msgSend_stateQueue(self, a2, v2);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_188632E98;
  v5[3] = &unk_1E70BC388;
  v5[4] = self;
  ck_call_or_dispatch_sync_if_not_key(v4, &self->_stateQueue, v5);
}

- (void)scheduleRecordRepair:(id)a3 withDelay:(double)a4 increasingCount:(BOOL)a5
{
  v8 = a3;
  v11 = objc_msgSend_stateQueue(self, v9, v10);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_188633048;
  v13[3] = &unk_1E70BF488;
  v13[4] = self;
  v14 = v8;
  v15 = a4;
  v16 = a5;
  v12 = v8;
  ck_call_or_dispatch_sync_if_not_key(v11, &self->_stateQueue, v13);
}

- (id)repairableAssetsForDate:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v8 = objc_msgSend_stateQueue(self, v6, v7);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_188633390;
  v14[3] = &unk_1E70BC360;
  v14[4] = self;
  v15 = v4;
  v9 = v5;
  v16 = v9;
  v10 = v4;
  ck_call_or_dispatch_sync_if_not_key(v8, &self->_stateQueue, v14);

  v11 = v16;
  v12 = v9;

  return v9;
}

- (id)nextRepairDateForDate:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_18863379C;
  v18 = sub_1886337AC;
  v19 = 0;
  v7 = objc_msgSend_stateQueue(self, v5, v6);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1886337B4;
  v11[3] = &unk_1E70BF4B0;
  v11[4] = self;
  v8 = v4;
  v12 = v8;
  v13 = &v14;
  ck_call_or_dispatch_sync_if_not_key(v7, &self->_stateQueue, v11);

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

- (void)performRepairs
{
  v3 = _os_activity_create(&dword_1883EA000, "client/data-repair-perform-repairs", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v6 = objc_msgSend_stateQueue(self, v4, v5);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_188633950;
  v7[3] = &unk_1E70BC388;
  v7[4] = self;
  ck_call_or_dispatch_sync_if_not_key(v6, &self->_stateQueue, v7);

  os_activity_scope_leave(&state);
}

- (id)createStateMachine
{
  objc_initWeak(&location, self);
  v2 = [CKUploadRequestManagerStateMachine alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_188633E64;
  v12[3] = &unk_1E70BF500;
  objc_copyWeak(&v13, &location);
  v4 = objc_msgSend_initWithActionHandler_(v2, v3, v12);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_188633F00;
  v10[3] = &unk_1E70BF528;
  objc_copyWeak(&v11, &location);
  objc_msgSend_setEnterStateHandler_(v4, v5, v10);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_188633F54;
  v8[3] = &unk_1E70BF528;
  objc_copyWeak(&v9, &location);
  objc_msgSend_setExitStateHandler_(v4, v6, v8);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v4;
}

- (void)respondToStateMachineChangeState:(int64_t)a3 enter:(BOOL)a4
{
  v7 = objc_msgSend_stateMachineQueue(self, a2, a3);
  dispatch_assert_queue_V2(v7);

  v10 = objc_msgSend_stateQueue(self, v8, v9);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_188634BD0;
  block[3] = &unk_1E70BF578;
  v12 = a4;
  block[4] = self;
  block[5] = a3;
  dispatch_async(v10, block);
}

- (void)dispatchEvent:(int64_t)a3
{
  v5 = objc_msgSend_stateQueue(self, a2, a3);
  dispatch_assert_queue_V2(v5);

  v8 = objc_msgSend_stateMachineQueue(self, v6, v7);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_188634CA4;
  v9[3] = &unk_1E70BF2B8;
  v9[4] = self;
  v9[5] = a3;
  dispatch_sync(v8, v9);
}

- (BOOL)canPerformFunction:(int64_t)a3
{
  v3 = a3;
  v5 = objc_msgSend_stateQueue(self, a2, a3);
  dispatch_assert_queue_V2(v5);

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8 = objc_msgSend_stateMachineQueue(self, v6, v7);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_188634DF0;
  block[3] = &unk_1E70BF438;
  block[4] = self;
  block[5] = &v11;
  block[6] = v3;
  dispatch_sync(v8, block);

  LOBYTE(v3) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v3;
}

- (void)registerForRepairScheduler
{
  v3 = _os_activity_create(&dword_1883EA000, "client/data-repair-scheduler-callback", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v6 = objc_msgSend_stateQueue(self, v4, v5);
  dispatch_assert_queue_V2(v6);

  objc_initWeak(&location, self);
  if ((objc_msgSend_hasRegisteredActivity(self, v7, v8) & 1) == 0)
  {
    objc_msgSend_setHasRegisteredActivity_(self, v9, 1);
    v12 = objc_msgSend_sharedScheduler(CKScheduler, v10, v11);
    v15 = objc_msgSend_activityIdentifierForSchedulingRepairs(self, v13, v14);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_188634FC8;
    v17[3] = &unk_1E70BF5C8;
    objc_copyWeak(&v18, &location);
    objc_msgSend_registerActivityIdentifier_handler_(v12, v16, v15, v17);

    objc_destroyWeak(&v18);
  }

  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a4;
  v11 = v8;
  if (qword_1EA9108E0 == a6)
  {
    shouldDefer = objc_msgSend_shouldDefer(v8, v9, v10);
    v15 = objc_msgSend_stateQueue(self, v13, v14);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_188635590;
    v16[3] = &unk_1E70BF5F0;
    v16[4] = self;
    v17 = v11;
    v18 = shouldDefer;
    ck_call_or_dispatch_async_if_not_key(v15, &self->_stateQueue, v16);
  }
}

- (void)cancelScheduledEvent
{
  v4 = objc_msgSend_stateQueue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  v7 = objc_msgSend_sharedScheduler(CKScheduler, v5, v6);
  v10 = objc_msgSend_activityIdentifierForSchedulingRepairs(self, v8, v9);
  objc_msgSend_unregisterActivityIdentifier_(v7, v11, v10);

  MEMORY[0x1EEE66B58](self, sel_registerForRepairScheduler, v12);
}

- (void)openSyncEngine
{
  v4 = objc_msgSend_stateQueue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  v7 = objc_msgSend_repairZoneSyncEngine(self, v5, v6);

  if (!v7)
  {
    v34 = objc_msgSend_machServiceName(self, v8, v9);
    objc_msgSend_setAssignedMachServiceName_(self, v10, v34);
    v11 = [CKSyncEngineConfiguration alloc];
    v14 = objc_msgSend_repairContainer(self, v12, v13);
    v17 = objc_msgSend_privateCloudDatabase(v14, v15, v16);
    v20 = objc_msgSend_database(self, v18, v19);
    v23 = objc_msgSend_syncEngineMetadata(v20, v21, v22);
    v25 = objc_msgSend_initWithDatabase_dataSource_metadata_(v11, v24, v17, self, v23);

    objc_msgSend_setApsMachServiceName_(v25, v26, v34);
    if (__sTestOverridesAvailable[0] == 1)
    {
      v28 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v28, *MEMORY[0x1E69E9C68], 5);
      objc_msgSend_setXpcActivityCriteriaOverrides_(v25, v29, v28);
    }

    objc_msgSend_setAutomaticSyncingEnabled_(v25, v27, 1);
    v30 = [CKSyncEngine alloc];
    v32 = objc_msgSend_initWithConfiguration_(v30, v31, v25);
    objc_msgSend_setRepairZoneSyncEngine_(self, v33, v32);
  }
}

- (void)closeSyncEngine
{
  v4 = objc_msgSend_stateQueue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  objc_msgSend_setRepairZoneSyncEngine_(self, v5, 0);

  objc_msgSend_setAssignedMachServiceName_(self, v6, 0);
}

- (void)fetchRepairContainerMetadata
{
  v4 = objc_msgSend_stateQueue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  objc_initWeak(&location, self);
  v9 = objc_msgSend_deviceID(self, v5, v6);
  if (v9 && (objc_msgSend_cachesDirectory(self, v7, v8), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    objc_msgSend_dispatchEvent_(self, v7, 4);
  }

  else
  {
    v11 = objc_msgSend_repairContainer(self, v7, v8);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_188635A30;
    v13[3] = &unk_1E70BF618;
    objc_copyWeak(&v14, &location);
    objc_msgSend_fetchCurrentDeviceIDWithCompletionHandler_(v11, v12, v13);

    objc_destroyWeak(&v14);
  }

  objc_destroyWeak(&location);
}

- (void)registerForNetworkReachability
{
  v4 = objc_msgSend_stateQueue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  if (!objc_msgSend_reachability(self, v5, v6))
  {
    v9 = objc_msgSend_UTF8String(@"https://gateway.icloud.com", v7, v8);
    v10 = SCNetworkReachabilityCreateWithName(0, v9);
    v15.version = 0;
    memset(&v15.retain, 0, 24);
    v15.info = self;
    SCNetworkReachabilitySetCallback(v10, sub_188635FE0, &v15);
    v13 = objc_msgSend_stateQueue(self, v11, v12);
    SCNetworkReachabilitySetDispatchQueue(v10, v13);

    objc_msgSend_setReachability_(self, v14, v10);
    if (v10)
    {
      CFRelease(v10);
    }
  }
}

- (void)unregisterFromNetworkReachability
{
  v4 = objc_msgSend_stateQueue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  if (objc_msgSend_reachability(self, v5, v6))
  {
    v9 = objc_msgSend_reachability(self, v7, v8);
    SCNetworkReachabilitySetDispatchQueue(v9, 0);
    v12 = objc_msgSend_reachability(self, v10, v11);
    SCNetworkReachabilitySetCallback(v12, 0, 0);

    objc_msgSend_setReachability_(self, v13, 0);
  }
}

- (void)checkNetworkReachability
{
  v4 = objc_msgSend_stateQueue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  flags = 0;
  v7 = objc_msgSend_UTF8String(@"https://gateway.icloud.com", v5, v6);
  v8 = SCNetworkReachabilityCreateWithName(0, v7);
  if (v8)
  {
    v9 = v8;
    v10 = SCNetworkReachabilityGetFlags(v8, &flags);
    sub_188635FE0(v10, flags, self);
    CFRelease(v9);
  }

  else
  {

    sub_188635FE0(0, 0, self);
  }
}

- (void)registerForAccountNotifications
{
  v3 = _os_activity_create(&dword_1883EA000, "client/data-repair-account-notification", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v6 = objc_msgSend_stateQueue(self, v4, v5);
  dispatch_assert_queue_V2(v6);

  objc_msgSend_notificationDebouncePeriod(self, v7, v8);
  v10 = v9;
  objc_initWeak(&location, self);
  v13 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v11, v12);
  v14 = CKAccountChangedNotificationName();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_18863631C;
  v18[3] = &unk_1E70BF690;
  objc_copyWeak(v19, &location);
  v19[1] = v10;
  v16 = objc_msgSend_addObserverForName_object_queue_usingBlock_(v13, v15, v14, 0, 0, v18);
  objc_msgSend_setAccountChangeObserver_(self, v17, v16);

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
}

- (void)unregisterFromAccountNotifications
{
  v4 = objc_msgSend_stateQueue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  v7 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v5, v6);
  v10 = objc_msgSend_accountChangeObserver(self, v8, v9);
  v11 = CKAccountChangedNotificationName();
  objc_msgSend_removeObserver_name_object_(v7, v12, v10, v11, 0);

  objc_msgSend_setAccountChangeObserver_(self, v13, 0);
  v16 = objc_msgSend_scheduledAccountStatusCheck(self, v14, v15);

  if (v16)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v17 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      *v22 = 0;
      _os_log_debug_impl(&dword_1883EA000, v17, OS_LOG_TYPE_DEBUG, "Cancelling enqueued account check", v22, 2u);
    }

    v20 = objc_msgSend_scheduledAccountStatusCheck(self, v18, v19);
    dispatch_block_cancel(v20);

    objc_msgSend_setScheduledAccountStatusCheck_(self, v21, 0);
  }
}

- (void)checkAccountStatus
{
  v4 = objc_msgSend_stateQueue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  objc_initWeak(&location, self);
  v7 = objc_msgSend_repairContainer(self, v5, v6);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_188636894;
  v9[3] = &unk_1E70BF6B8;
  objc_copyWeak(&v10, &location);
  objc_msgSend_accountStatusWithCompletionHandler_(v7, v8, v9);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)checkAccountID
{
  v4 = objc_msgSend_stateQueue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  objc_initWeak(&location, self);
  v7 = objc_msgSend_repairContainer(self, v5, v6);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_188636BB0;
  v9[3] = &unk_1E70BF708;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  objc_msgSend_fetchUserRecordIDWithCompletionHandler_(v7, v8, v9);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)registerForFetchAllNotifications
{
  v4 = objc_msgSend_stateQueue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  objc_initWeak(&location, self);
  if (objc_msgSend_fetchAllToken(self, v5, v6))
  {
    AllToken = objc_msgSend_fetchAllToken(self, v7, v8);
    notify_cancel(AllToken);
    objc_msgSend_setFetchAllToken_(self, v10, 0xFFFFFFFFLL);
  }

  out_token = -1;
  v11 = objc_msgSend_uploadRequestFetchAllNotificationName(CKContainer, v7, v8);
  v12 = v11;
  v15 = objc_msgSend_UTF8String(v12, v13, v14);
  v18 = objc_msgSend_stateQueue(self, v16, v17);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1886370F8;
  handler[3] = &unk_1E70BC4F0;
  objc_copyWeak(&v21, &location);
  LODWORD(v15) = notify_register_dispatch(v15, &out_token, v18, handler);

  if (v15)
  {
    objc_msgSend_setFetchAllToken_(self, v19, 0xFFFFFFFFLL);
  }

  else
  {
    objc_msgSend_setFetchAllToken_(self, v19, out_token);
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (void)unregisterFromFetchAllNotifications
{
  v4 = objc_msgSend_stateQueue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  if (objc_msgSend_fetchAllToken(self, v5, v6))
  {
    AllToken = objc_msgSend_fetchAllToken(self, v7, v8);
    notify_cancel(AllToken);

    objc_msgSend_setFetchAllToken_(self, v10, 0xFFFFFFFFLL);
  }
}

- (void)scheduleRecurringFetch
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_stateQueue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  v7 = objc_msgSend_database(self, v5, v6);
  v10 = objc_msgSend_lastFetchDate(v7, v8, v9);

  objc_msgSend_recurringFetchPeriod(self, v11, v12);
  v16 = v15;
  if (v10)
  {
    v17 = objc_msgSend_date(MEMORY[0x1E695DF00], v13, v14);
    objc_msgSend_timeIntervalSinceDate_(v17, v18, v10);
    if (v21 >= v16)
    {
      v31 = objc_msgSend_database(self, v19, v20);
      objc_msgSend_setLastFetchDate_(v31, v32, v17);

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v33 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
      {
        LOWORD(v38) = 0;
        _os_log_impl(&dword_1883EA000, v33, OS_LOG_TYPE_INFO, "Fetching upload requests on schedule", &v38, 2u);
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }
      }

      v34 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
      {
        v38 = 138543362;
        v39 = v17;
        _os_log_debug_impl(&dword_1883EA000, v34, OS_LOG_TYPE_DEBUG, "Setting last fetch date to %{public}@", &v38, 0xCu);
      }

      objc_msgSend_dispatchEvent_(self, v35, 14);
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v22 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
      {
        v38 = 138543362;
        v39 = v10;
        _os_log_debug_impl(&dword_1883EA000, v22, OS_LOG_TYPE_DEBUG, "Last fetch was on %{public}@, so no need to fetch yet", &v38, 0xCu);
      }
    }
  }

  else
  {
    v23 = arc4random_uniform(0x401u);
    v17 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x1E695DF00], v24, v25, v16 * vcvtd_n_f64_u32(v23, 0xAuLL));
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v26 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v38 = 138543362;
      v39 = v17;
      _os_log_debug_impl(&dword_1883EA000, v26, OS_LOG_TYPE_DEBUG, "Initializing last fetch date to %{public}@", &v38, 0xCu);
    }

    v29 = objc_msgSend_database(self, v27, v28);
    objc_msgSend_setLastFetchDate_(v29, v30, v17);
  }

  objc_msgSend_invokeCallbackForOverridePoint_withError_onCallbackQueue_(self, v36, 2, 0, 1);
  v37 = *MEMORY[0x1E69E9840];
}

- (void)scheduleNextSync
{
  v4 = objc_msgSend_stateQueue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  v7 = objc_msgSend_date(MEMORY[0x1E695DF00], v5, v6);
  v9 = objc_msgSend_nextRepairDateForDate_(self, v8, v7);
  v11 = v9;
  if (v9)
  {
    if (objc_msgSend_compare_(v9, v10, v7) == 1)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v12 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1883EA000, v12, OS_LOG_TYPE_INFO, "Scheduling next upload requests at a future date", buf, 2u);
      }

      objc_msgSend_timeIntervalSinceDate_(v11, v13, v7);
      objc_msgSend_scheduleRepairsWithDelay_(self, v14, v15);
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v17 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
      {
        *v21 = 0;
        _os_log_impl(&dword_1883EA000, v17, OS_LOG_TYPE_INFO, "Scheduling next upload requests right away", v21, 2u);
      }

      objc_msgSend_scheduleOrInvokeRepairsNow(self, v18, v19);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v16 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_1883EA000, v16, OS_LOG_TYPE_INFO, "Attempted to schedule next upload request, but nothing to do", v20, 2u);
    }
  }
}

@end