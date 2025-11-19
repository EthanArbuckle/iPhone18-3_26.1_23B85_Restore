@interface CKUploadRequestManager
+ (id)activityIdentifierForSchedulingRepairsInContainer:(id)a3;
- (CKContainer)repairContainer;
- (CKSyncEngine)repairZoneSyncEngine;
- (CKUploadRequestManager)initWithContainer:(id)a3 repairContainerOverrides:(id)a4;
- (CKUploadRequestManagerResponseActionThrottler)responseActionThrottler;
- (CKUploadRequestPersistentStore)database;
- (NSString)activityIdentifierForSchedulingRepairs;
- (NSString)machServiceName;
- (double)assetRepairSchedulerDefaultSuspensionTime;
- (double)cancelledErrorRetryTime;
- (double)notificationDebouncePeriod;
- (double)recurringFetchPeriod;
- (double)retryableErrorMaxRetryCount;
- (double)retryableErrorRetryTime;
- (double)tryAgainLaterRetryTime;
- (id)assetRequestCallback;
- (id)packageRequestCallback;
- (int64_t)assetRepairSchedulerRepairBatchCountLimit;
- (int64_t)assetRepairSchedulerRepairRetryCount;
- (void)cancelAllOperations;
- (void)dealloc;
- (void)fetchServerChanges:(id)a3;
- (void)manuallyTriggerUploadRequests;
- (void)registerForItemRequests;
- (void)scheduleOrInvokeRepairsNow;
- (void)setAssetRepairSchedulerDefaultSuspensionTime:(double)a3;
- (void)setAssetRepairSchedulerRepairRetryCount:(int64_t)a3;
- (void)setAssetRequestCallback:(id)a3;
- (void)setCallback:(id)a3 forOverridePoint:(int64_t)a4;
- (void)setCancelledErrorRetryTime:(double)a3;
- (void)setMachServiceName:(id)a3;
- (void)setNotificationDebouncePeriod:(double)a3;
- (void)setPackageRequestCallback:(id)a3;
- (void)setRecurringFetchPeriod:(double)a3;
- (void)setRetryableErrorMaxRetryCount:(double)a3;
- (void)setRetryableErrorRetryTime:(double)a3;
- (void)setTryAgainLaterRetryTime:(double)a3;
- (void)unregister;
@end

@implementation CKUploadRequestManager

- (double)recurringFetchPeriod
{
  v6 = objc_msgSend_internals(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_internals(self, v4, v5);
    objc_msgSend_recurringFetchPeriod(v7, v8, v9);
    v11 = v10;
  }

  else
  {
    v11 = -1.0;
  }

  return v11;
}

- (double)tryAgainLaterRetryTime
{
  v6 = objc_msgSend_internals(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_internals(self, v4, v5);
    objc_msgSend_tryAgainLaterRetryTime(v7, v8, v9);
    v11 = v10;
  }

  else
  {
    v11 = -1.0;
  }

  return v11;
}

- (double)retryableErrorRetryTime
{
  v6 = objc_msgSend_internals(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_internals(self, v4, v5);
    objc_msgSend_retryableErrorRetryTime(v7, v8, v9);
    v11 = v10;
  }

  else
  {
    v11 = -1.0;
  }

  return v11;
}

- (double)cancelledErrorRetryTime
{
  v6 = objc_msgSend_internals(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_internals(self, v4, v5);
    objc_msgSend_cancelledErrorRetryTime(v7, v8, v9);
    v11 = v10;
  }

  else
  {
    v11 = -1.0;
  }

  return v11;
}

- (double)retryableErrorMaxRetryCount
{
  v6 = objc_msgSend_internals(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_internals(self, v4, v5);
    objc_msgSend_retryableErrorMaxRetryCount(v7, v8, v9);
    v11 = v10;
  }

  else
  {
    v11 = -1.0;
  }

  return v11;
}

- (double)notificationDebouncePeriod
{
  v6 = objc_msgSend_internals(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_internals(self, v4, v5);
    objc_msgSend_notificationDebouncePeriod(v7, v8, v9);
    v11 = v10;
  }

  else
  {
    v11 = -1.0;
  }

  return v11;
}

- (int64_t)assetRepairSchedulerRepairBatchCountLimit
{
  internals = self->_internals;
  if (internals)
  {
    return objc_msgSend_assetRepairSchedulerRepairBatchCountLimit(internals, a2, v2);
  }

  else
  {
    return -1;
  }
}

- (double)assetRepairSchedulerDefaultSuspensionTime
{
  v6 = objc_msgSend_internals(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_internals(self, v4, v5);
    objc_msgSend_assetRepairSchedulerDefaultSuspensionTime(v7, v8, v9);
    v11 = v10;
  }

  else
  {
    v11 = -1.0;
  }

  return v11;
}

- (int64_t)assetRepairSchedulerRepairRetryCount
{
  v6 = objc_msgSend_internals(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_internals(self, v4, v5);
    v10 = objc_msgSend_assetRepairSchedulerRepairRetryCount(v7, v8, v9);
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (void)setRecurringFetchPeriod:(double)a3
{
  v7 = objc_msgSend_internals(self, a2, v3);
  objc_msgSend_setRecurringFetchPeriod_(v7, v5, v6, a3);
}

- (void)setTryAgainLaterRetryTime:(double)a3
{
  v7 = objc_msgSend_internals(self, a2, v3);
  objc_msgSend_setTryAgainLaterRetryTime_(v7, v5, v6, a3);
}

- (void)setRetryableErrorRetryTime:(double)a3
{
  v7 = objc_msgSend_internals(self, a2, v3);
  objc_msgSend_setRetryableErrorRetryTime_(v7, v5, v6, a3);
}

- (void)setCancelledErrorRetryTime:(double)a3
{
  v7 = objc_msgSend_internals(self, a2, v3);
  objc_msgSend_setCancelledErrorRetryTime_(v7, v5, v6, a3);
}

- (void)setRetryableErrorMaxRetryCount:(double)a3
{
  v7 = objc_msgSend_internals(self, a2, v3);
  objc_msgSend_setRetryableErrorMaxRetryCount_(v7, v5, v6, a3);
}

- (void)setNotificationDebouncePeriod:(double)a3
{
  v7 = objc_msgSend_internals(self, a2, v3);
  objc_msgSend_setNotificationDebouncePeriod_(v7, v5, v6, a3);
}

- (void)setAssetRepairSchedulerDefaultSuspensionTime:(double)a3
{
  v7 = objc_msgSend_internals(self, a2, v3);
  objc_msgSend_setAssetRepairSchedulerDefaultSuspensionTime_(v7, v5, v6, a3);
}

- (void)setAssetRepairSchedulerRepairRetryCount:(int64_t)a3
{
  v5 = objc_msgSend_internals(self, a2, a3);
  objc_msgSend_setAssetRepairSchedulerRepairRetryCount_(v5, v4, a3);
}

+ (id)activityIdentifierForSchedulingRepairsInContainer:(id)a3
{
  v3 = objc_msgSend_containerID(a3, a2, a3);
  v4 = MEMORY[0x1E696AEC0];
  v7 = objc_msgSend_containerIdentifier(v3, v5, v6);
  v10 = objc_msgSend_environment(v3, v8, v9);
  v11 = CKContainerEnvironmentString(v10);
  v13 = objc_msgSend_stringWithFormat_(v4, v12, @"%@.%@.%@", @"com.apple.cloudkit.uploadrequest.repair", v7, v11);

  return v13;
}

- (void)dealloc
{
  objc_msgSend_setAssetRequestCallback_(self->_internals, a2, 0);
  objc_msgSend_setPackageRequestCallback_(self->_internals, v3, 0);
  objc_msgSend_dispatchEvent_synchronously_(self->_internals, v4, 1, 1);
  v5.receiver = self;
  v5.super_class = CKUploadRequestManager;
  [(CKUploadRequestManager *)&v5 dealloc];
}

- (CKUploadRequestManager)initWithContainer:(id)a3 repairContainerOverrides:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CKUploadRequestManager;
  v8 = [(CKUploadRequestManager *)&v14 init];
  if (v8)
  {
    v9 = [CKUploadRequestManagerInternals alloc];
    v11 = objc_msgSend_initWithContainer_repairContainerOverrides_(v9, v10, v6, v7);
    internals = v8->_internals;
    v8->_internals = v11;
  }

  return v8;
}

- (id)assetRequestCallback
{
  v3 = objc_msgSend_internals(self, a2, v2);
  v6 = objc_msgSend_assetRequestCallback(v3, v4, v5);

  return v6;
}

- (void)setAssetRequestCallback:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_internals(self, v5, v6);
  objc_msgSend_setAssetRequestCallback_(v8, v7, v4);
}

- (id)packageRequestCallback
{
  v3 = objc_msgSend_internals(self, a2, v2);
  v6 = objc_msgSend_packageRequestCallback(v3, v4, v5);

  return v6;
}

- (void)setPackageRequestCallback:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_internals(self, v5, v6);
  objc_msgSend_setPackageRequestCallback_(v8, v7, v4);
}

- (NSString)machServiceName
{
  v3 = objc_msgSend_internals(self, a2, v2);
  v6 = objc_msgSend_machServiceName(v3, v4, v5);

  return v6;
}

- (void)setMachServiceName:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_internals(self, v5, v6);
  objc_msgSend_setMachServiceName_(v8, v7, v4);
}

- (NSString)activityIdentifierForSchedulingRepairs
{
  v3 = objc_msgSend_internals(self, a2, v2);
  v6 = objc_msgSend_activityIdentifierForSchedulingRepairs(v3, v4, v5);

  return v6;
}

- (CKSyncEngine)repairZoneSyncEngine
{
  v3 = objc_msgSend_internals(self, a2, v2);
  v6 = objc_msgSend_repairZoneSyncEngine(v3, v4, v5);

  return v6;
}

- (CKContainer)repairContainer
{
  v3 = objc_msgSend_internals(self, a2, v2);
  v6 = objc_msgSend_repairContainer(v3, v4, v5);

  return v6;
}

- (CKUploadRequestPersistentStore)database
{
  v3 = objc_msgSend_internals(self, a2, v2);
  v6 = objc_msgSend_database(v3, v4, v5);

  return v6;
}

- (void)registerForItemRequests
{
  v3 = _os_activity_create(&dword_1883EA000, "client/data-repair-register", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v3, &v8);
  v6 = objc_msgSend_internals(self, v4, v5);
  objc_msgSend_dispatchEvent_synchronously_(v6, v7, 0, 0);

  os_activity_scope_leave(&v8);
}

- (void)unregister
{
  v3 = _os_activity_create(&dword_1883EA000, "client/data-repair-unregister", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v3, &v8);
  v6 = objc_msgSend_internals(self, v4, v5);
  objc_msgSend_dispatchEvent_synchronously_(v6, v7, 2, 1);

  os_activity_scope_leave(&v8);
}

- (void)manuallyTriggerUploadRequests
{
  v3 = _os_activity_create(&dword_1883EA000, "client/data-repair-manually-trigger", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v3, &v9);
  v6 = objc_msgSend_internals(self, v4, v5);
  objc_msgSend_manuallyTriggerUploadRequests(v6, v7, v8);

  os_activity_scope_leave(&v9);
}

- (void)fetchServerChanges:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1883EA000, "client/data-repair-fetch-changes", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v5, &v10);
  v8 = objc_msgSend_internals(self, v6, v7);
  objc_msgSend_fetchServerChanges_(v8, v9, v4);

  os_activity_scope_leave(&v10);
}

- (void)scheduleOrInvokeRepairsNow
{
  v5 = objc_msgSend_internals(self, a2, v2);
  objc_msgSend_scheduleOrInvokeRepairsNow(v5, v3, v4);
}

- (void)cancelAllOperations
{
  v3 = _os_activity_create(&dword_1883EA000, "client/data-repair-cancel", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v3, &v8);
  v6 = objc_msgSend_internals(self, v4, v5);
  objc_msgSend_dispatchEvent_synchronously_(v6, v7, 3, 0);

  os_activity_scope_leave(&v8);
}

- (void)setCallback:(id)a3 forOverridePoint:(int64_t)a4
{
  v6 = a3;
  v10 = objc_msgSend_internals(self, v7, v8);
  objc_msgSend_setCallback_forOverridePoint_(v10, v9, v6, a4);
}

- (CKUploadRequestManagerResponseActionThrottler)responseActionThrottler
{
  v3 = objc_msgSend_internals(self, a2, v2);
  v6 = objc_msgSend_responseActionThrottler(v3, v4, v5);

  return v6;
}

@end