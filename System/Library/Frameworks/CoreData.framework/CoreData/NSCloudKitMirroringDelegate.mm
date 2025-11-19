@interface NSCloudKitMirroringDelegate
+ (BOOL)checkAndCreateDirectoryAtURL:(id)a3 wipeIfExists:(BOOL)a4 error:(id *)a5;
+ (BOOL)printEventsInStores:(id)a3 startingAt:(id)a4 endingAt:(id)a5 error:(id *)a6;
+ (BOOL)printSharedZoneWithName:(id)a3 inStoreAtURL:(id)a4 error:(id *)a5;
+ (BOOL)traceObjectMatchingRecordName:(id)a3 inStores:(id)a4 startingAt:(id)a5 endingAt:(id)a6 error:(id *)a7;
+ (BOOL)traceObjectMatchingValue:(id)a3 atKeyPath:(id)a4 inStores:(id)a5 startingAt:(id)a6 endingAt:(id)a7 error:(id *)a8;
+ (id)createCloudKitServerWithMachServiceName:(id)a3 andStorageDirectoryPath:(id)a4;
+ (id)stringForResetReason:(unint64_t)a3;
+ (void)initialize;
+ (void)printMetadataForStoreAtURL:(id)a3 withConfiguration:(id)a4 operateOnACopy:(BOOL)a5;
+ (void)printRepresentativeSchemaForModelAtURL:(id)a3 orStoreAtURL:(id)a4 withConfiguration:(id)a5;
- (BOOL)validateManagedObjectModel:(id)a3 forUseWithStoreWithDescription:(id)a4 error:(id *)a5;
- (NSCloudKitMirroringDelegate)initWithCloudKitContainerOptions:(id)a3;
- (NSCloudKitMirroringDelegate)initWithOptions:(id)a3;
- (NSPersistentStoreResult)executeMirroringRequest:(uint64_t *)a3 error:;
- (uint64_t)_dateExceedsSchedulingThreshold:(uint64_t)result;
- (uint64_t)_exportFinishedWithResult:(uint64_t)a3 exporter:;
- (uint64_t)_finishedRequest:(void *)a3 withResult:;
- (uint64_t)_importFinishedWithResult:(uint64_t)a3 importer:;
- (uint64_t)_markZonesNeedingRecoveryFromManateeIdentityLoss:(uint64_t)a3 databaseScope:(uint64_t)a4 inStore:(void *)a5 error:;
- (uint64_t)_recoverFromError:(void *)a3 withZoneIDs:(uint64_t)a4 forStore:(uint64_t)a5 inMonitor:;
- (uint64_t)recoverFromError:(uint64_t)a1;
- (uint64_t)retryAfterInSecondsFromError:(void *)a1;
- (uint64_t)shouldAttemptSetupRecoveryFromError:(char)a3 viaPush:;
- (unsigned)qosClassForAccountMonitor:(id)a3;
- (void)_acceptShareMetadatasInRequest:(uint64_t)a3 workBlockContext:;
- (void)_disableAutomaticExports;
- (void)_enableAutomaticExports;
- (void)_openTransactionWithLabel:(uint64_t)a3 assertionLabel:(uint64_t)a4 andExecuteWorkBlock:;
- (void)_performAcceptShareInvitationsRequest:(uint64_t)a1;
- (void)_performDelegateResetRequest:(uint64_t)a1;
- (void)_performExportProgressRequest:(uint64_t)a1;
- (void)_performSchemaInitializationRequest:(uint64_t)a1;
- (void)_performSerializationRequest:(uint64_t)a1;
- (void)_performSetupRequest:(uint64_t)a1;
- (void)_postResetSyncNotificationWithName:(void *)a3 forError:;
- (void)_requestAbortedNotInitialized:(uint64_t)a1;
- (void)_requestEncounteredRecoverableError:(void *)a3 withResult:;
- (void)_requestEncounteredUnrecoverableError:(void *)a3 withResult:;
- (void)_scheduleAutomatedExportWithLabel:(uint64_t)a3 activity:(uint64_t)a4 voucher:(uint64_t)a5 completionHandler:;
- (void)_scheduleAutomatedImportWithLabel:(uint64_t)a3 activity:(uint64_t)a4 voucher:(uint64_t)a5 completionHandler:;
- (void)_setUpCloudKitIntegration:(uint64_t)a1;
- (void)accountMonitorAccountChanged:(id)a3;
- (void)addActivityVoucher:(id)a3;
- (void)applicationStateMonitorEnteredBackground:(id)a3;
- (void)applicationStateMonitorEnteredForeground:(id)a3;
- (void)applicationStateMonitorExpiredBackgroundActivityTimeout:(id)a3;
- (void)beginActivitiesForRequest:(uint64_t)a1;
- (void)checkAndExecuteNextRequest;
- (void)checkAndScheduleImportIfNecessaryFromPush:(char)a3 fromErrorRecovery:fromShareAccept:andStartAfterDate:;
- (void)coordinatorWillRemoveStore:(id)a3;
- (void)dealloc;
- (void)eventUpdated:(id)a3;
- (void)expireActivityVoucher:(id)a3;
- (void)exporter:(id)a3 willScheduleOperations:(id)a4;
- (void)finishedAutomatedRequestWithResult:(uint64_t)a1;
- (void)logResetSyncNotification:(id)a3;
- (void)managedObjectContextSaved:(id)a3;
- (void)newActivityWithIdentifier:(void *)a3 andVoucher:;
- (void)persistentStoreCoordinator:(id)a3 didSuccessfullyAddPersistentStore:(id)a4 withDescription:(id)a5;
- (void)publishActivity:(id)a3;
- (void)registerForAccountAndIdentityNotificationsIfNeeded;
- (void)remoteStoreDidChange:(id)a3;
- (void)removeNotificationRegistrations;
- (void)resetAfterError:(uint64_t)a1 andKeepContainer:(void *)a2;
- (void)scheduleExportAndStartAfterDate:(uint64_t)a1;
- (void)storesDidChange:(id)a3;
- (void)tearDown:(uint64_t)a1;
@end

@implementation NSCloudKitMirroringDelegate

+ (void)initialize
{
  objc_opt_self();
  if (objc_opt_class() == a1)
  {

    objc_opt_class();
  }
}

- (void)dealloc
{
  [(NSCloudKitMirroringDelegate *)self removeNotificationRegistrations];

  self->_coredatadClient = 0;
  self->_cloudKitQueue = 0;

  self->_options = 0;
  self->_databaseSubscription = 0;

  self->_container = 0;
  self->_database = 0;

  self->_scheduler = 0;
  self->_notificationListener = 0;

  self->_lastInitializationError = 0;
  self->_exporterOptions = 0;

  objc_storeWeak(&self->_observedStore, 0);
  objc_storeWeak(&self->_observedCoordinator, 0);

  self->_sharingUIObserver = 0;
  self->_applicationMonitor = 0;

  self->_setupActivityIdentifier = 0;
  self->_activityGroupName = 0;

  v3.receiver = self;
  v3.super_class = NSCloudKitMirroringDelegate;
  [(NSCloudKitMirroringDelegate *)&v3 dealloc];
}

- (void)removeNotificationRegistrations
{
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    Weak = objc_loadWeak((a1 + 120));
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 removeObserver:a1 name:@"NSPersistentStoreCoordinatorWillRemoveStoreNotification" object:objc_loadWeak((a1 + 112))];
    [v4 removeObserver:a1 name:@"NSPersistentStoreCoordinatorStoresDidChangeNotification" object:Weak];
    [v4 removeObserver:a1 name:@"_NSManagedObjectContextDidSaveObjectIDsPrivateNotification" object:Weak];
    [v4 removeObserver:a1 name:@"NSPersistentStoreRemoteChangeNotification" object:Weak];
    [v4 removeObserver:a1 name:@"PFCKAccountMonitorAccountChangedNotificationName" object:*(a1 + 136)];
    [*(a1 + 136) stopMonitoringNotifications];
    *(a1 + 133) = 0;

    objc_autoreleasePoolPop(v2);
  }
}

- (void)checkAndExecuteNextRequest
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v4 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v5 = 17;
    }

    else
    {
      v5 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v5 = 16;
    }

    if (__ckLoggingOverride)
    {
      v6 = v5;
    }

    else
    {
      v6 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(Stream, v6))
    {
      *buf = 136315650;
      v11 = "[NSCloudKitMirroringDelegate checkAndExecuteNextRequest]";
      v12 = 1024;
      v13 = 3570;
      v14 = 2112;
      v15 = a1;
      _os_log_impl(&dword_18565F000, v4, v6, "CoreData+CloudKit: %s(%d): %@: Checking for pending requests.", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v2);
    objc_initWeak(buf, a1);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__NSCloudKitMirroringDelegate_checkAndExecuteNextRequest__block_invoke;
    v8[3] = &unk_1E6EC4DB8;
    objc_copyWeak(&v9, buf);
    [(NSCloudKitMirroringDelegate *)a1 _openTransactionWithLabel:@"CoreData: CloudKit Scheduling" assertionLabel:v8 andExecuteWorkBlock:?];
    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __57__NSCloudKitMirroringDelegate_checkAndExecuteNextRequest__block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[18];
    v4 = v3;
    if (v3 && v3[12])
    {
      v5 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v7 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v8 = 17;
      }

      else
      {
        v8 = 1;
      }

      if (__ckLoggingOverride == 16)
      {
        v8 = 16;
      }

      if (__ckLoggingOverride)
      {
        v9 = v8;
      }

      else
      {
        v9 = OS_LOG_TYPE_DEFAULT;
      }

      if (os_log_type_enabled(Stream, v9))
      {
        v10 = v4[12];
        *v33 = 136315906;
        *&v33[4] = "[NSCloudKitMirroringDelegate checkAndExecuteNextRequest]_block_invoke";
        *&v33[12] = 1024;
        *&v33[14] = 3579;
        *&v33[18] = 2112;
        *&v33[20] = v2;
        *&v33[28] = 2112;
        *&v33[30] = v10;
        _os_log_impl(&dword_18565F000, v7, v9, "CoreData+CloudKit: %s(%d): %@: Deferring additional work. There is still an active request: %@", v33, 0x26u);
      }

      objc_autoreleasePoolPop(v5);
      goto LABEL_64;
    }

    v17 = [(NSCloudKitMirroringRequestManager *)v3 dequeueNextRequest];
    v18 = objc_autoreleasePoolPush();
    v19 = __PFCloudKitLoggingGetStream();
    v20 = v19;
    if (__ckLoggingOverride == 17)
    {
      v21 = 17;
    }

    else
    {
      v21 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v21 = 16;
    }

    if (__ckLoggingOverride)
    {
      v22 = v21;
    }

    else
    {
      v22 = OS_LOG_TYPE_DEFAULT;
    }

    v23 = os_log_type_enabled(v19, v22);
    if (!v17)
    {
      if (v23)
      {
        *v33 = 136315650;
        *&v33[4] = "[NSCloudKitMirroringDelegate checkAndExecuteNextRequest]_block_invoke";
        *&v33[12] = 1024;
        *&v33[14] = 3586;
        *&v33[18] = 2112;
        *&v33[20] = v2;
        _os_log_impl(&dword_18565F000, v20, v22, "CoreData+CloudKit: %s(%d): %@: No more requests to execute.", v33, 0x1Cu);
      }

      objc_autoreleasePoolPop(v18);
      goto LABEL_63;
    }

    if (v23)
    {
      *v33 = 136315906;
      *&v33[4] = "[NSCloudKitMirroringDelegate checkAndExecuteNextRequest]_block_invoke";
      *&v33[12] = 1024;
      *&v33[14] = 3583;
      *&v33[18] = 2112;
      *&v33[20] = v2;
      *&v33[28] = 2112;
      *&v33[30] = v17;
      _os_log_impl(&dword_18565F000, v20, v22, "CoreData+CloudKit: %s(%d): %@: Executing: %@", v33, 0x26u);
    }

    objc_autoreleasePoolPop(v18);
    v24 = v17[9];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v24 endActivityForPhase:0 withError:0];
      [objc_msgSend(v2[1] "progressProvider")];
    }

    else if (v24)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *v33 = 138412290;
        *&v33[4] = v24;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: I don't know how to handle this type of activity yet: %@\n", v33, 0xCu);
      }

      v27 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        *v33 = 138412290;
        *&v33[4] = v24;
        _os_log_fault_impl(&dword_18565F000, v27, OS_LOG_TYPE_FAULT, "CoreData: I don't know how to handle this type of activity yet: %@", v33, 0xCu);
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *v33 = MEMORY[0x1E69E9820];
      *&v33[8] = 3221225472;
      *&v33[16] = __59__NSCloudKitMirroringDelegate__performFetchRecordsRequest___block_invoke;
      *&v33[24] = &unk_1E6EC4B10;
      *&v33[32] = v2;
      v34 = v17;
      v28 = @"com.apple.coredata.cloudkit.fetch.records";
      v29 = @"CoreData: CloudKit Fetch Records";
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *v33 = MEMORY[0x1E69E9820];
        *&v33[8] = 3221225472;
        *&v33[16] = __57__NSCloudKitMirroringDelegate__performImportWithRequest___block_invoke;
        *&v33[24] = &unk_1E6EC4B10;
        *&v33[32] = v2;
        v34 = v17;
        v28 = @"com.apple.coredata.cloudkit.import";
        v29 = @"CoreData: CloudKit Import";
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *v33 = MEMORY[0x1E69E9820];
          *&v33[8] = 3221225472;
          *&v33[16] = __57__NSCloudKitMirroringDelegate__performExportWithRequest___block_invoke;
          *&v33[24] = &unk_1E6EC4B10;
          *&v33[32] = v2;
          v34 = v17;
          v28 = @"com.apple.coredata.cloudkit.export";
          v29 = @"CoreData: CloudKit Export";
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *v33 = MEMORY[0x1E69E9820];
            *&v33[8] = 3221225472;
            *&v33[16] = __56__NSCloudKitMirroringDelegate__performResetZoneRequest___block_invoke;
            *&v33[24] = &unk_1E6EC4B10;
            *&v33[32] = v2;
            v34 = v17;
            v28 = @"com.apple.coredata.cloudkit.zone.reset";
            v29 = @"CoreData: CloudKit Zone Reset";
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(NSCloudKitMirroringDelegate *)v2 _performSetupRequest:v17];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [(NSCloudKitMirroringDelegate *)v2 _performDelegateResetRequest:v17];
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [(NSCloudKitMirroringDelegate *)v2 _performSchemaInitializationRequest:v17];
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      [(NSCloudKitMirroringDelegate *)v2 _performSerializationRequest:v17];
                    }

                    else
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        [(NSCloudKitMirroringDelegate *)v2 _performExportProgressRequest:v17];
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          [(NSCloudKitMirroringDelegate *)v2 _performAcceptShareInvitationsRequest:v17];
                        }

                        else
                        {
                          v31 = _PFLogGetLogStream(17);
                          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                          {
                            *v33 = 138412546;
                            *&v33[4] = v2;
                            *&v33[12] = 2112;
                            *&v33[14] = v17;
                            _os_log_error_impl(&dword_18565F000, v31, OS_LOG_TYPE_ERROR, "CoreData: fault: %@: Asked to execute a request that isn't understood yet: %@\n", v33, 0x16u);
                          }

                          v32 = _PFLogGetLogStream(17);
                          if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
                          {
                            *v33 = 138412546;
                            *&v33[4] = v2;
                            *&v33[12] = 2112;
                            *&v33[14] = v17;
                            _os_log_fault_impl(&dword_18565F000, v32, OS_LOG_TYPE_FAULT, "CoreData: %@: Asked to execute a request that isn't understood yet: %@", v33, 0x16u);
                          }
                        }
                      }
                    }
                  }
                }
              }

              goto LABEL_63;
            }

            *v33 = MEMORY[0x1E69E9820];
            *&v33[8] = 3221225472;
            *&v33[16] = __60__NSCloudKitMirroringDelegate__performMetadataResetRequest___block_invoke;
            *&v33[24] = &unk_1E6EC4B10;
            *&v33[32] = v2;
            v34 = v17;
            v28 = @"com.apple.coredata.cloudkit.metadata.reset";
            v29 = @"CoreData: CloudKit Metadata Reset";
          }
        }
      }
    }

    [(NSCloudKitMirroringDelegate *)v2 _openTransactionWithLabel:v28 assertionLabel:v29 andExecuteWorkBlock:v33];
LABEL_63:

LABEL_64:
    goto LABEL_65;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = __PFCloudKitLoggingGetStream();
  v13 = v12;
  if (__ckLoggingOverride == 17)
  {
    v14 = 17;
  }

  else
  {
    v14 = 2;
  }

  if (__ckLoggingOverride == 16)
  {
    v14 = 16;
  }

  if (__ckLoggingOverride == 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  if (!__ckLoggingOverride)
  {
    v15 = 0;
  }

  if (__ckLoggingOverride <= 0xFu)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  if (os_log_type_enabled(v12, v16))
  {
    *v33 = 136315394;
    *&v33[4] = "[NSCloudKitMirroringDelegate checkAndExecuteNextRequest]_block_invoke";
    *&v33[12] = 1024;
    *&v33[14] = 3592;
    _os_log_impl(&dword_18565F000, v13, v16, "CoreData+CloudKit: %s(%d): Unable to schedule work because the mirroring delegate was deallocated.", v33, 0x12u);
  }

  objc_autoreleasePoolPop(v11);
LABEL_65:

  v30 = *MEMORY[0x1E69E9840];
}

- (void)registerForAccountAndIdentityNotificationsIfNeeded
{
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    if ((*(a1 + 133) & 1) == 0)
    {
      [*(a1 + 136) beginMonitoringNotifications];
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      *(a1 + 133) = 1;
    }

    objc_autoreleasePoolPop(v2);
  }
}

+ (id)createCloudKitServerWithMachServiceName:(id)a3 andStorageDirectoryPath:(id)a4
{
  v6 = objc_alloc_init(CDDCloudKitServerConfiguration);
  if ([a3 length])
  {
    if (!v6)
    {
      [a4 length];
      goto LABEL_7;
    }

    objc_setProperty_nonatomic(v6, v7, a3, 16);
  }

  if ([a4 length] && v6)
  {
    objc_setProperty_nonatomic(v6, v8, a4, 8);
  }

LABEL_7:
  v9 = [[CDDCloudKitServer alloc] initWithListener:0 configuration:v6];

  return v9;
}

- (NSCloudKitMirroringDelegate)initWithOptions:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = [(NSCloudKitMirroringDelegate *)self init];
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [a3 copy];
    v4->_options = v6;
    if (![(NSCloudKitMirroringDelegateOptions *)v6 progressProvider])
    {
      [(NSCloudKitMirroringDelegateOptions *)v4->_options setProgressProvider:v4];
    }

    objc_autoreleasePoolPop(v5);
    if (_MergedGlobals_87 != -1)
    {
      dispatch_once(&_MergedGlobals_87, &__block_literal_global_29);
    }

    v4->_cloudKitQueueSemaphore = dispatch_semaphore_create(0);
    v4->_cloudKitQueue = qword_1ED4BEB40;
    v4->_databaseSubscription = 0;
    *&v4->_hadObservedStore = 0;
    v4->_setupFinishedMetadataInitialization = 0;
    v4->_registeredForAccountChangeNotifications = 0;
    v4->_requestManager = objc_alloc_init(NSCloudKitMirroringRequestManager);
    v4->_voucherManager = objc_alloc_init(NSCloudKitMirroringActivityVoucherManager);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = [a3 activityVouchers];
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(NSCloudKitMirroringActivityVoucherManager *)v4->_voucherManager addVoucher:*(*(&v21 + 1) + 8 * i)];
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    if ([(NSCloudKitMirroringDelegateOptions *)v4->_options automaticallyScheduleImportAndExportOperations])
    {
      options = v4->_options;
      if (!options || (scheduler = options->_scheduler) == 0)
      {
        scheduler = [getCloudKitCKSchedulerClass[0]() sharedScheduler];
      }

      v4->_scheduler = scheduler;
      if ([(NSCloudKitMirroringDelegateOptions *)v4->_options databaseScope]== 2 || [(NSCloudKitMirroringDelegateOptions *)v4->_options databaseScope]== 3)
      {
        v14 = v4->_options;
        if (v14 && (notificationListener = v14->_notificationListener) != 0)
        {
          v16 = notificationListener;
        }

        else
        {
          v17 = [(NSString *)[(NSCloudKitMirroringDelegateOptions *)v14 apsConnectionMachServiceName] length];
          v18 = getCloudKitCKNotificationListenerClass[0]();
          if (v17)
          {
            v16 = [[v18 alloc] initWithMachServiceName:{-[NSCloudKitMirroringDelegateOptions apsConnectionMachServiceName](v4->_options, "apsConnectionMachServiceName")}];
          }

          else
          {
            v16 = objc_alloc_init(v18);
          }
        }
      }

      else
      {
        v16 = 0;
      }

      v4->_notificationListener = v16;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v4;
}

dispatch_queue_t __47__NSCloudKitMirroringDelegate_initWithOptions___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.coredata.cloudkit.queue", v0);
  qword_1ED4BEB40 = result;
  return result;
}

- (NSCloudKitMirroringDelegate)initWithCloudKitContainerOptions:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = a3;
  }

  else
  {
    v5 = [[NSCloudKitMirroringDelegateOptions alloc] initWithCloudKitContainerOptions:a3];
  }

  v6 = v5;
  v7 = [(NSCloudKitMirroringDelegate *)self initWithOptions:v5];

  return v7;
}

- (BOOL)validateManagedObjectModel:(id)a3 forUseWithStoreWithDescription:(id)a4 error:(id *)a5
{
  v40[1] = *MEMORY[0x1E69E9840];
  v30 = 0;
  if (self->_hadObservedStore)
  {
    v6 = *MEMORY[0x1E696A250];
    v35 = *MEMORY[0x1E696A588];
    v36 = @"Instances of NSCloudKitMirroringDelegate are not reusable and should have a lifecycle tied to a given instance of NSPersistentStore.";
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:v6 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v36, &v35, 1)}];
    v30 = v7;
    if (v7)
    {
      goto LABEL_3;
    }

    goto LABEL_20;
  }

  if ([objc_msgSend(objc_msgSend(a4 "options")])
  {
LABEL_6:
    LOBYTE(v8) = 1;
    goto LABEL_25;
  }

  v12 = -[PFCloudKitModelValidator initWithManagedObjectModel:configuration:mirroringDelegateOptions:]([PFCloudKitModelValidator alloc], "initWithManagedObjectModel:configuration:mirroringDelegateOptions:", a3, [a4 configuration], self->_options);
  v13 = v12;
  options = self->_options;
  if (options)
  {
    LOBYTE(options) = options->_skipCloudKitSetup;
  }

  if (!v12)
  {
    goto LABEL_18;
  }

  v12->_skipValueTransformerValidation = options & 1;
  if (![(PFCloudKitModelValidator *)v12 _validateManagedObjectModel:&v30 error:?])
  {
    goto LABEL_18;
  }

  if (!a4)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = objc_opt_class();
    v19 = [v17 stringWithFormat:@"Cannot be used without an instance of %@.", NSStringFromClass(v18)];
    v20 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A250];
    v37 = *MEMORY[0x1E696A588];
    v38 = v19;
    v22 = MEMORY[0x1E695DF20];
    v23 = &v38;
    v24 = &v37;
LABEL_17:
    v30 = [v20 errorWithDomain:v21 code:134060 userInfo:{objc_msgSend(v22, "dictionaryWithObjects:forKeys:count:", v23, v24, 1)}];
LABEL_18:

    goto LABEL_19;
  }

  if (([objc_msgSend(a4 "type")] & 1) == 0)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CloudKit integration is only supported for %@ stores.", @"SQLite"];
    v20 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A250];
    v39 = *MEMORY[0x1E696A588];
    v40[0] = v25;
    v22 = MEMORY[0x1E695DF20];
    v23 = v40;
    v24 = &v39;
    goto LABEL_17;
  }

  v15 = objc_alloc_init(PFCloudKitOptionsValidator);
  v16 = -[PFCloudKitOptionsValidator validateOptions:andStoreOptions:error:](v15, self->_options, [a4 options], &v30);

  if (v16)
  {
    goto LABEL_6;
  }

LABEL_19:
  v7 = v30;
  if (v30)
  {
LABEL_3:
    if (a5)
    {
      LOBYTE(v8) = 0;
      *a5 = v7;
      goto LABEL_25;
    }

LABEL_24:
    LOBYTE(v8) = 0;
    goto LABEL_25;
  }

LABEL_20:
  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v32 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate.m";
    v33 = 1024;
    v34 = 371;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v27 = _PFLogGetLogStream(17);
  v8 = os_log_type_enabled(v27, OS_LOG_TYPE_FAULT);
  if (v8)
  {
    *buf = 136315394;
    v32 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate.m";
    v33 = 1024;
    v34 = 371;
    _os_log_fault_impl(&dword_18565F000, v27, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_24;
  }

LABEL_25:
  v28 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)persistentStoreCoordinator:(id)a3 didSuccessfullyAddPersistentStore:(id)a4 withDescription:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __108__NSCloudKitMirroringDelegate_persistentStoreCoordinator_didSuccessfullyAddPersistentStore_withDescription___block_invoke;
  v5[3] = &unk_1E6EC4A48;
  v5[4] = self;
  v5[5] = a4;
  v5[6] = a3;
  [(NSCloudKitMirroringDelegate *)self _openTransactionWithLabel:@"CoreData: CloudKit Add Persistent Store" assertionLabel:v5 andExecuteWorkBlock:?];
}

void __108__NSCloudKitMirroringDelegate_persistentStoreCoordinator_didSuccessfullyAddPersistentStore_withDescription___block_invoke(void *a1)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  if (v1)
  {
    v2 = a1[5];
    v3 = a1[6];
    Weak = objc_loadWeak((v1 + 112));
    v5 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v7 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v8 = 17;
    }

    else
    {
      v8 = 2;
    }

    if (__ckLoggingOverride == 16)
    {
      v8 = 16;
    }

    if (__ckLoggingOverride == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    if (!__ckLoggingOverride)
    {
      v9 = 0;
    }

    if (__ckLoggingOverride <= 0xFu)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    if (os_log_type_enabled(Stream, v10))
    {
      *buf = 136315906;
      *&buf[4] = "[NSCloudKitMirroringDelegate observeChangesForStore:inPersistentStoreCoordinator:]";
      *&buf[12] = 1024;
      *&buf[14] = 403;
      *&buf[18] = 2112;
      *&buf[20] = v1;
      *&buf[28] = 2112;
      *&buf[30] = v2;
      _os_log_impl(&dword_18565F000, v7, v10, "CoreData+CloudKit: %s(%d): %@: Observing store: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v5);
    if (!Weak)
    {
      v11 = objc_autoreleasePoolPush();
      objc_storeWeak((v1 + 112), v2);
      objc_storeWeak((v1 + 120), v3);
      *(v1 + 88) = 1;
      v12 = -[PFCKAccountMonitor initWithOptions:forStoreWithIdentifier:]([PFCKAccountMonitor alloc], "initWithOptions:forStoreWithIdentifier:", *(v1 + 8), [v2 identifier]);
      *(v1 + 136) = v12;
      [(PFCKAccountMonitor *)v12 setDelegate:v1];
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      v13 = [v2 identifier];
      *(v1 + 152) = v13;
      *(v1 + 160) = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"com.apple.coredata.cloudkit.activity.import", v13];
      *(v1 + 168) = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"com.apple.coredata.cloudkit.activity.export", *(v1 + 152)];
      *(v1 + 176) = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"com.apple.coredata.cloudkit.activity.setup", *(v1 + 152)];
      *(v1 + 184) = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coredata.cloudkit.%@.%@", objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30], "processInfo"), "processName"), *(v1 + 152)];
      if ([*(v1 + 8) automaticallyScheduleImportAndExportOperations])
      {
        objc_initWeak(location, v1);
        v14 = *(v1 + 64);
        v15 = *(v1 + 168);
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __83__NSCloudKitMirroringDelegate_observeChangesForStore_inPersistentStoreCoordinator___block_invoke;
        v21[3] = &unk_1E6EC4A70;
        objc_copyWeak(&v22, location);
        [v14 registerActivityIdentifier:v15 handler:v21];
        *(v1 + 130) = 1;
        objc_destroyWeak(&v22);
        v16 = *(v1 + 64);
        v17 = *(v1 + 160);
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __83__NSCloudKitMirroringDelegate_observeChangesForStore_inPersistentStoreCoordinator___block_invoke_179;
        v26[3] = &unk_1E6EC4A70;
        objc_copyWeak(v27, location);
        [v16 registerActivityIdentifier:v17 handler:v26];
        *(v1 + 131) = 1;
        objc_destroyWeak(v27);
        v18 = *(v1 + 64);
        v19 = *(v1 + 176);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __83__NSCloudKitMirroringDelegate_observeChangesForStore_inPersistentStoreCoordinator___block_invoke_186;
        *&buf[24] = &unk_1E6EC3568;
        objc_copyWeak(v25, location);
        *&buf[32] = v1;
        [v18 registerActivityIdentifier:v19 handler:buf];
        *(v1 + 132) = 1;
        objc_destroyWeak(v25);
        objc_destroyWeak(location);
      }

      [(NSCloudKitMirroringDelegate *)v1 _setUpCloudKitIntegration:?];
      objc_autoreleasePoolPop(v11);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_openTransactionWithLabel:(uint64_t)a3 assertionLabel:(uint64_t)a4 andExecuteWorkBlock:
{
  if (a1)
  {
    v6 = [[NSCloudKitMirroringDelegateWorkBlockContext alloc] initWithTransactionLabel:a2 powerAssertionLabel:a3];
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __92__NSCloudKitMirroringDelegate__openTransactionWithLabel_assertionLabel_andExecuteWorkBlock___block_invoke;
    v8[3] = &unk_1E6EC1D30;
    v8[4] = v6;
    v8[5] = a4;
    dispatch_async(v7, v8);
  }
}

void __83__NSCloudKitMirroringDelegate_observeChangesForStore_inPersistentStoreCoordinator___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [(NSCloudKitMirroringDelegate *)WeakRetained _scheduleAutomatedExportWithLabel:a2 activity:0 voucher:a3 completionHandler:?];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v9 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v10 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v10 = 16 * (__ckLoggingOverride == 16);
    }

    if (os_log_type_enabled(Stream, v10))
    {
      v12 = 136315394;
      v13 = "[NSCloudKitMirroringDelegate observeChangesForStore:inPersistentStoreCoordinator:]_block_invoke";
      v14 = 1024;
      v15 = 447;
      _os_log_impl(&dword_18565F000, v9, v10, "CoreData+CloudKit: %s(%d): Got called back for an export activity but the mirroring delegate is gone.", &v12, 0x12u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_scheduleAutomatedExportWithLabel:(uint64_t)a3 activity:(uint64_t)a4 voucher:(uint64_t)a5 completionHandler:
{
  v34 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v10 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v12 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v13 = 17;
    }

    else
    {
      v13 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v13 = 16;
    }

    if (__ckLoggingOverride)
    {
      v14 = v13;
    }

    else
    {
      v14 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(Stream, v14))
    {
      *buf = 136316162;
      v25 = "[NSCloudKitMirroringDelegate _scheduleAutomatedExportWithLabel:activity:voucher:completionHandler:]";
      v26 = 1024;
      v27 = 3702;
      v28 = 2112;
      v29 = a1;
      v30 = 2112;
      v31 = a2;
      v32 = 2112;
      v33 = a3;
      _os_log_impl(&dword_18565F000, v12, v14, "CoreData+CloudKit: %s(%d): %@ - Beginning automated export - %@:\n%@", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = objc_alloc_init(NSCloudKitMirroringRequestOptions);
    if ([*(a1 + 8) defaultOperationConfiguration])
    {
      -[NSCloudKitMirroringRequestOptions setOperationConfiguration:](v15, "setOperationConfiguration:", [*(a1 + 8) defaultOperationConfiguration]);
    }

    if (a4 || (a4 = [*(a1 + 208) usableVoucherForEventType:2]) != 0)
    {
      v23 = a4;
      -[NSCloudKitMirroringRequestOptions setVouchers:](v15, "setVouchers:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1]);
    }

    v16 = [NSCloudKitMirroringExportRequest alloc];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __100__NSCloudKitMirroringDelegate__scheduleAutomatedExportWithLabel_activity_voucher_completionHandler___block_invoke;
    v22[3] = &unk_1E6EC4DE0;
    v22[4] = a1;
    v22[5] = a2;
    v22[6] = a5;
    v17 = [(NSCloudKitMirroringRequest *)v16 initWithActivity:a3 options:v15 completionBlock:v22];
    v21 = 0;
    if (![(NSCloudKitMirroringDelegate *)a1 executeMirroringRequest:v17 error:&v21])
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = v21;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to execute mirroring request for automated export: %@\n", buf, 0xCu);
      }

      v19 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v25 = v21;
        _os_log_fault_impl(&dword_18565F000, v19, OS_LOG_TYPE_FAULT, "CoreData: Failed to execute mirroring request for automated export: %@", buf, 0xCu);
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __83__NSCloudKitMirroringDelegate_observeChangesForStore_inPersistentStoreCoordinator___block_invoke_179(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [(NSCloudKitMirroringDelegate *)WeakRetained _scheduleAutomatedImportWithLabel:a2 activity:0 voucher:a3 completionHandler:?];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v9 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v10 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v10 = 16 * (__ckLoggingOverride == 16);
    }

    if (os_log_type_enabled(Stream, v10))
    {
      v12 = 136315650;
      v13 = "[NSCloudKitMirroringDelegate observeChangesForStore:inPersistentStoreCoordinator:]_block_invoke";
      v14 = 1024;
      v15 = 478;
      v16 = 2112;
      v17 = a2;
      _os_log_impl(&dword_18565F000, v9, v10, "CoreData+CloudKit: %s(%d): Got called back for activity: %@, but the mirroring delegate is gone.", &v12, 0x1Cu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_scheduleAutomatedImportWithLabel:(uint64_t)a3 activity:(uint64_t)a4 voucher:(uint64_t)a5 completionHandler:
{
  v34 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v10 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v12 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v13 = 17;
    }

    else
    {
      v13 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v13 = 16;
    }

    if (__ckLoggingOverride)
    {
      v14 = v13;
    }

    else
    {
      v14 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(Stream, v14))
    {
      *buf = 136316162;
      v25 = "[NSCloudKitMirroringDelegate _scheduleAutomatedImportWithLabel:activity:voucher:completionHandler:]";
      v26 = 1024;
      v27 = 3663;
      v28 = 2112;
      v29 = a1;
      v30 = 2112;
      v31 = a2;
      v32 = 2112;
      v33 = a3;
      _os_log_impl(&dword_18565F000, v12, v14, "CoreData+CloudKit: %s(%d): %@ - Beginning automated import - %@ - in response to activity:\n%@", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = objc_alloc_init(NSCloudKitMirroringRequestOptions);
    if ([*(a1 + 8) defaultOperationConfiguration])
    {
      -[NSCloudKitMirroringRequestOptions setOperationConfiguration:](v15, "setOperationConfiguration:", [*(a1 + 8) defaultOperationConfiguration]);
    }

    if (a4 || (a4 = [*(a1 + 208) usableVoucherForEventType:1]) != 0)
    {
      v23 = a4;
      -[NSCloudKitMirroringRequestOptions setVouchers:](v15, "setVouchers:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1]);
    }

    v16 = [NSCloudKitMirroringImportRequest alloc];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __100__NSCloudKitMirroringDelegate__scheduleAutomatedImportWithLabel_activity_voucher_completionHandler___block_invoke;
    v22[3] = &unk_1E6EC4DE0;
    v22[4] = a1;
    v22[5] = a2;
    v22[6] = a5;
    v17 = [(NSCloudKitMirroringRequest *)v16 initWithActivity:a3 options:v15 completionBlock:v22];
    v21 = 0;
    if (![(NSCloudKitMirroringDelegate *)a1 executeMirroringRequest:v17 error:&v21])
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = v21;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to execute mirroring request for automated import: %@\n", buf, 0xCu);
      }

      v19 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v25 = v21;
        _os_log_fault_impl(&dword_18565F000, v19, OS_LOG_TYPE_FAULT, "CoreData: Failed to execute mirroring request for automated import: %@", buf, 0xCu);
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __83__NSCloudKitMirroringDelegate_observeChangesForStore_inPersistentStoreCoordinator___block_invoke_186(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__NSCloudKitMirroringDelegate_observeChangesForStore_inPersistentStoreCoordinator___block_invoke_2;
    block[3] = &unk_1E6EC34A0;
    block[4] = *(a1 + 32);
    block[5] = a2;
    block[6] = a3;
    dispatch_async(v8, block);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v11 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v12 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v12 = 16 * (__ckLoggingOverride == 16);
    }

    if (os_log_type_enabled(Stream, v12))
    {
      *buf = 136315650;
      v16 = "[NSCloudKitMirroringDelegate observeChangesForStore:inPersistentStoreCoordinator:]_block_invoke";
      v17 = 1024;
      v18 = 510;
      v19 = 2112;
      v20 = a2;
      _os_log_impl(&dword_18565F000, v11, v12, "CoreData+CloudKit: %s(%d): Got called back for activity: %@, but the mirroring delegate is gone.", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __83__NSCloudKitMirroringDelegate_observeChangesForStore_inPersistentStoreCoordinator___block_invoke_2(uint64_t *a1)
{
  [(NSCloudKitMirroringDelegate *)a1[4] _setUpCloudKitIntegration:?];
  v2 = *(a1[6] + 16);

  return v2();
}

- (void)_setUpCloudKitIntegration:(uint64_t)a1
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = objc_alloc_init(NSCloudKitMirroringDelegateSetupRequestOptions);
    if ([*(a1 + 8) defaultOperationConfiguration])
    {
      -[NSCloudKitMirroringRequestOptions setOperationConfiguration:](v4, "setOperationConfiguration:", [*(a1 + 8) defaultOperationConfiguration]);
    }

    v5 = [(NSCloudKitMirroringRequest *)[NSCloudKitMirroringDelegateSetupRequest alloc] initWithActivity:a2 options:v4 completionBlock:0];
    [(NSCloudKitMirroringDelegate *)a1 beginActivitiesForRequest:v5];
    v14 = 0;
    v6 = [(NSCloudKitMirroringRequestManager *)*(a1 + 144) enqueueRequest:v5 error:&v14];
    v7 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v9 = Stream;
    if (v6)
    {
      if (__ckLoggingOverride == 17)
      {
        v10 = 17;
      }

      else
      {
        v10 = 1;
      }

      if (__ckLoggingOverride == 16)
      {
        v10 = 16;
      }

      if (__ckLoggingOverride)
      {
        v11 = v10;
      }

      else
      {
        v11 = OS_LOG_TYPE_DEFAULT;
      }

      if (os_log_type_enabled(Stream, v11))
      {
        *buf = 136315906;
        v16 = "[NSCloudKitMirroringDelegate _setUpCloudKitIntegration:]";
        v17 = 1024;
        v18 = 568;
        v19 = 2112;
        v20 = a1;
        v21 = 2112;
        v22 = v5;
        _os_log_impl(&dword_18565F000, v9, v11, "CoreData+CloudKit: %s(%d): %@: Successfully enqueued setup request: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v7);
      [(NSCloudKitMirroringDelegate *)a1 checkAndExecuteNextRequest];
    }

    else
    {
      if (__ckLoggingOverride == 17)
      {
        v12 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v12 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(Stream, v12))
      {
        *buf = 136315906;
        v16 = "[NSCloudKitMirroringDelegate _setUpCloudKitIntegration:]";
        v17 = 1024;
        v18 = 571;
        v19 = 2112;
        v20 = a1;
        v21 = 2112;
        v22 = v14;
        _os_log_impl(&dword_18565F000, v9, v12, "CoreData+CloudKit: %s(%d): %@: Failed to enqueue setup request, this likely means one is already scheduled and this has collided: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v7);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)tearDown:(uint64_t)a1
{
  if (a1)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __40__NSCloudKitMirroringDelegate_tearDown___block_invoke;
    v2[3] = &unk_1E6EC4B10;
    v2[4] = a1;
    v2[5] = a2;
    [(NSCloudKitMirroringDelegate *)a1 _openTransactionWithLabel:@"CoreData: CloudKit Teardown" assertionLabel:v2 andExecuteWorkBlock:?];
  }
}

- (void)beginActivitiesForRequest:(uint64_t)a1
{
  if (a1)
  {
    v7 = [*(a1 + 8) progressProvider];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = -[NSPersistentCloudKitContainerEventActivity initWithRequestIdentifier:storeIdentifier:eventType:]([NSPersistentCloudKitContainerEventActivity alloc], [a2 requestIdentifier], *(a1 + 152));
        if (a2)
        {
          objc_setProperty_nonatomic(a2, v4, v5, 72);
        }

        v6 = [v5 beginActivityForPhase:0];
        [v7 publishActivity:v5];
        [v7 publishActivity:v6];
      }
    }
  }
}

- (void)resetAfterError:(uint64_t)a1 andKeepContainer:(void *)a2
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (!a2)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v11) = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: resetAfterError illegally passed nil instead of an error on a failure condition\n", &v11, 2u);
      }

      v5 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v11) = 0;
        _os_log_fault_impl(&dword_18565F000, v5, OS_LOG_TYPE_FAULT, "CoreData: resetAfterError illegally passed nil instead of an error on a failure condition", &v11, 2u);
      }
    }

    v6 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v8 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v9 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v9 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v9))
    {
      v11 = 136315906;
      v12 = "[NSCloudKitMirroringDelegate resetAfterError:andKeepContainer:]";
      v13 = 1024;
      v14 = 589;
      v15 = 2112;
      v16 = a1;
      v17 = 2112;
      v18 = a2;
      _os_log_impl(&dword_18565F000, v8, v9, "CoreData+CloudKit: %s(%d): %@ - resetting internal state after error: %@", &v11, 0x26u);
    }

    objc_autoreleasePoolPop(v6);
    [(NSCloudKitMirroringDelegate *)a1 removeNotificationRegistrations];

    *(a1 + 80) = a2;
    *(a1 + 89) = 0;

    *(a1 + 96) = 0;
    if ([objc_msgSend(*(a1 + 136) "currentAccountInfo")] != 3)
    {
      [*(a1 + 136) clearEstablishedAccountInfoAndUserRecordID];
    }

    [(NSCloudKitMirroringDelegate *)a1 registerForAccountAndIdentityNotificationsIfNeeded];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (uint64_t)shouldAttemptSetupRecoveryFromError:(char)a3 viaPush:
{
  if (!a1)
  {
    v11 = 0;
    return v11 & 1;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v6 = [a2 domain];
  if (![v6 isEqualToString:getCloudKitCKErrorDomain()])
  {
    v10 = [a2 domain];
    if (![v10 isEqualToString:*MEMORY[0x1E696A978]] || objc_msgSend(a2, "code") != -1 && objc_msgSend(a2, "code") != -999 && objc_msgSend(a2, "code") != -1001 && objc_msgSend(a2, "code") != -1003 && objc_msgSend(a2, "code") != -1004 && objc_msgSend(a2, "code") != -1005 && objc_msgSend(a2, "code") != -1006 && objc_msgSend(a2, "code") != -1007 && objc_msgSend(a2, "code") != -1008 && objc_msgSend(a2, "code") != -1009 && objc_msgSend(a2, "code") != -1010 && objc_msgSend(a2, "code") != -1012 && objc_msgSend(a2, "code") != -1013 && objc_msgSend(a2, "code") != -1014 && objc_msgSend(a2, "code") != -1100 && objc_msgSend(a2, "code") != -1101 && objc_msgSend(a2, "code") != -1102 && objc_msgSend(a2, "code") != -1103 && objc_msgSend(a2, "code") != -1104 && objc_msgSend(a2, "code") != -1200 && objc_msgSend(a2, "code") != -2000 && objc_msgSend(a2, "code") != -3000 && objc_msgSend(a2, "code") != -3001 && objc_msgSend(a2, "code") != -3002 && objc_msgSend(a2, "code") != -3003 && objc_msgSend(a2, "code") != -3004 && objc_msgSend(a2, "code") != -3005 && objc_msgSend(a2, "code") != -3006 && objc_msgSend(a2, "code") != -3007 && objc_msgSend(a2, "code") != -1018 && objc_msgSend(a2, "code") != -1019 && objc_msgSend(a2, "code") != -1020 && objc_msgSend(a2, "code") != -995 && objc_msgSend(a2, "code") != -996 && objc_msgSend(a2, "code") != -997)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  if ([a2 code] == 3 || objc_msgSend(a2, "code") == 4 || objc_msgSend(a2, "code") == 22 || objc_msgSend(a2, "code") == 7 || objc_msgSend(a2, "code") == 23 || objc_msgSend(a2, "code") == 6 || objc_msgSend(a2, "code") == 15 && (v7 = objc_msgSend(a2, "userInfo"), objc_msgSend(v7, "objectForKeyedSubscript:", getCloudKitCKErrorRetryAfterKey())))
  {
LABEL_49:
    a3 = 1;
LABEL_50:
    *(v16 + 24) = a3;
    goto LABEL_51;
  }

  if ([a2 code] != 2)
  {
    if ([a2 code] != 25)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  *(v16 + 24) = 1;
  v8 = [a2 userInfo];
  v9 = [v8 objectForKey:getCloudKitCKPartialErrorsByItemIDKey()];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__NSCloudKitMirroringDelegate_shouldAttemptSetupRecoveryFromError_viaPush___block_invoke;
  v13[3] = &unk_1E6EC4A98;
  v14 = a3;
  v13[4] = a1;
  v13[5] = &v15;
  [v9 enumerateKeysAndObjectsUsingBlock:v13];
LABEL_51:
  v11 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return v11 & 1;
}

uint64_t __75__NSCloudKitMirroringDelegate_shouldAttemptSetupRecoveryFromError_viaPush___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  getCloudKitCKRecordIDClass[0]();
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (getCloudKitCKRecordZoneIDClass[0](), objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), result = objc_opt_isKindOfClass(), (result))
  {
    result = [(NSCloudKitMirroringDelegate *)*(a1 + 32) shouldAttemptSetupRecoveryFromError:a3 viaPush:*(a1 + 48)];
    if ((result & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 1;
    }
  }

  return result;
}

void __56__NSCloudKitMirroringDelegate__beginWatchingForChanges___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    *v12 = MEMORY[0x1E69E9820];
    *&v12[8] = 3221225472;
    *&v12[16] = __74__NSCloudKitMirroringDelegate__respondToPushNotification_forSubscription___block_invoke;
    *&v12[24] = &unk_1E6EC4A48;
    *&v12[32] = WeakRetained;
    v13 = a3;
    v14 = a2;
    [(NSCloudKitMirroringDelegate *)WeakRetained _openTransactionWithLabel:@"CoreData: CloudKit Responding to Push" assertionLabel:v12 andExecuteWorkBlock:?];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v9 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v10 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v10 = 16 * (__ckLoggingOverride == 16);
    }

    if (os_log_type_enabled(Stream, v10))
    {
      *v12 = 136315906;
      *&v12[4] = "[NSCloudKitMirroringDelegate _beginWatchingForChanges:]_block_invoke";
      *&v12[12] = 1024;
      *&v12[14] = 744;
      *&v12[18] = 2112;
      *&v12[20] = a3;
      *&v12[28] = 2112;
      *&v12[30] = a2;
      _os_log_impl(&dword_18565F000, v9, v10, "CoreData+CloudKit: %s(%d): Got called back for subscription: %@, but the mirroring delegate is gone. Notification:\n%@", v12, 0x26u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)scheduleExportAndStartAfterDate:(uint64_t)a1
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1 || ![*(a1 + 8) automaticallyScheduleImportAndExportOperations])
  {
    goto LABEL_23;
  }

  if (*(a1 + 89) != 1)
  {
    v7 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v9 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v10 = 17;
    }

    else
    {
      v10 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v10 = 16;
    }

    if (__ckLoggingOverride)
    {
      v11 = v10;
    }

    else
    {
      v11 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(Stream, v11))
    {
      v12 = *(a1 + 80);
      *buf = 136315906;
      v16 = "[NSCloudKitMirroringDelegate scheduleExportAndStartAfterDate:]";
      v17 = 1024;
      v18 = 3292;
      v19 = 2112;
      v20 = a1;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_18565F000, v9, v11, "CoreData+CloudKit: %s(%d): %@: Deferring export because the mirroring delegate is not initialized:\n%@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v7);
    goto LABEL_23;
  }

  v4 = [*(a1 + 208) usableVoucherForEventType:2];
  v5 = v4;
  if (a2)
  {
    v6 = [(NSCloudKitMirroringDelegate *)a1 newActivityWithIdentifier:v4 andVoucher:?];
    [v6 setEarliestStartDate:a2];
LABEL_22:
    [*(a1 + 64) submitActivity:v6];

LABEL_23:
    v14 = *MEMORY[0x1E69E9840];
    return;
  }

  if ([objc_msgSend(v4 "operationConfiguration")] <= 24)
  {
    v6 = [(NSCloudKitMirroringDelegate *)a1 newActivityWithIdentifier:v5 andVoucher:?];
    goto LABEL_22;
  }

  v13 = *MEMORY[0x1E69E9840];

  [(NSCloudKitMirroringDelegate *)a1 _scheduleAutomatedExportWithLabel:0 activity:v5 voucher:0 completionHandler:?];
}

void __56__NSCloudKitMirroringDelegate__beginWatchingForChanges___block_invoke_208(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ([objc_msgSend(*(a1 + 32) "accountMonitor")])
    {
      [(NSCloudKitMirroringDelegate *)WeakRetained _scheduleAutomatedExportWithLabel:0 activity:0 voucher:0 completionHandler:?];
    }

    [(NSCloudKitMirroringDelegate *)WeakRetained _scheduleAutomatedImportWithLabel:0 activity:0 voucher:0 completionHandler:?];
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v5 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v6 = 17;
    }

    else
    {
      v6 = 2;
    }

    if (__ckLoggingOverride == 16)
    {
      v6 = 16;
    }

    if (__ckLoggingOverride == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    if (!__ckLoggingOverride)
    {
      v7 = 0;
    }

    if (__ckLoggingOverride <= 0xFu)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    if (os_log_type_enabled(Stream, v8))
    {
      v10 = 136315394;
      v11 = "[NSCloudKitMirroringDelegate _beginWatchingForChanges:]_block_invoke";
      v12 = 1024;
      v13 = 778;
      _os_log_impl(&dword_18565F000, v5, v8, "CoreData+CloudKit: %s(%d): Tried to schedule sandbox operations but the mirroring delegate was gone.", &v10, 0x12u);
    }

    objc_autoreleasePoolPop(v3);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)checkAndScheduleImportIfNecessaryFromPush:(char)a3 fromErrorRecovery:fromShareAccept:andStartAfterDate:
{
  if (a1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __125__NSCloudKitMirroringDelegate_checkAndScheduleImportIfNecessaryFromPush_fromErrorRecovery_fromShareAccept_andStartAfterDate___block_invoke;
    v3[3] = &unk_1E6EC4D90;
    v4 = a2;
    v5 = 0;
    v6 = a3;
    v3[4] = a1;
    v3[5] = 0;
    [(NSCloudKitMirroringDelegate *)a1 _openTransactionWithLabel:@"CoreData: CloudKit Scheduling" assertionLabel:v3 andExecuteWorkBlock:?];
  }
}

void __40__NSCloudKitMirroringDelegate_tearDown___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v4 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v5 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v5 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(Stream, v5))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    *buf = 136315906;
    v36 = "[NSCloudKitMirroringDelegate tearDown:]_block_invoke";
    v37 = 1024;
    v38 = 797;
    v39 = 2112;
    v40 = v6;
    v41 = 2112;
    v42 = v7;
    _os_log_impl(&dword_18565F000, v4, v5, "CoreData+CloudKit: %s(%d): %@: Told to tear down with reason: %@", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 32);
  if (*(v8 + 130) == 1)
  {
    [*(v8 + 64) unregisterActivityIdentifier:*(v8 + 168)];
    *(*(a1 + 32) + 130) = 0;
    v8 = *(a1 + 32);
  }

  if (*(v8 + 131) == 1)
  {
    [*(v8 + 64) unregisterActivityIdentifier:*(v8 + 160)];
    *(*(a1 + 32) + 131) = 0;
    v8 = *(a1 + 32);
  }

  if (*(v8 + 132) == 1)
  {
    [*(v8 + 64) unregisterActivityIdentifier:*(v8 + 176)];
    *(*(a1 + 32) + 132) = 0;
    v8 = *(a1 + 32);
  }

  if (*(v8 + 129) == 1)
  {
    [*(v8 + 72) unregisterForSubscriptionWithID:objc_msgSend(*(v8 + 40) inDatabase:{"subscriptionID"), *(*(a1 + 32) + 56)}];
    *(*(a1 + 32) + 129) = 0;
    v8 = *(a1 + 32);
  }

  [(NSCloudKitMirroringDelegate *)v8 removeNotificationRegistrations];
  v9 = *(a1 + 32);
  if (*(v9 + 89) == 1)
  {
    v10 = [(NSCloudKitMirroringRequestManager *)*(v9 + 144) dequeueAllPendingRequests];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v10;
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      v14 = *MEMORY[0x1E696A250];
      v15 = *MEMORY[0x1E696A588];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          v19 = __PFCloudKitLoggingGetStream();
          v20 = v19;
          if (__ckLoggingOverride == 17)
          {
            v21 = 17;
          }

          else
          {
            v21 = 1;
          }

          if (__ckLoggingOverride == 16)
          {
            v21 = 16;
          }

          if (__ckLoggingOverride)
          {
            v22 = v21;
          }

          else
          {
            v22 = OS_LOG_TYPE_DEFAULT;
          }

          if (os_log_type_enabled(v19, v22))
          {
            v23 = *(a1 + 32);
            *buf = 136315906;
            v36 = "[NSCloudKitMirroringDelegate tearDown:]_block_invoke";
            v37 = 1024;
            v38 = 827;
            v39 = 2112;
            v40 = v23;
            v41 = 2112;
            v42 = v17;
            _os_log_impl(&dword_18565F000, v20, v22, "CoreData+CloudKit: %s(%d): %@: Cancelling pending request: %@", buf, 0x26u);
          }

          objc_autoreleasePoolPop(v18);
          v24 = MEMORY[0x1E696ABC0];
          v32 = v15;
          v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request '%@' was cancelled because the store was removed from the coordinator.", objc_msgSend(v17, "requestIdentifier")];
          v25 = -[NSCloudKitMirroringResult initWithRequest:storeIdentifier:success:madeChanges:error:]([NSCloudKitMirroringResult alloc], "initWithRequest:storeIdentifier:success:madeChanges:error:", v17, *(*(a1 + 32) + 152), 0, 0, [v24 errorWithDomain:v14 code:134407 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v33, &v32, 1)}]);
          [(NSCloudKitMirroringRequest *)v17 invokeCompletionBlockWithResult:v25];
        }

        v12 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v12);
    }

    objc_storeWeak((*(a1 + 32) + 112), 0);
    objc_storeWeak((*(a1 + 32) + 120), 0);
    *(*(a1 + 32) + 89) = 0;

    *(*(a1 + 32) + 56) = 0;
    *(*(a1 + 32) + 48) = 0;

    *(*(a1 + 32) + 96) = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)coordinatorWillRemoveStore:(id)a3
{
  v4 = [a3 object];
  if (v4 == objc_loadWeak(&self->_observedStore))
  {

    [(NSCloudKitMirroringDelegate *)self tearDown:?];
  }
}

- (void)storesDidChange:(id)a3
{
  Weak = objc_loadWeak(&self->_observedCoordinator);
  if (Weak == [a3 object] && objc_msgSend(objc_msgSend(objc_msgSend(a3, "userInfo"), "objectForKey:", @"removed"), "containsObject:", objc_loadWeak(&self->_observedStore)))
  {

    [(NSCloudKitMirroringDelegate *)self tearDown:?];
  }
}

- (void)accountMonitorAccountChanged:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(a3 "userInfo")];
  if (!v5)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v12) = 138412290;
      *(&v12 + 4) = a3;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal account change notification (missing the name of the notification that triggered it): %@\n", &v12, 0xCu);
    }

    v7 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v12) = 138412290;
      *(&v12 + 4) = a3;
      _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: Illegal account change notification (missing the name of the notification that triggered it): %@", &v12, 0xCu);
      if (!self)
      {
        goto LABEL_12;
      }

LABEL_6:
      v8 = 134415;
      if ([v5 isEqualToString:getCloudKitCKIdentityUpdateNotification[0]()])
      {
        v8 = 134416;
      }

      else if (![v5 isEqualToString:getCloudKitCKAccountChangedNotification()])
      {
        v9 = 0;
        goto LABEL_11;
      }

      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:v8 userInfo:0];
LABEL_11:
      v10 = [[NSCloudKitMirroringDelegateResetRequest alloc] initWithError:v9 completionBlock:0];
      *&v12 = MEMORY[0x1E69E9820];
      *(&v12 + 1) = 3221225472;
      v13 = __47__NSCloudKitMirroringDelegate__enqueueRequest___block_invoke;
      v14 = &unk_1E6EC4B10;
      v15 = self;
      v16 = v10;
      [(NSCloudKitMirroringDelegate *)self _openTransactionWithLabel:@"CoreData: CloudKit Scheduling" assertionLabel:&v12 andExecuteWorkBlock:?];

      goto LABEL_12;
    }
  }

  if (self)
  {
    goto LABEL_6;
  }

LABEL_12:
  v11 = *MEMORY[0x1E69E9840];
}

void __74__NSCloudKitMirroringDelegate__respondToPushNotification_forSubscription___block_invoke(void *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v4 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v5 = 17;
  }

  else
  {
    v5 = 1;
  }

  if (__ckLoggingOverride == 16)
  {
    v5 = 16;
  }

  if (__ckLoggingOverride)
  {
    v6 = v5;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEFAULT;
  }

  if (os_log_type_enabled(Stream, v6))
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = a1[6];
    *v35 = 136316162;
    *&v35[4] = "[NSCloudKitMirroringDelegate _respondToPushNotification:forSubscription:]_block_invoke";
    *&v35[12] = 1024;
    *&v35[14] = 904;
    *&v35[18] = 2112;
    *&v35[20] = v7;
    *&v35[28] = 2112;
    *&v35[30] = v8;
    *&v35[38] = 2112;
    v36 = v9;
    _os_log_impl(&dword_18565F000, v4, v6, "CoreData+CloudKit: %s(%d): %@ - Got notification for subscription: %@\n%@", v35, 0x30u);
  }

  objc_autoreleasePoolPop(v2);
  v10 = a1[4];
  if (*(v10 + 89) == 1)
  {
    *v35 = MEMORY[0x1E69E9820];
    *&v35[8] = 3221225472;
    *&v35[16] = __125__NSCloudKitMirroringDelegate_checkAndScheduleImportIfNecessaryFromPush_fromErrorRecovery_fromShareAccept_andStartAfterDate___block_invoke;
    *&v35[24] = &unk_1E6EC4D90;
    v37 = 1;
    LOBYTE(v38) = 0;
    *&v35[32] = v10;
    v36 = 0;
    v11 = @"com.apple.coredata.cloudkit.schedule";
    v12 = @"CoreData: CloudKit Scheduling";
    v13 = v10;
LABEL_44:
    [(NSCloudKitMirroringDelegate *)v13 _openTransactionWithLabel:v11 assertionLabel:v12 andExecuteWorkBlock:v35];
    goto LABEL_52;
  }

  v14 = *(v10 + 80);
  v15 = [v14 domain];
  if ([v15 isEqualToString:getCloudKitCKErrorDomain()])
  {
    if ([v14 code] != 111 && objc_msgSend(v14, "code") != 20 && objc_msgSend(v14, "code") != 6)
    {
      if ([v14 code] == 2)
      {
        v16 = [(NSCloudKitMirroringDelegate *)v10 shouldAttemptSetupRecoveryFromError:v14 viaPush:1];
        goto LABEL_36;
      }

      goto LABEL_53;
    }

LABEL_35:
    v16 = 1;
    goto LABEL_36;
  }

  if ([objc_msgSend(v14 "domain")])
  {
    if ([v14 code] == 2 || objc_msgSend(v14, "code") == 303 || objc_msgSend(v14, "code") == 310 || objc_msgSend(v14, "code") == 311)
    {
      goto LABEL_35;
    }
  }

  else if ([objc_msgSend(v14 "domain")])
  {
    if ([v14 code] == 266 || objc_msgSend(v14, "code") == 3 || objc_msgSend(v14, "code") == 1034 || objc_msgSend(v14, "code") == 23 || objc_msgSend(v14, "code") == 769)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v17 = [v14 domain];
    if ([v17 isEqualToString:*MEMORY[0x1E696A250]] && (objc_msgSend(v14, "code") == 4099 || objc_msgSend(v14, "code") == 4097))
    {
      goto LABEL_35;
    }
  }

LABEL_53:
  v16 = 0;
LABEL_36:
  v18 = objc_autoreleasePoolPush();
  v19 = __PFCloudKitLoggingGetStream();
  v20 = v19;
  if (__ckLoggingOverride == 17)
  {
    v21 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v21 = OS_LOG_TYPE_ERROR;
  }

  v22 = os_log_type_enabled(v19, v21);
  if (v16)
  {
    if (v22)
    {
      v23 = a1[4];
      v24 = a1[5];
      v25 = a1[6];
      *v35 = 136316162;
      *&v35[4] = "[NSCloudKitMirroringDelegate _respondToPushNotification:forSubscription:]_block_invoke";
      *&v35[12] = 1024;
      *&v35[14] = 912;
      *&v35[18] = 2112;
      *&v35[20] = v23;
      *&v35[28] = 2112;
      *&v35[30] = v24;
      *&v35[38] = 2112;
      v36 = v25;
      _os_log_impl(&dword_18565F000, v20, v21, "CoreData+CloudKit: %s(%d): %@ - Reviving the mirroring delegate after notification for subscription: %@\n%@", v35, 0x30u);
    }

    objc_autoreleasePoolPop(v18);
    v13 = a1[4];
    if (v13)
    {
      *v35 = MEMORY[0x1E69E9820];
      *&v35[8] = 3221225472;
      *&v35[16] = __73__NSCloudKitMirroringDelegate_setupMirroringDelegateFromPushNotification__block_invoke;
      *&v35[24] = &unk_1E6EC4D18;
      *&v35[32] = v13;
      v11 = @"com.apple.coredata.cloudkit.setup.push";
      v12 = @"CoreData: CloudKit Setup From Push";
      goto LABEL_44;
    }
  }

  else
  {
    if (v22)
    {
      v26 = a1[4];
      if (v26)
      {
        v27 = *(v26 + 80);
      }

      else
      {
        v27 = 0;
      }

      v28 = [v27 domain];
      v29 = a1[4];
      if (v29)
      {
        v30 = *(v29 + 80);
      }

      else
      {
        v30 = 0;
      }

      v31 = [v30 code];
      v32 = a1[5];
      v33 = a1[6];
      *v35 = 136316674;
      *&v35[4] = "[NSCloudKitMirroringDelegate _respondToPushNotification:forSubscription:]_block_invoke";
      *&v35[12] = 1024;
      *&v35[14] = 915;
      *&v35[18] = 2112;
      *&v35[20] = v26;
      *&v35[28] = 2112;
      *&v35[30] = v28;
      *&v35[38] = 2048;
      v36 = v31;
      v37 = 2112;
      v38 = v32;
      v39 = 2112;
      v40 = v33;
      _os_log_impl(&dword_18565F000, v20, v21, "CoreData+CloudKit: %s(%d): %@ - Not reviving the mirroring delegate (%@:%ld) after notification for subscription: %@\n%@", v35, 0x44u);
    }

    objc_autoreleasePoolPop(v18);
  }

LABEL_52:
  v34 = *MEMORY[0x1E69E9840];
}

id __92__NSCloudKitMirroringDelegate__openTransactionWithLabel_assertionLabel_andExecuteWorkBlock___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v3 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  [v2 drain];

  return 0;
}

- (NSPersistentStoreResult)executeMirroringRequest:(uint64_t *)a3 error:
{
  v28 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    v6 = objc_alloc_init(NSPersistentStoreResult);
    v23 = 0;
    v7 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v9 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v10 = 17;
    }

    else
    {
      v10 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v10 = 16;
    }

    if (__ckLoggingOverride)
    {
      v11 = v10;
    }

    else
    {
      v11 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(Stream, v11))
    {
      *buf = 136315906;
      *&buf[4] = "[NSCloudKitMirroringDelegate executeMirroringRequest:error:]";
      *&buf[12] = 1024;
      *&buf[14] = 968;
      *&buf[18] = 2112;
      *&buf[20] = v5;
      *&buf[28] = 2112;
      *&buf[30] = a2;
      _os_log_impl(&dword_18565F000, v9, v11, "CoreData+CloudKit: %s(%d): %@: Asked to execute request: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v7);
    if ([a2 validateForUseWithStore:objc_loadWeak((v5 + 112)) error:&v23])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {

                        v14 = MEMORY[0x1E696ABC0];
                        v15 = *MEMORY[0x1E696A250];
                        v24 = *MEMORY[0x1E696A588];
                        v16 = MEMORY[0x1E696AEC0];
                        v17 = objc_opt_class();
                        v18 = NSStringFromClass(v17);
                        v19 = objc_opt_class();
                        v25 = [v16 stringWithFormat:@"Instances of '%@' are ambiguous and not understood by '%@', use one of the subclasses instead.", v18, NSStringFromClass(v19)];
                        v13 = [v14 errorWithDomain:v15 code:134091 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v25, &v24, 1)}];
                        v23 = v13;
                        if (v13)
                        {
LABEL_26:
                          if (a3)
                          {
                            v6 = 0;
                            *a3 = v13;
                            goto LABEL_34;
                          }

LABEL_33:
                          v6 = 0;
                          goto LABEL_34;
                        }

LABEL_29:
                        LogStream = _PFLogGetLogStream(17);
                        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136315394;
                          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate.m";
                          *&buf[12] = 1024;
                          *&buf[14] = 995;
                          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
                        }

                        v21 = _PFLogGetLogStream(17);
                        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
                        {
                          *buf = 136315394;
                          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate.m";
                          *&buf[12] = 1024;
                          *&buf[14] = 995;
                          _os_log_fault_impl(&dword_18565F000, v21, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
                        }

                        goto LABEL_33;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v12 = [a2 copy];
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __47__NSCloudKitMirroringDelegate__enqueueRequest___block_invoke;
      *&buf[24] = &unk_1E6EC4B10;
      *&buf[32] = v5;
      v27 = v12;
      [(NSCloudKitMirroringDelegate *)v5 _openTransactionWithLabel:@"CoreData: CloudKit Scheduling" assertionLabel:buf andExecuteWorkBlock:?];

      if (v6)
      {
LABEL_34:
        result = v6;
        goto LABEL_35;
      }
    }

    else
    {
    }

    v13 = v23;
    if (v23)
    {
      goto LABEL_26;
    }

    goto LABEL_29;
  }

LABEL_35:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void __47__NSCloudKitMirroringDelegate__enqueueRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v6 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v7 = 17;
  }

  else
  {
    v7 = 1;
  }

  if (__ckLoggingOverride == 16)
  {
    v7 = 16;
  }

  if (__ckLoggingOverride)
  {
    v8 = v7;
  }

  else
  {
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  if (os_log_type_enabled(Stream, v8))
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    *buf = 136315906;
    v21 = "[NSCloudKitMirroringDelegate _enqueueRequest:]_block_invoke";
    v22 = 1024;
    v23 = 1005;
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&dword_18565F000, v6, v8, "CoreData+CloudKit: %s(%d): %@: enqueuing request: %@", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v4);
  v11 = *(a1 + 32);
  if (v11 && (v12 = *(v11 + 8)) != 0)
  {
    v13 = *(v12 + 88);
  }

  else
  {
    v13 = 0;
  }

  Weak = objc_loadWeak((v11 + 112));
  if (a2)
  {
    v15 = *(a2 + 8);
  }

  v16 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v13 inTransactionWithLabel:Weak];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __47__NSCloudKitMirroringDelegate__enqueueRequest___block_invoke_259;
  v18[3] = &unk_1E6EC19D8;
  v18[4] = v16;
  v19 = *(a1 + 32);
  [(PFCloudKitStoreMonitor *)v16 performBlock:v18];

  v17 = *MEMORY[0x1E69E9840];
}

void __47__NSCloudKitMirroringDelegate__enqueueRequest___block_invoke_259(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (!v2)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A250];
    v24 = *MEMORY[0x1E696A588];
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request '%@' was cancelled because the store was removed from the coordinator.", objc_msgSend(*(a1 + 48), "requestIdentifier")];
    v14 = [v12 errorWithDomain:v13 code:134407 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v25, &v24, 1)}];
    v15 = [NSCloudKitMirroringResult alloc];
    v16 = *(a1 + 48);
    v17 = *(*(a1 + 40) + 152);
    v18 = v14;
LABEL_23:
    v21 = [(NSCloudKitMirroringResult *)v15 initWithRequest:v16 storeIdentifier:v17 success:0 madeChanges:0 error:v18];
    [(NSCloudKitMirroringRequest *)*(a1 + 48) invokeCompletionBlockWithResult:v21];

    goto LABEL_24;
  }

  v23 = 0;
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 144);
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSCloudKitMirroringRequestManager *)v4 enqueueRequest:&v23 error:?];
  v6 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v8 = Stream;
  if (!v5)
  {
    if (__ckLoggingOverride == 17)
    {
      v19 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v19 = 16 * (__ckLoggingOverride == 16);
    }

    if (os_log_type_enabled(Stream, v19))
    {
      v20 = *(a1 + 48);
      *buf = 136315906;
      v27 = "[NSCloudKitMirroringDelegate _enqueueRequest:]_block_invoke";
      v28 = 1024;
      v29 = 1018;
      v30 = 2112;
      v31 = v20;
      v32 = 2112;
      v33 = v23;
      _os_log_impl(&dword_18565F000, v8, v19, "CoreData+CloudKit: %s(%d): Failed to enqueue request: %@\n%@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v6);
    v15 = [NSCloudKitMirroringResult alloc];
    v16 = *(a1 + 48);
    v17 = *(*(a1 + 40) + 152);
    v18 = v23;
    goto LABEL_23;
  }

  if (__ckLoggingOverride == 17)
  {
    v9 = 17;
  }

  else
  {
    v9 = 1;
  }

  if (__ckLoggingOverride == 16)
  {
    v9 = 16;
  }

  if (__ckLoggingOverride)
  {
    v10 = v9;
  }

  else
  {
    v10 = OS_LOG_TYPE_DEFAULT;
  }

  if (os_log_type_enabled(Stream, v10))
  {
    v11 = *(a1 + 48);
    *buf = 136315650;
    v27 = "[NSCloudKitMirroringDelegate _enqueueRequest:]_block_invoke";
    v28 = 1024;
    v29 = 1014;
    v30 = 2112;
    v31 = v11;
    _os_log_impl(&dword_18565F000, v8, v10, "CoreData+CloudKit: %s(%d): Enqueued request: %@", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v6);
  [(NSCloudKitMirroringDelegate *)*(a1 + 40) beginActivitiesForRequest:?];
  [(NSCloudKitMirroringDelegate *)*(a1 + 40) checkAndExecuteNextRequest];
LABEL_24:

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_performSetupRequest:(uint64_t)a1
{
  v10 = *MEMORY[0x1E69E9840];
  if ([a2 requestCompletionBlock])
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = a2;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Setup request executed with a completion block that will never be called: %@\n", buf, 0xCu);
    }

    v5 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v9 = a2;
      _os_log_fault_impl(&dword_18565F000, v5, OS_LOG_TYPE_FAULT, "CoreData: Setup request executed with a completion block that will never be called: %@", buf, 0xCu);
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__NSCloudKitMirroringDelegate__performSetupRequest___block_invoke;
  v7[3] = &unk_1E6EC4B10;
  v7[4] = a1;
  v7[5] = a2;
  [(NSCloudKitMirroringDelegate *)a1 _openTransactionWithLabel:@"CoreData: CloudKit Setup" assertionLabel:v7 andExecuteWorkBlock:?];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_performDelegateResetRequest:(uint64_t)a1
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a2 || !*(a2 + 80))
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = a2;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Reset request was scheduled without a root cause error: %@\n", buf, 0xCu);
    }

    v5 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v9 = a2;
      _os_log_fault_impl(&dword_18565F000, v5, OS_LOG_TYPE_FAULT, "CoreData: Reset request was scheduled without a root cause error: %@", buf, 0xCu);
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__NSCloudKitMirroringDelegate__performDelegateResetRequest___block_invoke;
  v7[3] = &unk_1E6EC4B10;
  v7[4] = a1;
  v7[5] = a2;
  [(NSCloudKitMirroringDelegate *)a1 _openTransactionWithLabel:@"CoreData: CloudKit Setup Reset" assertionLabel:v7 andExecuteWorkBlock:?];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_performSchemaInitializationRequest:(uint64_t)a1
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __67__NSCloudKitMirroringDelegate__performSchemaInitializationRequest___block_invoke;
  v2[3] = &unk_1E6EC4B10;
  v2[4] = a2;
  v2[5] = a1;
  [(NSCloudKitMirroringDelegate *)a1 _openTransactionWithLabel:@"CoreData: CloudKit Initialize Schema" assertionLabel:v2 andExecuteWorkBlock:?];
}

- (void)_performSerializationRequest:(uint64_t)a1
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __60__NSCloudKitMirroringDelegate__performSerializationRequest___block_invoke;
  v2[3] = &unk_1E6EC4B10;
  v2[4] = a1;
  v2[5] = a2;
  [(NSCloudKitMirroringDelegate *)a1 _openTransactionWithLabel:@"CoreData: CloudKit Record Serialization" assertionLabel:v2 andExecuteWorkBlock:?];
}

- (void)_performExportProgressRequest:(uint64_t)a1
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __61__NSCloudKitMirroringDelegate__performExportProgressRequest___block_invoke;
  v2[3] = &unk_1E6EC4B10;
  v2[4] = a1;
  v2[5] = a2;
  [(NSCloudKitMirroringDelegate *)a1 _openTransactionWithLabel:@"CoreData: CloudKit Export Progress" assertionLabel:v2 andExecuteWorkBlock:?];
}

- (void)_performAcceptShareInvitationsRequest:(uint64_t)a1
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __69__NSCloudKitMirroringDelegate__performAcceptShareInvitationsRequest___block_invoke;
  v2[3] = &unk_1E6EC4B10;
  v2[4] = a1;
  v2[5] = a2;
  [(NSCloudKitMirroringDelegate *)a1 _openTransactionWithLabel:@"CoreData: CloudKit Share Accept Invitation" assertionLabel:v2 andExecuteWorkBlock:?];
}

void __60__NSCloudKitMirroringDelegate__performDelegateResetRequest___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = *(v3 + 80);
    }

    else
    {
      v4 = 0;
    }

    [NSCloudKitMirroringDelegate resetAfterError:v2 andKeepContainer:v4];
    v2 = *(a1 + 32);
  }

  [(NSCloudKitMirroringDelegate *)v2 _setUpCloudKitIntegration:?];
  v5 = [[NSCloudKitMirroringResult alloc] initWithRequest:*(a1 + 40) storeIdentifier:*(*(a1 + 32) + 152) success:1 madeChanges:0 error:0];
  [(NSCloudKitMirroringDelegate *)*(a1 + 32) _finishedRequest:v5 withResult:?];
}

- (uint64_t)_finishedRequest:(void *)a3 withResult:
{
  v32 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    v6 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v8 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v9 = 17;
    }

    else
    {
      v9 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v9 = 16;
    }

    if (__ckLoggingOverride)
    {
      v10 = v9;
    }

    else
    {
      v10 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(Stream, v10))
    {
      *v29 = 136315906;
      *&v29[4] = "[NSCloudKitMirroringDelegate _finishedRequest:withResult:]";
      *&v29[12] = 1024;
      *&v29[14] = 3601;
      *&v29[18] = 2112;
      *&v29[20] = a2;
      v30 = 2112;
      v31 = a3;
      _os_log_impl(&dword_18565F000, v8, v10, "CoreData+CloudKit: %s(%d): Finished request: %@ with result: %@", v29, 0x26u);
    }

    objc_autoreleasePoolPop(v6);
    [(NSCloudKitMirroringRequestManager *)*(v5 + 144) requestFinished:a2];
    v11 = [a3 error];
    if (a2)
    {
      v12 = a2[9];
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = v13;
    if (v13)
    {
      [v13 finishWithError:v11];
      [objc_msgSend(*(v5 + 8) "progressProvider")];
    }

    if ([a3 success] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v15 = a2;
LABEL_20:
      [(NSCloudKitMirroringRequest *)v15 invokeCompletionBlockWithResult:a3];
LABEL_21:
      result = [(NSCloudKitMirroringDelegate *)v5 checkAndExecuteNextRequest];
      goto LABEL_22;
    }

    v17 = [a3 error];
    if (a3)
    {
      if ([a3 success] && v17)
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *v29 = 138412546;
          *&v29[4] = a3;
          *&v29[12] = 2112;
          *&v29[14] = v17;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: handleErrorInResult passed a sucessful result (%@) with an illegal error object (%@)\n", v29, 0x16u);
        }

        v19 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          *v29 = 138412546;
          *&v29[4] = a3;
          *&v29[12] = 2112;
          *&v29[14] = v17;
          v20 = "CoreData: handleErrorInResult passed a sucessful result (%@) with an illegal error object (%@)";
          v21 = v19;
          v22 = 22;
LABEL_40:
          _os_log_fault_impl(&dword_18565F000, v21, OS_LOG_TYPE_FAULT, v20, v29, v22);
        }
      }

      else if (([a3 success] & 1) == 0 && !v17)
      {
        v25 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *v29 = 138412290;
          *&v29[4] = a3;
          _os_log_error_impl(&dword_18565F000, v25, OS_LOG_TYPE_ERROR, "CoreData: fault: handleErrorInResult illegally passed a failed result (%@) with nil instead of an error on a failure condition\n", v29, 0xCu);
        }

        v26 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          *v29 = 138412290;
          *&v29[4] = a3;
          v20 = "CoreData: handleErrorInResult illegally passed a failed result (%@) with nil instead of an error on a failure condition";
          v21 = v26;
          v22 = 12;
          goto LABEL_40;
        }
      }
    }

    else
    {
      v23 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *v29 = 0;
        _os_log_error_impl(&dword_18565F000, v23, OS_LOG_TYPE_ERROR, "CoreData: fault: handleErrorInResult illegally passed nil instead of a result\n", v29, 2u);
      }

      v24 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *v29 = 0;
        v20 = "CoreData: handleErrorInResult illegally passed nil instead of a result";
        v21 = v24;
        v22 = 2;
        goto LABEL_40;
      }
    }

    v27 = [a3 request];
    v28 = [v17 domain];
    if ([v28 isEqualToString:*MEMORY[0x1E696A250]])
    {
      if ([v17 code] == 134407)
      {
        [NSCloudKitMirroringDelegate resetAfterError:v5 andKeepContainer:v17];
LABEL_47:
        v15 = v27;
        goto LABEL_20;
      }

      if ([v17 code] == 134406 || objc_msgSend(v17, "code") == 134418 || objc_msgSend(v17, "code") == 134419)
      {
        goto LABEL_47;
      }
    }

    if ([(NSCloudKitMirroringDelegate *)v5 recoverFromError:v17])
    {
      [(NSCloudKitMirroringDelegate *)v5 _requestEncounteredRecoverableError:v27 withResult:a3];
    }

    else
    {
      [(NSCloudKitMirroringDelegate *)v5 _requestEncounteredUnrecoverableError:v27 withResult:a3];
    }

    goto LABEL_21;
  }

LABEL_22:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void __52__NSCloudKitMirroringDelegate__performSetupRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  location[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 112));
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 progressProvider];
  v8 = *(a1 + 32);
  if ((*(v8 + 89) & 1) == 0)
  {
    v21 = [*(v8 + 208) usableVoucherForEventType:0];
    if (v21)
    {
      v116 = v21;
      [objc_msgSend(*(a1 + 40) "options")];
    }

    v22 = [[PFCloudKitSetupAssistant alloc] initWithSetupRequest:*(a1 + 40) mirroringOptions:*(*(a1 + 32) + 8) accountMonitor:*(*(a1 + 32) + 136) observedStore:WeakRetained];
    v113 = 0;
    v23 = [(PFCloudKitSetupAssistant *)v22 _initializeCloudKitForObservedStore:(*(a1 + 32) + 128) andNoteMetadataInitialization:?];
    if (v22)
    {
      setupEvent = v22->_setupEvent;
    }

    else
    {
      setupEvent = 0;
    }

    v20 = setupEvent;
    if (v23)
    {
      v25 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v27 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v28 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v28 = 16 * (__ckLoggingOverride == 16);
      }

      if (os_log_type_enabled(Stream, v28))
      {
        v29 = *(a1 + 32);
        v30 = [WeakRetained identifier];
        *buf = 136316162;
        *&buf[4] = "[NSCloudKitMirroringDelegate _performSetupRequest:]_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = 1137;
        *&buf[18] = 2112;
        *&buf[20] = v29;
        *&buf[28] = 2112;
        *&buf[30] = v30;
        *&buf[38] = 2112;
        v118 = WeakRetained;
        _os_log_impl(&dword_18565F000, v27, v28, "CoreData+CloudKit: %s(%d): %@: Successfully set up CloudKit integration for store (%@): %@", buf, 0x30u);
      }

      objc_autoreleasePoolPop(v25);
      v31 = *(*(a1 + 32) + 56);
      if (v31)
      {

        *(*(a1 + 32) + 56) = 0;
      }

      if (v22)
      {
        database = v22->_database;
      }

      else
      {
        database = 0;
      }

      *(*(a1 + 32) + 56) = database;
      v33 = *(*(a1 + 32) + 40);
      if (v33)
      {

        *(*(a1 + 32) + 40) = 0;
      }

      if (v22)
      {
        databaseSubscription = v22->_databaseSubscription;
      }

      else
      {
        databaseSubscription = 0;
      }

      *(*(a1 + 32) + 40) = databaseSubscription;
      v35 = *(*(a1 + 32) + 48);
      if (v35)
      {

        *(*(a1 + 32) + 48) = 0;
      }

      if (v22)
      {
        container = v22->_container;
      }

      else
      {
        container = 0;
      }

      *(*(a1 + 32) + 48) = container;
      v37 = *(a1 + 32);
      v38 = *(v37 + 200);
      if (v38)
      {

        *(*(a1 + 32) + 200) = 0;
        v37 = *(a1 + 32);
      }

      if (*(v37 + 48) && ([*(v37 + 8) databaseScope] == 2 || objc_msgSend(*(*(a1 + 32) + 8), "databaseScope") == 3))
      {
        objc_initWeak(buf, *(a1 + 32));
        *(*(a1 + 32) + 200) = [objc_alloc(getCloudKitCKSystemSharingUIObserverClass()) initWithContainer:*(*(a1 + 32) + 48)];
        v111[0] = MEMORY[0x1E69E9820];
        v111[1] = 3221225472;
        v111[2] = __52__NSCloudKitMirroringDelegate__performSetupRequest___block_invoke_274;
        v111[3] = &unk_1E6EC4B38;
        objc_copyWeak(&v112, buf);
        [*(*(a1 + 32) + 200) setSystemSharingUIDidSaveShareBlock:v111];
        v109[0] = MEMORY[0x1E69E9820];
        v109[1] = 3221225472;
        v109[2] = __52__NSCloudKitMirroringDelegate__performSetupRequest___block_invoke_276;
        v109[3] = &unk_1E6EC4B60;
        objc_copyWeak(&v110, buf);
        [*(*(a1 + 32) + 200) setSystemSharingUIDidStopSharingBlock:v109];
        objc_destroyWeak(&v110);
        objc_destroyWeak(&v112);
        objc_destroyWeak(buf);
      }

      *(*(a1 + 32) + 96) = [[PFCloudKitExporterOptions alloc] initWithDatabase:*(*(a1 + 32) + 56) options:*(*(a1 + 32) + 8)];
      v39 = [*(*(a1 + 32) + 136) currentUserRecordID];
      v40 = *(a1 + 32);
      if (v39 || (v41 = [*(v40 + 8) databaseScope], v40 = *(a1 + 32), v41 == 1))
      {
        *(v40 + 89) = 1;
        goto LABEL_46;
      }

      v84 = *(v40 + 8);
      if (v84)
      {
        v85 = (v40 + 89);
        if (*(v84 + 12) == 1)
        {
          *v85 = 1;
          goto LABEL_46;
        }
      }

      else
      {
        v85 = (v40 + 89);
      }

      *v85 = 0;
      v101 = *(*(a1 + 32) + 80);
      if (v101)
      {

        *(*(a1 + 32) + 80) = 0;
      }

      v102 = objc_alloc(MEMORY[0x1E696ABC0]);
      v114 = *MEMORY[0x1E696A580];
      v115 = @"Failed to initialize because there is no user signed in to this device.";
      v103 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
      *(*(a1 + 32) + 80) = [v102 initWithDomain:*MEMORY[0x1E696A250] code:134400 userInfo:v103];
      [(NSCloudKitMirroringDelegate *)*(a1 + 32) registerForAccountAndIdentityNotificationsIfNeeded];
      if (*(*(a1 + 32) + 129) == 1)
      {
        [*(*(a1 + 32) + 72) unregisterForSubscriptionWithID:objc_msgSend(*(*(a1 + 32) + 40) inDatabase:{"subscriptionID"), *(*(a1 + 32) + 56)}];
        *(*(a1 + 32) + 129) = 0;
      }

LABEL_46:
      v42 = *(a1 + 32);
      if (*(v42 + 89) == 1)
      {
        v43 = *(v42 + 80);
        if (v43)
        {

          *(*(a1 + 32) + 80) = 0;
          v42 = *(a1 + 32);
        }

        v44 = [*(a1 + 40) options];
        if (v44)
        {
          v45 = *(v44 + 24);
          if (v42)
          {
LABEL_51:
            context = v45;
            v107 = objc_autoreleasePoolPush();
            Weak = objc_loadWeak((v42 + 120));
            [(NSCloudKitMirroringDelegate *)v42 registerForAccountAndIdentityNotificationsIfNeeded];
            objc_initWeak(location, v42);
            if ([*(v42 + 8) automaticallyScheduleImportAndExportOperations])
            {
              if ([objc_msgSend(v42 "accountMonitor")])
              {
                [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
                [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
              }

              v47 = *(v42 + 40);
              if (v47 && (*(v42 + 129) & 1) == 0)
              {
                v104 = *(v42 + 72);
                v48 = [v47 subscriptionID];
                v49 = *(v42 + 56);
                v119[0] = MEMORY[0x1E69E9820];
                v119[1] = 3221225472;
                v119[2] = __56__NSCloudKitMirroringDelegate__beginWatchingForChanges___block_invoke;
                v119[3] = &unk_1E6EC4AC0;
                objc_copyWeak(&v120, location);
                [v104 registerForSubscriptionWithID:v48 inDatabase:v49 handler:v119];
                *(v42 + 129) = 1;
                objc_destroyWeak(&v120);
              }

              if (!*(v42 + 192))
              {
                v50 = objc_alloc_init(PFApplicationStateMonitor);
                *(v42 + 192) = v50;
                if (v50)
                {
                  objc_storeWeak(&v50->_delegate, v42);
                }
              }

              if ([objc_msgSend(v42 "accountMonitor")])
              {
                v51 = objc_autoreleasePoolPush();
                v52 = __PFCloudKitLoggingGetStream();
                v53 = v52;
                v54 = __ckLoggingOverride;
                if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
                {
                  v54 = OS_LOG_TYPE_INFO;
                }

                if (os_log_type_enabled(v52, v54))
                {
                  *buf = 136315650;
                  *&buf[4] = "[NSCloudKitMirroringDelegate _beginWatchingForChanges:]";
                  *&buf[12] = 1024;
                  *&buf[14] = 757;
                  *&buf[18] = 2112;
                  *&buf[20] = v42;
                  _os_log_impl(&dword_18565F000, v53, v54, "CoreData+CloudKit: %s(%d): %@: Scheduling post-setup export", buf, 0x1Cu);
                }

                objc_autoreleasePoolPop(v51);
                [(NSCloudKitMirroringDelegate *)v42 scheduleExportAndStartAfterDate:?];
              }

              if ([objc_msgSend(*(v42 + 48) "containerID")] == 2)
              {
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 3221225472;
                *&buf[16] = __56__NSCloudKitMirroringDelegate__beginWatchingForChanges___block_invoke_208;
                *&buf[24] = &unk_1E6EC4AE8;
                objc_copyWeak(&v118, location);
                *&buf[32] = v42;
                [(NSCloudKitMirroringDelegate *)v42 _openTransactionWithLabel:@"CoreData: CloudKit Sandbox Operations" assertionLabel:buf andExecuteWorkBlock:?];
                objc_destroyWeak(&v118);
              }

              else
              {
                [NSCloudKitMirroringDelegate checkAndScheduleImportIfNecessaryFromPush:v42 fromErrorRecovery:context & 1 fromShareAccept:0 andStartAfterDate:?];
              }
            }

            objc_destroyWeak(location);
            objc_autoreleasePoolPop(v107);
          }
        }

        else
        {
          v45 = 0;
          if (v42)
          {
            goto LABEL_51;
          }
        }
      }

LABEL_122:

      goto LABEL_123;
    }

    v60 = *(*(a1 + 32) + 80);
    if (v60)
    {

      *(*(a1 + 32) + 80) = 0;
    }

    *(*(a1 + 32) + 80) = v113;
    *(*(a1 + 32) + 89) = 0;
    v61 = objc_autoreleasePoolPush();
    v62 = __PFCloudKitLoggingGetStream();
    v63 = v62;
    if (__ckLoggingOverride == 17)
    {
      v64 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v64 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(v62, v64))
    {
      v65 = *(a1 + 32);
      *buf = 136316162;
      *&buf[4] = "[NSCloudKitMirroringDelegate _performSetupRequest:]_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = 1230;
      *&buf[18] = 2112;
      *&buf[20] = v65;
      *&buf[28] = 2112;
      *&buf[30] = WeakRetained;
      *&buf[38] = 2112;
      v118 = v113;
      _os_log_impl(&dword_18565F000, v63, v64, "CoreData+CloudKit: %s(%d): %@: Failed to set up CloudKit integration for store: %@\n%@", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v61);
    if (!v113)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: _initializeCloudKitForObservedStore failed but did not return an error.\n", buf, 2u);
      }

      v80 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18565F000, v80, OS_LOG_TYPE_FAULT, "CoreData: _initializeCloudKitForObservedStore failed but did not return an error.", buf, 2u);
      }

      goto LABEL_122;
    }

    if (([(NSCloudKitMirroringDelegate *)*(a1 + 32) recoverFromError:v113]& 1) == 0)
    {
      if (v22)
      {
        v81 = v22->_container;
        if (v81)
        {
          v82 = *(a1 + 32);
          v83 = *(v82 + 48);
          if (v83 != v81)
          {

            *(*(a1 + 32) + 48) = v22->_container;
            v82 = *(a1 + 32);
          }

          [(NSCloudKitMirroringDelegate *)v82 registerForAccountAndIdentityNotificationsIfNeeded];
        }
      }

      if ([objc_msgSend(*(*(a1 + 32) + 136) "currentAccountInfo")] != 3)
      {
        [*(*(a1 + 32) + 136) clearEstablishedAccountInfoAndUserRecordID];
      }

      goto LABEL_122;
    }

    if (![(NSCloudKitMirroringDelegate *)*(a1 + 32) shouldAttemptSetupRecoveryFromError:v113 viaPush:0])
    {
      goto LABEL_122;
    }

    v66 = *(a1 + 32);
    v67 = *(v66 + 48);
    if (v22)
    {
      if (v67 == v22->_container)
      {
        goto LABEL_91;
      }

      v68 = v22->_container;
    }

    else
    {
      if (!v67)
      {
        goto LABEL_91;
      }

      v68 = 0;
    }

    *(*(a1 + 32) + 48) = v68;
    v66 = *(a1 + 32);
    if (!v66)
    {
      goto LABEL_122;
    }

LABEL_91:
    v108 = v113;
    if (!v113)
    {
      v69 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, v69, OS_LOG_TYPE_ERROR, "CoreData: fault: Expected a non-nil error to schedule a setup activity from.\n", buf, 2u);
      }

      v70 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18565F000, v70, OS_LOG_TYPE_FAULT, "CoreData: Expected a non-nil error to schedule a setup activity from.", buf, 2u);
      }
    }

    [*(v66 + 208) expireVouchersForEventType:0];
    if ([*(v66 + 8) automaticallyScheduleImportAndExportOperations])
    {
      v71 = objc_loadWeak((v66 + 112));
      contexta = objc_autoreleasePoolPush();
      v72 = __PFCloudKitLoggingGetStream();
      v73 = v72;
      v74 = __ckLoggingOverride;
      if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
      {
        v74 = OS_LOG_TYPE_INFO;
      }

      if (os_log_type_enabled(v72, v74))
      {
        *buf = 136315906;
        *&buf[4] = "[NSCloudKitMirroringDelegate _scheduleSetupActivityFromError:]";
        *&buf[12] = 1024;
        *&buf[14] = 3747;
        *&buf[18] = 2112;
        *&buf[20] = v66;
        *&buf[28] = 2112;
        *&buf[30] = v71;
        _os_log_impl(&dword_18565F000, v73, v74, "CoreData+CloudKit: %s(%d): %@: Submitting setup activity as recovery for %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(contexta);

      v75 = [(NSCloudKitMirroringDelegate *)v66 newActivityWithIdentifier:0 andVoucher:?];
      v76 = [NSCloudKitMirroringDelegate retryAfterInSecondsFromError:v108];
      [v76 doubleValue];
      if (v77 > 0.0)
      {
        v78 = MEMORY[0x1E695DF00];
        [v76 doubleValue];
        [v75 setEarliestStartDate:{objc_msgSend(v78, "dateWithTimeIntervalSinceNow:")}];
      }

      [*(v66 + 64) submitActivity:v75];
      [NSCloudKitMirroringDelegate resetAfterError:v66 andKeepContainer:v108];
    }

    goto LABEL_122;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = __PFCloudKitLoggingGetStream();
  v11 = v10;
  if (__ckLoggingOverride == 17)
  {
    v12 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v12 = 16 * (__ckLoggingOverride == 16);
  }

  if (os_log_type_enabled(v10, v12))
  {
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    *buf = 136315906;
    *&buf[4] = "[NSCloudKitMirroringDelegate _performSetupRequest:]_block_invoke";
    *&buf[12] = 1024;
    *&buf[14] = 1261;
    *&buf[18] = 2112;
    *&buf[20] = v13;
    *&buf[28] = 2112;
    *&buf[30] = v14;
    _os_log_impl(&dword_18565F000, v11, v12, "CoreData+CloudKit: %s(%d): %@: Asked to set up but already successfully initialized: %@", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v9);
  v119[0] = 0;
  v15 = *(a1 + 32);
  if (v15 && (v16 = *(v15 + 8)) != 0)
  {
    v17 = *(v16 + 88);
    if (!a2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v17 = 0;
    if (!a2)
    {
      goto LABEL_13;
    }
  }

  v18 = *(a2 + 8);
LABEL_13:
  v19 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v17 inTransactionWithLabel:WeakRetained];
  v20 = [NSCKEvent beginEventForRequest:v19 withMonitor:v119 error:?];
  if (v20)
  {
    [v7 eventUpdated:v20];
  }

  else
  {
    v55 = objc_autoreleasePoolPush();
    v56 = __PFCloudKitLoggingGetStream();
    v57 = v56;
    if (__ckLoggingOverride == 17)
    {
      v58 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v58 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(v56, v58))
    {
      v59 = *(a1 + 32);
      *buf = 136315906;
      *&buf[4] = "[NSCloudKitMirroringDelegate _performSetupRequest:]_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = 1271;
      *&buf[18] = 2112;
      *&buf[20] = v59;
      *&buf[28] = 2112;
      *&buf[30] = v119[0];
      _os_log_impl(&dword_18565F000, v57, v58, "CoreData+CloudKit: %s(%d): %@: Failed to create setup event: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v55);
  }

LABEL_123:
  v86 = [NSCloudKitMirroringResult alloc];
  v87 = *(a1 + 32);
  if ((*(v87 + 89) & 1) == 0)
  {
    v88 = *(v87 + 80);
  }

  v89 = [NSCloudKitMirroringResult initWithRequest:v86 storeIdentifier:"initWithRequest:storeIdentifier:success:madeChanges:error:" success:*(a1 + 40) madeChanges:*(v87 + 152) error:?];
  [(NSCloudKitMirroringDelegate *)*(a1 + 32) _finishedRequest:v89 withResult:?];
  if (v20)
  {
    v119[0] = 0;
    v90 = *(a1 + 32);
    if (v90 && (v91 = *(v90 + 8)) != 0)
    {
      v92 = *(v91 + 88);
      if (!a2)
      {
        goto LABEL_130;
      }
    }

    else
    {
      v92 = 0;
      if (!a2)
      {
        goto LABEL_130;
      }
    }

    v93 = *(a2 + 8);
LABEL_130:
    v94 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v92 inTransactionWithLabel:WeakRetained];
    v95 = [NSCKEvent finishEventForResult:v89 withMonitor:v94 error:v119];
    if (v95)
    {
      [v7 eventUpdated:v95];
    }

    else
    {
      v96 = objc_autoreleasePoolPush();
      v97 = __PFCloudKitLoggingGetStream();
      v98 = v97;
      if (__ckLoggingOverride == 17)
      {
        v99 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v99 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(v97, v99))
      {
        *buf = 136315650;
        *&buf[4] = "[NSCloudKitMirroringDelegate _performSetupRequest:]_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = 1296;
        *&buf[18] = 2112;
        *&buf[20] = v119[0];
        _os_log_impl(&dword_18565F000, v98, v99, "CoreData+CloudKit: %s(%d): Failed to finish setup event: %@", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v96);
    }
  }

  v100 = *MEMORY[0x1E69E9840];
}

void __52__NSCloudKitMirroringDelegate__performSetupRequest___block_invoke_274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v6 = *(WeakRetained + 1);
      if (v6)
      {
        v7 = *(v6 + 88);
      }

      else
      {
        v7 = 0;
      }

      v18 = WeakRetained;
      Weak = objc_loadWeak(WeakRetained + 14);
      v9 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v7 inTransactionWithLabel:Weak];
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __52__NSCloudKitMirroringDelegate__persistUpdatedShare___block_invoke;
      *&buf[24] = &unk_1E6EC19D8;
      *&buf[32] = v9;
      v20 = v18;
      v21 = a3;
      [(PFCloudKitStoreMonitor *)v9 performBlock:buf];

      WeakRetained = v18;
    }

    v10 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v15 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v16 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v16 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v16))
    {
      *buf = 136315906;
      *&buf[4] = "[NSCloudKitMirroringDelegate _performSetupRequest:]_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = 1167;
      *&buf[18] = 2112;
      *&buf[20] = a2;
      *&buf[28] = 2112;
      *&buf[30] = a4;
      _os_log_impl(&dword_18565F000, v15, v16, "CoreData+CloudKit: %s(%d): Called about a failure to save a share: %@ - %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = *MEMORY[0x1E69E9840];
  }
}

void __52__NSCloudKitMirroringDelegate__performSetupRequest___block_invoke_276(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v7 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v8 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v8 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v8))
    {
      *buf = 136315906;
      *&buf[4] = "[NSCloudKitMirroringDelegate _performSetupRequest:]_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = 1176;
      *&buf[18] = 2112;
      *&buf[20] = a2;
      *&buf[28] = 2112;
      *&buf[30] = a3;
      _os_log_impl(&dword_18565F000, v7, v8, "CoreData+CloudKit: %s(%d): Called about a failure to delete a share: %@ - %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    val = objc_loadWeakRetained((a1 + 32));
    if (val)
    {
      objc_initWeak(&location, val);
      v10 = val[1];
      if (v10)
      {
        v11 = v10[11];
      }

      else
      {
        v11 = 0;
      }

      Weak = objc_loadWeak(val + 14);
      v13 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v11 inTransactionWithLabel:Weak];
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __56__NSCloudKitMirroringDelegate__deleteShareWithRecordID___block_invoke;
      *&buf[24] = &unk_1E6EC4E80;
      *&buf[32] = v13;
      v18 = val;
      v19 = a2;
      objc_copyWeak(v20, &location);
      [(PFCloudKitStoreMonitor *)v13 performBlock:buf];

      objc_destroyWeak(v20);
      objc_destroyWeak(&location);
    }

    v14 = *MEMORY[0x1E69E9840];
  }
}

- (uint64_t)recoverFromError:(uint64_t)a1
{
  v2 = a1;
  v29 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (!a2)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: recoverFromError illegally passed nil instead of an error on a failure condition\n", buf, 2u);
      }

      v5 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18565F000, v5, OS_LOG_TYPE_FAULT, "CoreData: recoverFromError illegally passed nil instead of an error on a failure condition", buf, 2u);
      }
    }

    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v6 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v8 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v9 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v9 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v9))
    {
      *buf = 136315906;
      v22 = "[NSCloudKitMirroringDelegate recoverFromError:]";
      v23 = 1024;
      v24 = 2304;
      v25 = 2112;
      v26 = v2;
      v27 = 2112;
      v28 = a2;
      _os_log_impl(&dword_18565F000, v8, v9, "CoreData+CloudKit: %s(%d): %@ - Attempting recovery from error: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = *(v2 + 8);
    if (v10)
    {
      v11 = *(v10 + 88);
    }

    else
    {
      v11 = 0;
    }

    Weak = objc_loadWeak((v2 + 112));
    v13 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v11 inTransactionWithLabel:Weak];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __48__NSCloudKitMirroringDelegate_recoverFromError___block_invoke;
    v16[3] = &unk_1E6EC2748;
    v16[4] = v13;
    v16[5] = a2;
    v16[6] = v2;
    v16[7] = &v17;
    [(PFCloudKitStoreMonitor *)v13 performBlock:v16];

    LOBYTE(v2) = *(v18 + 24);
    _Block_object_dispose(&v17, 8);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v2 & 1;
}

void __57__NSCloudKitMirroringDelegate__performImportWithRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (*(v3 + 89) == 1)
  {
    WeakRetained = objc_loadWeakRetained((v3 + 112));
    v6 = *(a1 + 32);
    if (v6 && (v7 = *(v6 + 8)) != 0)
    {
      v8 = *(v7 + 88);
      if (!a2)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v8 = 0;
      if (!a2)
      {
        goto LABEL_6;
      }
    }

    v9 = *(a2 + 8);
LABEL_6:
    v10 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v8 inTransactionWithLabel:WeakRetained];
    v21 = 0;
    v11 = [NSCKEvent beginEventForRequest:v10 withMonitor:&v21 error:?];
    if (v11)
    {
      v12 = *(a1 + 32);
      if (v12)
      {
        v13 = *(v12 + 8);
      }

      else
      {
        v13 = 0;
      }

      [objc_msgSend(v13 "progressProvider")];
      v14 = [[PFCloudKitImporterOptions alloc] initWithOptions:*(*(a1 + 32) + 8) monitor:v10 assetStorageURL:[PFCloudKitSerializer assetStorageDirectoryURLForStore:?]andDatabase:*(*(a1 + 32) + 32), *(*(a1 + 32) + 56)];
      v15 = [[PFCloudKitImporter alloc] initWithOptions:v14 request:*(a1 + 40)];

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __57__NSCloudKitMirroringDelegate__performImportWithRequest___block_invoke_2;
      v20[3] = &unk_1E6EC35E0;
      v20[4] = v15;
      v20[5] = a2;
      v16 = *(a1 + 32);
      v20[6] = v10;
      v20[7] = v16;
      [(PFCloudKitImporter *)v15 importIfNecessaryWithCompletion:v20];
    }

    else
    {
      v18 = [NSCloudKitMirroringResult alloc];
      v19 = [(NSCloudKitMirroringResult *)v18 initWithRequest:*(a1 + 40) storeIdentifier:*(*(a1 + 32) + 152) success:0 madeChanges:0 error:v21];
      [(NSCloudKitMirroringDelegate *)*(a1 + 32) _importFinishedWithResult:v19 importer:0];

      v15 = 0;
    }

    return;
  }

  v17 = *(a1 + 40);

  [(NSCloudKitMirroringDelegate *)v3 _requestAbortedNotInitialized:v17];
}

void __57__NSCloudKitMirroringDelegate__performImportWithRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v14 = 0;
  v6 = [NSCKEvent finishEventForResult:a2 withMonitor:*(a1 + 48) error:&v14];
  if (v6)
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      v8 = *(v7 + 8);
    }

    else
    {
      v8 = 0;
    }

    [objc_msgSend(v8 "progressProvider")];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v11 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v12 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v12 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v12))
    {
      *buf = 136315650;
      v16 = "[NSCloudKitMirroringDelegate _performImportWithRequest:]_block_invoke_2";
      v17 = 1024;
      v18 = 1353;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&dword_18565F000, v11, v12, "CoreData+CloudKit: %s(%d): Failed to finish import event: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v9);
  }

  [(NSCloudKitMirroringDelegate *)*(a1 + 56) _importFinishedWithResult:a2 importer:v4];
  v13 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_importFinishedWithResult:(uint64_t)a3 importer:
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    v6 = MEMORY[0x1E695DF90];
    v15[0] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a2, "success", @"success"}];
    v14[1] = @"madeChanges";
    v14[2] = @"result";
    v15[1] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a2, "madeChanges")}];
    v15[2] = a2;
    v7 = [v6 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v15, v14, 3)}];
    if ([a2 success])
    {
      if ([*(v5 + 8) automaticallyScheduleImportAndExportOperations])
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __125__NSCloudKitMirroringDelegate_checkAndScheduleImportIfNecessaryFromPush_fromErrorRecovery_fromShareAccept_andStartAfterDate___block_invoke;
        *&buf[24] = &unk_1E6EC4D90;
        *&buf[32] = v5;
        v17[0] = 0;
        *(v17 + 7) = 0;
        [(NSCloudKitMirroringDelegate *)v5 _openTransactionWithLabel:@"CoreData: CloudKit Scheduling" assertionLabel:buf andExecuteWorkBlock:?];
      }
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v10 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v11 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v11 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(Stream, v11))
      {
        v12 = [a2 error];
        *buf = 136315906;
        *&buf[4] = "[NSCloudKitMirroringDelegate _importFinishedWithResult:importer:]";
        *&buf[12] = 1024;
        *&buf[14] = 1392;
        *&buf[18] = 2112;
        *&buf[20] = a3;
        *&buf[28] = 2112;
        *&buf[30] = v12;
        _os_log_impl(&dword_18565F000, v10, v11, "CoreData+CloudKit: %s(%d): %@: Import failed with error:\n%@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v8);
    }

    if ([a2 error])
    {
      [v7 setObject:objc_msgSend(a2 forKey:{"error"), @"error"}];
    }

    -[NSCloudKitMirroringDelegate _finishedRequest:withResult:](v5, [a2 request], a2);
    result = [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_requestAbortedNotInitialized:(uint64_t)a1
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v6 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v7 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v7 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v7))
    {
      v8 = *(a1 + 80);
      *buf = 136316162;
      v18 = "[NSCloudKitMirroringDelegate _requestAbortedNotInitialized:]";
      v19 = 1024;
      v20 = 2192;
      v21 = 2112;
      v22 = a1;
      v23 = 2112;
      v24 = a2;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&dword_18565F000, v6, v7, "CoreData+CloudKit: %s(%d): %@ - Never successfully initialized and cannot execute request '%@' due to error: %@", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request '%@' was aborted because the mirroring delegate never successfully initialized due to error: %@", objc_msgSend(a2, "requestIdentifier"), *(a1 + 80)];
    v10 = [NSCloudKitMirroringResult alloc];
    v11 = *(a1 + 152);
    v12 = *MEMORY[0x1E696A250];
    v15 = *MEMORY[0x1E696A588];
    v16 = v9;
    v13 = -[NSCloudKitMirroringResult initWithRequest:storeIdentifier:success:madeChanges:error:](v10, "initWithRequest:storeIdentifier:success:madeChanges:error:", a2, v11, 0, 0, [MEMORY[0x1E696ABC0] errorWithDomain:v12 code:134406 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v16, &v15, 1)}]);
    [(NSCloudKitMirroringDelegate *)a1 _finishedRequest:a2 withResult:v13];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __57__NSCloudKitMirroringDelegate__performExportWithRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (*(v3 + 89) == 1)
  {
    WeakRetained = objc_loadWeakRetained((v3 + 112));
    if (![objc_msgSend(*(a1 + 32) "accountMonitor")])
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v24 = *(a1 + 32);
        v25 = [WeakRetained URL];
        v26 = *(a1 + 32);
        if (v26)
        {
          v26 = *(v26 + 8);
        }

        *buf = 138412802;
        *&buf[4] = v24;
        v32 = 2112;
        v33 = v25;
        v34 = 2112;
        v35 = v26;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: %@: Illegal attempt to export without an account: %@ - %@\n", buf, 0x20u);
      }

      v7 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v27 = *(a1 + 32);
        v28 = [WeakRetained URL];
        v29 = *(a1 + 32);
        if (v29)
        {
          v29 = *(v29 + 8);
        }

        *buf = 138412802;
        *&buf[4] = v27;
        v32 = 2112;
        v33 = v28;
        v34 = 2112;
        v35 = v29;
        _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: %@: Illegal attempt to export without an account: %@ - %@", buf, 0x20u);
      }
    }

    v8 = *(a1 + 32);
    if (v8 && (v9 = *(v8 + 8)) != 0)
    {
      v10 = *(v9 + 88);
      if (!a2)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v10 = 0;
      if (!a2)
      {
        goto LABEL_9;
      }
    }

    v11 = *(a2 + 8);
LABEL_9:
    v12 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v10 inTransactionWithLabel:WeakRetained];

    *buf = 0;
    v13 = [NSCKEvent beginEventForRequest:v12 withMonitor:buf error:?];
    if (v13)
    {
      v14 = *(a1 + 32);
      if (v14)
      {
        v15 = *(v14 + 8);
      }

      else
      {
        v15 = 0;
      }

      [objc_msgSend(v15 "progressProvider")];
      v16 = [[PFCloudKitExporter alloc] initWithOptions:*(*(a1 + 32) + 96) request:*(a1 + 40) monitor:v12 workQueue:*(*(a1 + 32) + 32)];
      v17 = v16;
      if (v16)
      {
        objc_storeWeak(&v16->_delegate, *(a1 + 32));
      }

      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __57__NSCloudKitMirroringDelegate__performExportWithRequest___block_invoke_314;
      v30[3] = &unk_1E6EC35E0;
      v30[4] = a2;
      v30[5] = v17;
      v18 = *(a1 + 32);
      v30[6] = v12;
      v30[7] = v18;
      [(PFCloudKitExporter *)v17 exportIfNecessaryWithCompletion:v30];

      v12 = 0;
    }

    else
    {
      v21 = [NSCloudKitMirroringResult alloc];
      v22 = [(NSCloudKitMirroringResult *)v21 initWithRequest:*(a1 + 40) storeIdentifier:*(*(a1 + 32) + 152) success:0 madeChanges:0 error:*buf];
      [(NSCloudKitMirroringDelegate *)*(a1 + 32) _exportFinishedWithResult:v22 exporter:0];
    }

    v23 = *MEMORY[0x1E69E9840];
    return;
  }

  v19 = *(a1 + 40);
  v20 = *MEMORY[0x1E69E9840];

  [(NSCloudKitMirroringDelegate *)v3 _requestAbortedNotInitialized:v19];
}

void __57__NSCloudKitMirroringDelegate__performExportWithRequest___block_invoke_314(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v14 = 0;
  v6 = [NSCKEvent finishEventForResult:a2 withMonitor:*(a1 + 48) error:&v14];
  if (v6)
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      v8 = *(v7 + 8);
    }

    else
    {
      v8 = 0;
    }

    [objc_msgSend(v8 "progressProvider")];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v11 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v12 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v12 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v12))
    {
      *buf = 136315650;
      v16 = "[NSCloudKitMirroringDelegate _performExportWithRequest:]_block_invoke";
      v17 = 1024;
      v18 = 1449;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&dword_18565F000, v11, v12, "CoreData+CloudKit: %s(%d): Failed to finish export event: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v9);
  }

  [(NSCloudKitMirroringDelegate *)*(a1 + 56) _exportFinishedWithResult:a2 exporter:*(a1 + 40)];
  v13 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_exportFinishedWithResult:(uint64_t)a3 exporter:
{
  v28 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    v6 = [a2 success];
    v7 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v9 = Stream;
    if (v6)
    {
      if (__ckLoggingOverride == 17)
      {
        v10 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v10 = 16 * (__ckLoggingOverride == 16);
      }

      if (!os_log_type_enabled(Stream, v10))
      {
        goto LABEL_14;
      }

      *buf = 136315650;
      v21 = "[NSCloudKitMirroringDelegate _exportFinishedWithResult:exporter:]";
      v22 = 1024;
      v23 = 1484;
      v24 = 2112;
      v25 = a3;
      v11 = "CoreData+CloudKit: %s(%d): Finished export: %@";
      v12 = v9;
      v13 = v10;
      v14 = 28;
    }

    else
    {
      if (__ckLoggingOverride == 17)
      {
        v15 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v15 = OS_LOG_TYPE_ERROR;
      }

      if (!os_log_type_enabled(Stream, v15))
      {
        goto LABEL_14;
      }

      *buf = 136315906;
      v21 = "[NSCloudKitMirroringDelegate _exportFinishedWithResult:exporter:]";
      v22 = 1024;
      v23 = 1486;
      v24 = 2112;
      v25 = a3;
      v26 = 2112;
      v27 = [a2 error];
      v11 = "CoreData+CloudKit: %s(%d): %@: Export failed with error:\n%@";
      v13 = v15;
      v12 = v9;
      v14 = 38;
    }

    _os_log_impl(&dword_18565F000, v12, v13, v11, buf, v14);
LABEL_14:
    objc_autoreleasePoolPop(v7);
    -[NSCloudKitMirroringDelegate _finishedRequest:withResult:](v5, [a2 request], a2);
    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    v18[1] = @"result";
    v19[0] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a2, "madeChanges", @"madeChanges"}];
    v19[1] = a2;
    result = [v16 postNotificationName:@"PFCloudKitDidExportNotificationName" object:v5 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v19, v18, 2)}];
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void __56__NSCloudKitMirroringDelegate__performResetZoneRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (*(v3 + 89) == 1)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v6 = *(v5 + 88);
    }

    else
    {
      v6 = 0;
    }

    Weak = objc_loadWeak((v3 + 112));
    if (a2)
    {
      v8 = *(a2 + 8);
    }

    v9 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v6 inTransactionWithLabel:Weak];
    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = *(v10 + 80);
    }

    else
    {
      v11 = 0;
    }

    if ([v11 count])
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __56__NSCloudKitMirroringDelegate__performResetZoneRequest___block_invoke_2;
      v23[3] = &unk_1E6EC19D8;
      v23[4] = v9;
      v24 = *(a1 + 32);
      [(PFCloudKitStoreMonitor *)v9 performBlock:v23];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v16 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v17 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v17 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(Stream, v17))
      {
        v18 = *(a1 + 32);
        v19 = *(a1 + 40);
        *buf = 136315906;
        v28 = "[NSCloudKitMirroringDelegate _performResetZoneRequest:]_block_invoke_3";
        v29 = 1024;
        v30 = 1638;
        v31 = 2112;
        v32 = v18;
        v33 = 2112;
        v34 = v19;
        _os_log_impl(&dword_18565F000, v16, v17, "CoreData+CloudKit: %s(%d): %@: Asked to schedule a zone reset operation without a zoneID: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v14);
      v20 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A588];
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The mirroring delegate could not complete request '%@' because it does not have a zone.", objc_msgSend(*(a1 + 40), "requestIdentifier")];
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      -[NSCloudKitMirroringDelegate resetAfterError:andKeepContainer:](*(a1 + 32), [v20 errorWithDomain:*MEMORY[0x1E696A250] code:134406 userInfo:v21]);
      [(NSCloudKitMirroringDelegate *)*(a1 + 32) _requestAbortedNotInitialized:?];
    }

    v22 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v12 = *(a1 + 40);
    v13 = *MEMORY[0x1E69E9840];

    [(NSCloudKitMirroringDelegate *)v3 _requestAbortedNotInitialized:v12];
  }
}

void __56__NSCloudKitMirroringDelegate__performResetZoneRequest___block_invoke_2(uint64_t a1)
{
  v68 = *MEMORY[0x1E69E9840];
  v45 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v45)
  {
    v54 = 0;
    v2 = *(a1 + 40);
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v3 + 96);
    }

    else
    {
      v4 = 0;
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = *(v5 + 80);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 32);
    v8 = [*(v2 + 56) databaseScope];
    if (v4 && ([(PFCloudKitMetadataPurger *)v4 purgeMetadataFromStore:v45 inMonitor:v7 withOptions:9 forRecordZones:v6 inDatabaseWithScope:v8 andTransactionAuthor:0 error:&v54]& 1) != 0)
    {
      v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v9 = *(a1 + 48);
      if (v9)
      {
        v10 = *(v9 + 80);
      }

      else
      {
        v10 = 0;
      }

      v11 = [v10 countByEnumeratingWithState:&v50 objects:v57 count:16];
      if (v11)
      {
        v12 = *v51;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v51 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v50 + 1) + 8 * i);
            v15 = [v14 ownerName];
            if ([v15 isEqualToString:getCloudKitCKCurrentUserDefaultName()])
            {
              [v46 addObject:v14];
            }

            else
            {
              v16 = objc_autoreleasePoolPush();
              Stream = __PFCloudKitLoggingGetStream();
              v18 = Stream;
              if (__ckLoggingOverride == 17)
              {
                v19 = OS_LOG_TYPE_FAULT;
              }

              else
              {
                v19 = 16 * (__ckLoggingOverride == 16);
              }

              if (os_log_type_enabled(Stream, v19))
              {
                v20 = *(a1 + 40);
                *buf = 136315906;
                v59 = "[NSCloudKitMirroringDelegate _performResetZoneRequest:]_block_invoke";
                v60 = 1024;
                v61 = 1530;
                v62 = 2112;
                v63 = v20;
                v64 = 2112;
                v65 = v14;
                _os_log_impl(&dword_18565F000, v18, v19, "CoreData+CloudKit: %s(%d): %@: Skipping delete of zone because it's not owned by the current user: %@", buf, 0x26u);
              }

              objc_autoreleasePoolPop(v16);
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v50 objects:v57 count:16];
        }

        while (v11);
      }

      if ([v46 count])
      {
        v21 = [objc_alloc(getCloudKitCKModifyRecordZonesOperationClass()) initWithRecordZonesToSave:0 recordZoneIDsToDelete:v46];
        if ([*(a1 + 48) options])
        {
          -[NSCloudKitMirroringRequestOptions applyToOperation:]([*(a1 + 48) options], v21);
        }

        [v21 setMarkZonesAsUserPurged:1];
        objc_initWeak(buf, *(a1 + 40));
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __56__NSCloudKitMirroringDelegate__performResetZoneRequest___block_invoke_323;
        v47[3] = &unk_1E6EC4B88;
        objc_copyWeak(&v49, buf);
        v48 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
        [v21 setModifyRecordZonesCompletionBlock:v47];
        [*(*(a1 + 40) + 56) addOperation:v21];

        objc_destroyWeak(&v49);
        objc_destroyWeak(buf);
      }

      else
      {
        v43 = [[NSCloudKitMirroringResult alloc] initWithRequest:*(a1 + 48) storeIdentifier:*(*(a1 + 40) + 152) success:1 madeChanges:1 error:0];
        [(NSCloudKitMirroringDelegate *)*(a1 + 40) _finishedRequest:v43 withResult:?];
      }
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = __PFCloudKitLoggingGetStream();
      v30 = v29;
      if (__ckLoggingOverride == 17)
      {
        v31 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v31 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(v29, v31))
      {
        v32 = *(a1 + 48);
        *buf = 136316162;
        v59 = "[NSCloudKitMirroringDelegate _performResetZoneRequest:]_block_invoke_2";
        v60 = 1024;
        v61 = 1521;
        v62 = 2112;
        v63 = v32;
        v64 = 2112;
        v65 = v45;
        v66 = 2112;
        v67 = v54;
        _os_log_impl(&dword_18565F000, v30, v31, "CoreData+CloudKit: %s(%d): Zone reset request failed: %@\nFailed to clear metadata from store: %@\n%@", buf, 0x30u);
      }

      objc_autoreleasePoolPop(v28);
      v33 = MEMORY[0x1E696AEC0];
      v34 = [*(a1 + 48) requestIdentifier];
      v35 = [v33 stringWithFormat:@"Request '%@' was aborted because the mirroring delegate failed to reset the local store's metadata: %@", v34, v54];
      v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v36 setObject:v35 forKey:*MEMORY[0x1E696A588]];
      if (v54)
      {
        [v36 setObject:v54 forKey:*MEMORY[0x1E696AA08]];
      }

      v37 = [NSCloudKitMirroringResult alloc];
      v38 = *(a1 + 48);
      v39 = *(*(a1 + 40) + 152);
      v40 = MEMORY[0x1E696ABC0];
      v41 = [v36 copy];
      v42 = -[NSCloudKitMirroringResult initWithRequest:storeIdentifier:success:madeChanges:error:](v37, "initWithRequest:storeIdentifier:success:madeChanges:error:", v38, v39, 0, 0, [v40 errorWithDomain:*MEMORY[0x1E696A250] code:134406 userInfo:v41]);
      [(NSCloudKitMirroringDelegate *)*(a1 + 40) _finishedRequest:v42 withResult:?];
    }
  }

  else
  {
    v22 = MEMORY[0x1E696ABC0];
    v55 = *MEMORY[0x1E696A588];
    v23 = a1;
    v25 = *(a1 + 48);
    v24 = (a1 + 48);
    v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request '%@' was cancelled because the store was removed from the coordinator.", objc_msgSend(v25, "requestIdentifier")];
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v27 = -[NSCloudKitMirroringResult initWithRequest:storeIdentifier:success:madeChanges:error:]([NSCloudKitMirroringResult alloc], "initWithRequest:storeIdentifier:success:madeChanges:error:", *v24, *(*(v23 + 40) + 152), 0, 0, [v22 errorWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v26]);
    [(NSCloudKitMirroringDelegate *)*(v23 + 40) _finishedRequest:v27 withResult:?];
  }

  v44 = *MEMORY[0x1E69E9840];
}

void __56__NSCloudKitMirroringDelegate__performResetZoneRequest___block_invoke_323(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[4];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__NSCloudKitMirroringDelegate__performResetZoneRequest___block_invoke_2_324;
    v10[3] = &unk_1E6EC2920;
    v10[4] = a4;
    v11 = *(a1 + 32);
    v12 = a3;
    dispatch_async(v9, v10);
  }
}

void __56__NSCloudKitMirroringDelegate__performResetZoneRequest___block_invoke_2_324(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    v2 = [[NSCloudKitMirroringResult alloc] initWithRequest:a1[5] storeIdentifier:*(a1[6] + 152) success:0 madeChanges:0 error:a1[4]];
    [(NSCloudKitMirroringDelegate *)a1[6] _finishedRequest:v2 withResult:?];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = a1[7];
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = *v13;
      do
      {
        v6 = 0;
        do
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = a1[5];
          if (v7)
          {
            v8 = *(v7 + 80);
          }

          else
          {
            v8 = 0;
          }

          if ([v8 containsObject:*(*(&v12 + 1) + 8 * v6)])
          {
            v10 = 1;
            goto LABEL_17;
          }

          ++v6;
        }

        while (v4 != v6);
        v9 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        v4 = v9;
      }

      while (v9);
    }

    v10 = 0;
LABEL_17:
    v2 = [[NSCloudKitMirroringResult alloc] initWithRequest:a1[5] storeIdentifier:*(a1[6] + 152) success:1 madeChanges:v10 error:0];
    [(NSCloudKitMirroringDelegate *)a1[6] _finishedRequest:v2 withResult:?];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __59__NSCloudKitMirroringDelegate__performFetchRecordsRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (*(v3 + 89) == 1)
  {
    WeakRetained = objc_loadWeakRetained((v3 + 112));
    v6 = *(a1 + 32);
    if (v6 && (v7 = *(v6 + 8)) != 0)
    {
      v8 = *(v7 + 88);
      if (!a2)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v8 = 0;
      if (!a2)
      {
        goto LABEL_6;
      }
    }

    v9 = *(a2 + 8);
LABEL_6:
    v10 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v8 inTransactionWithLabel:WeakRetained];
    v22 = 0;
    v11 = [NSCKEvent beginEventForRequest:v10 withMonitor:&v22 error:?];
    if (v11)
    {
      v12 = v11;
      v13 = *(a1 + 32);
      if (v13)
      {
        v14 = *(v13 + 8);
      }

      else
      {
        v14 = 0;
      }

      [objc_msgSend(v14 "progressProvider")];
      v15 = [[PFCloudKitImporterOptions alloc] initWithOptions:*(*(a1 + 32) + 8) monitor:v10 assetStorageURL:[PFCloudKitSerializer assetStorageDirectoryURLForStore:?]andDatabase:*(*(a1 + 32) + 32), *(*(a1 + 32) + 56)];
      v16 = [[PFCloudKitImporter alloc] initWithOptions:v15 request:*(a1 + 40)];

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __59__NSCloudKitMirroringDelegate__performFetchRecordsRequest___block_invoke_2;
      v21[3] = &unk_1E6EC35E0;
      v21[4] = v16;
      v21[5] = a2;
      v17 = *(a1 + 32);
      v21[6] = v10;
      v21[7] = v17;
      [(PFCloudKitImporter *)v16 importIfNecessaryWithCompletion:v21];
    }

    else
    {
      v19 = [NSCloudKitMirroringResult alloc];
      v20 = [(NSCloudKitMirroringResult *)v19 initWithRequest:*(a1 + 40) storeIdentifier:*(*(a1 + 32) + 152) success:0 madeChanges:0 error:v22];
      [(NSCloudKitMirroringDelegate *)*(a1 + 32) _importFinishedWithResult:v20 importer:0];

      v16 = 0;
      v12 = 0;
    }

    return;
  }

  v18 = *(a1 + 40);

  [(NSCloudKitMirroringDelegate *)v3 _requestAbortedNotInitialized:v18];
}

void __59__NSCloudKitMirroringDelegate__performFetchRecordsRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v14 = 0;
  v6 = [NSCKEvent finishEventForResult:a2 withMonitor:*(a1 + 48) error:&v14];
  if (v6)
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      v8 = *(v7 + 8);
    }

    else
    {
      v8 = 0;
    }

    [objc_msgSend(v8 "progressProvider")];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v11 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v12 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v12 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v12))
    {
      *buf = 136315650;
      v16 = "[NSCloudKitMirroringDelegate _performFetchRecordsRequest:]_block_invoke_2";
      v17 = 1024;
      v18 = 1691;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&dword_18565F000, v11, v12, "CoreData+CloudKit: %s(%d): Failed to finish import event: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v9);
  }

  [(NSCloudKitMirroringDelegate *)*(a1 + 56) _importFinishedWithResult:a2 importer:v4];
  v13 = *MEMORY[0x1E69E9840];
}

void __60__NSCloudKitMirroringDelegate__performMetadataResetRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (*(v3 + 89) == 1)
  {
    v5 = +[PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:](PFCloudKitSerializer, "defaultRecordZoneIDForDatabaseScope:", [*(v3 + 8) databaseScope]);
    v6 = *(a1 + 32);
    if (v6 && (v7 = *(v6 + 8)) != 0)
    {
      v8 = *(v7 + 88);
    }

    else
    {
      v8 = 0;
    }

    Weak = objc_loadWeak((v6 + 112));
    if (a2)
    {
      v10 = *(a2 + 8);
    }

    v11 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v8 inTransactionWithLabel:Weak];
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    v25 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3052000000;
    v21 = __Block_byref_object_copy__41;
    v22 = __Block_byref_object_dispose__41;
    v23 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __60__NSCloudKitMirroringDelegate__performMetadataResetRequest___block_invoke_344;
    v13[3] = &unk_1E6EC2660;
    v13[4] = v11;
    v14 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
    v15 = v5;
    v16 = v24;
    v17 = &v18;
    [(PFCloudKitStoreMonitor *)v11 performBlock:v13];
    [(NSCloudKitMirroringDelegate *)*(a1 + 32) _finishedRequest:v19[5] withResult:?];

    v19[5] = 0;
    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(v24, 8);
  }

  else
  {
    v12 = *(a1 + 40);

    [(NSCloudKitMirroringDelegate *)v3 _requestAbortedNotInitialized:v12];
  }
}

void __60__NSCloudKitMirroringDelegate__performMetadataResetRequest___block_invoke_344(uint64_t a1)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (!v2)
  {
    v7 = [NSCloudKitMirroringResult alloc];
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 48) + 152);
    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A250];
    v44 = *MEMORY[0x1E696A588];
    v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request '%@' was cancelled because the store was removed from the coordinator.", objc_msgSend(v8, "requestIdentifier")];
    v12 = [v10 errorWithDomain:v11 code:134407 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v45, &v44, 1)}];
    v13 = v7;
    v14 = v8;
    v15 = v9;
    v16 = 0;
    v17 = 0;
    goto LABEL_12;
  }

  *buf = 0;
  v3 = [objc_msgSend(*(a1 + 40) "objectIDsToReset")];
  v4 = *(*(a1 + 48) + 8);
  if (!v4)
  {
    v5 = 0;
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_7:
    v18 = *(a1 + 32);
    v46[0] = *(a1 + 56);
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
    v20 = *(a1 + 48);
    if (v20)
    {
      v21 = *(v20 + 56);
    }

    else
    {
      v21 = 0;
    }

    v22 = [v21 databaseScope];
    if (v5)
    {
      v6 = [(PFCloudKitMetadataPurger *)v5 purgeMetadataFromStore:v2 inMonitor:v18 withOptions:238 forRecordZones:v19 inDatabaseWithScope:v22 andTransactionAuthor:0 error:buf];
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_11;
  }

  v5 = *(v4 + 96);
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = -[PFCloudKitMetadataPurger purgeMetadataMatchingObjectIDs:inRequest:inStore:withMonitor:error:](v5, [*(a1 + 40) objectIDsToReset], *(a1 + 40), v2, *(a1 + 32), buf);
LABEL_11:
  *(*(*(a1 + 64) + 8) + 24) = v6;
  v13 = [NSCloudKitMirroringResult alloc];
  v14 = *(a1 + 40);
  v15 = *(*(a1 + 48) + 152);
  v16 = *(*(*(a1 + 64) + 8) + 24);
  v12 = *buf;
  v17 = v16;
LABEL_12:
  *(*(*(a1 + 72) + 8) + 40) = [(NSCloudKitMirroringResult *)v13 initWithRequest:v14 storeIdentifier:v15 success:v16 madeChanges:v17 error:v12];
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v23 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v25 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v26 = 17;
    }

    else
    {
      v26 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v26 = 16;
    }

    if (__ckLoggingOverride)
    {
      v27 = v26;
    }

    else
    {
      v27 = OS_LOG_TYPE_DEFAULT;
    }

    if (!os_log_type_enabled(Stream, v27))
    {
      goto LABEL_30;
    }

    v28 = *(*(*(a1 + 72) + 8) + 40);
    *buf = 136315906;
    *&buf[4] = "[NSCloudKitMirroringDelegate _performMetadataResetRequest:]_block_invoke";
    v38 = 1024;
    v39 = 1769;
    v40 = 2112;
    v41 = v2;
    v42 = 2112;
    v43 = v28;
    v29 = "CoreData+CloudKit: %s(%d): Purged cloudkit metadata from store: %@\nResult: %@";
    v30 = v25;
    v31 = v27;
    goto LABEL_29;
  }

  if ([objc_msgSend(*(*(*(a1 + 72) + 8) + 40) "error")] != 134407)
  {
    v23 = objc_autoreleasePoolPush();
    v32 = __PFCloudKitLoggingGetStream();
    v33 = v32;
    if (__ckLoggingOverride == 17)
    {
      v34 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v34 = OS_LOG_TYPE_ERROR;
    }

    if (!os_log_type_enabled(v32, v34))
    {
      goto LABEL_30;
    }

    v35 = [*(*(*(a1 + 72) + 8) + 40) error];
    *buf = 136315906;
    *&buf[4] = "[NSCloudKitMirroringDelegate _performMetadataResetRequest:]_block_invoke";
    v38 = 1024;
    v39 = 1771;
    v40 = 2112;
    v41 = v2;
    v42 = 2112;
    v43 = v35;
    v29 = "CoreData+CloudKit: %s(%d): Failed to purge cloudkit metadata from store: %@\n%@";
    v31 = v34;
    v30 = v33;
LABEL_29:
    _os_log_impl(&dword_18565F000, v30, v31, v29, buf, 0x26u);
LABEL_30:
    objc_autoreleasePoolPop(v23);
  }

  v36 = *MEMORY[0x1E69E9840];
}

void __60__NSCloudKitMirroringDelegate__performSerializationRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (*(v3 + 89) == 1)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v6 = *(v5 + 88);
    }

    else
    {
      v6 = 0;
    }

    Weak = objc_loadWeak((v3 + 112));
    if (a2)
    {
      v8 = *(a2 + 8);
    }

    v9 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v6 inTransactionWithLabel:Weak];
    v14 = 0;
    v15 = &v14;
    v16 = 0x3052000000;
    v17 = __Block_byref_object_copy__41;
    v18 = __Block_byref_object_dispose__41;
    v19 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__NSCloudKitMirroringDelegate__performSerializationRequest___block_invoke_2;
    v11[3] = &unk_1E6EC28A8;
    v11[4] = v9;
    v12 = *(a1 + 32);
    v13 = &v14;
    [(PFCloudKitStoreMonitor *)v9 performBlock:v11];
    [(NSCloudKitMirroringDelegate *)*(a1 + 32) _finishedRequest:v15[5] withResult:?];

    v15[5] = 0;
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v10 = *(a1 + 40);

    [(NSCloudKitMirroringDelegate *)v3 _requestAbortedNotInitialized:v10];
  }
}

void __60__NSCloudKitMirroringDelegate__performSerializationRequest___block_invoke_2(uint64_t a1)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 1;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3052000000;
    v23 = __Block_byref_object_copy__41;
    v24 = __Block_byref_object_dispose__41;
    v25 = 0;
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __60__NSCloudKitMirroringDelegate__performSerializationRequest___block_invoke_3;
    v13[3] = &unk_1E6EC3428;
    v14 = *(a1 + 40);
    v15 = *(a1 + 32);
    v16 = v4;
    v17 = v3;
    v18 = &v20;
    v19 = &v26;
    [(NSManagedObjectContext *)v4 performBlockAndWait:v13];

    v5 = [NSCloudKitMirroringDelegateSerializationRequestResult alloc];
    if (*(v27 + 24))
    {
      v6 = v3;
    }

    else
    {
      v6 = 0;
    }

    *(*(*(a1 + 56) + 8) + 40) = [(NSCloudKitMirroringDelegateSerializationRequestResult *)v5 initWithRequest:*(a1 + 48) storeIdentifier:*(*(a1 + 40) + 152) serializedObjects:v6 error:v21[5]];

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v7 = [NSCloudKitMirroringResult alloc];
    v8 = *(a1 + 48);
    v9 = *(*(a1 + 40) + 152);
    v10 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A588];
    v31[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request '%@' was cancelled because the store was removed from the coordinator.", objc_msgSend(v8, "requestIdentifier")];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    *(*(*(a1 + 56) + 8) + 40) = -[NSCloudKitMirroringResult initWithRequest:storeIdentifier:success:madeChanges:error:](v7, "initWithRequest:storeIdentifier:success:madeChanges:error:", v8, v9, 0, 0, [v10 errorWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v11]);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __60__NSCloudKitMirroringDelegate__performSerializationRequest___block_invoke_3(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(PFCloudKitMetadataCache);
  v3 = [PFCloudKitSerializer alloc];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v50 = v2;
  v6 = [(PFCloudKitSerializer *)v3 initWithMirroringOptions:v5 metadataCache:v2 recordNamePrefix:0];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v7 = [*(a1 + 40) objectIDsToSerialize];
  v8 = [v7 countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v53;
    *&v9 = 134218242;
    v49 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v53 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v52 + 1) + 8 * v12);
        v14 = [objc_msgSend(v13 persistentStore];
        v15 = *(a1 + 48);
        if (v15)
        {
          v16 = *(v15 + 48);
        }

        else
        {
          v16 = 0;
        }

        if ([v14 isEqualToString:v16])
        {
          v51 = 0;
          v17 = [*(a1 + 56) existingObjectWithID:v13 error:&v51];
          if (v17)
          {
            v18 = v17;
            v19 = [(PFCloudKitSerializer *)v6 newCKRecordsFromObject:v17 fullyMaterializeRecords:0 includeRelationships:0 error:&v51];
            if (!v19)
            {
              *(*(*(a1 + 72) + 8) + 40) = v51;
              *(*(*(a1 + 80) + 8) + 24) = 0;
              goto LABEL_46;
            }

            v20 = v19;
            if ([v19 count])
            {
              if ([v20 count] >= 2)
              {
                LogStream = _PFLogGetLogStream(17);
                if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v57 = v18;
                  v58 = 2112;
                  *v59 = v20;
                  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Multiple records returned for object even though we didn't ask for relationships: %@\n%@\n", buf, 0x16u);
                }

                v22 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412546;
                  v57 = v18;
                  v58 = 2112;
                  *v59 = v20;
                  _os_log_fault_impl(&dword_18565F000, v22, OS_LOG_TYPE_FAULT, "CoreData: Multiple records returned for object even though we didn't ask for relationships: %@\n%@", buf, 0x16u);
                }
              }

              v23 = [*(a1 + 40) resultType];
              if (!v23)
              {
                v24 = *(a1 + 64);
                v25 = [objc_msgSend(v20 objectAtIndexedSubscript:{0), "recordID"}];
LABEL_33:
                [v24 setObject:v25 forKey:v13];
                goto LABEL_37;
              }

              if (v23 == 1)
              {
                v24 = *(a1 + 64);
                v25 = [v20 objectAtIndexedSubscript:0];
                goto LABEL_33;
              }

              v36 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                v38 = [*(a1 + 40) resultType];
                v39 = *(a1 + 40);
                *buf = v49;
                v57 = v38;
                v58 = 2112;
                *v59 = v39;
                _os_log_error_impl(&dword_18565F000, v36, OS_LOG_TYPE_ERROR, "CoreData: fault: Unsupported resultType: %lu, %@\n", buf, 0x16u);
              }

              v37 = _PFLogGetLogStream(17);
              if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
              {
LABEL_37:

                goto LABEL_38;
              }

              v40 = [*(a1 + 40) resultType];
              v41 = *(a1 + 40);
              *buf = v49;
              v57 = v40;
              v58 = 2112;
              *v59 = v41;
              v33 = v37;
              v34 = "CoreData: Unsupported resultType: %lu, %@";
              v35 = 22;
            }

            else
            {
              v31 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v57 = v18;
                _os_log_error_impl(&dword_18565F000, v31, OS_LOG_TYPE_ERROR, "CoreData: fault: No records returned from the serializer for object: %@\n", buf, 0xCu);
              }

              v32 = _PFLogGetLogStream(17);
              if (!os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_37;
              }

              *buf = 138412290;
              v57 = v18;
              v33 = v32;
              v34 = "CoreData: No records returned from the serializer for object: %@";
              v35 = 12;
            }

            _os_log_fault_impl(&dword_18565F000, v33, OS_LOG_TYPE_FAULT, v34, buf, v35);
            goto LABEL_37;
          }

          v26 = objc_autoreleasePoolPush();
          Stream = __PFCloudKitLoggingGetStream();
          v28 = Stream;
          if (__ckLoggingOverride == 17)
          {
            v29 = OS_LOG_TYPE_FAULT;
          }

          else
          {
            v29 = OS_LOG_TYPE_ERROR;
          }

          if (os_log_type_enabled(Stream, v29))
          {
            v30 = *(a1 + 32);
            *buf = 136315906;
            v57 = "[NSCloudKitMirroringDelegate _performSerializationRequest:]_block_invoke";
            v58 = 1024;
            *v59 = 1850;
            *&v59[4] = 2112;
            *&v59[6] = v30;
            v60 = 2112;
            v61 = v13;
            _os_log_impl(&dword_18565F000, v28, v29, "CoreData+CloudKit: %s(%d): %@ - Unable to serialize object '%@' because it appears to be missing from the store.", buf, 0x26u);
          }

          objc_autoreleasePoolPop(v26);
        }

LABEL_38:
        ++v12;
      }

      while (v10 != v12);
      v42 = [v7 countByEnumeratingWithState:&v52 objects:v62 count:16];
      v10 = v42;
    }

    while (v42);
  }

LABEL_46:
  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    if ([*(a1 + 56) hasChanges])
    {
      v51 = 0;
      if (([*(a1 + 56) save:&v51] & 1) == 0)
      {
        v43 = objc_autoreleasePoolPush();
        v44 = __PFCloudKitLoggingGetStream();
        v45 = v44;
        if (__ckLoggingOverride == 17)
        {
          v46 = OS_LOG_TYPE_FAULT;
        }

        else
        {
          v46 = OS_LOG_TYPE_ERROR;
        }

        if (os_log_type_enabled(v44, v46))
        {
          v47 = *(a1 + 40);
          *buf = 136315906;
          v57 = "[NSCloudKitMirroringDelegate _performSerializationRequest:]_block_invoke";
          v58 = 1024;
          *v59 = 1859;
          *&v59[4] = 2112;
          *&v59[6] = v51;
          v60 = 2112;
          v61 = v47;
          _os_log_impl(&dword_18565F000, v45, v46, "CoreData+CloudKit: %s(%d): Failed to save metadata changes from serialization of records: %@\n%@", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v43);
      }
    }
  }

  v48 = *MEMORY[0x1E69E9840];
}

void __61__NSCloudKitMirroringDelegate__performExportProgressRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (*(v3 + 89) == 1)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v6 = *(v5 + 88);
    }

    else
    {
      v6 = 0;
    }

    Weak = objc_loadWeak((v3 + 112));
    if (a2)
    {
      v8 = *(a2 + 8);
    }

    v9 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v6 inTransactionWithLabel:Weak];
    v14 = 0;
    v15 = &v14;
    v16 = 0x3052000000;
    v17 = __Block_byref_object_copy__41;
    v18 = __Block_byref_object_dispose__41;
    v19 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__NSCloudKitMirroringDelegate__performExportProgressRequest___block_invoke_2;
    v11[3] = &unk_1E6EC2748;
    v11[4] = v9;
    v13 = &v14;
    v12 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
    [(PFCloudKitStoreMonitor *)v9 performBlock:v11];
    [(NSCloudKitMirroringDelegate *)*(a1 + 32) _finishedRequest:v15[5] withResult:?];

    v15[5] = 0;
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v10 = *(a1 + 40);

    [(NSCloudKitMirroringDelegate *)v3 _requestAbortedNotInitialized:v10];
  }
}

void __61__NSCloudKitMirroringDelegate__performExportProgressRequest___block_invoke_2(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__NSCloudKitMirroringDelegate__performExportProgressRequest___block_invoke_3;
    v11[3] = &unk_1E6EC4BD8;
    v11[4] = v2;
    v11[5] = v3;
    v4 = *(a1 + 56);
    v12 = *(a1 + 40);
    v13 = *(a1 + 32);
    v14 = v4;
    [(NSManagedObjectContext *)v3 performBlockAndWait:v11];
  }

  else
  {
    v5 = [NSCloudKitMirroringResult alloc];
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 48) + 152);
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A250];
    v15 = *MEMORY[0x1E696A588];
    v16[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request '%@' was cancelled because the store was removed from the coordinator.", objc_msgSend(v6, "requestIdentifier")];
    *(*(*(a1 + 56) + 8) + 40) = -[NSCloudKitMirroringResult initWithRequest:storeIdentifier:success:madeChanges:error:](v5, "initWithRequest:storeIdentifier:success:madeChanges:error:", v6, v7, 0, 0, [v8 errorWithDomain:v9 code:134407 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v16, &v15, 1)}]);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __61__NSCloudKitMirroringDelegate__performExportProgressRequest___block_invoke_3(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v39 = 0;
  v2 = [NSCKMetadataEntry entryForKey:*(a1 + 32) fromStore:*(a1 + 40) inManagedObjectContext:&v39 error:?];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = [v2 transformedValue];
    if ([objc_msgSend(objc_msgSend(v4 "storeTokens")] < 1)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v13 = [*(a1 + 48) objectIDsToFetch];
      v14 = [v13 countByEnumeratingWithState:&v24 objects:v40 count:16];
      if (v14)
      {
        v15 = *v25;
        do
        {
          v16 = 0;
          do
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v24 + 1) + 8 * v16);
            v18 = [objc_msgSend(v17 "persistentStore")];
            v19 = *(a1 + 64);
            if (v19)
            {
              v20 = *(v19 + 48);
            }

            else
            {
              v20 = 0;
            }

            if ([v18 isEqualToString:v20])
            {
              [v3 setObject:v4 forKey:v17];
            }

            ++v16;
          }

          while (v14 != v16);
          v21 = [v13 countByEnumeratingWithState:&v24 objects:v40 count:16];
          v14 = v21;
        }

        while (v21);
      }

      *(*(*(a1 + 72) + 8) + 40) = [[NSCloudKitMirroringExportProgressResult alloc] initWithRequest:*(a1 + 48) storeIdentifier:*(*(a1 + 56) + 152) objectIDToLastExportedToken:v3 error:0];
    }

    else
    {
      v33 = 0;
      v34 = &v33;
      v35 = 0x3052000000;
      v36 = __Block_byref_object_copy__41;
      v37 = __Block_byref_object_dispose__41;
      v38 = 0;
      v29 = 0;
      v30 = &v29;
      v31 = 0x2020000000;
      v32 = 1;
      v5 = [*(a1 + 48) objectIDsToFetch];
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __61__NSCloudKitMirroringDelegate__performExportProgressRequest___block_invoke_4;
      v28[3] = &unk_1E6EC4BB0;
      v28[4] = v6;
      v28[5] = v3;
      v28[6] = &v29;
      v28[7] = &v33;
      [NSCKRecordMetadata enumerateRecordMetadataDictionariesMatchingObjectIDs:v5 withProperties:&unk_1EF43D648 inStore:v6 withManagedObjectContext:v7 block:v28];
      if (*(v30 + 24) == 1)
      {
        v8 = [NSCloudKitMirroringExportProgressResult alloc];
        v9 = 0;
        v10 = v3;
      }

      else
      {
        v8 = [NSCloudKitMirroringExportProgressResult alloc];
        v10 = 0;
        v9 = v34[5];
      }

      *(*(*(a1 + 72) + 8) + 40) = [(NSCloudKitMirroringExportProgressResult *)v8 initWithRequest:*(a1 + 48) storeIdentifier:*(*(a1 + 56) + 152) objectIDToLastExportedToken:v10 error:v9];

      v34[5] = 0;
      _Block_object_dispose(&v29, 8);
      _Block_object_dispose(&v33, 8);
    }
  }

  else
  {
    if (v39)
    {
      v11 = [NSCloudKitMirroringResult alloc];
      v12 = [(NSCloudKitMirroringResult *)v11 initWithRequest:*(a1 + 48) storeIdentifier:*(*(a1 + 56) + 152) success:0 madeChanges:0 error:v39];
    }

    else
    {
      v22 = [NSCloudKitMirroringExportProgressResult alloc];
      v12 = [(NSCloudKitMirroringExportProgressResult *)v22 initWithRequest:*(a1 + 48) storeIdentifier:*(*(a1 + 56) + 152) objectIDToLastExportedToken:MEMORY[0x1E695E0F8] error:0];
    }

    *(*(*(a1 + 72) + 8) + 40) = v12;
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __61__NSCloudKitMirroringDelegate__performExportProgressRequest___block_invoke_4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  if (a2)
  {
    v6 = [NSCKRecordMetadata createObjectIDFromMetadataDictionary:a2 inSQLCore:*(a1 + 32)];
    v7 = [a2 objectForKeyedSubscript:@"lastExportedTransactionNumber"];
    v8 = [NSPersistentHistoryToken alloc];
    if (!v7)
    {
      v7 = &unk_1EF435E60;
    }

    v9 = -[NSPersistentHistoryToken initWithTransactionNumber:andStoreID:](v8, "initWithTransactionNumber:andStoreID:", v7, [*(a1 + 32) identifier]);
    [*(a1 + 40) setObject:v9 forKey:v6];
  }

  else
  {
    *a4 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *(*(*(a1 + 56) + 8) + 40) = a3;
  }
}

void __69__NSCloudKitMirroringDelegate__performAcceptShareInvitationsRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v36[3] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (*(v3 + 89) == 1)
  {
    if ([*(v3 + 8) databaseScope] != 3)
    {
      v15 = *(a1 + 32);
      if (v15)
      {
        Weak = objc_loadWeak((v15 + 112));
      }

      else
      {
        Weak = 0;
      }

      v17 = Weak;
      v18 = [NSCloudKitMirroringResult alloc];
      v19 = *(a1 + 40);
      v20 = *(*(a1 + 32) + 152);
      v21 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A588];
      v36[0] = @"Provided persistent store is not set to the shared database scope and cannot accept share invitation.";
      v23 = *MEMORY[0x1E696A998];
      v35[0] = v22;
      v35[1] = v23;
      if ([v17 URL])
      {
        v24 = [v17 URL];
      }

      else
      {
        v24 = @"nil";
      }

      v36[1] = v24;
      v35[2] = @"databaseScope";
      v36[2] = (softLinkCKDatabaseScopeString[0])([*(*(a1 + 32) + 8) databaseScope]);
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];
      v29 = -[NSCloudKitMirroringResult initWithRequest:storeIdentifier:success:madeChanges:error:](v18, "initWithRequest:storeIdentifier:success:madeChanges:error:", v19, v20, 0, 0, [v21 errorWithDomain:*MEMORY[0x1E696A250] code:134091 userInfo:v28]);
      [(NSCloudKitMirroringDelegate *)*(a1 + 32) _finishedRequest:v29 withResult:?];

      goto LABEL_21;
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = *(v5 + 80);
    }

    else
    {
      v6 = 0;
    }

    if ([v6 count])
    {
      v7 = objc_alloc(getCloudKitCKFetchShareMetadataOperationClass());
      v8 = *(a1 + 40);
      if (v8)
      {
        v9 = *(v8 + 80);
      }

      else
      {
        v9 = 0;
      }

      v10 = [v7 initWithShareURLs:v9];
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __69__NSCloudKitMirroringDelegate__performAcceptShareInvitationsRequest___block_invoke_2;
      v34[3] = &unk_1E6EC4C00;
      v34[4] = v11;
      v34[5] = 0;
      [v10 setPerShareMetadataBlock:v34];
      objc_initWeak(&location, *(a1 + 32));
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __69__NSCloudKitMirroringDelegate__performAcceptShareInvitationsRequest___block_invoke_381;
      v31[3] = &unk_1E6EC4C28;
      objc_copyWeak(&v32, &location);
      v12 = *(a1 + 40);
      v31[4] = 0;
      v31[5] = v12;
      v31[6] = v11;
      v31[7] = a2;
      [v10 setFetchShareMetadataCompletionBlock:v31];
      [*(*(a1 + 32) + 48) addOperation:v10];

      objc_destroyWeak(&v32);
      objc_destroyWeak(&location);
LABEL_21:
      v30 = *MEMORY[0x1E69E9840];
      return;
    }

    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    v27 = *MEMORY[0x1E69E9840];

    [(NSCloudKitMirroringDelegate *)v25 _acceptShareMetadatasInRequest:v26 workBlockContext:a2];
  }

  else
  {
    v13 = *(a1 + 40);
    v14 = *MEMORY[0x1E69E9840];

    [(NSCloudKitMirroringDelegate *)v3 _requestAbortedNotInitialized:v13];
  }
}

void __69__NSCloudKitMirroringDelegate__performAcceptShareInvitationsRequest___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *MEMORY[0x1E69E9840];

    [v4 addObject:?];
  }

  else if (a4)
  {
    v7 = *(a1 + 40);
    v8 = *MEMORY[0x1E69E9840];

    [v7 setObject:a4 forKey:a2];
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = a2;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: No metadata or error for share URL: %@\n", &v12, 0xCu);
    }

    v10 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v12 = 138412290;
      v13 = a2;
      _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: No metadata or error for share URL: %@", &v12, 0xCu);
    }

    v11 = *MEMORY[0x1E69E9840];
  }
}

void __69__NSCloudKitMirroringDelegate__performAcceptShareInvitationsRequest___block_invoke_381(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (![*(a1 + 32) count])
  {
    goto LABEL_5;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v14[0]) = 0;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Some shareURLs failed to return metadata...\n", v14, 2u);
  }

  v6 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v14[0]) = 0;
    _os_log_fault_impl(&dword_18565F000, v6, OS_LOG_TYPE_FAULT, "CoreData: Some shareURLs failed to return metadata...", v14, 2u);
    if (a2)
    {
LABEL_6:
      if (WeakRetained)
      {
        v7 = *(a1 + 40);
        v8 = WeakRetained[4];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __62__NSCloudKitMirroringDelegate__handleError_duringShareAccept___block_invoke;
        v14[3] = &unk_1E6EC19D8;
        v14[4] = v7;
        v14[5] = WeakRetained;
        v14[6] = a2;
        dispatch_async(v8, v14);
      }

      goto LABEL_14;
    }
  }

  else
  {
LABEL_5:
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = *(v9 + 88);
  }

  else
  {
    v10 = 0;
  }

  [*(a1 + 48) addObjectsFromArray:v10];
  v12 = *(a1 + 40);
  if (v12)
  {
    objc_setProperty_nonatomic_copy(v12, v11, *(a1 + 48), 88);
    v13 = *(a1 + 40);
  }

  else
  {
    v13 = 0;
  }

  [(NSCloudKitMirroringDelegate *)WeakRetained _acceptShareMetadatasInRequest:v13 workBlockContext:*(a1 + 56)];
LABEL_14:
}

- (void)_acceptShareMetadatasInRequest:(uint64_t)a3 workBlockContext:
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v8 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v9 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v9 = 16 * (__ckLoggingOverride == 16);
    }

    if (os_log_type_enabled(Stream, v9))
    {
      *buf = 136315906;
      v19 = "[NSCloudKitMirroringDelegate _acceptShareMetadatasInRequest:workBlockContext:]";
      v20 = 1024;
      v21 = 2076;
      v22 = 2112;
      v23 = a1;
      v24 = 2112;
      v25 = a2;
      _os_log_impl(&dword_18565F000, v8, v9, "CoreData+CloudKit: %s(%d): %@: Accepting shares defined by request: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = objc_alloc(getCloudKitCKAcceptSharesOperationClass());
    if (a2)
    {
      v11 = *(a2 + 88);
    }

    else
    {
      v11 = 0;
    }

    v12 = [v10 initWithShareMetadatas:v11];
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __79__NSCloudKitMirroringDelegate__acceptShareMetadatasInRequest_workBlockContext___block_invoke;
    v17[3] = &unk_1E6EC4C50;
    v17[4] = v13;
    v17[5] = v14;
    [v12 setPerShareCompletionBlock:v17];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __79__NSCloudKitMirroringDelegate__acceptShareMetadatasInRequest_workBlockContext___block_invoke_393;
    v16[3] = &unk_1E6EC4CA0;
    v16[4] = a1;
    v16[5] = a2;
    v16[6] = a3;
    v16[7] = v13;
    v16[8] = v14;
    [v12 setAcceptSharesCompletionBlock:v16];
    [*(a1 + 48) addOperation:v12];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __79__NSCloudKitMirroringDelegate__acceptShareMetadatasInRequest_workBlockContext___block_invoke(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    [*(a1 + 32) addObject:?];
    v6 = *(a1 + 40);
    v7 = *MEMORY[0x1E69E9840];

    [v6 addObject:a2];
  }

  else
  {
    if (a4)
    {
      v9 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v11 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v12 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v12 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(Stream, v12))
      {
        v16 = 136315906;
        v17 = "[NSCloudKitMirroringDelegate _acceptShareMetadatasInRequest:workBlockContext:]_block_invoke";
        v18 = 1024;
        v19 = 2085;
        v20 = 2112;
        v21 = a2;
        v22 = 2112;
        v23 = a4;
        _os_log_impl(&dword_18565F000, v11, v12, "CoreData+CloudKit: %s(%d): Failed to accept share: %@\n%@", &v16, 0x26u);
      }

      objc_autoreleasePoolPop(v9);
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412290;
        v17 = a2;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: No error or share for accepted share metadata: %@\n", &v16, 0xCu);
      }

      v14 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v16 = 138412290;
        v17 = a2;
        _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: No error or share for accepted share metadata: %@", &v16, 0xCu);
      }
    }

    v15 = *MEMORY[0x1E69E9840];
  }
}

void __79__NSCloudKitMirroringDelegate__acceptShareMetadatasInRequest_workBlockContext___block_invoke_393(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 32) + 32);
  v5 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v4[2] = __79__NSCloudKitMirroringDelegate__acceptShareMetadatasInRequest_workBlockContext___block_invoke_2;
  v4[3] = &unk_1E6EC44E8;
  v4[4] = a2;
  v6 = v2;
  v7 = *(a1 + 64);
  dispatch_async(v3, v4);
}

void __79__NSCloudKitMirroringDelegate__acceptShareMetadatasInRequest_workBlockContext___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v11 = [[NSCloudKitMirroringResult alloc] initWithRequest:*(a1 + 40) storeIdentifier:*(*(a1 + 48) + 152) success:0 madeChanges:0 error:*(a1 + 32)];
    [(NSCloudKitMirroringDelegate *)*(a1 + 48) _finishedRequest:v11 withResult:?];
  }

  else
  {
    v2 = *(a1 + 48);
    if (v2 && (v3 = *(v2 + 8)) != 0)
    {
      v4 = *(v3 + 88);
    }

    else
    {
      v4 = 0;
    }

    Weak = objc_loadWeak((v2 + 112));
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = *(v6 + 8);
    }

    v8 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v4 inTransactionWithLabel:Weak];
    v16 = 0;
    v17 = &v16;
    v18 = 0x3052000000;
    v19 = __Block_byref_object_copy__41;
    v20 = __Block_byref_object_dispose__41;
    v21 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79__NSCloudKitMirroringDelegate__acceptShareMetadatasInRequest_workBlockContext___block_invoke_3;
    v12[3] = &unk_1E6EC4BD8;
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    v12[4] = v8;
    v12[5] = v9;
    v13 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
    v14 = v10;
    v15 = &v16;
    [(PFCloudKitStoreMonitor *)v8 performBlock:v12];
    [(NSCloudKitMirroringDelegate *)*(a1 + 48) _finishedRequest:v17[5] withResult:?];

    v17[5] = 0;
    _Block_object_dispose(&v16, 8);
  }
}

void __79__NSCloudKitMirroringDelegate__acceptShareMetadatasInRequest_workBlockContext___block_invoke_3(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __79__NSCloudKitMirroringDelegate__acceptShareMetadatasInRequest_workBlockContext___block_invoke_4;
    v10[3] = &unk_1E6EC4C78;
    v11 = *(a1 + 40);
    v12 = v2;
    v13 = v3;
    v15 = *(a1 + 72);
    v14 = *(a1 + 56);
    [(NSManagedObjectContext *)v3 performBlockAndWait:v10];
  }

  else
  {
    v4 = [NSCloudKitMirroringAcceptShareInvitationsResult alloc];
    v5 = *(a1 + 56);
    v6 = *(*(a1 + 48) + 152);
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A250];
    v16 = *MEMORY[0x1E696A588];
    v17[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request '%@' was cancelled because the store was removed from the coordinator.", objc_msgSend(v5, "requestIdentifier")];
    *(*(*(a1 + 72) + 8) + 40) = -[NSCloudKitMirroringAcceptShareInvitationsResult initWithRequest:storeIdentifier:acceptedShares:acceptedShareMetadatas:error:](v4, "initWithRequest:storeIdentifier:acceptedShares:acceptedShareMetadatas:error:", v5, v6, 0, 0, [v7 errorWithDomain:v8 code:134407 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v17, &v16, 1)}]);
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __79__NSCloudKitMirroringDelegate__acceptShareMetadatasInRequest_workBlockContext___block_invoke_4(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v32 objects:v43 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v33;
    v6 = 1;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v33 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v32 + 1) + 8 * v7);
      v9 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, [objc_msgSend(v8 "recordID")], objc_msgSend(*(*(a1 + 40) + 56), "databaseScope"), *(a1 + 48), *(a1 + 56), &v36);
      if (!v9)
      {
        goto LABEL_24;
      }

      v10 = *(*(a1 + 40) + 8);
      if (v10 && (v11 = v9, (v12 = *(v10 + 136)) != 0))
      {
        v13 = [(PFCloudKitArchivingUtilities *)v12 encodeRecord:v8 error:&v36];
        if (v13)
        {
          [(NSManagedObject *)v11 setNeedsImport:1];
          [(NSManagedObject *)v11 setNeedsShareUpdate:0];
          [(NSManagedObject *)v11 updateEncodedShareWithData:v13];
          if ([objc_msgSend(v8 "currentUserParticipant")] != 1 || objc_msgSend(objc_msgSend(v8, "currentUserParticipant"), "acceptanceStatus") != 2)
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              v29 = [objc_msgSend(v8 "recordID")];
              v31 = v6;
              v18 = [objc_msgSend(v8 "currentUserParticipant")];
              v19 = [objc_msgSend(v8 "currentUserParticipant")];
              *buf = 138412802;
              v38 = v29;
              v39 = 2048;
              v40 = v18;
              v6 = v31;
              v41 = 2048;
              v42 = v19;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Accepted share %@ but the invitation status %lu or acceptance status %lu is incorrect.\n", buf, 0x20u);
            }

            v15 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
            {
              v28 = [objc_msgSend(v8 "recordID")];
              v30 = v6;
              v16 = [objc_msgSend(v8 "currentUserParticipant")];
              v17 = [objc_msgSend(v8 "currentUserParticipant")];
              *buf = 138412802;
              v38 = v28;
              v39 = 2048;
              v40 = v16;
              v6 = v30;
              v41 = 2048;
              v42 = v17;
              _os_log_fault_impl(&dword_18565F000, v15, OS_LOG_TYPE_FAULT, "CoreData: Accepted share %@ but the invitation status %lu or acceptance status %lu is incorrect.", buf, 0x20u);
            }
          }

          goto LABEL_18;
        }
      }

      else
      {
        v13 = 0;
      }

      v6 = 0;
LABEL_18:

      if (v4 == ++v7)
      {
        v4 = [v2 countByEnumeratingWithState:&v32 objects:v43 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        if ((v6 & 1) == 0)
        {
          goto LABEL_24;
        }

        break;
      }
    }
  }

  if ([*(a1 + 56) hasChanges] && !objc_msgSend(*(a1 + 56), "save:", &v36))
  {
LABEL_24:
    v20 = [NSCloudKitMirroringAcceptShareInvitationsResult alloc];
    v23 = *(a1 + 64);
    v22 = *(*(a1 + 40) + 152);
    v25 = v36;
    v21 = 0;
    v24 = 0;
  }

  else
  {
    [NSCloudKitMirroringDelegate checkAndScheduleImportIfNecessaryFromPush:0 fromErrorRecovery:1 fromShareAccept:? andStartAfterDate:?];
    v20 = [NSCloudKitMirroringAcceptShareInvitationsResult alloc];
    v21 = *(a1 + 32);
    v22 = *(*(a1 + 40) + 152);
    v23 = *(a1 + 64);
    v24 = *(a1 + 72);
    v25 = 0;
  }

  result = [(NSCloudKitMirroringAcceptShareInvitationsResult *)v20 initWithRequest:v23 storeIdentifier:v22 acceptedShares:v21 acceptedShareMetadatas:v24 error:v25];
  *(*(*(a1 + 80) + 8) + 40) = result;
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_requestEncounteredUnrecoverableError:(void *)a3 withResult:
{
  -[NSCloudKitMirroringDelegate resetAfterError:andKeepContainer:](a1, [a3 error]);
  v6 = -[PFCloudKitFatalErrorMetric initWithContainerIdentifier:result:]([PFCloudKitFatalErrorMetric alloc], "initWithContainerIdentifier:result:", [*(a1 + 8) containerIdentifier], a3);
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = *(v7 + 72);
  }

  else
  {
    v8 = 0;
  }

  [(PFMetricsClient *)v8 logMetric:v6];

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([a3 error])
  {
    v9 = [a3 error];
    [v11 setObject:v9 forKey:*MEMORY[0x1E696AA08]];
  }

  v10 = -[NSCloudKitMirroringResult initWithRequest:storeIdentifier:success:madeChanges:error:]([NSCloudKitMirroringResult alloc], "initWithRequest:storeIdentifier:success:madeChanges:error:", a2, *(a1 + 152), [a3 success], objc_msgSend(a3, "madeChanges"), objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 134410, v11));
  [(NSCloudKitMirroringRequest *)a2 invokeCompletionBlockWithResult:v10];
}

- (void)_requestEncounteredRecoverableError:(void *)a3 withResult:
{
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([a3 error])
  {
    v6 = [a3 error];
    [v8 setObject:v6 forKey:*MEMORY[0x1E696AA08]];
  }

  v7 = -[NSCloudKitMirroringResult initWithRequest:storeIdentifier:success:madeChanges:error:]([NSCloudKitMirroringResult alloc], "initWithRequest:storeIdentifier:success:madeChanges:error:", a2, *(a1 + 152), [a3 success], objc_msgSend(a3, "madeChanges"), objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 134409, v8));
  [(NSCloudKitMirroringRequest *)a2 invokeCompletionBlockWithResult:v7];
}

void __48__NSCloudKitMirroringDelegate_recoverFromError___block_invoke(uint64_t a1)
{
  v76 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 32));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  v5 = [(PFCloudKitStoreMonitor *)v4 retainedMonitoredStore];
  if (v5)
  {
    v6 = [*(a1 + 40) domain];
    if ([v6 isEqualToString:getCloudKitCKErrorDomain()] && objc_msgSend(*(a1 + 40), "code") == 2)
    {
      v7 = *(a1 + 48);
      if (v7)
      {
        v9 = *(a1 + 32);
        v8 = *(a1 + 40);
        v10 = [v8 domain];
        if ([v10 isEqualToString:getCloudKitCKErrorDomain()] && objc_msgSend(v8, "code") == 2)
        {
          v11 = [v8 userInfo];
          v12 = [v11 objectForKey:getCloudKitCKPartialErrorsByItemIDKey()];
          v50 = 0;
          v51 = &v50;
          v52 = 0x2020000000;
          v53 = 0;
          v44 = 0;
          v45 = &v44;
          v46 = 0x3052000000;
          v47 = __Block_byref_object_copy__41;
          v48 = __Block_byref_object_dispose__41;
          v49 = 0;
          v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
          *v58 = MEMORY[0x1E69E9820];
          *&v58[8] = 3221225472;
          *&v58[16] = __75__NSCloudKitMirroringDelegate__recoverFromPartialError_forStore_inMonitor___block_invoke;
          *&v58[24] = &unk_1E6EC4CC8;
          v66 = &v50;
          v67 = &v44;
          v59 = v8;
          v60 = v41;
          v61 = v42;
          v62 = v43;
          v63 = v13;
          v64 = v14;
          v65 = v7;
          [v12 enumerateKeysAndObjectsUsingBlock:v58];
          if ([v13 count])
          {
            v15 = objc_autoreleasePoolPush();
            Stream = __PFCloudKitLoggingGetStream();
            v17 = Stream;
            if (__ckLoggingOverride == 17)
            {
              v18 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v18 = OS_LOG_TYPE_ERROR;
            }

            if (os_log_type_enabled(Stream, v18))
            {
              *buf = 136315906;
              *&buf[4] = "[NSCloudKitMirroringDelegate _recoverFromPartialError:forStore:inMonitor:]";
              *&buf[12] = 1024;
              *&buf[14] = 2822;
              *&buf[18] = 2112;
              *&buf[20] = v7;
              *&buf[28] = 2112;
              *&buf[30] = v13;
              _os_log_impl(&dword_18565F000, v17, v18, "CoreData+CloudKit: %s(%d): %@: Error recovery failed because the following fatal errors were found: %@", buf, 0x26u);
            }

            objc_autoreleasePoolPop(v15);
          }

          else
          {
            if (*(v51 + 24) == 1)
            {
              v40 = [(NSCloudKitMirroringDelegate *)v7 _recoverFromError:v41 withZoneIDs:v5 forStore:v9 inMonitor:?];
            }

            else
            {
              v40 = 1;
            }

            if ([v43 count])
            {
              v54 = 0;
              v55 = &v54;
              v56 = 0x2020000000;
              v57 = 0;
              v29 = [(PFCloudKitStoreMonitor *)v9 newBackgroundContextForMonitoredCoordinator];
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = __79__NSCloudKitMirroringDelegate__recoverUnknownItemRecordIDs_forStore_inMonitor___block_invoke;
              *&buf[24] = &unk_1E6EC3450;
              *&buf[32] = v43;
              v72 = v5;
              v73 = v29;
              v74 = v7;
              v75 = &v54;
              [(NSManagedObjectContext *)v29 performBlockAndWait:buf];

              if (*(v55 + 24) == 1)
              {
                context = objc_autoreleasePoolPush();
                v30 = __PFCloudKitLoggingGetStream();
                v31 = v30;
                v32 = __ckLoggingOverride;
                if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
                {
                  v32 = OS_LOG_TYPE_INFO;
                }

                if (os_log_type_enabled(v30, v32))
                {
                  *v68 = 136315906;
                  *&v68[4] = "[NSCloudKitMirroringDelegate _recoverUnknownItemRecordIDs:forStore:inMonitor:]";
                  *&v68[12] = 1024;
                  *&v68[14] = 2958;
                  *&v68[18] = 2112;
                  *&v68[20] = v7;
                  v69 = 2112;
                  v70 = v43;
                  _os_log_impl(&dword_18565F000, v31, v32, "CoreData+CloudKit: %s(%d): %@: Recovered from unknown item error for recordIDs: %@", v68, 0x26u);
                }

                objc_autoreleasePoolPop(context);
                contexta = *(v55 + 24);
              }

              else
              {
                contexta = 0;
              }

              _Block_object_dispose(&v54, 8);
            }

            else
            {
              contexta = 1;
            }

            v33 = 1;
            if ([v14 count])
            {
              *v68 = 0;
              *&v68[8] = v68;
              *&v68[16] = 0x2020000000;
              v68[24] = 1;
              v34 = [(PFCloudKitStoreMonitor *)v9 newBackgroundContextForMonitoredCoordinator];
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = __79__NSCloudKitMirroringDelegate__recoverConflictedZoneShares_forStore_inMonitor___block_invoke;
              *&buf[24] = &unk_1E6EC3450;
              *&buf[32] = v14;
              v72 = v7;
              v73 = v5;
              v74 = v34;
              v75 = v68;
              [(NSManagedObjectContext *)v34 performBlockAndWait:buf];

              v33 = *(*&v68[8] + 24);
              _Block_object_dispose(v68, 8);
            }

            if ([v42 count])
            {
              *v68 = 0;
              *&v68[8] = v68;
              *&v68[16] = 0x2020000000;
              v68[24] = 0;
              v35 = [(PFCloudKitStoreMonitor *)v9 newBackgroundContextForMonitoredCoordinator];
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = __84__NSCloudKitMirroringDelegate__recoverFromUnknownShareRecordIDs_forStore_inMonitor___block_invoke;
              *&buf[24] = &unk_1E6EC3450;
              *&buf[32] = v42;
              v72 = v7;
              v73 = v5;
              v74 = v35;
              v75 = v68;
              [(NSManagedObjectContext *)v35 performBlockAndWait:buf];

              v36 = *(*&v68[8] + 24);
              _Block_object_dispose(v68, 8);
            }

            else
            {
              v36 = 1;
            }

            if ((v40 & contexta) == 1)
            {
              v28 = v33 & v36;
LABEL_53:

              v45[5] = 0;
              _Block_object_dispose(&v44, 8);
              _Block_object_dispose(&v50, 8);
              goto LABEL_54;
            }
          }

          v28 = 0;
          goto LABEL_53;
        }

        v24 = objc_autoreleasePoolPush();
        v25 = __PFCloudKitLoggingGetStream();
        v26 = v25;
        if (__ckLoggingOverride == 17)
        {
          v27 = OS_LOG_TYPE_FAULT;
        }

        else
        {
          v27 = OS_LOG_TYPE_ERROR;
        }

        if (os_log_type_enabled(v25, v27))
        {
          *v58 = 136315650;
          *&v58[4] = "[NSCloudKitMirroringDelegate _recoverFromPartialError:forStore:inMonitor:]";
          *&v58[12] = 1024;
          *&v58[14] = 2831;
          *&v58[18] = 2112;
          *&v58[20] = v8;
          _os_log_impl(&dword_18565F000, v26, v27, "CoreData+CloudKit: %s(%d): Unknown error passed to partial error handler: %@", v58, 0x1Cu);
        }

        objc_autoreleasePoolPop(v24);
      }

      v28 = 0;
LABEL_54:
      *(*(*(a1 + 56) + 8) + 24) = v28 & 1;
      goto LABEL_55;
    }

    *(*(*(a1 + 56) + 8) + 24) = [(NSCloudKitMirroringDelegate *)*(a1 + 48) _recoverFromError:0 withZoneIDs:v5 forStore:*(a1 + 32) inMonitor:?];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = __PFCloudKitLoggingGetStream();
    v21 = v20;
    if (__ckLoggingOverride == 17)
    {
      v22 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v22 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(v20, v22))
    {
      v23 = *(a1 + 40);
      *v58 = 136315650;
      *&v58[4] = "[NSCloudKitMirroringDelegate recoverFromError:]_block_invoke";
      *&v58[12] = 1024;
      *&v58[14] = 2323;
      *&v58[18] = 2112;
      *&v58[20] = v23;
      _os_log_impl(&dword_18565F000, v21, v22, "CoreData+CloudKit: %s(%d): The store was removed before the mirroring delegate could recover from an error:\n%@", v58, 0x1Cu);
    }

    objc_autoreleasePoolPop(v19);
  }

LABEL_55:

  v37 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_recoverFromError:(void *)a3 withZoneIDs:(uint64_t)a4 forStore:(uint64_t)a5 inMonitor:
{
  v123 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = a2;
    v9 = a1;
    v105 = 0;
    v10 = [a2 domain];
    if ([v10 isEqualToString:getCloudKitCKErrorDomain()])
    {
      if ([v8 code] == 112 || objc_msgSend(v8, "code") == 21 || objc_msgSend(v8, "code") == 26)
      {
        [(NSCloudKitMirroringDelegate *)v9 _postResetSyncNotificationWithName:v8 forError:?];
        if (![a3 count])
        {
          v36 = *(v9 + 8);
          if (v36)
          {
            v37 = *(v36 + 96);
            v38 = [*(v9 + 56) databaseScope];
            if (v37 && [(PFCloudKitMetadataPurger *)v37 purgeMetadataFromStore:a4 inMonitor:a5 withOptions:294 forRecordZones:a3 inDatabaseWithScope:v38 andTransactionAuthor:0 error:&v105])
            {
              if ([v8 code] != 112)
              {
                v39 = [v8 userInfo];
                if (![objc_msgSend(v39 objectForKey:{getCloudKitCKErrorUserDidResetEncryptedDataKey()), "BOOLValue"}])
                {
                  goto LABEL_107;
                }
              }

              if (-[NSCloudKitMirroringDelegate _markZonesNeedingRecoveryFromManateeIdentityLoss:databaseScope:inStore:error:](v9, a3, [*(v9 + 56) databaseScope], a4, &v105))
              {
                goto LABEL_107;
              }
            }
          }

          else
          {
            [*(v9 + 56) databaseScope];
          }

          goto LABEL_194;
        }

        v99 = a5;
        v100 = v8;
        v11 = v9;
        v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v101 = 0u;
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v14 = [a3 countByEnumeratingWithState:&v101 objects:v122 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v102;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v102 != v16)
              {
                objc_enumerationMutation(a3);
              }

              v18 = *(*(&v101 + 1) + 8 * i);
              v19 = [v18 ownerName];
              if ([v19 isEqualToString:getCloudKitCKCurrentUserDefaultName()])
              {
                v20 = v12;
              }

              else
              {
                v20 = v13;
              }

              [v20 addObject:v18];
            }

            v15 = [a3 countByEnumeratingWithState:&v101 objects:v122 count:16];
          }

          while (v15);
        }

        v9 = v11;
        v8 = v100;
        if ([v12 count])
        {
          v21 = *(v9 + 8);
          if (!v21)
          {
LABEL_192:
            [*(v9 + 56) databaseScope];
LABEL_193:

LABEL_194:
            [(NSCloudKitMirroringDelegate *)v9 _postResetSyncNotificationWithName:v8 forError:?];
            goto LABEL_195;
          }

          v22 = *(v21 + 96);
          v23 = [*(v9 + 56) databaseScope];
          if (!v22 || ![(PFCloudKitMetadataPurger *)v22 purgeMetadataFromStore:a4 inMonitor:v99 withOptions:298 forRecordZones:v12 inDatabaseWithScope:v23 andTransactionAuthor:0 error:&v105])
          {
            goto LABEL_193;
          }

          if ([v100 code] == 112 || (v24 = objc_msgSend(v100, "userInfo"), objc_msgSend(objc_msgSend(v24, "objectForKey:", getCloudKitCKErrorUserDidResetEncryptedDataKey()), "BOOLValue")))
          {
            if (!-[NSCloudKitMirroringDelegate _markZonesNeedingRecoveryFromManateeIdentityLoss:databaseScope:inStore:error:](v9, v12, [*(v9 + 56) databaseScope], a4, &v105))
            {
              goto LABEL_193;
            }
          }
        }

        if (![v13 count])
        {

LABEL_107:
          [NSCloudKitMirroringDelegate resetAfterError:v9 andKeepContainer:v8];
LABEL_108:
          [(NSCloudKitMirroringDelegate *)v9 _setUpCloudKitIntegration:?];
LABEL_109:
          [(NSCloudKitMirroringDelegate *)v9 _postResetSyncNotificationWithName:v8 forError:?];
          goto LABEL_110;
        }

        if ([v100 code] == 26 || objc_msgSend(v100, "code") == 112 || (v25 = objc_msgSend(v100, "userInfo"), objc_msgSend(objc_msgSend(v25, "objectForKey:", getCloudKitCKErrorUserDidResetEncryptedDataKey()), "BOOLValue")))
        {
          if ([v100 code] == 112)
          {
            v26 = -[NSCloudKitMirroringDelegate _markZonesNeedingRecoveryFromManateeIdentityLoss:databaseScope:inStore:error:](v9, v13, [*(v9 + 56) databaseScope], a4, &v105);
            goto LABEL_106;
          }

          v45 = *(v9 + 8);
          if (v45)
          {
            v46 = *(v45 + 96);
            v47 = [*(v9 + 56) databaseScope];
            if (v46)
            {
              v48 = v47;
              v49 = v46;
              v50 = a4;
              v51 = v99;
              v52 = 9;
LABEL_105:
              v26 = [(PFCloudKitMetadataPurger *)v49 purgeMetadataFromStore:v50 inMonitor:v51 withOptions:v52 forRecordZones:v13 inDatabaseWithScope:v48 andTransactionAuthor:0 error:&v105];
LABEL_106:
              v63 = v26;

              if (v63)
              {
                goto LABEL_107;
              }

              goto LABEL_194;
            }

            goto LABEL_193;
          }
        }

        else
        {
          v60 = *(v9 + 8);
          if (v60)
          {
            v61 = *(v60 + 96);
            v62 = [*(v9 + 56) databaseScope];
            if (v61)
            {
              v48 = v62;
              v49 = v61;
              v50 = a4;
              v51 = v99;
              v52 = 298;
              goto LABEL_105;
            }

            goto LABEL_193;
          }
        }

        goto LABEL_192;
      }

      if ([v8 code] == 28)
      {
        [(NSCloudKitMirroringDelegate *)v9 _postResetSyncNotificationWithName:v8 forError:?];
        v42 = *(v9 + 8);
        if (v42)
        {
          v43 = *(v42 + 96);
          v44 = [*(v9 + 56) databaseScope];
          if (v43 && [(PFCloudKitMetadataPurger *)v43 purgeMetadataFromStore:a4 inMonitor:a5 withOptions:9 forRecordZones:a3 inDatabaseWithScope:v44 andTransactionAuthor:0 error:&v105])
          {
            goto LABEL_107;
          }

LABEL_195:
          v64 = objc_autoreleasePoolPush();
          Stream = __PFCloudKitLoggingGetStream();
          v91 = Stream;
          if (__ckLoggingOverride == 17)
          {
            v92 = OS_LOG_TYPE_FAULT;
          }

          else
          {
            v92 = OS_LOG_TYPE_ERROR;
          }

          if (os_log_type_enabled(Stream, v92))
          {
            v93 = [v8 domain];
            v94 = [v8 code];
            v95 = [v105 domain];
            v96 = [v105 code];
            *buf = 136316674;
            v107 = "[NSCloudKitMirroringDelegate _recoverFromError:withZoneIDs:forStore:inMonitor:]";
            v108 = 1024;
            v109 = 2617;
            v110 = 2112;
            v111 = v9;
            v112 = 2112;
            v113 = v93;
            v114 = 2048;
            v115 = v94;
            v116 = 2112;
            v117 = v95;
            v118 = 2048;
            v119 = v96;
            _os_log_impl(&dword_18565F000, v91, v92, "CoreData+CloudKit: %s(%d): %@ - Failed to recover from error: %@:%ld\nRecovery encountered the following error: %@:%ld", buf, 0x44u);
          }

          v70 = 0;
          goto LABEL_201;
        }

        v28 = *(v9 + 56);
LABEL_206:
        [v28 databaseScope];
        goto LABEL_195;
      }

      if ([v8 code] == 9)
      {
        [NSCloudKitMirroringDelegate resetAfterError:v9 andKeepContainer:v8];
        [(NSCloudKitMirroringDelegate *)v9 _setUpCloudKitIntegration:?];
        goto LABEL_110;
      }

      if ([v8 code] == 2)
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v107 = v8;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Invalid recursion detected, this method should never have been passed a partial error: %@\n", buf, 0xCu);
        }

        v55 = _PFLogGetLogStream(17);
        if (!os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_195;
        }

        *buf = 138412290;
        v107 = v8;
        v35 = "CoreData: Invalid recursion detected, this method should never have been passed a partial error: %@";
        goto LABEL_101;
      }

      if ([v8 code] == 27)
      {
        v71 = *(v9 + 96);
        if (v71)
        {
          v72 = *(v71 + 24);
          if (v72 == 512000)
          {
            *(v71 + 24) = 256000;
            v73 = *(v9 + 96);
            if (!v73)
            {
              goto LABEL_110;
            }

            v74 = 100;
            goto LABEL_188;
          }

          if (v72 == 1572864)
          {
            *(v71 + 24) = 512000;
            v73 = *(v9 + 96);
            if (!v73)
            {
              goto LABEL_110;
            }

            v74 = 200;
LABEL_188:
            *(v73 + 32) = v74;
            goto LABEL_110;
          }
        }

        v88 = *MEMORY[0x1E696A250];
        v120 = *MEMORY[0x1E696A588];
        v121 = @"The mirroring delegate can no longer export because it cannot stay under the CloudKit operation limits.";
        v105 = [MEMORY[0x1E696ABC0] errorWithDomain:v88 code:134411 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v121, &v120, 1)}];
        goto LABEL_195;
      }

      if ([v8 code] != 6 && objc_msgSend(v8, "code") != 4 && objc_msgSend(v8, "code") != 3 && objc_msgSend(v8, "code") != 22 && objc_msgSend(v8, "code") != 7 && objc_msgSend(v8, "code") != 23)
      {
        if ([v8 code] == 15)
        {
          if ([*(v9 + 8) databaseScope] == 1 && objc_msgSend(a3, "count"))
          {
            v76 = *(v9 + 8);
            if (v76)
            {
              v77 = v76[12];
            }

            else
            {
              v77 = 0;
            }

            if (-[PFCloudKitMetadataPurger deleteZoneMetadataFromStore:inMonitor:forRecordZones:inDatabaseWithScope:error:](v77, a4, a5, a3, [v76 databaseScope], &v105))
            {
              goto LABEL_110;
            }
          }

          else
          {
            v89 = [v8 userInfo];
            if ([v89 objectForKey:getCloudKitCKErrorRetryAfterKey()])
            {
              goto LABEL_110;
            }
          }
        }

        goto LABEL_195;
      }

LABEL_110:
      v64 = objc_autoreleasePoolPush();
      v65 = __PFCloudKitLoggingGetStream();
      v66 = v65;
      if (__ckLoggingOverride == 17)
      {
        v67 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v67 = 16 * (__ckLoggingOverride == 16);
      }

      if (os_log_type_enabled(v65, v67))
      {
        v68 = [v8 domain];
        v69 = [v8 code];
        *buf = 136316162;
        v107 = "[NSCloudKitMirroringDelegate _recoverFromError:withZoneIDs:forStore:inMonitor:]";
        v108 = 1024;
        v109 = 2619;
        v110 = 2112;
        v111 = v9;
        v112 = 2112;
        v113 = v68;
        v114 = 2048;
        v115 = v69;
        _os_log_impl(&dword_18565F000, v66, v67, "CoreData+CloudKit: %s(%d): %@ - Recovered from error: %@:%ld", buf, 0x30u);
      }

      v70 = 1;
LABEL_201:
      objc_autoreleasePoolPop(v64);
      goto LABEL_202;
    }

    v27 = [v8 domain];
    if ([v27 isEqualToString:*MEMORY[0x1E696A250]])
    {
      if ([v8 code] == 134301)
      {
        [(NSCloudKitMirroringDelegate *)v9 _postResetSyncNotificationWithName:v8 forError:?];
        v28 = *(v9 + 8);
        if (v28)
        {
          v29 = v28[12];
          v30 = [v28 databaseScope];
          if (v29 && [(PFCloudKitMetadataPurger *)v29 purgeMetadataFromStore:a4 inMonitor:a5 withOptions:37 forRecordZones:MEMORY[0x1E695E0F0] inDatabaseWithScope:v30 andTransactionAuthor:0 error:&v105])
          {
            goto LABEL_109;
          }

          goto LABEL_195;
        }

        goto LABEL_206;
      }

      if ([v8 code] == 134405)
      {
        if ([objc_msgSend(objc_msgSend(v8 "userInfo")] == 2 && *(v9 + 129) == 1)
        {
          [*(v9 + 72) unregisterForSubscriptionWithID:objc_msgSend(*(v9 + 40) inDatabase:{"subscriptionID"), *(v9 + 56)}];
          *(v9 + 129) = 0;
        }

        [(NSCloudKitMirroringDelegate *)v9 _postResetSyncNotificationWithName:v8 forError:?];
        v40 = *(v9 + 8);
        if (v40)
        {
          v41 = v40[12];
        }

        else
        {
          v41 = 0;
        }

        if (-[PFCloudKitMetadataPurger purgeMetadataAfterAccountChangeFromStore:inMonitor:inDatabaseWithScope:error:](v41, a4, a5, [v40 databaseScope], &v105))
        {
          goto LABEL_108;
        }

        goto LABEL_195;
      }

      if ([v8 code] == 134407)
      {
        [NSCloudKitMirroringDelegate resetAfterError:v9 andKeepContainer:v8];
        goto LABEL_195;
      }

      if ([v8 code] != 133000)
      {
        goto LABEL_195;
      }

      goto LABEL_110;
    }

    v31 = [v8 domain];
    if (![v31 isEqualToString:*MEMORY[0x1E696A978]])
    {
      goto LABEL_195;
    }

    v32 = [v8 code];
    if (v32 > -1105)
    {
      switch(v32)
      {
        case -1022:
          v33 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v33, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorAppTransportSecurityRequiresSecureConnection and probably shouldn't have.\n", buf, 2u);
          }

          v34 = _PFLogGetLogStream(17);
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_195;
          }

          *buf = 0;
          v35 = "CoreData: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorAppTransportSecurityRequiresSecureConnection and probably shouldn't have.";
          break;
        case -1021:
          v82 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v82, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorRequestBodyStreamExhausted and probably shouldn't have.\n", buf, 2u);
          }

          v34 = _PFLogGetLogStream(17);
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_195;
          }

          *buf = 0;
          v35 = "CoreData: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorRequestBodyStreamExhausted and probably shouldn't have.";
          break;
        case -1020:
        case -1019:
        case -1018:
        case -1014:
        case -1013:
        case -1012:
        case -1010:
        case -1009:
        case -1008:
        case -1007:
        case -1006:
        case -1005:
        case -1004:
        case -1003:
        case -1001:
        case -999:
        case -997:
        case -996:
        case -995:
          goto LABEL_110;
        case -1017:
          v81 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v81, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorCannotParseResponse and probably shouldn't have.\n", buf, 2u);
          }

          v34 = _PFLogGetLogStream(17);
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_195;
          }

          *buf = 0;
          v35 = "CoreData: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorCannotParseResponse and probably shouldn't have.";
          break;
        case -1016:
          v86 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v86, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorCannotDecodeContentData and probably shouldn't have.\n", buf, 2u);
          }

          v34 = _PFLogGetLogStream(17);
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_195;
          }

          *buf = 0;
          v35 = "CoreData: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorCannotDecodeContentData and probably shouldn't have.";
          break;
        case -1015:
          v85 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v85, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorCannotDecodeRawData and probably shouldn't have.\n", buf, 2u);
          }

          v34 = _PFLogGetLogStream(17);
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_195;
          }

          *buf = 0;
          v35 = "CoreData: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorCannotDecodeRawData and probably shouldn't have.";
          break;
        case -1011:
          v83 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v83, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorBadServerResponse and probably shouldn't have.\n", buf, 2u);
          }

          v34 = _PFLogGetLogStream(17);
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_195;
          }

          *buf = 0;
          v35 = "CoreData: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorBadServerResponse and probably shouldn't have.";
          break;
        case -1002:
          v87 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v87, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorUnsupportedURL and probably shouldn't have.\n", buf, 2u);
          }

          v34 = _PFLogGetLogStream(17);
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_195;
          }

          *buf = 0;
          v35 = "CoreData: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorUnsupportedURL and probably shouldn't have.";
          break;
        case -1000:
          v84 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v84, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorBadURL and probably shouldn't have.\n", buf, 2u);
          }

          v34 = _PFLogGetLogStream(17);
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_195;
          }

          *buf = 0;
          v35 = "CoreData: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorBadURL and probably shouldn't have.";
          break;
        case -998:
          goto LABEL_97;
        default:
          if ((v32 + 1104) >= 5 && v32 != -1)
          {
            goto LABEL_97;
          }

          goto LABEL_110;
      }

LABEL_183:
      v58 = v34;
      v59 = 2;
      goto LABEL_184;
    }

    if (v32 > -2001)
    {
      if (v32 > -1204)
      {
        if (v32 <= -1202)
        {
          if (v32 == -1203)
          {
            v78 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v78, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorServerCertificateHasUnknownRoot and probably shouldn't have.\n", buf, 2u);
            }

            v34 = _PFLogGetLogStream(17);
            if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_195;
            }

            *buf = 0;
            v35 = "CoreData: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorServerCertificateHasUnknownRoot and probably shouldn't have.";
          }

          else
          {
            v56 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v56, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorServerCertificateUntrusted and probably shouldn't have.\n", buf, 2u);
            }

            v34 = _PFLogGetLogStream(17);
            if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_195;
            }

            *buf = 0;
            v35 = "CoreData: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorServerCertificateUntrusted and probably shouldn't have.";
          }

          goto LABEL_183;
        }

        if (v32 == -1201)
        {
          v80 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v80, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorServerCertificateHasBadDate and probably shouldn't have.\n", buf, 2u);
          }

          v34 = _PFLogGetLogStream(17);
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_195;
          }

          *buf = 0;
          v35 = "CoreData: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorServerCertificateHasBadDate and probably shouldn't have.";
          goto LABEL_183;
        }

        if (v32 == -1200)
        {
          goto LABEL_110;
        }
      }

      else
      {
        if (v32 > -1206)
        {
          if (v32 == -1205)
          {
            v79 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v79, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorClientCertificateRejected and probably shouldn't have.\n", buf, 2u);
            }

            v34 = _PFLogGetLogStream(17);
            if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_195;
            }

            *buf = 0;
            v35 = "CoreData: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorClientCertificateRejected and probably shouldn't have.";
          }

          else
          {
            v75 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v75, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorServerCertificateNotYetValid and probably shouldn't have.\n", buf, 2u);
            }

            v34 = _PFLogGetLogStream(17);
            if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_195;
            }

            *buf = 0;
            v35 = "CoreData: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorServerCertificateNotYetValid and probably shouldn't have.";
          }

          goto LABEL_183;
        }

        if (v32 == -2000)
        {
          goto LABEL_110;
        }

        if (v32 == -1206)
        {
          v53 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v53, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorClientCertificateRequired and probably shouldn't have.\n", buf, 2u);
          }

          v34 = _PFLogGetLogStream(17);
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_195;
          }

          *buf = 0;
          v35 = "CoreData: NSCloudKitMirroringDelegate recieved NSURLErrorDomain:NSURLErrorClientCertificateRequired and probably shouldn't have.";
          goto LABEL_183;
        }
      }
    }

    else if ((v32 + 3007) < 8)
    {
      goto LABEL_110;
    }

LABEL_97:
    v57 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v107 = v8;
      _os_log_error_impl(&dword_18565F000, v57, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegate was handed a scary NRULErrorDomain error (of some code that's not already in the switch) that it probably shouldn't have been: %@\n", buf, 0xCu);
    }

    v55 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_195;
    }

    *buf = 138412290;
    v107 = v8;
    v35 = "CoreData: NSCloudKitMirroringDelegate was handed a scary NRULErrorDomain error (of some code that's not already in the switch) that it probably shouldn't have been: %@";
LABEL_101:
    v58 = v55;
    v59 = 12;
LABEL_184:
    _os_log_fault_impl(&dword_18565F000, v58, OS_LOG_TYPE_FAULT, v35, buf, v59);
    goto LABEL_195;
  }

  v70 = 0;
LABEL_202:
  v97 = *MEMORY[0x1E69E9840];
  return v70;
}

- (uint64_t)_markZonesNeedingRecoveryFromManateeIdentityLoss:(uint64_t)a3 databaseScope:(uint64_t)a4 inStore:(void *)a5 error:
{
  v35 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__41;
  v25 = __Block_byref_object_dispose__41;
  v26 = 0;
  v10 = [[PFCloudKitStoreMonitor alloc] initForStore:a4];
  v11 = v10;
  if (v10)
  {
    WeakRetained = objc_loadWeakRetained(v10 + 4);
  }

  else
  {
    WeakRetained = 0;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __108__NSCloudKitMirroringDelegate__markZonesNeedingRecoveryFromManateeIdentityLoss_databaseScope_inStore_error___block_invoke;
  v20[3] = &unk_1E6EC2E40;
  v20[4] = a1;
  v20[5] = a2;
  v20[6] = v11;
  v20[7] = a4;
  v20[8] = &v21;
  v20[9] = &v27;
  v20[10] = a3;
  [(PFCloudKitStoreMonitor *)v11 performBlock:v20];

  v13 = v22[5];
  if (v13)
  {
    v14 = v13;
    if (v14)
    {
      if (a5)
      {
        *a5 = v14;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v32 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate.m";
        v33 = 1024;
        v34 = 3836;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v16 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v32 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate.m";
        v33 = 1024;
        v34 = 3836;
        _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v22[5] = 0;
  }

  v17 = *(v28 + 24);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

void __75__NSCloudKitMirroringDelegate__recoverFromPartialError_forStore_inMonitor___block_invoke(uint64_t a1, char *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  getCloudKitCKRecordIDClass[0]();
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (getCloudKitCKRecordZoneIDClass[0](), objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([a2 isEqualToString:@"com.apple.coredata.cloudkit.private.subscription"] & 1) == 0 && (objc_msgSend(a2, "isEqualToString:", @"com.apple.coredata.cloudkit.shared.subscription") & 1) == 0)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v27 = *(a1 + 32);
        v36 = 138412546;
        v37 = a2;
        v38 = 2112;
        *v39 = v27;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unexpected string item for partial failure: %@ - %@\n", &v36, 0x16u);
      }

      v7 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v28 = *(a1 + 32);
        v36 = 138412546;
        v37 = a2;
        v38 = 2112;
        *v39 = v28;
        _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: Unexpected string item for partial failure: %@ - %@", &v36, 0x16u);
      }
    }

    v8 = [a3 domain];
    if ([v8 isEqualToString:getCloudKitCKErrorDomain()])
    {
      if ([a3 code] == 26 || objc_msgSend(a3, "code") == 28 || objc_msgSend(a3, "code") == 21 || objc_msgSend(a3, "code") == 112 || objc_msgSend(a3, "code") == 15 || objc_msgSend(a3, "code") == 9 || objc_msgSend(a3, "code") == 6)
      {
        *(*(*(a1 + 88) + 8) + 24) = 1;
        if (!*(*(*(a1 + 96) + 8) + 40))
        {
          *(*(*(a1 + 96) + 8) + 40) = a3;
        }

        getCloudKitCKRecordIDClass[0]();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([a3 code] == 15)
          {
            v9 = [a3 userInfo];
            if ([v9 objectForKeyedSubscript:getCloudKitCKErrorRetryAfterKey()])
            {
              *(*(*(a1 + 88) + 8) + 24) = 0;
              goto LABEL_94;
            }

            v16 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v36 = 138412546;
              v37 = a2;
              v38 = 2112;
              *v39 = a3;
              _os_log_error_impl(&dword_18565F000, v16, OS_LOG_TYPE_ERROR, "CoreData: fault: Got server rejected request as part of a partial error for a CKRecord: %@ - %@\n", &v36, 0x16u);
            }

            v17 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
            {
              v36 = 138412546;
              v37 = a2;
              v38 = 2112;
              *v39 = a3;
              _os_log_fault_impl(&dword_18565F000, v17, OS_LOG_TYPE_FAULT, "CoreData: Got server rejected request as part of a partial error for a CKRecord: %@ - %@", &v36, 0x16u);
            }

            *(*(*(a1 + 88) + 8) + 24) = 0;
            goto LABEL_73;
          }

          v15 = *(a1 + 40);
          goto LABEL_90;
        }

        v11 = *(a1 + 40);
        goto LABEL_92;
      }

      if ([a3 code] == 3 || objc_msgSend(a3, "code") == 4 || objc_msgSend(a3, "code") == 22 || objc_msgSend(a3, "code") == 7 || objc_msgSend(a3, "code") == 23)
      {
LABEL_87:
        *(*(*(a1 + 88) + 8) + 24) = 1;
        if (!*(*(*(a1 + 96) + 8) + 40))
        {
          *(*(*(a1 + 96) + 8) + 40) = a3;
        }

        getCloudKitCKRecordIDClass[0]();
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v15 = *(a1 + 40);
        if (isKindOfClass)
        {
LABEL_90:
          v30 = [a2 zoneID];
          v11 = v15;
LABEL_93:
          [v11 addObject:v30];
          goto LABEL_94;
        }

        v11 = v15;
LABEL_92:
        v30 = a2;
        goto LABEL_93;
      }

      if ([a3 code] == 11)
      {
        getCloudKitCKRecordIDClass[0]();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = [a2 recordName];
          if ([v32 isEqualToString:getCloudKitCKRecordNameZoneWideShare()])
          {
            v11 = *(a1 + 48);
          }

          else
          {
            v11 = *(a1 + 56);
          }

          goto LABEL_92;
        }

        v34 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v36 = 138412546;
          v37 = a2;
          v38 = 2112;
          *v39 = a3;
          _os_log_error_impl(&dword_18565F000, v34, OS_LOG_TYPE_ERROR, "CoreData: fault: Got an unknown item error back for a zone: %@ - %@\n", &v36, 0x16u);
        }

        v35 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
        {
          v36 = 138412546;
          v37 = a2;
          v38 = 2112;
          *v39 = a3;
          _os_log_fault_impl(&dword_18565F000, v35, OS_LOG_TYPE_FAULT, "CoreData: Got an unknown item error back for a zone: %@ - %@", &v36, 0x16u);
        }
      }

      else
      {
        if ([a3 code] == 12 || objc_msgSend(a3, "code") == 25)
        {
LABEL_81:
          [*(a1 + 64) setObject:a3 forKey:a2];
          goto LABEL_94;
        }

        if ([a3 code] == 14)
        {
          getCloudKitCKRecordIDClass[0]();
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = [a2 recordName];
            if ([v33 isEqualToString:getCloudKitCKRecordNameZoneWideShare()])
            {
              v11 = *(a1 + 72);
              v30 = a3;
              goto LABEL_93;
            }
          }
        }
      }
    }

    else
    {
      v10 = [a3 domain];
      if ([v10 isEqualToString:*MEMORY[0x1E696A978]] && (objc_msgSend(a3, "code") == -1 || objc_msgSend(a3, "code") == -999 || objc_msgSend(a3, "code") == -1001 || objc_msgSend(a3, "code") == -1003 || objc_msgSend(a3, "code") == -1004 || objc_msgSend(a3, "code") == -1005 || objc_msgSend(a3, "code") == -1006 || objc_msgSend(a3, "code") == -1007 || objc_msgSend(a3, "code") == -1008 || objc_msgSend(a3, "code") == -1009 || objc_msgSend(a3, "code") == -1010 || objc_msgSend(a3, "code") == -1012 || objc_msgSend(a3, "code") == -1013 || objc_msgSend(a3, "code") == -1014 || objc_msgSend(a3, "code") == -1100 || objc_msgSend(a3, "code") == -1101 || objc_msgSend(a3, "code") == -1102 || objc_msgSend(a3, "code") == -1103 || objc_msgSend(a3, "code") == -1104 || objc_msgSend(a3, "code") == -1200 || objc_msgSend(a3, "code") == -2000 || objc_msgSend(a3, "code") == -3000 || objc_msgSend(a3, "code") == -3001 || objc_msgSend(a3, "code") == -3002 || objc_msgSend(a3, "code") == -3003 || objc_msgSend(a3, "code") == -3004 || objc_msgSend(a3, "code") == -3005 || objc_msgSend(a3, "code") == -3006 || objc_msgSend(a3, "code") == -3007 || objc_msgSend(a3, "code") == -1018 || objc_msgSend(a3, "code") == -1019 || objc_msgSend(a3, "code") == -1020 || objc_msgSend(a3, "code") == -995 || objc_msgSend(a3, "code") == -996 || objc_msgSend(a3, "code") == -997))
      {
        goto LABEL_87;
      }
    }

LABEL_73:
    v18 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v20 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v21 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v21 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v21))
    {
      v22 = *(a1 + 80);
      v36 = 136315906;
      v37 = "[NSCloudKitMirroringDelegate _recoverFromPartialError:forStore:inMonitor:]_block_invoke";
      v38 = 1024;
      *v39 = 2775;
      *&v39[4] = 2112;
      *&v39[6] = v22;
      *&v39[14] = 2112;
      *&v39[16] = a3;
      _os_log_impl(&dword_18565F000, v20, v21, "CoreData+CloudKit: %s(%d): %@: Found unknown error as part of a partial failure: %@", &v36, 0x26u);
    }

    objc_autoreleasePoolPop(v18);
    v23 = -[PFCloudKitUnhandledPartialErrorMetric initWithContainerIdentifier:error:]([PFCloudKitUnhandledPartialErrorMetric alloc], "initWithContainerIdentifier:error:", [*(*(a1 + 80) + 8) containerIdentifier], a3);
    v24 = *(*(a1 + 80) + 8);
    if (v24)
    {
      v25 = *(v24 + 72);
    }

    else
    {
      v25 = 0;
    }

    [(PFMetricsClient *)v25 logMetric:v23];

    goto LABEL_81;
  }

  v12 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v26 = *(a1 + 80);
    v36 = 138412802;
    v37 = v26;
    v38 = 2112;
    *v39 = a2;
    *&v39[8] = 2112;
    *&v39[10] = a3;
    _os_log_error_impl(&dword_18565F000, v12, OS_LOG_TYPE_ERROR, "CoreData: fault: %@: Found unknown itemID (%@) as part of a partial failure: %@\n", &v36, 0x20u);
  }

  v13 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    v14 = *(a1 + 80);
    v36 = 138412802;
    v37 = v14;
    v38 = 2112;
    *v39 = a2;
    *&v39[8] = 2112;
    *&v39[10] = a3;
    _os_log_fault_impl(&dword_18565F000, v13, OS_LOG_TYPE_FAULT, "CoreData: %@: Found unknown itemID (%@) as part of a partial failure: %@", &v36, 0x20u);
  }

LABEL_94:
  v31 = *MEMORY[0x1E69E9840];
}

void __79__NSCloudKitMirroringDelegate__recoverConflictedZoneShares_forStore_inMonitor___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v32;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v32 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v31 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        v30 = 0;
        v8 = [v6 userInfo];
        v9 = [v8 objectForKey:getCloudKitCKRecordChangedErrorServerRecordKey()];
        v10 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, [objc_msgSend(v9 "recordID")], objc_msgSend(*(*(a1 + 40) + 8), "databaseScope"), *(a1 + 48), *(a1 + 56), &v30);
        if (v10)
        {
          v11 = *(*(a1 + 40) + 8);
          if (v11 && (v12 = v10, (v13 = *(v11 + 136)) != 0) && (v14 = [(PFCloudKitArchivingUtilities *)v13 encodeRecord:v9 error:&v30]) != 0)
          {
            v15 = v14;
            [(NSManagedObject *)v12 updateEncodedShareWithData:v14];
            [(NSManagedObject *)v12 setNeedsShareUpdate:0];
            if (([*(a1 + 56) save:&v30] & 1) == 0)
            {
              *(*(*(a1 + 64) + 8) + 24) = 0;
              v16 = objc_autoreleasePoolPush();
              Stream = __PFCloudKitLoggingGetStream();
              v18 = Stream;
              if (__ckLoggingOverride == 17)
              {
                v19 = OS_LOG_TYPE_FAULT;
              }

              else
              {
                v19 = OS_LOG_TYPE_ERROR;
              }

              if (os_log_type_enabled(Stream, v19))
              {
                *buf = 136315906;
                v36 = "[NSCloudKitMirroringDelegate _recoverConflictedZoneShares:forStore:inMonitor:]_block_invoke";
                v37 = 1024;
                v38 = 2861;
                v39 = 2112;
                v40 = v9;
                v41 = 2112;
                v42 = v30;
                _os_log_impl(&dword_18565F000, v18, v19, "CoreData+CloudKit: %s(%d): Failed to recover conflict for record: %@ due to save failure: %@", buf, 0x26u);
              }

              goto LABEL_28;
            }
          }

          else
          {
            *(*(*(a1 + 64) + 8) + 24) = 0;
            v16 = objc_autoreleasePoolPush();
            v24 = __PFCloudKitLoggingGetStream();
            v25 = v24;
            if (__ckLoggingOverride == 17)
            {
              v26 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v26 = OS_LOG_TYPE_ERROR;
            }

            if (os_log_type_enabled(v24, v26))
            {
              *buf = 136315906;
              v36 = "[NSCloudKitMirroringDelegate _recoverConflictedZoneShares:forStore:inMonitor:]_block_invoke";
              v37 = 1024;
              v38 = 2865;
              v39 = 2112;
              v40 = v9;
              v41 = 2112;
              v42 = v30;
              _os_log_impl(&dword_18565F000, v25, v26, "CoreData+CloudKit: %s(%d): Failed to recover conflict for record: %@ due to error: %@", buf, 0x26u);
            }

            v15 = 0;
LABEL_28:
            objc_autoreleasePoolPop(v16);
          }

          goto LABEL_30;
        }

        v20 = objc_autoreleasePoolPush();
        v21 = __PFCloudKitLoggingGetStream();
        v22 = v21;
        if (__ckLoggingOverride == 17)
        {
          v23 = OS_LOG_TYPE_FAULT;
        }

        else
        {
          v23 = OS_LOG_TYPE_ERROR;
        }

        if (os_log_type_enabled(v21, v23))
        {
          *buf = 136315906;
          v36 = "[NSCloudKitMirroringDelegate _recoverConflictedZoneShares:forStore:inMonitor:]_block_invoke";
          v37 = 1024;
          v38 = 2869;
          v39 = 2112;
          v40 = v9;
          v41 = 2112;
          v42 = v30;
          _os_log_impl(&dword_18565F000, v22, v23, "CoreData+CloudKit: %s(%d): Failed to recover conflict for record: %@ due to error: %@", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v20);
LABEL_30:
        v27 = *(*(*(a1 + 64) + 8) + 24);
        objc_autoreleasePoolPop(v7);
        if (!v27)
        {
          goto LABEL_33;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v3);
  }

LABEL_33:
  v28 = *MEMORY[0x1E69E9840];
}

void __79__NSCloudKitMirroringDelegate__recoverUnknownItemRecordIDs_forStore_inMonitor___block_invoke(uint64_t a1)
{
  v85 = *MEMORY[0x1E69E9840];
  v75 = 0;
  v2 = [NSCKRecordMetadata metadataForRecordIDs:*(a1 + 40) fromStore:*(a1 + 48) inManagedObjectContext:&v75 error:?];
  v3 = v2;
  if (!v2)
  {
    v35 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v37 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v38 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v38 = OS_LOG_TYPE_ERROR;
    }

    if (!os_log_type_enabled(Stream, v38))
    {
      goto LABEL_58;
    }

    v39 = *(a1 + 56);
    *buf = 136315906;
    v77 = "[NSCloudKitMirroringDelegate _recoverUnknownItemRecordIDs:forStore:inMonitor:]_block_invoke";
    v78 = 1024;
    *v79 = 2949;
    *&v79[4] = 2112;
    *&v79[6] = v39;
    v80 = 2112;
    v81 = v75;
    v40 = "CoreData+CloudKit: %s(%d): %@: Failed to recover from unknown item error due to record metadata fetch error: %@";
    goto LABEL_57;
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v71 objects:v84 count:16];
  if (v4)
  {
    v6 = *v72;
    *&v5 = 138412546;
    v60 = v5;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v72 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v71 + 1) + 8 * i);
        if ([v8 needsCloudDelete])
        {
          [*(a1 + 48) deleteObject:v8];
        }

        else
        {
          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            v11 = *(a1 + 56);
            *buf = v60;
            v77 = v11;
            v78 = 2112;
            *v79 = v8;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: %@: Unexpected state for record metadata. It was not found on the server but the local row was not expected to be deleted, how did we get here? %@\n", buf, 0x16u);
          }

          v10 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
          {
            v12 = *(a1 + 56);
            *buf = v60;
            v77 = v12;
            v78 = 2112;
            *v79 = v8;
            _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: %@: Unexpected state for record metadata. It was not found on the server but the local row was not expected to be deleted, how did we get here? %@", buf, 0x16u);
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v71 objects:v84 count:16];
    }

    while (v4);
  }

  if (![*(a1 + 48) save:&v75])
  {
    v35 = objc_autoreleasePoolPush();
    v41 = __PFCloudKitLoggingGetStream();
    v37 = v41;
    if (__ckLoggingOverride == 17)
    {
      v38 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v38 = OS_LOG_TYPE_ERROR;
    }

    if (!os_log_type_enabled(v41, v38))
    {
      goto LABEL_58;
    }

    v42 = *(a1 + 56);
    *buf = 136315906;
    v77 = "[NSCloudKitMirroringDelegate _recoverUnknownItemRecordIDs:forStore:inMonitor:]_block_invoke";
    v78 = 1024;
    *v79 = 2946;
    *&v79[4] = 2112;
    *&v79[6] = v42;
    v80 = 2112;
    v81 = v75;
    v40 = "CoreData+CloudKit: %s(%d): %@: Failed to save record metadata changes from recovering unknown item errors: %@";
LABEL_57:
    _os_log_impl(&dword_18565F000, v37, v38, v40, buf, 0x26u);
LABEL_58:
    objc_autoreleasePoolPop(v35);
    goto LABEL_83;
  }

  v13 = [NSCKMirroredRelationship fetchMirroredRelationshipsMatchingRelatingRecords:*(a1 + 32) andRelatingRecordIDs:*(a1 + 40) fromStore:*(a1 + 48) inManagedObjectContext:&v75 error:?];
  v14 = v13;
  if (!v13)
  {
    v43 = objc_autoreleasePoolPush();
    v44 = __PFCloudKitLoggingGetStream();
    v45 = v44;
    if (__ckLoggingOverride == 17)
    {
      v46 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v46 = OS_LOG_TYPE_ERROR;
    }

    if (!os_log_type_enabled(v44, v46))
    {
      goto LABEL_70;
    }

    v47 = *(a1 + 56);
    *buf = 136315906;
    v77 = "[NSCloudKitMirroringDelegate _recoverUnknownItemRecordIDs:forStore:inMonitor:]_block_invoke";
    v78 = 1024;
    *v79 = 2943;
    *&v79[4] = 2112;
    *&v79[6] = v47;
    v80 = 2112;
    v81 = v75;
    v48 = "CoreData+CloudKit: %s(%d): %@: Failed to recover from unknown item error due to mirrored relationship fetch error: %@";
    goto LABEL_69;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v15 = [v13 countByEnumeratingWithState:&v67 objects:v83 count:16];
  if (v15)
  {
    v17 = *v68;
    *&v16 = 138412546;
    v61 = v16;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v68 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v67 + 1) + 8 * j);
        if ([v19 needsDeleteBool])
        {
          [*(a1 + 48) deleteObject:v19];
        }

        else
        {
          v20 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v22 = *(a1 + 56);
            *buf = v61;
            v77 = v22;
            v78 = 2112;
            *v79 = v19;
            _os_log_error_impl(&dword_18565F000, v20, OS_LOG_TYPE_ERROR, "CoreData: fault: %@: Unexpected state for mirrored relationship metadata. It was not found on the server but the local row was not expected to be deleted, how did we get here? %@\n", buf, 0x16u);
          }

          v21 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
          {
            v23 = *(a1 + 56);
            *buf = v61;
            v77 = v23;
            v78 = 2112;
            *v79 = v19;
            _os_log_fault_impl(&dword_18565F000, v21, OS_LOG_TYPE_FAULT, "CoreData: %@: Unexpected state for mirrored relationship metadata. It was not found on the server but the local row was not expected to be deleted, how did we get here? %@", buf, 0x16u);
          }
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v67 objects:v83 count:16];
    }

    while (v15);
  }

  if (![*(a1 + 48) save:&v75])
  {
    v43 = objc_autoreleasePoolPush();
    v49 = __PFCloudKitLoggingGetStream();
    v45 = v49;
    if (__ckLoggingOverride == 17)
    {
      v46 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v46 = OS_LOG_TYPE_ERROR;
    }

    if (!os_log_type_enabled(v49, v46))
    {
      goto LABEL_70;
    }

    v50 = *(a1 + 56);
    *buf = 136315906;
    v77 = "[NSCloudKitMirroringDelegate _recoverUnknownItemRecordIDs:forStore:inMonitor:]_block_invoke";
    v78 = 1024;
    *v79 = 2940;
    *&v79[4] = 2112;
    *&v79[6] = v50;
    v80 = 2112;
    v81 = v75;
    v48 = "CoreData+CloudKit: %s(%d): %@: Failed to save mirrored relationship changes from recovering unknown item errors: %@";
LABEL_69:
    _os_log_impl(&dword_18565F000, v45, v46, v48, buf, 0x26u);
LABEL_70:
    objc_autoreleasePoolPop(v43);
    goto LABEL_83;
  }

  v24 = [NSCKRecordZoneMoveReceipt moveReceiptsMatchingRecordIDs:*(a1 + 32) inManagedObjectContext:*(a1 + 48) persistentStore:*(a1 + 40) error:&v75];
  v25 = v24;
  if (!v24)
  {
    v51 = objc_autoreleasePoolPush();
    v52 = __PFCloudKitLoggingGetStream();
    v53 = v52;
    if (__ckLoggingOverride == 17)
    {
      v54 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v54 = OS_LOG_TYPE_ERROR;
    }

    if (!os_log_type_enabled(v52, v54))
    {
      goto LABEL_82;
    }

    v55 = *(a1 + 56);
    *buf = 136315906;
    v77 = "[NSCloudKitMirroringDelegate _recoverUnknownItemRecordIDs:forStore:inMonitor:]_block_invoke";
    v78 = 1024;
    *v79 = 2937;
    *&v79[4] = 2112;
    *&v79[6] = v55;
    v80 = 2112;
    v81 = v75;
    v56 = "CoreData+CloudKit: %s(%d): %@: Failed to recover from unknown item error due to move receipt fetch error: %@";
    goto LABEL_81;
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v26 = [v24 countByEnumeratingWithState:&v63 objects:v82 count:16];
  if (v26)
  {
    v28 = *v64;
    *&v27 = 138412546;
    v62 = v27;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v64 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v63 + 1) + 8 * k);
        if ([v30 needsCloudDelete])
        {
          [*(a1 + 48) deleteObject:v30];
        }

        else
        {
          v31 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v33 = *(a1 + 56);
            *buf = v62;
            v77 = v33;
            v78 = 2112;
            *v79 = v30;
            _os_log_error_impl(&dword_18565F000, v31, OS_LOG_TYPE_ERROR, "CoreData: fault: %@: Unexpected move receipt state. It was not found on the server but the local row was not marked for cloud deletion. Why were we trying to access it? %@\n", buf, 0x16u);
          }

          v32 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
          {
            v34 = *(a1 + 56);
            *buf = v62;
            v77 = v34;
            v78 = 2112;
            *v79 = v30;
            _os_log_fault_impl(&dword_18565F000, v32, OS_LOG_TYPE_FAULT, "CoreData: %@: Unexpected move receipt state. It was not found on the server but the local row was not marked for cloud deletion. Why were we trying to access it? %@", buf, 0x16u);
          }
        }
      }

      v26 = [v25 countByEnumeratingWithState:&v63 objects:v82 count:16];
    }

    while (v26);
  }

  if (![*(a1 + 48) save:&v75])
  {
    v51 = objc_autoreleasePoolPush();
    v57 = __PFCloudKitLoggingGetStream();
    v53 = v57;
    if (__ckLoggingOverride == 17)
    {
      v54 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v54 = OS_LOG_TYPE_ERROR;
    }

    if (!os_log_type_enabled(v57, v54))
    {
      goto LABEL_82;
    }

    v58 = *(a1 + 56);
    *buf = 136315906;
    v77 = "[NSCloudKitMirroringDelegate _recoverUnknownItemRecordIDs:forStore:inMonitor:]_block_invoke";
    v78 = 1024;
    *v79 = 2934;
    *&v79[4] = 2112;
    *&v79[6] = v58;
    v80 = 2112;
    v81 = v75;
    v56 = "CoreData+CloudKit: %s(%d): %@: Failed to recover from unknown item error due to a save failure after deleting move receipts: %@";
LABEL_81:
    _os_log_impl(&dword_18565F000, v53, v54, v56, buf, 0x26u);
LABEL_82:
    objc_autoreleasePoolPop(v51);
    goto LABEL_83;
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
LABEL_83:
  v59 = *MEMORY[0x1E69E9840];
}

uint64_t __84__NSCloudKitMirroringDelegate__recoverFromUnknownShareRecordIDs_forStore_inMonitor___block_invoke(uint64_t a1)
{
  v76 = *MEMORY[0x1E69E9840];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v2 = *(a1 + 32);
  result = [v2 countByEnumeratingWithState:&v64 objects:v75 count:16];
  v58 = result;
  if (result)
  {
    p_superclass = NSCloudKitMirroringRequestManager.superclass;
    v57 = *v65;
    *&v4 = 138412546;
    v52 = v4;
    v53 = v2;
    do
    {
      v6 = 0;
      do
      {
        if (*v65 != v57)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v64 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v63 = 0;
        v9 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:]((p_superclass + 19), [v7 zoneID], objc_msgSend(*(*(a1 + 40) + 8), "databaseScope"), *(a1 + 48), *(a1 + 56), &v63);
        if (v9)
        {
          v10 = v9;
          if ([(NSManagedObject *)v9 encodedShareAsset])
          {
            v56 = v8;
            v11 = [(NSCKRecordZoneMetadata *)v10 createRecordZoneID];
            v12 = *(*(a1 + 40) + 8);
            if (v12)
            {
              v13 = *(v12 + 136);
            }

            else
            {
              v13 = 0;
            }

            v14 = [(NSManagedObject *)v10 encodedShareAsset];
            if (v14)
            {
              v15 = v14;
              if ([objc_msgSend(v14 "binaryData")])
              {
                v16 = [v15 binaryData];
              }

              else
              {
                v16 = [v15 externalBinaryData];
              }

              v24 = v16;
            }

            else
            {
              v24 = 0;
            }

            v55 = v11;
            v25 = [(PFCloudKitArchivingUtilities *)v13 shareFromEncodedData:v24 inZoneWithID:v11 error:&v63];
            if (v25)
            {
              v26 = [objc_alloc(getCloudKitCKShareClass[0]()) initWithRecordZoneID:{objc_msgSend(v7, "zoneID")}];
              v59 = 0u;
              v60 = 0u;
              v61 = 0u;
              v62 = 0u;
              v54 = v25;
              v27 = [v25 participants];
              v28 = [v27 countByEnumeratingWithState:&v59 objects:v74 count:16];
              if (v28)
              {
                v29 = v28;
                v30 = *v60;
                do
                {
                  for (i = 0; i != v29; ++i)
                  {
                    if (*v60 != v30)
                    {
                      objc_enumerationMutation(v27);
                    }

                    v32 = *(*(&v59 + 1) + 8 * i);
                    if ([v32 role] != 1)
                    {
                      [v26 addParticipant:v32];
                    }
                  }

                  v29 = [v27 countByEnumeratingWithState:&v59 objects:v74 count:16];
                }

                while (v29);
              }

              v33 = *(*(a1 + 40) + 8);
              if (v33 && (v34 = *(v33 + 136)) != 0 && (v35 = [(PFCloudKitArchivingUtilities *)v34 encodeRecord:v26 error:&v63]) != 0)
              {
                v36 = v35;
                [(NSManagedObject *)v10 updateEncodedShareWithData:v35];
                p_superclass = (NSCloudKitMirroringRequestManager + 8);
                if ([*(a1 + 56) save:&v63])
                {
                  *(*(*(a1 + 64) + 8) + 24) = 1;
                }

                else
                {
                  v47 = objc_autoreleasePoolPush();
                  Stream = __PFCloudKitLoggingGetStream();
                  v49 = Stream;
                  if (__ckLoggingOverride == 17)
                  {
                    v50 = OS_LOG_TYPE_FAULT;
                  }

                  else
                  {
                    v50 = OS_LOG_TYPE_ERROR;
                  }

                  if (os_log_type_enabled(Stream, v50))
                  {
                    *buf = 136315906;
                    v69 = "[NSCloudKitMirroringDelegate _recoverFromUnknownShareRecordIDs:forStore:inMonitor:]_block_invoke";
                    v70 = 1024;
                    *v71 = 2998;
                    *&v71[4] = 2112;
                    *&v71[6] = v7;
                    v72 = 2112;
                    v73 = v63;
                    _os_log_impl(&dword_18565F000, v49, v50, "CoreData+CloudKit: %s(%d): Failed to recover from an unknown item error because the share recovery save failed: %@\n%@", buf, 0x26u);
                  }

                  objc_autoreleasePoolPop(v47);
                }
              }

              else
              {
                v43 = objc_autoreleasePoolPush();
                v44 = __PFCloudKitLoggingGetStream();
                v45 = v44;
                if (__ckLoggingOverride == 17)
                {
                  v46 = OS_LOG_TYPE_FAULT;
                }

                else
                {
                  v46 = OS_LOG_TYPE_ERROR;
                }

                p_superclass = (NSCloudKitMirroringRequestManager + 8);
                if (os_log_type_enabled(v44, v46))
                {
                  *buf = 136315906;
                  v69 = "[NSCloudKitMirroringDelegate _recoverFromUnknownShareRecordIDs:forStore:inMonitor:]_block_invoke";
                  v70 = 1024;
                  *v71 = 3001;
                  *&v71[4] = 2112;
                  *&v71[6] = v7;
                  v72 = 2112;
                  v73 = v63;
                  _os_log_impl(&dword_18565F000, v45, v46, "CoreData+CloudKit: %s(%d): Failed to recover from an unknown item error because the replacement share record couldn't be encoded: %@\n%@", buf, 0x26u);
                }

                objc_autoreleasePoolPop(v43);
                v36 = 0;
              }

              v2 = v53;
              v37 = v54;
              v42 = v55;
            }

            else
            {
              v37 = 0;
              v38 = objc_autoreleasePoolPush();
              v39 = __PFCloudKitLoggingGetStream();
              v40 = v39;
              if (__ckLoggingOverride == 17)
              {
                v41 = OS_LOG_TYPE_FAULT;
              }

              else
              {
                v41 = OS_LOG_TYPE_ERROR;
              }

              if (os_log_type_enabled(v39, v41))
              {
                *buf = 136315906;
                v69 = "[NSCloudKitMirroringDelegate _recoverFromUnknownShareRecordIDs:forStore:inMonitor:]_block_invoke";
                v70 = 1024;
                *v71 = 3006;
                *&v71[4] = 2112;
                *&v71[6] = v7;
                v72 = 2112;
                v73 = v63;
                _os_log_impl(&dword_18565F000, v40, v41, "CoreData+CloudKit: %s(%d): Failed to recover from unknown item error because the current share couldn't be decoded: %@ - %@", buf, 0x26u);
              }

              objc_autoreleasePoolPop(v38);
              v42 = v55;
            }

            v8 = v56;
          }

          else
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = v52;
              v69 = v7;
              v70 = 2112;
              *v71 = v10;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Got an unknown item error for a zone metadata without a share: %@ - %@\n", buf, 0x16u);
            }

            v23 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
            {
              *buf = v52;
              v69 = v7;
              v70 = 2112;
              *v71 = v10;
              _os_log_fault_impl(&dword_18565F000, v23, OS_LOG_TYPE_FAULT, "CoreData: Got an unknown item error for a zone metadata without a share: %@ - %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v17 = v8;
          v18 = objc_autoreleasePoolPush();
          v19 = __PFCloudKitLoggingGetStream();
          v20 = v19;
          if (__ckLoggingOverride == 17)
          {
            v21 = OS_LOG_TYPE_FAULT;
          }

          else
          {
            v21 = OS_LOG_TYPE_ERROR;
          }

          if (os_log_type_enabled(v19, v21))
          {
            *buf = 136315906;
            v69 = "[NSCloudKitMirroringDelegate _recoverFromUnknownShareRecordIDs:forStore:inMonitor:]_block_invoke";
            v70 = 1024;
            *v71 = 3014;
            *&v71[4] = 2112;
            *&v71[6] = v7;
            v72 = 2112;
            v73 = v63;
            _os_log_impl(&dword_18565F000, v20, v21, "CoreData+CloudKit: %s(%d): Failed to recover from an unknown item error for '%@' because the zone metadata couldn't be fetched: %@", buf, 0x26u);
          }

          objc_autoreleasePoolPop(v18);
          v8 = v17;
        }

        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v6 != v58);
      result = [v2 countByEnumeratingWithState:&v64 objects:v75 count:16];
      v58 = result;
    }

    while (result);
  }

  v51 = *MEMORY[0x1E69E9840];
  return result;
}

void __62__NSCloudKitMirroringDelegate__handleError_duringShareAccept___block_invoke(void *a1)
{
  v2 = [[NSCloudKitMirroringResult alloc] initWithRequest:a1[4] storeIdentifier:*(a1[5] + 152) success:0 madeChanges:0 error:a1[6]];
  [(NSCloudKitMirroringDelegate *)a1[5] _finishedRequest:v2 withResult:?];
}

- (uint64_t)retryAfterInSecondsFromError:(void *)a1
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [a1 code];
  v3 = [a1 userInfo];
  if (v2 == 2)
  {
    v4 = [v3 objectForKeyedSubscript:getCloudKitCKPartialErrorsByItemIDKey()];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    result = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (result)
    {
      v6 = result;
      v7 = *v16;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [v4 objectForKey:*(*(&v15 + 1) + 8 * v8)];
          v10 = [v9 userInfo];
          if ([v10 objectForKeyedSubscript:getCloudKitCKErrorRetryAfterKey()])
          {
            v13 = [v9 userInfo];
            result = [v13 objectForKeyedSubscript:getCloudKitCKErrorRetryAfterKey()];
            goto LABEL_15;
          }

          ++v8;
        }

        while (v6 != v8);
        result = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v6 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
    v14 = *MEMORY[0x1E69E9840];
  }

  else
  {
    CloudKitCKErrorRetryAfterKey = getCloudKitCKErrorRetryAfterKey();
    v12 = *MEMORY[0x1E69E9840];

    return [v3 objectForKey:CloudKitCKErrorRetryAfterKey];
  }

  return result;
}

- (void)_postResetSyncNotificationWithName:(void *)a3 forError:
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v7 setObject:a3 forKey:*MEMORY[0x1E696AA08]];
  v8 = [a3 domain];
  v9 = [a3 code];
  if ([v8 isEqualToString:*MEMORY[0x1E696A250]])
  {
    if (v9 == 134301)
    {
      v10 = &unk_1EF435E78;
    }

    else
    {
      if (v9 != 134405)
      {
        goto LABEL_15;
      }

      v10 = [objc_msgSend(a3 "userInfo")];
      if (!v10)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_20;
  }

  if ([v8 isEqualToString:getCloudKitCKErrorDomain()])
  {
    v10 = &unk_1EF435E90;
    if (v9 > 27)
    {
      if (v9 == 112)
      {
        goto LABEL_20;
      }

      if (v9 == 28)
      {
        v10 = &unk_1EF435EA8;
        goto LABEL_20;
      }
    }

    else
    {
      if (v9 == 21)
      {
        v10 = &unk_1EF435EC0;
        goto LABEL_20;
      }

      if (v9 == 26)
      {
LABEL_20:
        [v7 setObject:v10 forKey:@"NSCloudKitMirroringDelegateResetSyncReasonKey"];
        goto LABEL_21;
      }
    }
  }

LABEL_15:
  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    v16 = 138412290;
    v17 = a3;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to get a reset sync reason for error even though we're posting a notification for it: %@\n", &v16, 0xCu);
  }

  v12 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    v16 = 138412290;
    v17 = a3;
    _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: Failed to get a reset sync reason for error even though we're posting a notification for it: %@", &v16, 0xCu);
  }

LABEL_21:
  v13 = [v7 copy];

  v14 = [objc_alloc(MEMORY[0x1E696AD80]) initWithName:a2 object:a1 userInfo:v13];
  [a1 logResetSyncNotification:v14];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  v15 = *MEMORY[0x1E69E9840];

  objc_autoreleasePoolPop(v6);
}

- (void)logResetSyncNotification:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@: Sending '%@'", self, objc_msgSend(a3, "name")];
  if ([objc_msgSend(a3 "userInfo")])
  {
    [v4 appendFormat:@" with reason: '%@'", +[NSCloudKitMirroringDelegate stringForResetReason:](NSCloudKitMirroringDelegate, "stringForResetReason:", objc_msgSend(objc_msgSend(objc_msgSend(a3, "userInfo"), "objectForKey:", @"NSCloudKitMirroringDelegateResetSyncReasonKey", "unsignedIntegerValue"))];
  }

  v5 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v7 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v8 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v8 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(Stream, v8))
  {
    *buf = 136315650;
    v11 = "[NSCloudKitMirroringDelegate logResetSyncNotification:]";
    v12 = 1024;
    v13 = 3086;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_18565F000, v7, v8, "CoreData+CloudKit: %s(%d): %@", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v5);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)exporter:(id)a3 willScheduleOperations:(id)a4
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a4 && [a4 count])
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = @"operations";
    v9[0] = a4;
    [v6 postNotificationName:@"PFCloudKitWillExportNotificationName" object:self userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v9, &v8, 1)}];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)managedObjectContextSaved:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(a3 "userInfo")];
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((v5 + 8));
  }

  else
  {
    WeakRetained = 0;
  }

  v7 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v9 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v10 = 17;
  }

  else
  {
    v10 = 2;
  }

  if (__ckLoggingOverride == 16)
  {
    v10 = 16;
  }

  if (__ckLoggingOverride == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (!__ckLoggingOverride)
  {
    v11 = 0;
  }

  if (__ckLoggingOverride <= 0xFu)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  if (os_log_type_enabled(Stream, v12))
  {
    *buf = 136316162;
    v16 = "[NSCloudKitMirroringDelegate managedObjectContextSaved:]";
    v17 = 1024;
    v18 = 3140;
    v19 = 2112;
    v20 = self;
    v21 = 2112;
    v22 = [a3 object];
    v23 = 2112;
    v24 = WeakRetained;
    _os_log_impl(&dword_18565F000, v9, v12, "CoreData+CloudKit: %s(%d): %@: Observed context save: %@ - %@", buf, 0x30u);
  }

  objc_autoreleasePoolPop(v7);
  if (!+[PFCloudKitHistoryAnalyzer isPrivateTransactionAuthor:](PFCloudKitHistoryAnalyzer, "isPrivateTransactionAuthor:", [WeakRetained transactionAuthor]) && !+[PFCloudKitHistoryAnalyzer isPrivateContextName:](PFCloudKitHistoryAnalyzer, "isPrivateContextName:", objc_msgSend(WeakRetained, "name")))
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__NSCloudKitMirroringDelegate_managedObjectContextSaved___block_invoke;
    v14[3] = &unk_1E6EC4B10;
    v14[4] = self;
    v14[5] = a3;
    [(NSCloudKitMirroringDelegate *)self _openTransactionWithLabel:@"CoreData: CloudKit Scheduling" assertionLabel:v14 andExecuteWorkBlock:?];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __57__NSCloudKitMirroringDelegate_managedObjectContextSaved___block_invoke(int8x16_t *a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1[2].i64[0] + 120));
  v5 = a1[2].i64[0];
  if (v5 && (v6 = *(v5 + 8)) != 0)
  {
    v7 = *(v6 + 88);
  }

  else
  {
    v7 = 0;
  }

  Weak = objc_loadWeak((v5 + 112));
  if (a2)
  {
    v9 = *(a2 + 8);
  }

  v10 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v7 inTransactionWithLabel:Weak];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__NSCloudKitMirroringDelegate_managedObjectContextSaved___block_invoke_2;
  v11[3] = &unk_1E6EC19D8;
  v11[4] = v10;
  v12 = vextq_s8(a1[2], a1[2], 8uLL);
  [(PFCloudKitStoreMonitor *)v10 performBlock:v11];
}

void __57__NSCloudKitMirroringDelegate_managedObjectContextSaved___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v29[0] = @"inserted_objectIDs";
    v29[1] = @"updated_objectIDs";
    v29[2] = @"deleted_objectIDs";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
    v4 = [v3 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v4)
    {
      v5 = v4;
      v19 = v2;
      v6 = 0;
      v7 = *v25;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [objc_msgSend(*(a1 + 40) "userInfo")];
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v10 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v21;
            do
            {
              v13 = 0;
              do
              {
                if (*v21 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = [*(*(&v20 + 1) + 8 * v13) _storeIdentifier];
                v15 = *(a1 + 32);
                if (v15)
                {
                  v16 = *(v15 + 48);
                }

                else
                {
                  v16 = 0;
                }

                if ([v14 isEqualToString:v16])
                {
                  v6 = 1;
                  goto LABEL_21;
                }

                ++v13;
              }

              while (v11 != v13);
              v17 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
              v11 = v17;
            }

            while (v17);
          }

LABEL_21:
          ;
        }

        v5 = [v3 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v5);
      v2 = v19;
      if (v6)
      {
        [(NSCloudKitMirroringDelegate *)*(a1 + 48) scheduleExportAndStartAfterDate:?];
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)remoteStoreDidChange:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(a3 "userInfo")];
  v6 = [objc_msgSend(a3 "userInfo")];
  v7 = [objc_msgSend(a3 "userInfo")];
  v8 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v10 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v11 = 17;
  }

  else
  {
    v11 = 2;
  }

  if (__ckLoggingOverride == 16)
  {
    v11 = 16;
  }

  if (__ckLoggingOverride == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (!__ckLoggingOverride)
  {
    v12 = 0;
  }

  if (__ckLoggingOverride <= 0xFu)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  if (os_log_type_enabled(Stream, v13))
  {
    *buf = 136316674;
    v17 = "[NSCloudKitMirroringDelegate remoteStoreDidChange:]";
    v18 = 1024;
    v19 = 3183;
    v20 = 2112;
    v21 = self;
    v22 = 2112;
    v23 = [a3 object];
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = v6;
    v28 = 2112;
    v29 = v5;
    _os_log_impl(&dword_18565F000, v10, v13, "CoreData+CloudKit: %s(%d): %@: Observed remote store notification: %@ - %@ - %@ - %@", buf, 0x44u);
  }

  objc_autoreleasePoolPop(v8);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__NSCloudKitMirroringDelegate_remoteStoreDidChange___block_invoke;
  v15[3] = &unk_1E6EC4CF0;
  v15[4] = self;
  v15[5] = v7;
  v15[6] = v6;
  v15[7] = v5;
  [(NSCloudKitMirroringDelegate *)self _openTransactionWithLabel:@"CoreData: CloudKit Scheduling" assertionLabel:v15 andExecuteWorkBlock:?];
  v14 = *MEMORY[0x1E69E9840];
}

void __52__NSCloudKitMirroringDelegate_remoteStoreDidChange___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    v6 = *(v5 + 88);
  }

  else
  {
    v6 = 0;
  }

  Weak = objc_loadWeak((v4 + 112));
  if (a2)
  {
    v8 = *(a2 + 8);
  }

  v9 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v6 inTransactionWithLabel:Weak];
  v10 = v9;
  if (v9)
  {
    WeakRetained = objc_loadWeakRetained((v9 + 32));
  }

  else
  {
    WeakRetained = 0;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__NSCloudKitMirroringDelegate_remoteStoreDidChange___block_invoke_2;
  v13[3] = &unk_1E6EC4470;
  v13[4] = v10;
  v14 = *(a1 + 40);
  v12 = *(a1 + 56);
  v15 = *(a1 + 32);
  v16 = v12;
  [(PFCloudKitStoreMonitor *)v10 performBlock:v13];
}

void __52__NSCloudKitMirroringDelegate_remoteStoreDidChange___block_invoke_2(uint64_t *a1)
{
  v83 = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)a1[4] retainedMonitoredStore];
  if (v2)
  {
    v3 = a1[4];
    if (v3)
    {
      v4 = *(v3 + 48);
    }

    else
    {
      v4 = 0;
    }

    if ([v4 isEqualToString:a1[5]])
    {
      v5 = a1[6];
      if (v5)
      {
        v6 = [v5 storeTokens];
        v7 = a1[4];
        if (v7)
        {
          v8 = *(v7 + 48);
        }

        else
        {
          v8 = 0;
        }

        v9 = [v6 objectForKey:v8];
        if (v9)
        {
          v10 = v9;
          v67 = 0;
          v68 = &v67;
          v69 = 0x2020000000;
          v70 = 1;
          v61 = 0;
          v62 = &v61;
          v63 = 0x3052000000;
          v64 = __Block_byref_object_copy__41;
          v65 = __Block_byref_object_dispose__41;
          v66 = 0;
          v55 = 0;
          v56 = &v55;
          v57 = 0x3052000000;
          v58 = __Block_byref_object_copy__41;
          v59 = __Block_byref_object_dispose__41;
          v60 = 0;
          v11 = [(PFCloudKitStoreMonitor *)a1[4] newBackgroundContextForMonitoredCoordinator];
          v54[0] = MEMORY[0x1E69E9820];
          v54[1] = 3221225472;
          v54[2] = __52__NSCloudKitMirroringDelegate_remoteStoreDidChange___block_invoke_3;
          v54[3] = &unk_1E6EC3A80;
          v54[4] = v2;
          v54[5] = v11;
          v54[6] = &v55;
          v54[7] = &v67;
          v54[8] = &v61;
          [(NSManagedObjectContext *)v11 performBlockAndWait:v54];
          if (*(v68 + 24) != 1)
          {
            v46 = objc_autoreleasePoolPush();
            Stream = __PFCloudKitLoggingGetStream();
            v48 = Stream;
            if (__ckLoggingOverride == 17)
            {
              v49 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v49 = OS_LOG_TYPE_ERROR;
            }

            if (os_log_type_enabled(Stream, v49))
            {
              v50 = a1[7];
              v51 = v56[5];
              *buf = 136316162;
              v72 = "[NSCloudKitMirroringDelegate remoteStoreDidChange:]_block_invoke";
              v73 = 1024;
              v74 = 3224;
              v75 = 2112;
              v76 = v50;
              v77 = 2112;
              v78 = v51;
              v79 = 2112;
              v80 = v2;
              _os_log_impl(&dword_18565F000, v48, v49, "CoreData+CloudKit: %s(%d): %@ - Ignoring remote change notification because the current history token couldn't be read: %@ - %@", buf, 0x30u);
            }

            objc_autoreleasePoolPop(v46);
            goto LABEL_94;
          }

          v12 = [objc_msgSend(v62[5] "storeTokens")];
          v13 = v12;
          if (!v12 || [v12 compare:v10] == -1)
          {
            [(NSCloudKitMirroringDelegate *)a1[7] scheduleExportAndStartAfterDate:?];
LABEL_94:

            v62[5] = 0;
            v56[5] = 0;
            _Block_object_dispose(&v55, 8);
            _Block_object_dispose(&v61, 8);
            _Block_object_dispose(&v67, 8);
            goto LABEL_95;
          }

          v14 = objc_autoreleasePoolPush();
          v15 = __PFCloudKitLoggingGetStream();
          v16 = v15;
          v17 = OS_LOG_TYPE_DEBUG;
          if (__ckLoggingOverride > 0xFu)
          {
            if (__ckLoggingOverride != 16 && __ckLoggingOverride != 17)
            {
              goto LABEL_91;
            }
          }

          else if (__ckLoggingOverride >= 2u)
          {
            goto LABEL_91;
          }

          v17 = __ckLoggingOverride;
LABEL_91:
          if (os_log_type_enabled(v15, v17))
          {
            v52 = a1[7];
            *buf = 136316418;
            v72 = "[NSCloudKitMirroringDelegate remoteStoreDidChange:]_block_invoke";
            v73 = 1024;
            v74 = 3221;
            v75 = 2112;
            v76 = v52;
            v77 = 2112;
            v78 = v13;
            v79 = 2112;
            v80 = v10;
            v81 = 2112;
            v82 = v2;
            _os_log_impl(&dword_18565F000, v16, v17, "CoreData+CloudKit: %s(%d): %@ - Ignoring remote change notification because the exporter has already caught up to this transaction: %@ / %@ - %@", buf, 0x3Au);
          }

          objc_autoreleasePoolPop(v14);
          goto LABEL_94;
        }

        v18 = objc_autoreleasePoolPush();
        v40 = __PFCloudKitLoggingGetStream();
        v41 = v40;
        if (__ckLoggingOverride == 17)
        {
          v42 = 17;
        }

        else
        {
          v42 = 2;
        }

        if (__ckLoggingOverride == 16)
        {
          v42 = 16;
        }

        if (__ckLoggingOverride == 1)
        {
          v43 = 1;
        }

        else
        {
          v43 = 2;
        }

        if (!__ckLoggingOverride)
        {
          v43 = 0;
        }

        if (__ckLoggingOverride <= 0xFu)
        {
          v44 = v43;
        }

        else
        {
          v44 = v42;
        }

        if (os_log_type_enabled(v40, v44))
        {
          v45 = a1[7];
          *buf = 136315906;
          v72 = "[NSCloudKitMirroringDelegate remoteStoreDidChange:]_block_invoke";
          v73 = 1024;
          v74 = 3230;
          v75 = 2112;
          v76 = v45;
          v77 = 2112;
          v78 = v2;
          _os_log_impl(&dword_18565F000, v41, v44, "CoreData+CloudKit: %s(%d): %@ - Ignoring remote change notification because it didn't change any entities in the monitored store: %@", buf, 0x26u);
        }
      }

      else
      {
        v18 = objc_autoreleasePoolPush();
        v34 = __PFCloudKitLoggingGetStream();
        v35 = v34;
        if (__ckLoggingOverride == 17)
        {
          v36 = 17;
        }

        else
        {
          v36 = 2;
        }

        if (__ckLoggingOverride == 16)
        {
          v36 = 16;
        }

        if (__ckLoggingOverride == 1)
        {
          v37 = 1;
        }

        else
        {
          v37 = 2;
        }

        if (!__ckLoggingOverride)
        {
          v37 = 0;
        }

        if (__ckLoggingOverride <= 0xFu)
        {
          v38 = v37;
        }

        else
        {
          v38 = v36;
        }

        if (os_log_type_enabled(v34, v38))
        {
          v39 = a1[7];
          *buf = 136315906;
          v72 = "[NSCloudKitMirroringDelegate remoteStoreDidChange:]_block_invoke";
          v73 = 1024;
          v74 = 3233;
          v75 = 2112;
          v76 = v39;
          v77 = 2112;
          v78 = v2;
          _os_log_impl(&dword_18565F000, v35, v38, "CoreData+CloudKit: %s(%d): %@ - Ignoring remote change notification because it didn't change any entities tracked by persistent history: %@", buf, 0x26u);
        }
      }
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v26 = __PFCloudKitLoggingGetStream();
      v27 = v26;
      if (__ckLoggingOverride == 17)
      {
        v28 = 17;
      }

      else
      {
        v28 = 2;
      }

      if (__ckLoggingOverride == 16)
      {
        v28 = 16;
      }

      if (__ckLoggingOverride == 1)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }

      if (!__ckLoggingOverride)
      {
        v29 = 0;
      }

      if (__ckLoggingOverride <= 0xFu)
      {
        v30 = v29;
      }

      else
      {
        v30 = v28;
      }

      if (os_log_type_enabled(v26, v30))
      {
        v31 = a1[7];
        v32 = a1[4];
        if (v32)
        {
          v32 = *(v32 + 48);
        }

        v33 = a1[5];
        *buf = 136316162;
        v72 = "[NSCloudKitMirroringDelegate remoteStoreDidChange:]_block_invoke";
        v73 = 1024;
        v74 = 3236;
        v75 = 2112;
        v76 = v31;
        v77 = 2112;
        v78 = v32;
        v79 = 2112;
        v80 = v33;
        _os_log_impl(&dword_18565F000, v27, v30, "CoreData+CloudKit: %s(%d): %@ - Ignoring remote change notification because it's for a different store: %@ / %@", buf, 0x30u);
      }
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = __PFCloudKitLoggingGetStream();
    v20 = v19;
    if (__ckLoggingOverride == 17)
    {
      v21 = 17;
    }

    else
    {
      v21 = 2;
    }

    if (__ckLoggingOverride == 16)
    {
      v21 = 16;
    }

    if (__ckLoggingOverride == 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    if (!__ckLoggingOverride)
    {
      v22 = 0;
    }

    if (__ckLoggingOverride <= 0xFu)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    if (os_log_type_enabled(v19, v23))
    {
      v24 = a1[7];
      v25 = a1[8];
      *buf = 136315906;
      v72 = "[NSCloudKitMirroringDelegate remoteStoreDidChange:]_block_invoke";
      v73 = 1024;
      v74 = 3240;
      v75 = 2112;
      v76 = v24;
      v77 = 2112;
      v78 = v25;
      _os_log_impl(&dword_18565F000, v20, v23, "CoreData+CloudKit: %s(%d): %@: Ignoring remote change notification because the store has been removed from the coordinator: %@", buf, 0x26u);
    }
  }

  objc_autoreleasePoolPop(v18);
LABEL_95:

  v53 = *MEMORY[0x1E69E9840];
}

void __52__NSCloudKitMirroringDelegate_remoteStoreDidChange___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [NSCKMetadataEntry entryForKey:*(a1 + 32) fromStore:*(a1 + 40) inManagedObjectContext:*(*(a1 + 48) + 8) + 40 error:?];
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v3 = *(*(*(a1 + 48) + 8) + 40);
    v4 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v6 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v7 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v7 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v7))
    {
      v8 = *(*(*(a1 + 48) + 8) + 40);
      v10 = 136315650;
      v11 = "[NSCloudKitMirroringDelegate remoteStoreDidChange:]_block_invoke_3";
      v12 = 1024;
      v13 = 3209;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_18565F000, v6, v7, "CoreData+CloudKit: %s(%d): Unable to read the last history token: %@", &v10, 0x1Cu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 40) = [v2 transformedValue];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)newActivityWithIdentifier:(void *)a3 andVoucher:
{
  if (!a1)
  {
    return 0;
  }

  v5 = [objc_alloc(getCloudKitCKSchedulerActivityClass()) initWithIdentifier:a2 container:*(a1 + 48) priority:2];
  v6 = v5;
  v7 = *(a1 + 8);
  if (v7)
  {
    LOBYTE(v7) = *(v7 + 17);
  }

  [v5 setOverrideRateLimiting:v7 & 1];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([objc_msgSend(a3 "operationConfiguration")] == 9)
  {
    v9 = xpc_string_create(*MEMORY[0x1E69E9D70]);
    v10 = MEMORY[0x1E69E9D68];
  }

  else
  {
    v11 = xpc_string_create(*MEMORY[0x1E69E9D78]);
    [v8 setObject:v11 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", *MEMORY[0x1E69E9D68])}];
    xpc_release(v11);
    v9 = xpc_int64_create(10);
    v10 = MEMORY[0x1E69E9C98];
  }

  [v8 setObject:v9 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", *v10)}];
  xpc_release(v9);
  v12 = xpc_int64_create(0);
  [v8 setObject:v12 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", *MEMORY[0x1E69E9C68])}];
  xpc_release(v12);
  v13 = xpc_string_create([*(a1 + 184) cStringUsingEncoding:4]);
  [v8 setObject:v13 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", *MEMORY[0x1E69E9CA8])}];
  xpc_release(v13);
  [v6 setAdditionalXPCActivityCriteria:v8];

  return v6;
}

void __73__NSCloudKitMirroringDelegate_setupMirroringDelegateFromPushNotification__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(NSCloudKitMirroringDelegateSetupRequestOptions);
  if ([*(*(a1 + 32) + 8) defaultOperationConfiguration])
  {
    -[NSCloudKitMirroringRequestOptions setOperationConfiguration:](v2, "setOperationConfiguration:", [*(*(a1 + 32) + 8) defaultOperationConfiguration]);
  }

  if (v2)
  {
    v2->_fromNotification = 1;
  }

  v3 = [(NSCloudKitMirroringRequest *)[NSCloudKitMirroringDelegateSetupRequest alloc] initWithOptions:v2 completionBlock:0];
  [(NSCloudKitMirroringDelegate *)*(a1 + 32) beginActivitiesForRequest:v3];
  v16 = 0;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 144);
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSCloudKitMirroringRequestManager *)v5 enqueueRequest:v3 error:&v16];
  v7 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v9 = Stream;
  if (v6)
  {
    if (__ckLoggingOverride == 17)
    {
      v10 = 17;
    }

    else
    {
      v10 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v10 = 16;
    }

    if (__ckLoggingOverride)
    {
      v11 = v10;
    }

    else
    {
      v11 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(Stream, v11))
    {
      v12 = *(a1 + 32);
      *buf = 136315906;
      v18 = "[NSCloudKitMirroringDelegate setupMirroringDelegateFromPushNotification]_block_invoke";
      v19 = 1024;
      v20 = 3315;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v3;
      _os_log_impl(&dword_18565F000, v9, v11, "CoreData+CloudKit: %s(%d): %@: Successfully enqueued setup request from push notification: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v7);
    [(NSCloudKitMirroringDelegate *)*(a1 + 32) checkAndExecuteNextRequest];
  }

  else
  {
    if (__ckLoggingOverride == 17)
    {
      v13 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v13 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v13))
    {
      v14 = *(a1 + 32);
      *buf = 136315906;
      v18 = "[NSCloudKitMirroringDelegate setupMirroringDelegateFromPushNotification]_block_invoke";
      v19 = 1024;
      v20 = 3318;
      v21 = 2112;
      v22 = v14;
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&dword_18565F000, v9, v13, "CoreData+CloudKit: %s(%d): %@: Failed to enqueue setup request, this likely means one is already scheduled and this has collided: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __125__NSCloudKitMirroringDelegate_checkAndScheduleImportIfNecessaryFromPush_fromErrorRecovery_fromShareAccept_andStartAfterDate___block_invoke(uint64_t a1)
{
  v2 = [[PFCloudKitStoreMonitor alloc] initForStore:objc_loadWeak((*(a1 + 32) + 112))];
  v3 = v2;
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained(v2 + 4);
  }

  else
  {
    WeakRetained = 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __125__NSCloudKitMirroringDelegate_checkAndScheduleImportIfNecessaryFromPush_fromErrorRecovery_fromShareAccept_andStartAfterDate___block_invoke_2;
  v6[3] = &unk_1E6EC4D68;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v6[5] = v3;
  v7 = *(a1 + 48);
  v8 = *(a1 + 49);
  v6[6] = v5;
  [(PFCloudKitStoreMonitor *)v3 performBlock:v6];
}

void __125__NSCloudKitMirroringDelegate_checkAndScheduleImportIfNecessaryFromPush_fromErrorRecovery_fromShareAccept_andStartAfterDate___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v4 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v5 = 17;
  }

  else
  {
    v5 = 2;
  }

  if (__ckLoggingOverride == 16)
  {
    v5 = 16;
  }

  if (__ckLoggingOverride == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!__ckLoggingOverride)
  {
    v6 = 0;
  }

  if (__ckLoggingOverride <= 0xFu)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (os_log_type_enabled(Stream, v7))
  {
    v8 = *(a1 + 32);
    *buf = 136315650;
    *&buf[4] = "[NSCloudKitMirroringDelegate checkAndScheduleImportIfNecessaryFromPush:fromErrorRecovery:fromShareAccept:andStartAfterDate:]_block_invoke_2";
    *&buf[12] = 1024;
    *&buf[14] = 3342;
    *&buf[18] = 2112;
    *&buf[20] = v8;
    _os_log_impl(&dword_18565F000, v4, v7, "CoreData+CloudKit: %s(%d): %@: Checking to see if an automated import should be scheduled.", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v2);
  v9 = [(PFCloudKitStoreMonitor *)*(a1 + 40) retainedMonitoredStore];
  if (v9)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 1;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    *&buf[24] = __Block_byref_object_copy__41;
    v29 = __Block_byref_object_dispose__41;
    v30 = 0;
    v10 = [(PFCloudKitStoreMonitor *)*(a1 + 40) newBackgroundContextForMonitoredCoordinator];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __125__NSCloudKitMirroringDelegate_checkAndScheduleImportIfNecessaryFromPush_fromErrorRecovery_fromShareAccept_andStartAfterDate___block_invoke_444;
    v21[3] = &unk_1E6EC4D40;
    v11 = *(a1 + 32);
    v22 = *(a1 + 56);
    v23 = *(a1 + 57);
    v21[4] = v11;
    v21[5] = v9;
    v12 = *(a1 + 48);
    v21[6] = v10;
    v21[7] = v12;
    v21[8] = &v24;
    v21[9] = buf;
    [(NSManagedObjectContext *)v10 performBlockAndWait:v21];
    if ((v25[3] & 1) == 0)
    {
      [NSCloudKitMirroringDelegate resetAfterError:*(*&buf[8] + 40) andKeepContainer:?];
    }

    *(*&buf[8] + 40) = 0;
    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = __PFCloudKitLoggingGetStream();
    v15 = v14;
    if (__ckLoggingOverride == 17)
    {
      v16 = 17;
    }

    else
    {
      v16 = 2;
    }

    if (__ckLoggingOverride == 16)
    {
      v16 = 16;
    }

    if (__ckLoggingOverride == 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (!__ckLoggingOverride)
    {
      v17 = 0;
    }

    if (__ckLoggingOverride <= 0xFu)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    if (os_log_type_enabled(v14, v18))
    {
      v19 = *(a1 + 32);
      *buf = 136315650;
      *&buf[4] = "[NSCloudKitMirroringDelegate checkAndScheduleImportIfNecessaryFromPush:fromErrorRecovery:fromShareAccept:andStartAfterDate:]_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = 3477;
      *&buf[18] = 2112;
      *&buf[20] = v19;
      _os_log_impl(&dword_18565F000, v15, v18, "CoreData+CloudKit: %s(%d): %@: Cancelling import check because the store is dead.", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v13);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __125__NSCloudKitMirroringDelegate_checkAndScheduleImportIfNecessaryFromPush_fromErrorRecovery_fromShareAccept_andStartAfterDate___block_invoke_444(uint64_t a1)
{
  v1 = a1;
  v88 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 208) usableVoucherForEventType:1];
  v75[0] = 0;
  v61 = v2;
  if (v2)
  {
    v3 = [objc_msgSend(v2 "operationConfiguration")] > 24;
    if (*(v1 + 80) == 1)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Push-Voucher-%@", objc_msgSend(v61, "label")];
LABEL_16:
      v10 = 1;
      goto LABEL_17;
    }
  }

  else
  {
    v3 = 0;
    if (*(v1 + 80))
    {
      v4 = @"Push";
      goto LABEL_16;
    }
  }

  if (*(v1 + 81))
  {
    v4 = @"RecoverableImportError";
    goto LABEL_16;
  }

  if (*(v1 + 82))
  {
    v4 = @"AcceptShare";
    goto LABEL_16;
  }

  v5 = *(v1 + 32);
  if (v5)
  {
    v6 = *(v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = +[NSCKDatabaseMetadata databaseMetadataForScope:forStore:inContext:error:](NSCKDatabaseMetadata, [v6 databaseScope], *(v1 + 40), *(v1 + 48), v75);
  v8 = v7;
  if (v7)
  {
    if ([(NSCloudKitMirroringDelegate *)*(v1 + 32) _dateExceedsSchedulingThreshold:?])
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Database-LastFetchDate-%@", -[NSManagedObject lastFetchDate](v8, "lastFetchDate")];
      v9 = *(*(v1 + 32) + 8);
      if (v9)
      {
        v3 |= *(v9 + 16);
      }

      goto LABEL_16;
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v38 = [(NSManagedObject *)v8 recordZones];
    v39 = [v38 countByEnumeratingWithState:&v71 objects:v87 count:16];
    if (!v39)
    {
      v10 = 0;
      v4 = 0;
      goto LABEL_17;
    }

    v66 = v1;
    v10 = 0;
    v4 = 0;
    obj = v38;
    v63 = *v72;
LABEL_58:
    v64 = v39;
    v40 = 0;
    while (1)
    {
      if (*v72 != v63)
      {
        objc_enumerationMutation(obj);
      }

      v41 = *(*(&v71 + 1) + 8 * v40);
      v65 = v40;
      if ([v41 needsImport])
      {
        v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Zone-%@", objc_msgSend(v41, "ckRecordZoneName")];
LABEL_65:
        v4 = v42;
        v10 = 1;
        goto LABEL_66;
      }

      if (-[NSCloudKitMirroringDelegate _dateExceedsSchedulingThreshold:](*(v66 + 32), [v41 lastFetchDate]))
      {
        [v41 setNeedsImport:1];
        v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Zone-LastFetchDate-%@-%@", objc_msgSend(v41, "ckRecordZoneName"), objc_msgSend(v41, "lastFetchDate")];
        goto LABEL_65;
      }

      if ([*(*(v66 + 32) + 8) databaseScope] == 1)
      {
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v43 = [v41 queries];
        v44 = [v43 countByEnumeratingWithState:&v67 objects:v86 count:16];
        if (v44)
        {
          break;
        }
      }

LABEL_66:
      ++v40;
      if (v65 + 1 == v64)
      {
        v39 = [obj countByEnumeratingWithState:&v71 objects:v87 count:16];
        if (!v39)
        {
          v1 = v66;
          goto LABEL_17;
        }

        goto LABEL_58;
      }
    }

    v45 = *v68;
LABEL_71:
    v46 = 0;
    while (1)
    {
      if (*v68 != v45)
      {
        objc_enumerationMutation(v43);
      }

      v47 = *(*(&v67 + 1) + 8 * v46);
      if ([v47 queryCursor])
      {
        break;
      }

      if (-[NSCloudKitMirroringDelegate _dateExceedsSchedulingThreshold:](*(v66 + 32), [v47 lastFetchDate]))
      {
        [v41 setNeedsImport:1];
        v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Zone-QueryLastFetchDate-%@-%@-%@", objc_msgSend(v41, "ckRecordZoneName"), objc_msgSend(v47, "recordType"), objc_msgSend(v47, "lastFetchDate")];
        goto LABEL_78;
      }

LABEL_79:
      if (v44 == ++v46)
      {
        v44 = [v43 countByEnumeratingWithState:&v67 objects:v86 count:16];
        if (!v44)
        {
          goto LABEL_66;
        }

        goto LABEL_71;
      }
    }

    [v41 setNeedsImport:1];
    v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Zone-QueryCursor-%@-%@", objc_msgSend(v41, "ckRecordZoneName"), objc_msgSend(v47, "recordType")];
LABEL_78:
    v4 = v48;
    v10 = 1;
    goto LABEL_79;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v77 = v75[0];
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to fetch database metadata during automatic import check: %@\n", buf, 0xCu);
  }

  v33 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v77 = v75[0];
    _os_log_fault_impl(&dword_18565F000, v33, OS_LOG_TYPE_FAULT, "CoreData: Failed to fetch database metadata during automatic import check: %@", buf, 0xCu);
  }

  v10 = 0;
  v4 = 0;
LABEL_17:
  if ([*(v1 + 48) hasChanges] && (objc_msgSend(*(v1 + 48), "save:", v75) & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v13 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v14 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v14 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v14))
    {
      v15 = *(v1 + 32);
      *buf = 136315906;
      v77 = "[NSCloudKitMirroringDelegate checkAndScheduleImportIfNecessaryFromPush:fromErrorRecovery:fromShareAccept:andStartAfterDate:]_block_invoke";
      v78 = 1024;
      v79 = 3417;
      v80 = 2112;
      v81 = v15;
      v82 = 2112;
      v83 = v75[0];
      _os_log_impl(&dword_18565F000, v13, v14, "CoreData+CloudKit: %s(%d): %@: Failed to save metadata changes during import check: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v11);
  }

  if (v10)
  {
    if (*(*(v1 + 32) + 89) == 1)
    {
      if (v4)
      {
        goto LABEL_31;
      }

      v16 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v49 = *(v1 + 32);
        *buf = 138412290;
        v77 = v49;
        _os_log_error_impl(&dword_18565F000, v16, OS_LOG_TYPE_ERROR, "CoreData: fault: Mirroring delegate is scheduling an import but didn't log why: %@\n", buf, 0xCu);
      }

      v17 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v50 = *(v1 + 32);
        *buf = 138412290;
        v77 = v50;
        _os_log_fault_impl(&dword_18565F000, v17, OS_LOG_TYPE_FAULT, "CoreData: Mirroring delegate is scheduling an import but didn't log why: %@", buf, 0xCu);
        if (v3)
        {
LABEL_32:
          v18 = objc_autoreleasePoolPush();
          if (v61)
          {
            v19 = __PFCloudKitLoggingGetStream();
            v20 = v19;
            if (__ckLoggingOverride == 17)
            {
              v21 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v21 = 16 * (__ckLoggingOverride == 16);
            }

            if (!os_log_type_enabled(v19, v21))
            {
              goto LABEL_55;
            }

            v22 = *(v1 + 32);
            *buf = 136316162;
            v77 = "[NSCloudKitMirroringDelegate checkAndScheduleImportIfNecessaryFromPush:fromErrorRecovery:fromShareAccept:andStartAfterDate:]_block_invoke";
            v78 = 1024;
            v79 = 3446;
            v80 = 2112;
            v81 = v22;
            v82 = 2112;
            v83 = v4;
            v84 = 2112;
            v85 = v61;
            v23 = "CoreData+CloudKit: %s(%d): %@: Bypassing dasd for scheduling for voucher: %@\n%@";
            v24 = v20;
            v25 = v21;
            v26 = 48;
          }

          else
          {
            v34 = __PFCloudKitLoggingGetStream();
            v35 = v34;
            if (__ckLoggingOverride == 17)
            {
              v36 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v36 = 16 * (__ckLoggingOverride == 16);
            }

            if (!os_log_type_enabled(v34, v36))
            {
              goto LABEL_55;
            }

            v37 = *(v1 + 32);
            *buf = 136315906;
            v77 = "[NSCloudKitMirroringDelegate checkAndScheduleImportIfNecessaryFromPush:fromErrorRecovery:fromShareAccept:andStartAfterDate:]_block_invoke";
            v78 = 1024;
            v79 = 3448;
            v80 = 2112;
            v81 = v37;
            v82 = 2112;
            v83 = v4;
            v23 = "CoreData+CloudKit: %s(%d): %@: Bypassing dasd for scheduling for HomeKit: %@";
            v24 = v35;
            v25 = v36;
            v26 = 38;
          }

          _os_log_impl(&dword_18565F000, v24, v25, v23, buf, v26);
LABEL_55:
          objc_autoreleasePoolPop(v18);
          -[NSCloudKitMirroringDelegate _scheduleAutomatedImportWithLabel:activity:voucher:completionHandler:](*(v1 + 32), [MEMORY[0x1E696AEC0] stringWithFormat:@"InitialImport-BypassingDasd-%@", v4], 0, v61, 0);
          goto LABEL_96;
        }
      }

      else
      {
LABEL_31:
        if (v3)
        {
          goto LABEL_32;
        }
      }

      v51 = [(NSCloudKitMirroringDelegate *)*(v1 + 32) newActivityWithIdentifier:v61 andVoucher:?];
      v52 = v51;
      if (*(v1 + 56))
      {
        [v51 setEarliestStartDate:?];
      }

      v53 = objc_autoreleasePoolPush();
      v54 = __PFCloudKitLoggingGetStream();
      v55 = v54;
      if (__ckLoggingOverride == 17)
      {
        v56 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v56 = 16 * (__ckLoggingOverride == 16);
      }

      if (os_log_type_enabled(v54, v56))
      {
        v57 = *(v1 + 32);
        *buf = 136316162;
        v77 = "[NSCloudKitMirroringDelegate checkAndScheduleImportIfNecessaryFromPush:fromErrorRecovery:fromShareAccept:andStartAfterDate:]_block_invoke";
        v78 = 1024;
        v79 = 3433;
        v80 = 2112;
        v81 = v57;
        v82 = 2112;
        v83 = v4;
        v84 = 2112;
        v85 = v52;
        _os_log_impl(&dword_18565F000, v55, v56, "CoreData+CloudKit: %s(%d): %@: Scheduling automated import with activity (%@): %@", buf, 0x30u);
      }

      objc_autoreleasePoolPop(v53);
      v58 = *(v1 + 32);
      if (v58)
      {
        v59 = *(v58 + 64);
      }

      else
      {
        v59 = 0;
      }

      [v59 submitActivity:v52];
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = __PFCloudKitLoggingGetStream();
      v29 = v28;
      if (__ckLoggingOverride == 17)
      {
        v30 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v30 = 16 * (__ckLoggingOverride == 16);
      }

      if (os_log_type_enabled(v28, v30))
      {
        v31 = *(v1 + 32);
        *buf = 136315906;
        v77 = "[NSCloudKitMirroringDelegate checkAndScheduleImportIfNecessaryFromPush:fromErrorRecovery:fromShareAccept:andStartAfterDate:]_block_invoke";
        v78 = 1024;
        v79 = 3456;
        v80 = 2112;
        v81 = v31;
        v82 = 2112;
        v83 = v4;
        _os_log_impl(&dword_18565F000, v29, v30, "CoreData+CloudKit: %s(%d): %@: Deferring scheduling an import because not initialized yet: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v27);
    }
  }

LABEL_96:

  v60 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_dateExceedsSchedulingThreshold:(uint64_t)result
{
  v18 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (a2)
    {
      v3 = result;
      v4 = +[NSCloudKitMirroringDelegate isFirstPartyContainerIdentifier:](NSCloudKitMirroringDelegate, "isFirstPartyContainerIdentifier:", [*(result + 8) containerIdentifier]);
      v5 = [*(v3 + 8) databaseScope];
      if ((v5 - 2) >= 2)
      {
        if (v5 != 1)
        {
          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            v14 = [*(v3 + 8) databaseScope];
            v16 = 134217984;
            v17 = v14;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unsupported database scope in date threshold calculation: %ld\n", &v16, 0xCu);
          }

          v11 = _PFLogGetLogStream(17);
          v9 = -86400.0;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            v15 = [*(v3 + 8) databaseScope];
            v16 = 134217984;
            v17 = v15;
            _os_log_fault_impl(&dword_18565F000, v11, OS_LOG_TYPE_FAULT, "CoreData: Unsupported database scope in date threshold calculation: %ld", &v16, 0xCu);
          }

          goto LABEL_17;
        }

        v6 = [objc_msgSend(*(v3 + 48) "containerID")];
        v7 = !v4;
        v8 = -1800.0;
      }

      else
      {
        v6 = [objc_msgSend(*(v3 + 48) "containerID")];
        v7 = !v4;
        v8 = -300.0;
      }

      if (!v7)
      {
        v8 = -86400.0;
      }

      if (v6 == 2)
      {
        v9 = -60.0;
      }

      else
      {
        v9 = v8;
      }

LABEL_17:
      [a2 timeIntervalSinceNow];
      result = v9 > v12;
      goto LABEL_18;
    }

    result = 1;
  }

LABEL_18:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)finishedAutomatedRequestWithResult:(uint64_t)a1
{
  v31 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v6 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v7 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v7 = 16 * (__ckLoggingOverride == 16);
    }

    if (os_log_type_enabled(Stream, v7))
    {
      *buf = 136315906;
      *&buf[4] = "[NSCloudKitMirroringDelegate finishedAutomatedRequestWithResult:]";
      *&buf[12] = 1024;
      *&buf[14] = 3616;
      *&buf[18] = 2112;
      *&buf[20] = [a2 request];
      *&buf[28] = 2112;
      *&buf[30] = a2;
      _os_log_impl(&dword_18565F000, v6, v7, "CoreData+CloudKit: %s(%d): Finished request '%@' with result: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v4);
    if (([a2 success] & 1) == 0)
    {
      v8 = [objc_msgSend(a2 "error")];
      if ([v8 isEqualToString:*MEMORY[0x1E696A250]])
      {
        if ([objc_msgSend(a2 "error")] == 134409)
        {
          v9 = [objc_msgSend(a2 "error")];
          v10 = -[NSCloudKitMirroringDelegate retryAfterInSecondsFromError:]([v9 objectForKey:*MEMORY[0x1E696AA08]]);
          [v10 doubleValue];
          if (v11 <= 0.0)
          {
            v13 = 0;
          }

          else
          {
            v12 = MEMORY[0x1E695DF00];
            [v10 doubleValue];
            v13 = [v12 dateWithTimeIntervalSinceNow:?];
          }

          [a2 request];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = 2;
          }

          else
          {
            [a2 request];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_18;
            }

            v14 = 1;
          }

          [*(a1 + 208) expireVouchersForEventType:v14];
LABEL_18:
          [a2 request];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = *(a1 + 8);
            if (v15)
            {
              v16 = *(v15 + 88);
            }

            else
            {
              v16 = 0;
            }

            Weak = objc_loadWeak((a1 + 112));
            v18 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v16 inTransactionWithLabel:Weak];
            v19 = v18;
            if (v18)
            {
              WeakRetained = objc_loadWeakRetained((v18 + 32));
            }

            else
            {
              WeakRetained = 0;
            }

            v26[0] = MEMORY[0x1E69E9820];
            v26[1] = 3221225472;
            v26[2] = __66__NSCloudKitMirroringDelegate_finishedAutomatedRequestWithResult___block_invoke;
            v26[3] = &unk_1E6EC19D8;
            v26[4] = v19;
            v26[5] = a1;
            v26[6] = v13;
            [(PFCloudKitStoreMonitor *)v19 performBlock:v26];
          }

          else
          {
            [a2 request];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = __125__NSCloudKitMirroringDelegate_checkAndScheduleImportIfNecessaryFromPush_fromErrorRecovery_fromShareAccept_andStartAfterDate___block_invoke;
              *&buf[24] = &unk_1E6EC4D90;
              v29 = 256;
              v30 = 0;
              *&buf[32] = a1;
              v28 = v13;
              [(NSCloudKitMirroringDelegate *)a1 _openTransactionWithLabel:@"CoreData: CloudKit Scheduling" assertionLabel:buf andExecuteWorkBlock:?];
            }

            else
            {
              LogStream = _PFLogGetLogStream(17);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                [a2 request];
                v24 = objc_opt_class();
                *buf = 138412290;
                *&buf[4] = v24;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Can't handle automated requests of type '%@' yet.\n", buf, 0xCu);
              }

              v22 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
              {
                [a2 request];
                v25 = objc_opt_class();
                *buf = 138412290;
                *&buf[4] = v25;
                _os_log_fault_impl(&dword_18565F000, v22, OS_LOG_TYPE_FAULT, "CoreData: Can't handle automated requests of type '%@' yet.", buf, 0xCu);
              }
            }
          }
        }
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __66__NSCloudKitMirroringDelegate_finishedAutomatedRequestWithResult___block_invoke(uint64_t *a1)
{
  v2 = [(PFCloudKitStoreMonitor *)a1[4] retainedMonitoredStore];
  if (v2)
  {
    v3 = v2;
    [(NSCloudKitMirroringDelegate *)a1[5] scheduleExportAndStartAfterDate:?];
    v2 = v3;
  }
}

void __100__NSCloudKitMirroringDelegate__scheduleAutomatedImportWithLabel_activity_voucher_completionHandler___block_invoke(uint64_t *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v6 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v7 = 17;
  }

  else
  {
    v7 = 1;
  }

  if (__ckLoggingOverride == 16)
  {
    v7 = 16;
  }

  if (__ckLoggingOverride)
  {
    v8 = v7;
  }

  else
  {
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  if (os_log_type_enabled(Stream, v8))
  {
    v9 = a1[4];
    v10 = a1[5];
    v13 = 136316162;
    v14 = "[NSCloudKitMirroringDelegate _scheduleAutomatedImportWithLabel:activity:voucher:completionHandler:]_block_invoke";
    v15 = 1024;
    v16 = 3676;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = a2;
    _os_log_impl(&dword_18565F000, v6, v8, "CoreData+CloudKit: %s(%d): %@ - Finished automatic import - %@ - with result: %@", &v13, 0x30u);
  }

  objc_autoreleasePoolPop(v4);
  if (a1[6])
  {
    if (([a2 success] & 1) == 0)
    {
      v11 = [objc_msgSend(a2 "error")];
      if ([v11 isEqualToString:*MEMORY[0x1E696A250]])
      {
        [objc_msgSend(a2 "error")];
      }
    }

    (*(a1[6] + 16))();
  }

  [(NSCloudKitMirroringDelegate *)a1[4] finishedAutomatedRequestWithResult:a2];
  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __100__NSCloudKitMirroringDelegate__scheduleAutomatedExportWithLabel_activity_voucher_completionHandler___block_invoke(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v6 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v7 = 17;
  }

  else
  {
    v7 = 1;
  }

  if (__ckLoggingOverride == 16)
  {
    v7 = 16;
  }

  if (__ckLoggingOverride)
  {
    v8 = v7;
  }

  else
  {
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  if (os_log_type_enabled(Stream, v8))
  {
    v9 = a1[4];
    v10 = a1[5];
    v14 = 136316162;
    v15 = "[NSCloudKitMirroringDelegate _scheduleAutomatedExportWithLabel:activity:voucher:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 3716;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = a2;
    _os_log_impl(&dword_18565F000, v6, v8, "CoreData+CloudKit: %s(%d): %@ - Finished automatic export - %@ - with result: %@", &v14, 0x30u);
  }

  objc_autoreleasePoolPop(v4);
  if (a1[6])
  {
    if (([a2 success] & 1) == 0)
    {
      v11 = [objc_msgSend(a2 "error")];
      if ([v11 isEqualToString:*MEMORY[0x1E696A250]])
      {
        [objc_msgSend(a2 "error")];
      }
    }

    (*(a1[6] + 16))();
  }

  result = [(NSCloudKitMirroringDelegate *)a1[4] finishedAutomatedRequestWithResult:a2];
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void __108__NSCloudKitMirroringDelegate__markZonesNeedingRecoveryFromManateeIdentityLoss_databaseScope_inStore_error___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v4 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v5 = 17;
  }

  else
  {
    v5 = 1;
  }

  if (__ckLoggingOverride == 16)
  {
    v5 = 16;
  }

  if (__ckLoggingOverride)
  {
    v6 = v5;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEFAULT;
  }

  if (os_log_type_enabled(Stream, v6))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    *buf = 136315906;
    v25 = "[NSCloudKitMirroringDelegate _markZonesNeedingRecoveryFromManateeIdentityLoss:databaseScope:inStore:error:]_block_invoke";
    v26 = 1024;
    v27 = 3781;
    v28 = 2112;
    v29 = v7;
    v30 = 2112;
    v31 = v8;
    _os_log_impl(&dword_18565F000, v4, v6, "CoreData+CloudKit: %s(%d): %@: Marking zones %@ needing recovery from Manatee identity loss", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v2);
  v9 = [(PFCloudKitStoreMonitor *)*(a1 + 48) retainedMonitoredStore];
  if (v9)
  {
    v10 = [(PFCloudKitStoreMonitor *)*(a1 + 48) newBackgroundContextForMonitoredCoordinator];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __108__NSCloudKitMirroringDelegate__markZonesNeedingRecoveryFromManateeIdentityLoss_databaseScope_inStore_error___block_invoke_487;
    v21[3] = &unk_1E6EC2E40;
    v23 = *(a1 + 80);
    v11 = *(a1 + 56);
    v12 = *(a1 + 32);
    v21[4] = *(a1 + 40);
    v21[5] = v11;
    v21[6] = v10;
    v21[7] = v12;
    v22 = *(a1 + 64);
    [(NSManagedObjectContext *)v10 performBlockAndWait:v21];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = __PFCloudKitLoggingGetStream();
    v15 = v14;
    if (__ckLoggingOverride == 17)
    {
      v16 = 17;
    }

    else
    {
      v16 = 2;
    }

    if (__ckLoggingOverride == 16)
    {
      v16 = 16;
    }

    if (__ckLoggingOverride == 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (!__ckLoggingOverride)
    {
      v17 = 0;
    }

    if (__ckLoggingOverride <= 0xFu)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    if (os_log_type_enabled(v14, v18))
    {
      v19 = *(a1 + 32);
      *buf = 136315650;
      v25 = "[NSCloudKitMirroringDelegate _markZonesNeedingRecoveryFromManateeIdentityLoss:databaseScope:inStore:error:]_block_invoke";
      v26 = 1024;
      v27 = 3827;
      v28 = 2112;
      v29 = v19;
      _os_log_impl(&dword_18565F000, v15, v18, "CoreData+CloudKit: %s(%d): %@: Cancelling marking zones needing recovery from Manatee identity loss because the store is dead.", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v13);
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __108__NSCloudKitMirroringDelegate__markZonesNeedingRecoveryFromManateeIdentityLoss_databaseScope_inStore_error___block_invoke_487(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v21[0] = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v30 count:16];
  if (v3)
  {
    v4 = *v18;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:*(a1 + 80) inDatabaseWithScope:*(a1 + 40) forStore:*(a1 + 48) inContext:v21 error:?];
        v7 = v6;
        if (!v6)
        {
          if (v21[0])
          {
            *(*(*(a1 + 64) + 8) + 40) = v21[0];
          }

          *(*(*(a1 + 72) + 8) + 24) = 0;
          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v23 = v21[0];
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to fetch zone metadata during marking zones needing recovery from Manatee identity loss: %@\n", buf, 0xCu);
          }

          v9 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v23 = v21[0];
            _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, "CoreData: Failed to fetch zone metadata during marking zones needing recovery from Manatee identity loss: %@", buf, 0xCu);
          }

          goto LABEL_18;
        }

        [(NSManagedObject *)v6 setNeedsRecoveryFromIdentityLoss:1];
        if (([-[NSManagedObject ckOwnerName](v7 "ckOwnerName")] & 1) == 0)
        {
          [(NSManagedObject *)v7 setNeedsNewShareInvitation:1];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v17 objects:v30 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:
  result = [*(a1 + 48) hasChanges];
  if (result)
  {
    result = [*(a1 + 48) save:v21];
    if ((result & 1) == 0)
    {
      v11 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v13 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v14 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v14 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(Stream, v14))
      {
        v15 = *(a1 + 56);
        *buf = 136315906;
        v23 = "[NSCloudKitMirroringDelegate _markZonesNeedingRecoveryFromManateeIdentityLoss:databaseScope:inStore:error:]_block_invoke";
        v24 = 1024;
        v25 = 3812;
        v26 = 2112;
        v27 = v15;
        v28 = 2112;
        v29 = v21[0];
        _os_log_impl(&dword_18565F000, v13, v14, "CoreData+CloudKit: %s(%d): %@: Failed to save metadata while marking zones needing recovery from Manatee identity loss: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v11);
      result = v21[0];
      *(*(*(a1 + 64) + 8) + 40) = result;
      *(*(*(a1 + 72) + 8) + 24) = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void __67__NSCloudKitMirroringDelegate__performSchemaInitializationRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v6 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v7 = 17;
  }

  else
  {
    v7 = 1;
  }

  if (__ckLoggingOverride == 16)
  {
    v7 = 16;
  }

  if (__ckLoggingOverride)
  {
    v8 = v7;
  }

  else
  {
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  if (os_log_type_enabled(Stream, v8))
  {
    v9 = *(a1 + 32);
    *buf = 136315650;
    *&buf[4] = "[NSCloudKitMirroringDelegate _performSchemaInitializationRequest:]_block_invoke";
    *&buf[12] = 1024;
    *&buf[14] = 3848;
    *&buf[18] = 2112;
    *&buf[20] = v9;
    _os_log_impl(&dword_18565F000, v6, v8, "CoreData+CloudKit: %s(%d): Executing schema initialization request: %@", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *(a1 + 40);
  if (*(v10 + 89) == 1)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    *&buf[24] = __Block_byref_object_copy__41;
    v31 = __Block_byref_object_dispose__41;
    v32 = 0;
    v11 = *(v10 + 8);
    v12 = v11;
    if (v11)
    {
      v13 = v11[11];
    }

    else
    {
      v13 = 0;
    }

    Weak = objc_loadWeak((*(a1 + 40) + 112));
    if (a2)
    {
      v15 = *(a2 + 8);
    }

    v16 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v13 inTransactionWithLabel:Weak];
    v17 = v16;
    if (v16)
    {
      WeakRetained = objc_loadWeakRetained((v16 + 32));
    }

    else
    {
      WeakRetained = 0;
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __67__NSCloudKitMirroringDelegate__performSchemaInitializationRequest___block_invoke_497;
    v22[3] = &unk_1E6EC4E08;
    v22[4] = v17;
    v22[5] = v12;
    v24 = &v26;
    v25 = buf;
    v23 = *(a1 + 32);
    [(PFCloudKitStoreMonitor *)v17 performBlock:v22];
    v19 = [NSCloudKitMirroringResult alloc];
    v20 = [(NSCloudKitMirroringResult *)v19 initWithRequest:*(a1 + 32) storeIdentifier:*(*(a1 + 40) + 152) success:*(v27 + 24) madeChanges:*(v27 + 24) error:*(*&buf[8] + 40)];
    [(NSCloudKitMirroringDelegate *)*(a1 + 40) _finishedRequest:v20 withResult:?];

    *(*&buf[8] + 40) = 0;
    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v26, 8);
  }

  else
  {
    [(NSCloudKitMirroringDelegate *)v10 _requestAbortedNotInitialized:?];
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __67__NSCloudKitMirroringDelegate__performSchemaInitializationRequest___block_invoke_497(uint64_t a1)
{
  v72 = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    if ([*(a1 + 40) databaseScope] != 3)
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 56);
      v11 = [*(a1 + 48) schemaInitializationOptions];
      v12 = *(a1 + 72);
      if (v10)
      {
        v13 = v11;
        v43 = *(v12 + 8);
        v54 = 0;
        v55 = &v54;
        v56 = 0x2020000000;
        v57 = 0;
        v48 = 0;
        v49 = &v48;
        v50 = 0x3052000000;
        v51 = __Block_byref_object_copy__41;
        v52 = __Block_byref_object_dispose__41;
        v53 = 0;
        v44 = [[PFCloudKitSchemaGenerator alloc] initWithMirroringOptions:v10[1].super.isa forStoreInMonitor:v9];
        v14 = [(PFCloudKitSchemaGenerator *)v44 newRepresentativeRecords:?];
        if (v14)
        {
          if ((v13 & 4) != 0)
          {
            v15 = objc_autoreleasePoolPush();
            Stream = __PFCloudKitLoggingGetStream();
            v17 = Stream;
            if (__ckLoggingOverride == 17)
            {
              v18 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v18 = OS_LOG_TYPE_ERROR;
            }

            if (os_log_type_enabled(Stream, v18))
            {
              v19 = objc_opt_class();
              v20 = NSStringFromClass(v19);
              *buf = 136316162;
              v63 = "[NSCloudKitMirroringDelegate _createSchemaForStore:withMonitor:options:error:]";
              v64 = 1024;
              v65 = 3917;
              v66 = 2112;
              v67 = v20;
              v68 = 2112;
              v69 = v2;
              v70 = 2112;
              v71 = v14;
              _os_log_impl(&dword_18565F000, v17, v18, "CoreData+CloudKit: %s(%d): %@ generated the following records for the model associated with the store: %@\n%@", buf, 0x30u);
            }

            objc_autoreleasePoolPop(v15);
          }

          if ((v13 & 2) != 0)
          {
            *(v55 + 24) = 1;
          }

          else
          {
            v21 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v14, "count")}];
            v47[0] = MEMORY[0x1E69E9820];
            v47[1] = 3221225472;
            v47[2] = __79__NSCloudKitMirroringDelegate__createSchemaForStore_withMonitor_options_error___block_invoke;
            v47[3] = &unk_1E6EC4E30;
            v47[4] = v21;
            [v14 enumerateObjectsUsingBlock:v47];
            v22 = dispatch_semaphore_create(0);
            v23 = [objc_alloc(getCloudKitCKModifyRecordsOperationClass()) initWithRecordsToSave:v14 recordIDsToDelete:0];
            v46[0] = MEMORY[0x1E69E9820];
            v46[1] = 3221225472;
            v46[2] = __79__NSCloudKitMirroringDelegate__createSchemaForStore_withMonitor_options_error___block_invoke_2;
            v46[3] = &unk_1E6EC3BE8;
            v46[6] = &v54;
            v46[7] = &v48;
            v46[4] = v21;
            v46[5] = v22;
            [v23 setModifyRecordsCompletionBlock:v46];
            [(objc_class *)v10[7].super.isa addOperation:v23];
            v24 = objc_autoreleasePoolPush();
            v25 = __PFCloudKitLoggingGetStream();
            v26 = v25;
            if (__ckLoggingOverride == 17)
            {
              v27 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v27 = 16 * (__ckLoggingOverride == 16);
            }

            if (os_log_type_enabled(v25, v27))
            {
              v28 = [v2 identifier];
              *buf = 136315906;
              v63 = "[NSCloudKitMirroringDelegate _createSchemaForStore:withMonitor:options:error:]";
              v64 = 1024;
              v65 = 3946;
              v66 = 2048;
              v67 = v10;
              v68 = 2112;
              v69 = v28;
              _os_log_impl(&dword_18565F000, v26, v27, "CoreData+CloudKit: %s(%d): Mirroring delegate %p waiting on schema creation records to save for store %@", buf, 0x26u);
            }

            objc_autoreleasePoolPop(v24);
            dispatch_semaphore_wait(v22, 0xFFFFFFFFFFFFFFFFLL);

            if (*(v55 + 24) == 1)
            {
              v29 = [v21 allObjects];
              *(v55 + 24) = 0;
              v30 = [objc_alloc(getCloudKitCKModifyRecordsOperationClass()) initWithRecordsToSave:0 recordIDsToDelete:v29];
              v45[0] = MEMORY[0x1E69E9820];
              v45[1] = 3221225472;
              v45[2] = __79__NSCloudKitMirroringDelegate__createSchemaForStore_withMonitor_options_error___block_invoke_505;
              v45[3] = &unk_1E6EC3BE8;
              v45[6] = &v54;
              v45[7] = &v48;
              v45[4] = v21;
              v45[5] = v22;
              [v30 setModifyRecordsCompletionBlock:v45];

              [(objc_class *)v10[7].super.isa addOperation:v30];
              v31 = objc_autoreleasePoolPush();
              v32 = __PFCloudKitLoggingGetStream();
              v33 = v32;
              if (__ckLoggingOverride == 17)
              {
                v34 = OS_LOG_TYPE_FAULT;
              }

              else
              {
                v34 = 16 * (__ckLoggingOverride == 16);
              }

              if (os_log_type_enabled(v32, v34))
              {
                v35 = [v2 identifier];
                *buf = 136315906;
                v63 = "[NSCloudKitMirroringDelegate _createSchemaForStore:withMonitor:options:error:]";
                v64 = 1024;
                v65 = 3971;
                v66 = 2048;
                v67 = v10;
                v68 = 2112;
                v69 = v35;
                _os_log_impl(&dword_18565F000, v33, v34, "CoreData+CloudKit: %s(%d): Mirroring delegate %p waiting on schema creation records to delete for store %@", buf, 0x26u);
              }

              objc_autoreleasePoolPop(v31);
              dispatch_semaphore_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
            }

            if (v22)
            {
              dispatch_release(v22);
            }
          }
        }

        else
        {
          v36 = v49[5];
        }

        v37 = v49[5];
        if ((v55[3] & 1) == 0)
        {
          v38 = v49[5];
          if (v38)
          {
            *(v43 + 40) = v38;
          }

          else
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v63 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate.m";
              v64 = 1024;
              v65 = 3987;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
            }

            v40 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315394;
              v63 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate.m";
              v64 = 1024;
              v65 = 3987;
              _os_log_fault_impl(&dword_18565F000, v40, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
            }
          }
        }

        v41 = *(v55 + 24);
        _Block_object_dispose(&v48, 8);
        _Block_object_dispose(&v54, 8);
        if (v41)
        {
          *(*(*(a1 + 64) + 8) + 24) = 1;
          goto LABEL_6;
        }

        v12 = *(a1 + 72);
      }

      v42 = *(*(v12 + 8) + 40);
      goto LABEL_6;
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
    v3 = objc_alloc(MEMORY[0x1E696ABC0]);
    v60[0] = *MEMORY[0x1E696A588];
    v61[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request '%@' was skipped because it was configured with databaseScope == CKDatabaseShared.", objc_msgSend(*(a1 + 48), "requestIdentifier")];
    v60[1] = *MEMORY[0x1E696A368];
    v61[1] = [objc_msgSend(v2 "URL")];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:2];
    v5 = [v3 initWithDomain:*MEMORY[0x1E696A250] code:134419 userInfo:v4];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v6 = objc_alloc(MEMORY[0x1E696ABC0]);
    v58 = *MEMORY[0x1E696A588];
    v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request '%@' was cancelled because the store was removed from the coordinator.", objc_msgSend(*(a1 + 48), "requestIdentifier")];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v5 = [v6 initWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v7];
  }

  *(*(*(a1 + 72) + 8) + 40) = v5;
LABEL_6:

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __79__NSCloudKitMirroringDelegate__createSchemaForStore_withMonitor_options_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 recordID];

  return [v2 addObject:v3];
}

intptr_t __79__NSCloudKitMirroringDelegate__createSchemaForStore_withMonitor_options_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(a2, "count")}];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__NSCloudKitMirroringDelegate__createSchemaForStore_withMonitor_options_error___block_invoke_3;
  v9[3] = &unk_1E6EC4E30;
  v9[4] = v7;
  [a2 enumerateObjectsUsingBlock:v9];
  if ([*(a1 + 32) isEqualToSet:v7])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 40) = a4;
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t __79__NSCloudKitMirroringDelegate__createSchemaForStore_withMonitor_options_error___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 recordID];

  return [v2 addObject:v3];
}

intptr_t __79__NSCloudKitMirroringDelegate__createSchemaForStore_withMonitor_options_error___block_invoke_505(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:a3];
  v7 = [*(a1 + 32) isEqualToSet:v6];
  v8 = *(*(a1 + 48) + 8);
  if (v7)
  {
    *(v8 + 24) = 1;
  }

  else
  {
    *(v8 + 24) = 0;
    *(*(*(a1 + 56) + 8) + 40) = a4;
  }

  v9 = *(a1 + 40);

  return dispatch_semaphore_signal(v9);
}

- (void)eventUpdated:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = @"event";
  v9[0] = a3;
  [v6 postNotificationName:@"NSPersistentCloudKitContainerEventChangedNotification" object:self userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v9, &v8, 1)}];
  objc_autoreleasePoolPop(v5);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)publishActivity:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [a3 createDictionaryRepresentation];
  [v6 setObject:v7 forKey:@"activityDictionary"];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  objc_autoreleasePoolPop(v5);
}

void __52__NSCloudKitMirroringDelegate__persistUpdatedShare___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  v3 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v5 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v6 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v6 = 16 * (__ckLoggingOverride == 16);
  }

  if (os_log_type_enabled(Stream, v6))
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    *buf = 136316162;
    v16 = "[NSCloudKitMirroringDelegate _persistUpdatedShare:]_block_invoke";
    v17 = 1024;
    v18 = 4072;
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v2;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_18565F000, v5, v6, "CoreData+CloudKit: %s(%d): %@: Persisting share by the system UI: %@ / %@", buf, 0x30u);
  }

  objc_autoreleasePoolPop(v3);
  if (v2)
  {
    v9 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52__NSCloudKitMirroringDelegate__persistUpdatedShare___block_invoke_513;
    v11[3] = &unk_1E6EC2920;
    v12 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
    v13 = v2;
    v14 = v9;
    [(NSManagedObjectContext *)v9 performBlockAndWait:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __52__NSCloudKitMirroringDelegate__persistUpdatedShare___block_invoke_513(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v2 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:createIfMissing:error:](NSCKRecordZoneMetadata, [objc_msgSend(*(a1 + 32) "recordID")], objc_msgSend(*(*(a1 + 40) + 8), "databaseScope"), *(a1 + 48), *(a1 + 56), 0, &v21);
  if (v2)
  {
    v3 = *(*(a1 + 40) + 8);
    if (v3 && (v4 = v2, (v5 = *(v3 + 136)) != 0) && (v6 = [(PFCloudKitArchivingUtilities *)v5 encodeRecord:&v21 error:?]) != 0)
    {
      v7 = v6;
      [(NSManagedObject *)v4 updateEncodedShareWithData:v6];
      if ([*(a1 + 56) save:&v21])
      {
LABEL_25:

        goto LABEL_26;
      }

      v8 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v10 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v11 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v11 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(Stream, v11))
      {
        *buf = 136315650;
        v23 = "[NSCloudKitMirroringDelegate _persistUpdatedShare:]_block_invoke";
        v24 = 1024;
        v25 = 4089;
        v26 = 2112;
        v27 = v21;
        _os_log_impl(&dword_18565F000, v10, v11, "CoreData+CloudKit: %s(%d): Failed to save changes after share update: %@", buf, 0x1Cu);
      }
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v17 = __PFCloudKitLoggingGetStream();
      v18 = v17;
      if (__ckLoggingOverride == 17)
      {
        v19 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v19 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(v17, v19))
      {
        *buf = 136315650;
        v23 = "[NSCloudKitMirroringDelegate _persistUpdatedShare:]_block_invoke";
        v24 = 1024;
        v25 = 4092;
        v26 = 2112;
        v27 = v21;
        _os_log_impl(&dword_18565F000, v18, v19, "CoreData+CloudKit: %s(%d): Failed to encode share data: %@", buf, 0x1Cu);
      }

      v7 = 0;
    }

    objc_autoreleasePoolPop(v8);
    goto LABEL_25;
  }

  if (v21)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = __PFCloudKitLoggingGetStream();
    v14 = v13;
    if (__ckLoggingOverride == 17)
    {
      v15 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v15 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(v13, v15))
    {
      v16 = [*(a1 + 32) recordID];
      *buf = 136315906;
      v23 = "[NSCloudKitMirroringDelegate _persistUpdatedShare:]_block_invoke";
      v24 = 1024;
      v25 = 4096;
      v26 = 2112;
      v27 = v16;
      v28 = 2112;
      v29 = v21;
      _os_log_impl(&dword_18565F000, v14, v15, "CoreData+CloudKit: %s(%d): Failed to fetch zone metadata for %@: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v12);
  }

LABEL_26:
  v20 = *MEMORY[0x1E69E9840];
}

void __56__NSCloudKitMirroringDelegate__deleteShareWithRecordID___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  v3 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v5 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v6 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v6 = 16 * (__ckLoggingOverride == 16);
  }

  if (os_log_type_enabled(Stream, v6))
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    *buf = 136316162;
    v32 = "[NSCloudKitMirroringDelegate _deleteShareWithRecordID:]_block_invoke";
    v33 = 1024;
    v34 = 4112;
    v35 = 2112;
    v36 = v7;
    v37 = 2112;
    v38 = v2;
    v39 = 2112;
    v40 = v8;
    _os_log_impl(&dword_18565F000, v5, v6, "CoreData+CloudKit: %s(%d): %@: Deleting metadata for share deleted by the system UI: %@ / %@", buf, 0x30u);
  }

  objc_autoreleasePoolPop(v3);
  if (v2)
  {
    if ([*(*(a1 + 40) + 8) databaseScope] == 3)
    {
      v9 = [NSCloudKitMirroringResetZoneRequest alloc];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __56__NSCloudKitMirroringDelegate__deleteShareWithRecordID___block_invoke_514;
      v28[3] = &unk_1E6EC4E58;
      objc_copyWeak(&v29, (a1 + 56));
      v10 = [(NSCloudKitMirroringResetZoneRequest *)v9 initWithOptions:0 completionBlock:v28];
      v30 = [*(a1 + 48) zoneID];
      -[NSCloudKitMirroringResetZoneRequest setRecordZoneIDsToReset:](v10, [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1]);
      v27 = 0;
      if (![(NSCloudKitMirroringDelegate *)*(a1 + 40) executeMirroringRequest:v10 error:&v27])
      {
        v11 = objc_autoreleasePoolPush();
        v12 = __PFCloudKitLoggingGetStream();
        v13 = v12;
        if (__ckLoggingOverride == 17)
        {
          v14 = OS_LOG_TYPE_FAULT;
        }

        else
        {
          v14 = OS_LOG_TYPE_ERROR;
        }

        if (os_log_type_enabled(v12, v14))
        {
          v15 = *(a1 + 40);
          v16 = *(a1 + 48);
          *buf = 136316162;
          v32 = "[NSCloudKitMirroringDelegate _deleteShareWithRecordID:]_block_invoke_2";
          v33 = 1024;
          v34 = 4132;
          v35 = 2112;
          v36 = v15;
          v37 = 2112;
          v38 = v16;
          v39 = 2112;
          v40 = v27;
          _os_log_impl(&dword_18565F000, v13, v14, "CoreData+CloudKit: %s(%d): %@: Failed to execute mirroring request for deleted share: %@\n%@", buf, 0x30u);
        }

        objc_autoreleasePoolPop(v11);
      }

      objc_destroyWeak(&v29);
    }

    else if ([*(*(a1 + 40) + 8) databaseScope] == 2)
    {
      v17 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __56__NSCloudKitMirroringDelegate__deleteShareWithRecordID___block_invoke_516;
      v23[3] = &unk_1E6EC2920;
      v24 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
      v25 = v2;
      v26 = v17;
      [(NSManagedObjectContext *)v17 performBlockAndWait:v23];
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 40);
        *buf = 138412290;
        v32 = v21;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Called about a share delete for the public database? %@\n", buf, 0xCu);
      }

      v19 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        v22 = *(a1 + 40);
        *buf = 138412290;
        v32 = v22;
        _os_log_fault_impl(&dword_18565F000, v19, OS_LOG_TYPE_FAULT, "CoreData: Called about a share delete for the public database? %@", buf, 0xCu);
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __56__NSCloudKitMirroringDelegate__deleteShareWithRecordID___block_invoke_514(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
}

void __56__NSCloudKitMirroringDelegate__deleteShareWithRecordID___block_invoke_516(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v2 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:createIfMissing:error:](NSCKRecordZoneMetadata, [*(a1 + 32) zoneID], objc_msgSend(*(*(a1 + 40) + 8), "databaseScope"), *(a1 + 48), *(a1 + 56), 0, &v16);
  if (v2)
  {
    [(NSManagedObject *)v2 destroyEncodedShareData];
    if (([*(a1 + 56) save:&v16] & 1) == 0)
    {
      v3 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v5 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v6 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v6 = OS_LOG_TYPE_ERROR;
      }

      if (!os_log_type_enabled(Stream, v6))
      {
        goto LABEL_15;
      }

      *buf = 136315650;
      v18 = "[NSCloudKitMirroringDelegate _deleteShareWithRecordID:]_block_invoke";
      v19 = 1024;
      v20 = 4149;
      v21 = 2112;
      v22 = v16;
      v7 = "CoreData+CloudKit: %s(%d): Failed to save changes after share delete: %@";
      v8 = v6;
      v9 = v5;
      v10 = 28;
LABEL_14:
      _os_log_impl(&dword_18565F000, v9, v8, v7, buf, v10);
LABEL_15:
      objc_autoreleasePoolPop(v3);
    }
  }

  else if (v16)
  {
    v3 = objc_autoreleasePoolPush();
    v11 = __PFCloudKitLoggingGetStream();
    v12 = v11;
    if (__ckLoggingOverride == 17)
    {
      v13 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v13 = OS_LOG_TYPE_ERROR;
    }

    if (!os_log_type_enabled(v11, v13))
    {
      goto LABEL_15;
    }

    v14 = *(a1 + 40);
    *buf = 136315906;
    v18 = "[NSCloudKitMirroringDelegate _deleteShareWithRecordID:]_block_invoke";
    v19 = 1024;
    v20 = 4152;
    v21 = 2112;
    v22 = v14;
    v23 = 2112;
    v24 = v16;
    v7 = "CoreData+CloudKit: %s(%d): %@: Failed to respond to share record delete due to error: %@";
    v8 = v13;
    v9 = v12;
    v10 = 38;
    goto LABEL_14;
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)addActivityVoucher:(id)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = [v5 stringWithFormat:@"CoreData: %@ Apply", NSStringFromClass(v6)];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__NSCloudKitMirroringDelegate_addActivityVoucher___block_invoke;
  v8[3] = &unk_1E6EC4B10;
  v8[4] = self;
  v8[5] = a3;
  [(NSCloudKitMirroringDelegate *)self _openTransactionWithLabel:v7 assertionLabel:v8 andExecuteWorkBlock:?];
}

void __50__NSCloudKitMirroringDelegate_addActivityVoucher___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 208) addVoucher:*(a1 + 40)];
  if ([objc_msgSend(*(a1 + 40) "operationConfiguration")] >= 25)
  {
    v2 = [*(a1 + 40) eventType];
    if (v2 == 2)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);

      [(NSCloudKitMirroringDelegate *)v5 _scheduleAutomatedExportWithLabel:0 activity:v6 voucher:0 completionHandler:?];
    }

    else if (v2 == 1)
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);

      [(NSCloudKitMirroringDelegate *)v3 _scheduleAutomatedImportWithLabel:0 activity:v4 voucher:0 completionHandler:?];
    }
  }
}

- (void)expireActivityVoucher:(id)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = [v5 stringWithFormat:@"CoreData: %@ Expire", NSStringFromClass(v6)];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__NSCloudKitMirroringDelegate_expireActivityVoucher___block_invoke;
  v8[3] = &unk_1E6EC4B10;
  v8[4] = self;
  v8[5] = a3;
  [(NSCloudKitMirroringDelegate *)self _openTransactionWithLabel:v7 assertionLabel:v8 andExecuteWorkBlock:?];
}

+ (id)stringForResetReason:(unint64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3 - 1 >= 7)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v8 = 134217984;
      v9 = a3;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Can't generate string for unknown reset sync reason: %lu\n", &v8, 0xCu);
    }

    v6 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v8 = 134217984;
      v9 = a3;
      _os_log_fault_impl(&dword_18565F000, v6, OS_LOG_TYPE_FAULT, "CoreData: Can't generate string for unknown reset sync reason: %lu", &v8, 0xCu);
    }

    result = 0;
  }

  else
  {
    result = off_1E6EC4F20[a3 - 1];
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_disableAutomaticExports
{
  if ([(PFCKAccountMonitor *)[(NSCloudKitMirroringDelegate *)self accountMonitor] currentUserRecordID])
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    v3 = [MEMORY[0x1E696AD88] defaultCenter];

    [v3 removeObserver:self name:@"com.apple.coredata.NSPersistentStoreRemoteChangeNotification.remotenotification" object:0];
  }
}

- (void)_enableAutomaticExports
{
  if ([(PFCKAccountMonitor *)[(NSCloudKitMirroringDelegate *)self accountMonitor] currentUserRecordID])
  {
    WeakRetained = objc_loadWeakRetained(&self->_observedCoordinator);
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    [(NSCloudKitMirroringDelegate *)self scheduleExportAndStartAfterDate:?];
  }
}

- (void)applicationStateMonitorEnteredBackground:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72__NSCloudKitMirroringDelegate_applicationStateMonitorEnteredBackground___block_invoke;
  v3[3] = &unk_1E6EC4D18;
  v3[4] = self;
  [(NSCloudKitMirroringDelegate *)self _openTransactionWithLabel:@"CoreData: CloudKit Scheduling" assertionLabel:v3 andExecuteWorkBlock:?];
}

void __72__NSCloudKitMirroringDelegate_applicationStateMonitorEnteredBackground___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 120));
  v5 = *(a1 + 32);
  if (v5 && (v6 = *(v5 + 8)) != 0)
  {
    v7 = *(v6 + 88);
  }

  else
  {
    v7 = 0;
  }

  Weak = objc_loadWeak((v5 + 112));
  if (a2)
  {
    v9 = *(a2 + 8);
  }

  v10 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v7 inTransactionWithLabel:Weak];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__NSCloudKitMirroringDelegate_applicationStateMonitorEnteredBackground___block_invoke_2;
  v12[3] = &unk_1E6EC1600;
  v11 = *(a1 + 32);
  v12[4] = v10;
  v12[5] = v11;
  [(PFCloudKitStoreMonitor *)v10 performBlock:v12];
}

void __72__NSCloudKitMirroringDelegate_applicationStateMonitorEnteredBackground___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    [(NSCloudKitMirroringDelegate *)*(a1 + 40) _scheduleAutomatedExportWithLabel:0 activity:0 voucher:0 completionHandler:?];
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v5 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v6 = 17;
    }

    else
    {
      v6 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v6 = 16;
    }

    if (__ckLoggingOverride)
    {
      v7 = v6;
    }

    else
    {
      v7 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(Stream, v7))
    {
      v9 = 136315394;
      v10 = "[NSCloudKitMirroringDelegate applicationStateMonitorEnteredBackground:]_block_invoke_2";
      v11 = 1024;
      v12 = 4322;
      _os_log_impl(&dword_18565F000, v5, v7, "CoreData+CloudKit: %s(%d): Ignoring application deactivation notification because the store is dead.", &v9, 0x12u);
    }

    objc_autoreleasePoolPop(v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)applicationStateMonitorEnteredForeground:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72__NSCloudKitMirroringDelegate_applicationStateMonitorEnteredForeground___block_invoke;
  v3[3] = &unk_1E6EC4D18;
  v3[4] = self;
  [(NSCloudKitMirroringDelegate *)self _openTransactionWithLabel:@"CoreData: CloudKit Scheduling" assertionLabel:v3 andExecuteWorkBlock:?];
}

void __72__NSCloudKitMirroringDelegate_applicationStateMonitorEnteredForeground___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 120));
  v5 = *(a1 + 32);
  if (v5 && (v6 = *(v5 + 8)) != 0)
  {
    v7 = *(v6 + 88);
  }

  else
  {
    v7 = 0;
  }

  Weak = objc_loadWeak((v5 + 112));
  if (a2)
  {
    v9 = *(a2 + 8);
  }

  v10 = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:v7 inTransactionWithLabel:Weak];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__NSCloudKitMirroringDelegate_applicationStateMonitorEnteredForeground___block_invoke_2;
  v12[3] = &unk_1E6EC1600;
  v11 = *(a1 + 32);
  v12[4] = v10;
  v12[5] = v11;
  [(PFCloudKitStoreMonitor *)v10 performBlock:v12];
}

void __72__NSCloudKitMirroringDelegate_applicationStateMonitorEnteredForeground___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    [(NSCloudKitMirroringDelegate *)*(a1 + 40) _scheduleAutomatedExportWithLabel:0 activity:0 voucher:0 completionHandler:?];
    [(NSCloudKitMirroringDelegate *)*(a1 + 40) _scheduleAutomatedImportWithLabel:0 activity:0 voucher:0 completionHandler:?];
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v5 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v6 = 17;
    }

    else
    {
      v6 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v6 = 16;
    }

    if (__ckLoggingOverride)
    {
      v7 = v6;
    }

    else
    {
      v7 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(Stream, v7))
    {
      v9 = 136315394;
      v10 = "[NSCloudKitMirroringDelegate applicationStateMonitorEnteredForeground:]_block_invoke_2";
      v11 = 1024;
      v12 = 4350;
      _os_log_impl(&dword_18565F000, v5, v7, "CoreData+CloudKit: %s(%d): Ignoring application activation notification because the store is dead.", &v9, 0x12u);
    }

    objc_autoreleasePoolPop(v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)applicationStateMonitorExpiredBackgroundActivityTimeout:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v6 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v7 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v7 = 16 * (__ckLoggingOverride == 16);
  }

  if (os_log_type_enabled(Stream, v7))
  {
    requestManager = self->_requestManager;
    if (requestManager)
    {
      requestManager = requestManager->_activeRequest;
    }

    v12 = 136315906;
    v13 = "[NSCloudKitMirroringDelegate applicationStateMonitorExpiredBackgroundActivityTimeout:]";
    v14 = 1024;
    v15 = 4360;
    v16 = 2112;
    v17 = self;
    v18 = 2112;
    v19 = requestManager;
    _os_log_impl(&dword_18565F000, v6, v7, "CoreData+CloudKit: %s(%d): %@: Deferring active request due to background timeout: %@", &v12, 0x26u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = self->_requestManager;
  if (v9)
  {
    activeRequest = v9->_activeRequest;
    if (activeRequest)
    {
      activeRequest->_deferredByBackgroundTimeout = 1;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (unsigned)qosClassForAccountMonitor:(id)a3
{
  v3 = [(NSCloudKitMirroringActivityVoucherManager *)self->_voucherManager usableVoucherForEventType:0];
  if (v3)
  {
    v4 = [objc_msgSend(v3 "operationConfiguration")];

    LODWORD(v3) = [NSPersistentCloudKitContainerActivityVoucher qosClassForQualityOfService:v4];
  }

  return v3;
}

+ (void)printMetadataForStoreAtURL:(id)a3 withConfiguration:(id)a4 operateOnACopy:(BOOL)a5
{
  v5 = a5;
  v52[1] = *MEMORY[0x1E69E9840];
  v39 = 0;
  v44 = @"NSReadOnlyPersistentStoreOption";
  v45 = MEMORY[0x1E695E118];
  v8 = +[NSPersistentStore cachedModelForPersistentStoreWithURL:options:error:](NSPersistentStore, "cachedModelForPersistentStoreWithURL:options:error:", a3, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1], &v39);
  if (v8)
  {
    v9 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v8];
    objc_opt_self();
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v52[0] = 0;
    v50 = @"NSReadOnlyPersistentStoreOption";
    v51 = MEMORY[0x1E695E118];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v10 = [NSPersistentStoreCoordinator addPersistentStoreWithType:v9 configuration:"addPersistentStoreWithType:configuration:URL:options:error:" URL:? options:? error:?];
    if (v10)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __122__NSCloudKitMirroringDelegate___CLI__checkForCloudKitTablesInStoreAtURL_withPersistentStoreCoordinator_withConfiguration___block_invoke;
      v47 = &unk_1E6EC3778;
      v48 = &v40;
      v11 = [[NSSQLBlockRequestContext alloc] initWithBlock:buf context:0 sqlCore:v10];
      [(NSSQLCore *)v10 dispatchRequest:v11 withRetries:0];
      v12 = MEMORY[0x1E69E9848];
      if (v11)
      {
        exception = v11->super._exception;
        if (exception || (exception = v11->super._error) != 0)
        {
          fputs([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"Attepmting to check for CloudKit tables failed: %@\n%@", a3, exception), "UTF8String"], *MEMORY[0x1E69E9848]);
        }
      }

      if ([(NSPersistentStoreCoordinator *)v9 removePersistentStore:v10 error:v52])
      {
LABEL_13:
        v16 = *(v41 + 24);
        _Block_object_dispose(&v40, 8);
        if (v16 != 1)
        {
          v21 = *MEMORY[0x1E69E9858];
          v22 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"This store has never been used with CloudKit (use cdutil dumpmetadata [storePath] to show store metadata): %@", a3), "UTF8String"];
LABEL_36:
          fputs(v22, v21);
LABEL_37:

          goto LABEL_38;
        }

        v17 = a3;
        if (!v5)
        {
          goto LABEL_22;
        }

        objc_opt_self();
        v17 = [MEMORY[0x1E695DFF8] fileURLWithPath:{-[NSString stringByAppendingPathComponent:](-[NSString stringByAppendingPathComponent:](-[NSString stringByAppendingPathComponent:](NSTemporaryDirectory(), "stringByAppendingPathComponent:", @"cdutil", "stringByAppendingPathComponent:", objc_msgSend(objc_msgSend(MEMORY[0x1E696AFB0], "UUID"), "UUIDString")), "stringByAppendingPathComponent:", objc_msgSend(a3, "lastPathComponent"))}];
        v40 = 0;
        if (+[NSCloudKitMirroringDelegate checkAndCreateDirectoryAtURL:wipeIfExists:error:](NSCloudKitMirroringDelegate, "checkAndCreateDirectoryAtURL:wipeIfExists:error:", [v17 URLByDeletingLastPathComponent], 1, &v40))
        {
          v51 = @"NSReadOnlyPersistentStoreOption";
          v52[0] = MEMORY[0x1E695E118];
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
          v49 = @"NSReadOnlyPersistentStoreOption";
          v50 = MEMORY[0x1E695E118];
          if (-[NSPersistentStoreCoordinator replacePersistentStoreAtURL:destinationOptions:withPersistentStoreFromURL:sourceOptions:storeType:error:](v9, "replacePersistentStoreAtURL:destinationOptions:withPersistentStoreFromURL:sourceOptions:storeType:error:", v17, v18, a3, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1], @"SQLite", &v40))
          {
            goto LABEL_22;
          }

          v19 = *MEMORY[0x1E69E9848];
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to move store to a temporary location: %@\n%@", v17, v40];
        }

        else
        {
          v19 = *MEMORY[0x1E69E9848];
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create a temporary directory for working on the store.\n%@", v40];
        }

        fputs([v20 UTF8String], v19);
        if (!v40)
        {
          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate+CLI.m";
            *&buf[12] = 1024;
            *&buf[14] = 306;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
          }

          v34 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315394;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate+CLI.m";
            *&buf[12] = 1024;
            *&buf[14] = 306;
            _os_log_fault_impl(&dword_18565F000, v34, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
          }

LABEL_35:
          v21 = *MEMORY[0x1E69E9848];
          v22 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to create a copy of the store at url: %@\n%@", a3, v39), "UTF8String"];
          goto LABEL_36;
        }

        v17 = 0;
        v39 = v40;
LABEL_22:
        if (v17)
        {
          v23 = [[NSCloudKitMirroringDelegateOptions alloc] initWithContainerIdentifier:@"cdutil-stub-container"];
          v24 = v23;
          if (v23)
          {
            v23->_skipCloudKitSetup = 1;
          }

          v25 = [[NSCloudKitMirroringDelegate alloc] initWithOptions:v23];

          v26 = [[NSPersistentStoreDescription alloc] initWithURL:v17];
          [(NSPersistentStoreDescription *)v26 setType:@"SQLite"];
          [(NSPersistentStoreDescription *)v26 setConfiguration:a4];
          [(NSPersistentStoreDescription *)v26 setShouldMigrateStoreAutomatically:1];
          [(NSPersistentStoreDescription *)v26 setShouldInferMappingModelAutomatically:1];
          [(NSPersistentStoreDescription *)v26 setMirroringDelegate:v25];
          [(NSPersistentStoreDescription *)v26 setOption:MEMORY[0x1E695E118] forKey:@"NSPersistentHistoryTrackingKey"];
          [(NSPersistentStoreDescription *)v26 setOption:MEMORY[0x1E695E118] forKey:@"NSCloudKitMirroringDelegateReadOnlyOptionKey"];
          v27 = dispatch_semaphore_create(0);
          v28 = [MEMORY[0x1E696AD88] defaultCenter];
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __98__NSCloudKitMirroringDelegate___CLI__printMetadataForStoreAtURL_withConfiguration_operateOnACopy___block_invoke;
          v38[3] = &unk_1E6EC3590;
          v38[4] = v27;
          v29 = [v28 addObserverForName:@"NSPersistentCloudKitContainerEventChangedNotification" object:v25 queue:0 usingBlock:v38];
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          LOBYTE(v47) = 0;
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = __98__NSCloudKitMirroringDelegate___CLI__printMetadataForStoreAtURL_withConfiguration_operateOnACopy___block_invoke_8;
          v37[3] = &unk_1E6EC5028;
          v37[5] = v27;
          v37[6] = buf;
          v37[4] = v17;
          [(NSPersistentStoreCoordinator *)v9 addPersistentStoreWithDescription:v26 completionHandler:v37];
          v30 = dispatch_time(0, 10000000000);
          if (dispatch_semaphore_wait(v27, v30))
          {
            fputs([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"Timed out waiting for the mirroring delegate to finish setting up. This is a bug. Please re-run and attach a sample of cdutil if you can.", "UTF8String"], *MEMORY[0x1E69E9848]);
            v31 = 0;
          }

          else
          {
            v31 = *(*&buf[8] + 24);
          }

          [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
          dispatch_release(v27);
          if (v31)
          {
            v32 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
            [(NSManagedObjectContext *)v32 setPersistentStoreCoordinator:v9];
            [(NSManagedObjectContext *)v32 _setAllowAncillaryEntities:1];
            v36[0] = MEMORY[0x1E69E9820];
            v36[1] = 3221225472;
            v36[2] = __98__NSCloudKitMirroringDelegate___CLI__printMetadataForStoreAtURL_withConfiguration_operateOnACopy___block_invoke_2;
            v36[3] = &unk_1E6EC16F0;
            v36[4] = v32;
            [(NSManagedObjectContext *)v32 performBlockAndWait:v36];
          }

          _Block_object_dispose(buf, 8);
          goto LABEL_37;
        }

        goto LABEL_35;
      }

      v14 = *v12;
      v15 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to tear down read-only store: %@\n%@", a3, v52[0]), "UTF8String"];
    }

    else
    {
      v14 = *MEMORY[0x1E69E9848];
      v15 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to open store: %@\n%@", a3, v52[0]), "UTF8String"];
    }

    fputs(v15, v14);
    goto LABEL_13;
  }

  fputs([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to load model from store: %@\n%@", a3, v39), "UTF8String"], *MEMORY[0x1E69E9848]);
LABEL_38:
  v35 = *MEMORY[0x1E69E9840];
}

void __98__NSCloudKitMirroringDelegate___CLI__printMetadataForStoreAtURL_withConfiguration_operateOnACopy___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(a2 "userInfo")];
  if (v4)
  {
    v5 = v4;
    if (![v4 type] && objc_msgSend(v5, "endDate"))
    {
      if ([v5 succeeded])
      {
        if (![v5 error])
        {
          goto LABEL_17;
        }

        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v13) = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Error was non-nil, but expected nil\n", &v13, 2u);
        }

        v7 = _PFLogGetLogStream(17);
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_17;
        }

        LOWORD(v13) = 0;
        v8 = "CoreData: Error was non-nil, but expected nil";
      }

      else
      {
        v11 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v13) = 0;
          _os_log_error_impl(&dword_18565F000, v11, OS_LOG_TYPE_ERROR, "CoreData: fault: Success was NO but expected YES\n", &v13, 2u);
        }

        v7 = _PFLogGetLogStream(17);
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_17;
        }

        LOWORD(v13) = 0;
        v8 = "CoreData: Success was NO but expected YES";
      }

      _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, v8, &v13, 2u);
LABEL_17:
      dispatch_semaphore_signal(*(a1 + 32));
    }
  }

  else
  {
    v9 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = a2;
      _os_log_error_impl(&dword_18565F000, v9, OS_LOG_TYPE_ERROR, "CoreData: fault: Missing event %@\n", &v13, 0xCu);
    }

    v10 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v13 = 138412290;
      v14 = a2;
      _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Missing event %@", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

intptr_t __98__NSCloudKitMirroringDelegate___CLI__printMetadataForStoreAtURL_withConfiguration_operateOnACopy___block_invoke_8(intptr_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (a3)
  {
    fputs([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load persistent store at url: %@\n%@", *(result + 32), a3), "UTF8String"], *MEMORY[0x1E69E9848]);
    *(*(*(v3 + 48) + 8) + 24) = 0;
    v4 = *(v3 + 40);

    return dispatch_semaphore_signal(v4);
  }

  else
  {
    *(*(*(result + 48) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __98__NSCloudKitMirroringDelegate___CLI__printMetadataForStoreAtURL_withConfiguration_operateOnACopy___block_invoke_2(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v49 = 0;
  v1 = [*(a1 + 32) executeFetchRequest:+[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest error:{"fetchRequestWithEntityName:", +[NSCKMetadataEntry entityPath](NSCKMetadataEntry, "entityPath")), &v49}];
  if (v1)
  {
    v2 = v1;
    if ([v1 count])
    {
      fputs([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"CloudKit Metadata:\n", "UTF8String"], *MEMORY[0x1E69E9858]);
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      obj = [v2 sortedArrayUsingComparator:&__block_literal_global_30];
      v3 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = *v46;
        do
        {
          for (i = 0; i != v4; ++i)
          {
            if (*v46 != v5)
            {
              objc_enumerationMutation(obj);
            }

            v7 = *(*(&v45 + 1) + 8 * i);
            v8 = [(NSCKMetadataEntry *)v7 describeValue];
            if ([(__CFString *)v8 containsString:@"\n"])
            {
              v8 = [@"\n\t\t" stringByAppendingString:{-[__CFString stringByReplacingOccurrencesOfString:withString:](v8, "stringByReplacingOccurrencesOfString:withString:", @"\n", @"\n\t\t"}];
            }

            fputs([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"\t%@: %@\n", -[__CFString key](v7, "key"), v8), "UTF8String"], *MEMORY[0x1E69E9858]);
          }

          v4 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
        }

        while (v4);
      }
    }
  }

  else
  {
    fputs([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to fetch metadata entries:\n%@", v49), "UTF8String"], *MEMORY[0x1E69E9848]);
  }

  v9 = [*(a1 + 32) executeFetchRequest:+[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest error:{"fetchRequestWithEntityName:", +[NSCKDatabaseMetadata entityPath](NSCKDatabaseMetadata, "entityPath")), &v49}];
  if (v9)
  {
    v29 = v9;
    result = [v9 count];
    if (result)
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      result = [v29 countByEnumeratingWithState:&v41 objects:v51 count:16];
      v31 = result;
      if (result)
      {
        v30 = *v42;
        do
        {
          v11 = 0;
          do
          {
            if (*v42 != v30)
            {
              objc_enumerationMutation(v29);
            }

            v32 = v11;
            v12 = *(*(&v41 + 1) + 8 * v11);
            v13 = *MEMORY[0x1E69E9858];
            v14 = MEMORY[0x1E696AEC0];
            v15 = [v12 databaseName];
            v16 = [v12 databaseScope];
            if ([v12 hasSubscription])
            {
              v17 = @"YES";
            }

            else
            {
              v17 = @"NO";
            }

            fputs([objc_msgSend(v14 stringWithFormat:@"Database: %@ (%ld): hasSubscription: %@, currentChangeToken: %@\n", v15, v16, v17, objc_msgSend(v12, "currentChangeToken")), "UTF8String"], v13);
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v34 = [v12 recordZones];
            v18 = [v34 countByEnumeratingWithState:&v37 objects:v50 count:16];
            if (v18)
            {
              v19 = v18;
              obja = *v38;
              do
              {
                for (j = 0; j != v19; ++j)
                {
                  if (*v38 != obja)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v21 = *(*(&v37 + 1) + 8 * j);
                  v22 = *MEMORY[0x1E69E9858];
                  v23 = MEMORY[0x1E696AEC0];
                  v24 = [v21 ckRecordZoneName];
                  v25 = [v21 ckOwnerName];
                  v26 = @"NO";
                  if ([v21 hasRecordZone])
                  {
                    v27 = @"YES";
                  }

                  else
                  {
                    v27 = @"NO";
                  }

                  if ([v21 hasSubscription])
                  {
                    v26 = @"YES";
                  }

                  fputs([objc_msgSend(v23 stringWithFormat:@"\tZone: %@:%@: hasRecordZone: %@, hasSubscription: %@, currentChangeToken: %@\n", v24, v25, v27, v26, objc_msgSend(v21, "currentChangeToken")), "UTF8String"], v22);
                }

                v19 = [v34 countByEnumeratingWithState:&v37 objects:v50 count:16];
              }

              while (v19);
            }

            v11 = v32 + 1;
          }

          while (v32 + 1 != v31);
          result = [v29 countByEnumeratingWithState:&v41 objects:v51 count:16];
          v31 = result;
        }

        while (result);
      }
    }
  }

  else
  {
    result = fputs([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to fetch database metadata entries:\n%@", v49), "UTF8String"], *MEMORY[0x1E69E9848]);
  }

  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __98__NSCloudKitMirroringDelegate___CLI__printMetadataForStoreAtURL_withConfiguration_operateOnACopy___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 key];
  v5 = [a3 key];

  return [v4 localizedCaseInsensitiveCompare:v5];
}

+ (void)printRepresentativeSchemaForModelAtURL:(id)a3 orStoreAtURL:(id)a4 withConfiguration:(id)a5
{
  v6 = a4;
  v32[1] = *MEMORY[0x1E69E9840];
  v30 = 0;
  if (a3)
  {
    v8 = [[NSManagedObjectModel alloc] initWithContentsOfURL:a3];
  }

  else
  {
    if (!a4)
    {
      v19 = 0;
      goto LABEL_20;
    }

    v31 = @"NSReadOnlyPersistentStoreOption";
    v32[0] = MEMORY[0x1E695E118];
    v8 = +[NSPersistentStore cachedModelForPersistentStoreWithURL:options:error:](NSPersistentStore, "cachedModelForPersistentStoreWithURL:options:error:", a4, [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1], &v30);
  }

  v9 = v8;
  if (!v8)
  {
    v19 = v30;
LABEL_20:
    fputs([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load a managed object model. Arguments:\nstoreURL: %@\nmodelURL: %@\nEncountered error: %@", v6, a3, v19), "UTF8String"], *MEMORY[0x1E69E9848]);
    v9 = 0;
    goto LABEL_25;
  }

  if (!v6)
  {
    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:{-[NSString stringByAppendingPathComponent:](-[NSString stringByAppendingPathComponent:](NSTemporaryDirectory(), "stringByAppendingPathComponent:", @"cdutil", "stringByAppendingPathComponent:", objc_msgSend(objc_msgSend(MEMORY[0x1E696AFB0], "UUID"), "UUIDString"))}];
    if (!+[NSCloudKitMirroringDelegate checkAndCreateDirectoryAtURL:wipeIfExists:error:](NSCloudKitMirroringDelegate, "checkAndCreateDirectoryAtURL:wipeIfExists:error:", [v6 URLByDeletingLastPathComponent], 0, &v30))
    {
      fputs([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create temporary directory: %@", v30), "UTF8String"], *MEMORY[0x1E69E9848]);
      goto LABEL_25;
    }

    if (!v6)
    {
      goto LABEL_25;
    }
  }

  v10 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v9];
  v11 = [[NSCloudKitMirroringDelegateOptions alloc] initWithContainerIdentifier:@"cdutil-stub-container"];
  v12 = v11;
  if (v11)
  {
    v11->_skipCloudKitSetup = 1;
  }

  v13 = [[NSCloudKitMirroringDelegate alloc] initWithOptions:v11];
  v14 = [[NSPersistentStoreDescription alloc] initWithURL:v6];
  [(NSPersistentStoreDescription *)v14 setType:@"SQLite"];
  [(NSPersistentStoreDescription *)v14 setConfiguration:a5];
  [(NSPersistentStoreDescription *)v14 setShouldMigrateStoreAutomatically:1];
  [(NSPersistentStoreDescription *)v14 setShouldInferMappingModelAutomatically:1];
  [(NSPersistentStoreDescription *)v14 setMirroringDelegate:v13];
  [(NSPersistentStoreDescription *)v14 setOption:MEMORY[0x1E695E118] forKey:@"NSPersistentHistoryTrackingKey"];
  v15 = dispatch_semaphore_create(0);
  v16 = [MEMORY[0x1E696AD88] defaultCenter];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __108__NSCloudKitMirroringDelegate___CLI__printRepresentativeSchemaForModelAtURL_orStoreAtURL_withConfiguration___block_invoke;
  v29[3] = &unk_1E6EC3590;
  v29[4] = v15;
  v17 = [v16 addObserverForName:@"PFCloudKitDidSetupNotificationName" object:v13 queue:0 usingBlock:v29];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __108__NSCloudKitMirroringDelegate___CLI__printRepresentativeSchemaForModelAtURL_orStoreAtURL_withConfiguration___block_invoke_78;
  v24[3] = &unk_1E6EC5070;
  v24[4] = v6;
  v24[5] = &v25;
  [(NSPersistentStoreCoordinator *)v10 addPersistentStoreWithDescription:v14 completionHandler:v24];
  v18 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v15, v18))
  {
    *(v26 + 24) = 0;
    fputs([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"Timed out waiting for the mirroring delegate to finish setting up. This is a bug. Please re-run and attach a sample of cdutil if you can.", "UTF8String"], *MEMORY[0x1E69E9848]);
  }

  else
  {
    *(v26 + 24) = 1;
  }

  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  if (*(v26 + 24) == 1)
  {
    v20 = [[PFCloudKitStoreMonitor alloc] initForStore:[(NSArray *)[(NSPersistentStoreCoordinator *)v10 persistentStores] lastObject]];
    v21 = [[PFCloudKitSchemaGenerator alloc] initWithMirroringOptions:v12 forStoreInMonitor:v20];
    v22 = [(PFCloudKitSchemaGenerator *)v21 newRepresentativeRecords:?];
    if (v22)
    {
      fputs([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"Generated records:\n", "UTF8String"], *MEMORY[0x1E69E9858]);
      [v22 enumerateObjectsUsingBlock:&__block_literal_global_86];
    }

    else
    {
      *(v26 + 24) = 0;
      fputs([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to generate records: %@", v30), "UTF8String"], *MEMORY[0x1E69E9848]);
    }
  }

  _Block_object_dispose(&v25, 8);
LABEL_25:

  v23 = *MEMORY[0x1E69E9840];
}

intptr_t __108__NSCloudKitMirroringDelegate___CLI__printRepresentativeSchemaForModelAtURL_orStoreAtURL_withConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = [objc_msgSend(a2 "userInfo")];
  if ([v3 success])
  {
    if ([v3 error])
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Error was non-nil, but expected nil\n", v11, 2u);
      }

      v5 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        v10 = 0;
        v6 = "CoreData: Error was non-nil, but expected nil";
        v7 = &v10;
LABEL_12:
        _os_log_fault_impl(&dword_18565F000, v5, OS_LOG_TYPE_FAULT, v6, v7, 2u);
      }
    }
  }

  else
  {
    v8 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, v8, OS_LOG_TYPE_ERROR, "CoreData: fault: Success was NO but expected YES\n", buf, 2u);
    }

    v5 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *v12 = 0;
      v6 = "CoreData: Success was NO but expected YES";
      v7 = v12;
      goto LABEL_12;
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __108__NSCloudKitMirroringDelegate___CLI__printRepresentativeSchemaForModelAtURL_orStoreAtURL_withConfiguration___block_invoke_78(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (a3)
  {
    result = fputs([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load persistent store at url: %@\n%@", *(result + 32), a3), "UTF8String"], *MEMORY[0x1E69E9848]);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  *(*(*(v3 + 40) + 8) + 24) = v4;
  return result;
}

uint64_t __108__NSCloudKitMirroringDelegate___CLI__printRepresentativeSchemaForModelAtURL_orStoreAtURL_withConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x1E69E9858];
  v3 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", objc_msgSend(a2, "description")), "UTF8String"];

  return fputs(v3, v2);
}

+ (BOOL)checkAndCreateDirectoryAtURL:(id)a3 wipeIfExists:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v12 = 0;
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = 0;
  if (![v8 fileExistsAtPath:objc_msgSend(a3 isDirectory:{"path"), &v11}])
  {
    goto LABEL_6;
  }

  if (v11 && !v6)
  {
    return 1;
  }

  if ([v8 removeItemAtURL:a3 error:&v12])
  {
LABEL_6:
    v9 = 1;
    if ([v8 createDirectoryAtURL:a3 withIntermediateDirectories:1 attributes:0 error:&v12])
    {
      return v9;
    }
  }

  v9 = 0;
  if (a5 && v12)
  {
    v9 = 0;
    *a5 = v12;
  }

  return v9;
}

uint64_t __122__NSCloudKitMirroringDelegate___CLI__checkForCloudKitTablesInStoreAtURL_withPersistentStoreCoordinator_withConfiguration___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    result = *(a2 + 24);
    if (result)
    {
      result = [(NSSQLiteConnection *)result _hasTableWithName:0 isTemp:?];
    }
  }

  else
  {
    result = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (BOOL)traceObjectMatchingValue:(id)a3 atKeyPath:(id)a4 inStores:(id)a5 startingAt:(id)a6 endingAt:(id)a7 error:(id *)a8
{
  v73 = *MEMORY[0x1E69E9840];
  v52 = 0;
  v53 = &v52;
  v54 = 0x3052000000;
  v55 = __Block_byref_object_copy__44;
  v56 = __Block_byref_object_dispose__44;
  v57 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 1;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = [a5 countByEnumeratingWithState:&v44 objects:v72 count:16];
  if (v8)
  {
    v42 = *v45;
    v38 = *MEMORY[0x1E696A250];
    v39 = *MEMORY[0x1E696A588];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v45 != v42)
        {
          objc_enumerationMutation(a5);
        }

        v10 = *(*(&v44 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v70 = @"NSReadOnlyPersistentStoreOption";
        v71 = MEMORY[0x1E695E118];
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
        v13 = [NSPersistentStore cachedModelForPersistentStoreWithURL:v10 options:v12 error:v53 + 5];
        if (!v13)
        {
          *(v49 + 24) = 0;
          v23 = v53[5];
          goto LABEL_19;
        }

        v14 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v13];
        v68[0] = @"NSReadOnlyPersistentStoreOption";
        v68[1] = @"NSCloudKitMirroringDelegateReadOnlyOptionKey";
        v69[0] = MEMORY[0x1E695E118];
        v69[1] = MEMORY[0x1E695E118];
        v68[2] = @"NSPersistentHistoryTrackingKey";
        v69[2] = MEMORY[0x1E695E118];
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:v68 count:3];
        v16 = [(NSPersistentStoreCoordinator *)v14 addPersistentStoreWithType:@"SQLite" configuration:0 URL:v10 options:v15 error:v53 + 5];
        if (!v16)
        {
          goto LABEL_17;
        }

        v17 = [a4 componentsSeparatedByString:@"."];
        if ([v17 count] != 2)
        {
          v24 = objc_alloc(MEMORY[0x1E696ABC0]);
          v62 = v39;
          v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to parse provided keypath. Expected two components when split by '.': %@", a4];
          v25 = [v24 initWithDomain:v38 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v63, &v62, 1)}];
LABEL_16:
          v53[5] = v25;
LABEL_17:
          *(v49 + 24) = 0;
          goto LABEL_18;
        }

        v18 = [v17 objectAtIndexedSubscript:0];
        v19 = [v17 objectAtIndexedSubscript:1];
        v20 = [(NSDictionary *)[(NSManagedObjectModel *)[(NSPersistentStoreCoordinator *)v14 managedObjectModel] entitiesByName] objectForKeyedSubscript:v18];
        if (!v20)
        {
          v26 = objc_alloc(MEMORY[0x1E696ABC0]);
          v64 = v39;
          v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to parse provided keypath. An entity named '%@' could not be found in the model for the store: %@", v18, v10];
          v25 = [v26 initWithDomain:v38 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v65, &v64, 1)}];
          goto LABEL_16;
        }

        v21 = [objc_msgSend(v20 "attributesByName")];
        if (!v21)
        {
          v27 = objc_alloc(MEMORY[0x1E696ABC0]);
          v66 = v39;
          v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to parse provided keypath. An attribute named '%@' could not be found on the entity '%@' in the store: %@", v19, v18, v10];
          v25 = [v27 initWithDomain:v38 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v67, &v66, 1)}];
          goto LABEL_16;
        }

        v22 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
        [(NSManagedObjectContext *)v22 setPersistentStoreCoordinator:v14];
        [(NSManagedObjectContext *)v22 _setAllowAncillaryEntities:1];
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __108__NSCloudKitMirroringDelegate___CLI__traceObjectMatchingValue_atKeyPath_inStores_startingAt_endingAt_error___block_invoke;
        v43[3] = &unk_1E6EC50B8;
        v43[4] = v18;
        v43[5] = v21;
        v43[6] = a3;
        v43[7] = v19;
        v43[8] = v10;
        v43[9] = v22;
        v43[14] = &v48;
        v43[10] = a6;
        v43[11] = a7;
        v43[12] = v16;
        v43[13] = &v52;
        [(NSManagedObjectContext *)v22 performBlockAndWait:v43];

LABEL_18:
        LODWORD(v13) = *(v49 + 24);
LABEL_19:
        objc_autoreleasePoolPop(v11);
        if (!v13)
        {
          goto LABEL_22;
        }
      }

      v8 = [a5 countByEnumeratingWithState:&v44 objects:v72 count:16];
    }

    while (v8);
  }

LABEL_22:
  if ((v49[3] & 1) == 0)
  {
    v31 = v53[5];
    if (v31)
    {
      if (a8)
      {
        *a8 = v31;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v59 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate+CLI.m";
        v60 = 1024;
        v61 = 592;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v33 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v59 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate+CLI.m";
        v60 = 1024;
        v61 = 592;
        _os_log_fault_impl(&dword_18565F000, v33, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v53[5] = 0;
  v28 = *(v49 + 24);
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);
  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

void __108__NSCloudKitMirroringDelegate___CLI__traceObjectMatchingValue_atKeyPath_inStores_startingAt_endingAt_error___block_invoke(uint64_t a1)
{
  v117 = *MEMORY[0x1E69E9840];
  v2 = [NSFetchRequest fetchRequestWithEntityName:*(a1 + 32)];
  v3 = [*(a1 + 40) attributeType];
  if (v3 == 700)
  {
    v4 = *(a1 + 48);
    goto LABEL_5;
  }

  if (v3 == 1100)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:*(a1 + 48)];
LABEL_5:
    v5 = v4;
    goto LABEL_11;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    v68 = *(a1 + 40);
    v67 = *(a1 + 48);
    *buf = 138412546;
    *&buf[4] = v67;
    v115 = 2112;
    v116 = v68;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Sorry, I don't know how to translate this value in to a predicate yet: %@ / %@\n", buf, 0x16u);
  }

  v7 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    v70 = *(a1 + 40);
    v69 = *(a1 + 48);
    *buf = 138412546;
    *&buf[4] = v69;
    v115 = 2112;
    v116 = v70;
    _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: Sorry, I don't know how to translate this value in to a predicate yet: %@ / %@", buf, 0x16u);
  }

  v5 = 0;
LABEL_11:
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  -[NSFetchRequest setPredicate:](v2, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", *(a1 + 56), v5]);
  [(NSFetchRequest *)v2 setReturnsObjectsAsFaults:0];
  v9 = MEMORY[0x1E69E9858];
  fputs([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"Tracing %@.%@ == %@ in store: %@\nWith fetch: %@\n", *(a1 + 32), *(a1 + 56), *(a1 + 48), *(a1 + 64), v2), "UTF8String"], *MEMORY[0x1E69E9858]);
  *buf = 0;
  v10 = [*(a1 + 72) executeFetchRequest:v2 error:buf];
  v85 = v8;
  v86 = v5;
  if (v10)
  {
    v11 = v10;
    fputs([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"Found rows: %@\n", v10), "UTF8String"], *v9);
    [v8 addObjectsFromArray:{objc_msgSend(v11, "valueForKey:", @"objectID"}];
  }

  else
  {
    *(*(*(a1 + 104) + 8) + 40) = *buf;
    *(*(*(a1 + 112) + 8) + 24) = 0;
  }

  v87 = a1;
  if (*(*(*(a1 + 112) + 8) + 24) == 1)
  {
    v12 = +[NSPersistentHistoryChange fetchRequest];
    -[NSFetchRequest setPredicate:](v12, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"changeType == %ld", 2]);
    v13 = [NSPersistentHistoryChangeRequest fetchHistoryWithFetchRequest:v12];
    [(NSPersistentHistoryChangeRequest *)v13 setResultType:5];
    v14 = [objc_msgSend(*(a1 + 72) executeRequest:v13 error:{buf), "result"}];
    if (v14)
    {
      v15 = v14;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v16 = [v14 countByEnumeratingWithState:&v105 objects:v113 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v106;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v106 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v105 + 1) + 8 * i);
            v21 = objc_autoreleasePoolPush();
            v101 = 0u;
            v102 = 0u;
            v103 = 0u;
            v104 = 0u;
            v22 = [v20 changes];
            v23 = [v22 countByEnumeratingWithState:&v101 objects:v112 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v102;
              do
              {
                for (j = 0; j != v24; ++j)
                {
                  if (*v102 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = *(*(&v101 + 1) + 8 * j);
                  v28 = [objc_msgSend(v27 "tombstone")];
                  if (v28 && [v86 isEqual:v28])
                  {
                    [v85 addObject:{objc_msgSend(v27, "changedObjectID")}];
                  }
                }

                v24 = [v22 countByEnumeratingWithState:&v101 objects:v112 count:16];
              }

              while (v24);
            }

            objc_autoreleasePoolPop(v21);
          }

          v17 = [v15 countByEnumeratingWithState:&v105 objects:v113 count:16];
        }

        while (v17);
      }
    }

    else
    {
      *(*(*(a1 + 112) + 8) + 24) = 0;
      *(*(*(a1 + 104) + 8) + 40) = *buf;
    }
  }

  v29 = v87;
  v30 = 0x1E696A000uLL;
  if (*(*(*(v87 + 112) + 8) + 24) == 1)
  {
    fputs([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"Found objectIDs: %@\n", v85), "UTF8String"], *MEMORY[0x1E69E9858]);
    if ([v85 count])
    {
      v31 = [NSPersistentHistoryChangeRequest fetchHistoryAfterToken:0];
      [(NSPersistentHistoryChangeRequest *)v31 setResultType:5];
      v32 = [objc_msgSend(*(v87 + 72) executeRequest:v31 error:{buf), "result"}];
      if (v32)
      {
        v33 = v32;
        v79 = objc_alloc_init(MEMORY[0x1E696AB78]);
        [v79 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSZ"];
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        obj = v33;
        v34 = v85;
        v76 = [v33 countByEnumeratingWithState:&v97 objects:v111 count:16];
        if (v76)
        {
          v75 = *v98;
          do
          {
            v35 = 0;
            do
            {
              if (*v98 != v75)
              {
                objc_enumerationMutation(obj);
              }

              v78 = v35;
              v81 = *(*(&v97 + 1) + 8 * v35);
              context = objc_autoreleasePoolPush();
              v36 = *(v29 + 80);
              if (!v36 || [v36 compare:{objc_msgSend(v81, "timestamp")}] != 1)
              {
                v37 = *(v87 + 88);
                if (!v37 || [v37 compare:{objc_msgSend(v81, "timestamp")}] != -1)
                {
                  v95 = 0u;
                  v96 = 0u;
                  v93 = 0u;
                  v94 = 0u;
                  v83 = [v81 changes];
                  v38 = [v83 countByEnumeratingWithState:&v93 objects:v110 count:16];
                  if (v38)
                  {
                    v39 = v38;
                    v40 = *v94;
                    v80 = *v94;
                    do
                    {
                      v41 = 0;
                      v82 = v39;
                      do
                      {
                        if (*v94 != v40)
                        {
                          objc_enumerationMutation(v83);
                        }

                        v42 = *(*(&v93 + 1) + 8 * v41);
                        v43 = objc_autoreleasePoolPush();
                        if ([v34 containsObject:{objc_msgSend(v42, "changedObjectID")}])
                        {
                          fputs([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"Transaction (%lld): %@:%@:%@ at %@\n", objc_msgSend(v81, "transactionNumber"), objc_msgSend(v81, "processID"), objc_msgSend(v81, "bundleID"), objc_msgSend(v81, "author"), objc_msgSend(v79, "stringFromDate:", objc_msgSend(v81, "timestamp"))), "UTF8String"], *MEMORY[0x1E69E9858]);
                          v44 = *MEMORY[0x1E69E9858];
                          v45 = MEMORY[0x1E696AEC0];
                          v46 = [v42 changeID];
                          v47 = [v42 changedObjectID];
                          v48 = +[NSPersistentHistoryChange stringForChangeType:](NSPersistentHistoryChange, "stringForChangeType:", [v42 changeType]);
                          v73 = [objc_msgSend(objc_msgSend(objc_msgSend(v42 "updatedProperties")];
                          v71 = v46;
                          v72 = v47;
                          v34 = v85;
                          v39 = v82;
                          v49 = v45;
                          v40 = v80;
                          fputs([objc_msgSend(v49 stringWithFormat:@"\tChange (%llu): %@: %@ - %@\n", v71, v72, v48, v73), "UTF8String"], v44);
                        }

                        objc_autoreleasePoolPop(v43);
                        ++v41;
                      }

                      while (v39 != v41);
                      v39 = [v83 countByEnumeratingWithState:&v93 objects:v110 count:16];
                    }

                    while (v39);
                  }
                }
              }

              objc_autoreleasePoolPop(context);
              v35 = v78 + 1;
              v29 = v87;
            }

            while (v78 + 1 != v76);
            v76 = [obj countByEnumeratingWithState:&v97 objects:v111 count:16];
          }

          while (v76);
        }

        v30 = 0x1E696A000;
      }

      else
      {
        *(*(*(v87 + 112) + 8) + 24) = 0;
        *(*(*(v87 + 104) + 8) + 40) = *buf;
      }

      if (*(*(*(v29 + 112) + 8) + 24) == 1)
      {
        v50 = +[NSCKRecordMetadata metadataForObjectIDs:inStore:withManagedObjectContext:error:](NSCKRecordMetadata, [v85 allObjects], *(v29 + 96), *(v29 + 72), buf);
        if (v50)
        {
          v51 = v50;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v52 = [v50 countByEnumeratingWithState:&v89 objects:v109 count:16];
          if (v52)
          {
            v53 = v52;
            v88 = *v90;
            v84 = v51;
            do
            {
              for (k = 0; k != v53; ++k)
              {
                if (*v90 != v88)
                {
                  objc_enumerationMutation(v84);
                }

                v55 = *(*(&v89 + 1) + 8 * k);
                v56 = objc_autoreleasePoolPush();
                v57 = [(NSCKRecordMetadata *)v55 createObjectIDForLinkedRow];
                fputs([objc_msgSend(*(v30 + 3776) stringWithFormat:@"Found record metadata for objectID: %@\n%@\n", v57, v55), "UTF8String"], *MEMORY[0x1E69E9858]);
                v58 = [v55 encodedRecordAsset];
                if (v58)
                {
                  v59 = v58;
                  if ([objc_msgSend(v58 "binaryData")])
                  {
                    v58 = [v59 binaryData];
                  }

                  else
                  {
                    v58 = [v59 externalBinaryData];
                  }
                }

                v60 = v58;
                if (v60)
                {
                  v61 = [NSCKRecordMetadata recordFromEncodedData:v60 error:buf];
                  v62 = v61;
                  v63 = *(v30 + 3776);
                  if (v61)
                  {
                    v64 = *MEMORY[0x1E69E9858];
                    v65 = [v63 stringWithFormat:@"Encoded record:\n%@\n", objc_msgSend(v61, "debugDescription")];
                  }

                  else
                  {
                    v64 = *MEMORY[0x1E69E9848];
                    v65 = [v63 stringWithFormat:@"Failed to decode record for metadata: %@", *buf];
                  }

                  fputs([v65 UTF8String], v64);

                  v30 = 0x1E696A000;
                }

                objc_autoreleasePoolPop(v56);
              }

              v53 = [v84 countByEnumeratingWithState:&v89 objects:v109 count:16];
            }

            while (v53);
          }
        }

        else
        {
          fputs([objc_msgSend(*(v30 + 3776) stringWithFormat:@"Failed to fetch record metadata for objectIDs: %@\n%@\n", v85, *buf), "UTF8String"], *MEMORY[0x1E69E9848]);
          *(*(*(v29 + 112) + 8) + 24) = 0;
          *(*(*(v29 + 104) + 8) + 40) = *buf;
        }
      }
    }
  }

  v66 = *MEMORY[0x1E69E9840];
}

+ (BOOL)traceObjectMatchingRecordName:(id)a3 inStores:(id)a4 startingAt:(id)a5 endingAt:(id)a6 error:(id *)a7
{
  v53 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3052000000;
  v41 = __Block_byref_object_copy__44;
  v42 = __Block_byref_object_dispose__44;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 1;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = [a4 countByEnumeratingWithState:&v30 objects:v52 count:16];
  if (v7)
  {
    v8 = *v31;
    v9 = MEMORY[0x1E695E118];
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v31 != v8)
      {
        objc_enumerationMutation(a4);
      }

      v11 = *(*(&v30 + 1) + 8 * v10);
      v12 = objc_autoreleasePoolPush();
      v50 = @"NSReadOnlyPersistentStoreOption";
      v51 = v9;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v14 = [NSPersistentStore cachedModelForPersistentStoreWithURL:v11 options:v13 error:v39 + 5];
      if (v14)
      {
        v15 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v14];
        v48[0] = @"NSReadOnlyPersistentStoreOption";
        v48[1] = @"NSCloudKitMirroringDelegateReadOnlyOptionKey";
        v49[0] = v9;
        v49[1] = v9;
        v48[2] = @"NSPersistentHistoryTrackingKey";
        v49[2] = v9;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:3];
        if ([(NSPersistentStoreCoordinator *)v15 addPersistentStoreWithType:@"SQLite" configuration:0 URL:v11 options:v16 error:v39 + 5])
        {
          v17 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
          [(NSManagedObjectContext *)v17 setPersistentStoreCoordinator:v15];
          [(NSManagedObjectContext *)v17 _setAllowAncillaryEntities:1];
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __103__NSCloudKitMirroringDelegate___CLI__traceObjectMatchingRecordName_inStores_startingAt_endingAt_error___block_invoke;
          v29[3] = &unk_1E6EC50E0;
          v29[4] = a3;
          v29[5] = v11;
          v29[10] = &v34;
          v29[6] = v17;
          v29[7] = a5;
          v29[9] = &v38;
          v29[8] = a6;
          [(NSManagedObjectContext *)v17 performBlockAndWait:v29];
        }

        else
        {
          *(v35 + 24) = 0;
        }

        LODWORD(v14) = *(v35 + 24);
      }

      else
      {
        *(v35 + 24) = 0;
      }

      objc_autoreleasePoolPop(v12);
      if (!v14)
      {
        break;
      }

      if (v7 == ++v10)
      {
        v7 = [a4 countByEnumeratingWithState:&v30 objects:v52 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if ((v35[3] & 1) == 0)
  {
    v21 = v39[5];
    if (v21)
    {
      if (a7)
      {
        *a7 = v21;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v45 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate+CLI.m";
        v46 = 1024;
        v47 = 709;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v23 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v45 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate+CLI.m";
        v46 = 1024;
        v47 = 709;
        _os_log_fault_impl(&dword_18565F000, v23, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v39[5] = 0;
  v18 = *(v35 + 24);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

void __103__NSCloudKitMirroringDelegate___CLI__traceObjectMatchingRecordName_inStores_startingAt_endingAt_error___block_invoke(uint64_t a1)
{
  v88 = *MEMORY[0x1E69E9840];
  v2 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordMetadata entityPath]);
  v66 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  -[NSFetchRequest setPredicate:](v2, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"ckRecordName == %@", *(a1 + 32)]);
  v3 = MEMORY[0x1E69E9858];
  v4 = 0x1E696A000uLL;
  fputs([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"Tracing record %@ in store: %@\nWith fetch: %@\n", *(a1 + 32), *(a1 + 40), v2), "UTF8String"], *MEMORY[0x1E69E9858]);
  v83 = 0;
  v5 = [*(a1 + 48) executeFetchRequest:v2 error:&v83];
  v52 = a1;
  if (v5)
  {
    v6 = v5;
    fputs([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"Found record metadata: %@\n", v5), "UTF8String"], *v3);
    obj = v6;
    v56 = objc_alloc_init(PFCloudKitArchivingUtilities);
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v60 = [v6 countByEnumeratingWithState:&v79 objects:v87 count:16];
    if (v60)
    {
      v58 = *v80;
      do
      {
        v7 = 0;
        do
        {
          if (*v80 != v58)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v79 + 1) + 8 * v7);
          v9 = objc_autoreleasePoolPush();
          v10 = [(NSCKRecordMetadata *)v8 createObjectIDForLinkedRow];
          fputs([objc_msgSend(*(v4 + 3776) stringWithFormat:@"Found metadata for row '%@': %@\n", v10, v8), "UTF8String"], *v3);
          if ([v8 encodedRecordAsset])
          {
            v11 = [v8 encodedRecordAsset];
            v64 = v9;
            if (v11)
            {
              v12 = v11;
              if ([objc_msgSend(v11 "binaryData")])
              {
                v13 = [v12 binaryData];
              }

              else
              {
                v13 = [v12 externalBinaryData];
              }

              v14 = v13;
            }

            else
            {
              v14 = 0;
            }

            v15 = [(PFCloudKitArchivingUtilities *)v56 recordFromEncodedData:v14 error:&v83];
            v62 = v10;
            fputs([objc_msgSend(*(v4 + 3776) stringWithFormat:@"Record for row '%@': %@\n", v10, v15), "UTF8String"], *v3);
            v75 = 0u;
            v76 = 0u;
            v77 = 0u;
            v78 = 0u;
            v16 = [objc_msgSend(v15 "encryptedValues")];
            v17 = [v16 countByEnumeratingWithState:&v75 objects:v86 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v76;
              do
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v76 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v75 + 1) + 8 * i);
                  v22 = *v3;
                  v23 = MEMORY[0x1E696AEC0];
                  v47 = [objc_msgSend(v15 "encryptedValues")];
                  v24 = v23;
                  v3 = MEMORY[0x1E69E9858];
                  fputs([objc_msgSend(v24 stringWithFormat:@"\t%@: %@\n", v21, v47), "UTF8String"], v22);
                }

                v18 = [v16 countByEnumeratingWithState:&v75 objects:v86 count:16];
              }

              while (v18);
            }

            v4 = 0x1E696A000;
            v10 = v62;
            v9 = v64;
          }

          [v66 addObject:v10];

          objc_autoreleasePoolPop(v9);
          ++v7;
        }

        while (v7 != v60);
        v25 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
        v60 = v25;
      }

      while (v25);
    }

    a1 = v52;
  }

  else
  {
    *(*(*(a1 + 72) + 8) + 40) = v83;
    *(*(*(a1 + 80) + 8) + 24) = 0;
  }

  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    fputs([objc_msgSend(*(v4 + 3776) stringWithFormat:@"Found objectIDs: %@\n", v66), "UTF8String"], *v3);
    if ([v66 count])
    {
      v26 = [NSPersistentHistoryChangeRequest fetchHistoryAfterToken:0];
      [(NSPersistentHistoryChangeRequest *)v26 setResultType:5];
      v27 = [objc_msgSend(*(v52 + 48) executeRequest:v26 error:{&v83), "result"}];
      if (v27)
      {
        v28 = v27;
        v57 = objc_alloc_init(MEMORY[0x1E696AB78]);
        [v57 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSZ"];
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v51 = [v28 countByEnumeratingWithState:&v71 objects:v85 count:16];
        if (v51)
        {
          v49 = v28;
          v50 = *v72;
          do
          {
            v29 = 0;
            do
            {
              if (*v72 != v50)
              {
                objc_enumerationMutation(v49);
              }

              obja = v29;
              v61 = *(*(&v71 + 1) + 8 * v29);
              context = objc_autoreleasePoolPush();
              v30 = *(v52 + 56);
              if (!v30 || [v30 compare:{objc_msgSend(v61, "timestamp")}] != 1)
              {
                v31 = *(v52 + 64);
                if (!v31 || [v31 compare:{objc_msgSend(v61, "timestamp")}] != -1)
                {
                  v69 = 0u;
                  v70 = 0u;
                  v67 = 0u;
                  v68 = 0u;
                  v65 = [v61 changes];
                  v32 = [v65 countByEnumeratingWithState:&v67 objects:v84 count:16];
                  if (v32)
                  {
                    v33 = v32;
                    v34 = *v68;
                    v59 = *v68;
                    do
                    {
                      v35 = 0;
                      v63 = v33;
                      do
                      {
                        if (*v68 != v34)
                        {
                          objc_enumerationMutation(v65);
                        }

                        v36 = *(*(&v67 + 1) + 8 * v35);
                        v37 = objc_autoreleasePoolPush();
                        if ([v66 containsObject:{objc_msgSend(v36, "changedObjectID")}])
                        {
                          v38 = *(v4 + 3776);
                          v4 = 0x1E696A000uLL;
                          fputs([objc_msgSend(v38 stringWithFormat:@"Transaction (%lld): %@:%@:%@ at %@\n", objc_msgSend(v61, "transactionNumber"), objc_msgSend(v61, "processID"), objc_msgSend(v61, "bundleID"), objc_msgSend(v61, "author"), objc_msgSend(v57, "stringFromDate:", objc_msgSend(v61, "timestamp"))), "UTF8String"], *MEMORY[0x1E69E9858]);
                          v39 = *MEMORY[0x1E69E9858];
                          v40 = MEMORY[0x1E696AEC0];
                          v41 = [v36 changeID];
                          v42 = [v36 changedObjectID];
                          v43 = +[NSPersistentHistoryChange stringForChangeType:](NSPersistentHistoryChange, "stringForChangeType:", [v36 changeType]);
                          v48 = [objc_msgSend(objc_msgSend(objc_msgSend(v36 "updatedProperties")];
                          v46 = v41;
                          v33 = v63;
                          v44 = v40;
                          v34 = v59;
                          fputs([objc_msgSend(v44 stringWithFormat:@"\tChange (%llu): %@: %@ - %@\n", v46, v42, v43, v48), "UTF8String"], v39);
                        }

                        objc_autoreleasePoolPop(v37);
                        ++v35;
                      }

                      while (v33 != v35);
                      v33 = [v65 countByEnumeratingWithState:&v67 objects:v84 count:16];
                    }

                    while (v33);
                  }
                }
              }

              objc_autoreleasePoolPop(context);
              v29 = obja + 1;
            }

            while (obja + 1 != v51);
            v51 = [v49 countByEnumeratingWithState:&v71 objects:v85 count:16];
          }

          while (v51);
        }
      }

      else
      {
        *(*(*(v52 + 80) + 8) + 24) = 0;
        *(*(*(v52 + 72) + 8) + 40) = v83;
      }
    }
  }

  v45 = *MEMORY[0x1E69E9840];
}

+ (BOOL)printEventsInStores:(id)a3 startingAt:(id)a4 endingAt:(id)a5 error:(id *)a6
{
  v52 = *MEMORY[0x1E69E9840];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3052000000;
  v36 = __Block_byref_object_copy__44;
  v37 = __Block_byref_object_dispose__44;
  v38 = 0;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v29 objects:v51 count:16];
  if (v6)
  {
    v7 = *v30;
    v8 = MEMORY[0x1E695E118];
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v30 != v7)
      {
        objc_enumerationMutation(a3);
      }

      v10 = *(*(&v29 + 1) + 8 * v9);
      v11 = objc_autoreleasePoolPush();
      v49 = @"NSReadOnlyPersistentStoreOption";
      v50 = v8;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v13 = [NSPersistentStore cachedModelForPersistentStoreWithURL:v10 options:v12 error:v34 + 5];
      if (v13)
      {
        v14 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v13];
        v47[0] = @"NSReadOnlyPersistentStoreOption";
        v47[1] = @"NSCloudKitMirroringDelegateReadOnlyOptionKey";
        v48[0] = v8;
        v48[1] = v8;
        v47[2] = @"NSPersistentHistoryTrackingKey";
        v48[2] = v8;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:3];
        if ([(NSPersistentStoreCoordinator *)v14 addPersistentStoreWithType:@"SQLite" configuration:0 URL:v10 options:v15 error:v34 + 5])
        {
          v16 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
          [(NSManagedObjectContext *)v16 setPersistentStoreCoordinator:v14];
          [(NSManagedObjectContext *)v16 _setAllowAncillaryEntities:1];
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __84__NSCloudKitMirroringDelegate___CLI__printEventsInStores_startingAt_endingAt_error___block_invoke;
          v28[3] = &unk_1E6EC3180;
          v28[4] = a4;
          v28[5] = a5;
          v28[6] = v10;
          v28[7] = v16;
          v28[8] = &v39;
          v28[9] = &v33;
          [(NSManagedObjectContext *)v16 performBlockAndWait:v28];
        }

        else
        {
          *(v40 + 24) = 0;
        }

        v17 = *(v40 + 24);
      }

      else
      {
        v17 = 0;
        *(v40 + 24) = 0;
      }

      objc_autoreleasePoolPop(v11);
      if (!v17)
      {
        break;
      }

      if (v6 == ++v9)
      {
        v6 = [a3 countByEnumeratingWithState:&v29 objects:v51 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if ((v40[3] & 1) == 0)
  {
    v21 = v34[5];
    if (v21)
    {
      if (a6)
      {
        *a6 = v21;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v44 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate+CLI.m";
        v45 = 1024;
        v46 = 802;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v23 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v44 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate+CLI.m";
        v45 = 1024;
        v46 = 802;
        _os_log_fault_impl(&dword_18565F000, v23, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v34[5] = 0;
  v18 = *(v40 + 24);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

void __84__NSCloudKitMirroringDelegate___CLI__printEventsInStores_startingAt_endingAt_error___block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v2 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKEvent entityPath]);
  [(NSFetchRequest *)v2 setFetchBatchSize:1000];
  v21[0] = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startedAt" ascending:1];
  -[NSFetchRequest setSortDescriptors:](v2, "setSortDescriptors:", [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (*(a1 + 32))
  {
    [v3 addObject:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithFormat:", @"startedAt >= %@", *(a1 + 32))}];
  }

  if (*(a1 + 40))
  {
    [v3 addObject:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithFormat:", @"startedAt <= %@", *(a1 + 40))}];
  }

  if ([v3 count])
  {
    -[NSFetchRequest setPredicate:](v2, "setPredicate:", [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v3]);
  }

  fputs([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"Fetching events from store: %@\nWith fetch: %@\n", *(a1 + 48), v2), "UTF8String"], *MEMORY[0x1E69E9858]);
  v19 = 0;
  v4 = [*(a1 + 56) executeFetchRequest:v2 error:&v19];
  if (v4)
  {
    v5 = v4;
    v14 = v3;
    *(*(*(a1 + 64) + 8) + 24) = 1;
    v6 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v6 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSZ"];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@ - %@: %@ - ", objc_msgSend(v6, "stringFromDate:", objc_msgSend(v11, "startedAt")), objc_msgSend(v6, "stringFromDate:", objc_msgSend(v11, "endedAt")), +[NSPersistentCloudKitContainerEvent eventTypeString:](NSPersistentCloudKitContainerEvent, "eventTypeString:", objc_msgSend(v11, "cloudKitEventType"))];
          if ([v11 succeeded])
          {
            [v12 appendString:@"succeeded"];
          }

          else
          {
            [v12 appendFormat:@"failed - %@:%lld", objc_msgSend(v11, "errorDomain"), objc_msgSend(v11, "errorCode")];
          }

          fputs([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", v12), "UTF8String"], *MEMORY[0x1E69E9858]);
        }

        v8 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v8);
    }

    v3 = v14;
  }

  else
  {
    *(*(*(a1 + 72) + 8) + 40) = v19;
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (BOOL)printSharedZoneWithName:(id)a3 inStoreAtURL:(id)a4 error:(id *)a5
{
  v40[1] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3052000000;
  v26 = __Block_byref_object_copy__44;
  v27 = __Block_byref_object_dispose__44;
  v28 = 0;
  v39 = @"NSReadOnlyPersistentStoreOption";
  v8 = MEMORY[0x1E695E118];
  v40[0] = MEMORY[0x1E695E118];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  v10 = [NSPersistentStore cachedModelForPersistentStoreWithURL:a4 options:v9 error:v24 + 5];
  if (v10)
  {
    v11 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v10];
    v37[0] = @"NSReadOnlyPersistentStoreOption";
    v37[1] = @"NSCloudKitMirroringDelegateReadOnlyOptionKey";
    v38[0] = v8;
    v38[1] = v8;
    v37[2] = @"NSPersistentHistoryTrackingKey";
    v38[2] = v8;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:3];
    if ([(NSPersistentStoreCoordinator *)v11 addPersistentStoreWithType:@"SQLite" configuration:0 URL:a4 options:v12 error:v24 + 5])
    {
      v13 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
      [(NSManagedObjectContext *)v13 setPersistentStoreCoordinator:v11];
      [(NSManagedObjectContext *)v13 _setAllowAncillaryEntities:1];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __81__NSCloudKitMirroringDelegate___CLI__printSharedZoneWithName_inStoreAtURL_error___block_invoke;
      v22[3] = &unk_1E6EC3540;
      v22[4] = a3;
      v22[5] = v13;
      v22[6] = a4;
      v22[7] = &v29;
      v22[8] = &v23;
      [(NSManagedObjectContext *)v13 performBlockAndWait:v22];
    }

    else
    {
      *(v30 + 24) = 0;
      v15 = v24[5];
    }
  }

  else
  {
    *(v30 + 24) = 0;
    v14 = v24[5];
  }

  if ((v30[3] & 1) == 0)
  {
    v19 = v24[5];
    if (v19)
    {
      if (a5)
      {
        *a5 = v19;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v34 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate+CLI.m";
        v35 = 1024;
        v36 = 883;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v21 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v34 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegate+CLI.m";
        v35 = 1024;
        v36 = 883;
        _os_log_fault_impl(&dword_18565F000, v21, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v24[5] = 0;
  v16 = *(v30 + 24);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

void __81__NSCloudKitMirroringDelegate___CLI__printSharedZoneWithName_inStoreAtURL_error___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMetadata entityPath]);
  -[NSFetchRequest setPredicate:](v2, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"ckRecordZoneName == %@", *(a1 + 32)]);
  [(NSFetchRequest *)v2 setReturnsObjectsAsFaults:0];
  v27 = 0;
  v3 = [*(a1 + 40) executeFetchRequest:v2 error:&v27];
  v4 = *(*(a1 + 56) + 8);
  if (v3)
  {
    v5 = v3;
    *(v4 + 24) = 1;
    if ([v3 count])
    {
      v21 = a1;
      v22 = objc_alloc_init(PFCloudKitArchivingUtilities);
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = MEMORY[0x1E69E9858];
        v9 = *v24;
        do
        {
          v10 = 0;
          do
          {
            if (*v24 != v9)
            {
              objc_enumerationMutation(v5);
            }

            v11 = *(*(&v23 + 1) + 8 * v10);
            v12 = objc_autoreleasePoolPush();
            fputs([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"Metadata:\n%@\n", v11), "UTF8String"], *v8);
            if ([v11 encodedShareAsset])
            {
              v13 = [(NSCKRecordZoneMetadata *)v11 createRecordZoneID];
              v14 = [v11 encodedShareAsset];
              if (v14)
              {
                v15 = v14;
                if ([objc_msgSend(v14 "binaryData")])
                {
                  v16 = [v15 binaryData];
                }

                else
                {
                  v16 = [v15 externalBinaryData];
                }

                v17 = v16;
              }

              else
              {
                v17 = 0;
              }

              v18 = [(PFCloudKitArchivingUtilities *)v22 shareFromEncodedData:v17 inZoneWithID:v13 error:&v27];
              if (v18)
              {
                fputs([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"Share:\n%@\n", v18), "UTF8String"], *v8);
              }

              else
              {
                fputs([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode share data for %@: %@\n", v13, v27), "UTF8String"], *MEMORY[0x1E69E9848]);
                v27 = 0;
              }
            }

            else
            {
              fputs([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"No encoded share was found on the metadata for %@\n", *(v21 + 32)), "UTF8String"], *v8);
            }

            objc_autoreleasePoolPop(v12);
            ++v10;
          }

          while (v7 != v10);
          v19 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
          v7 = v19;
        }

        while (v19);
      }
    }

    else
    {
      fputs([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%@ does not container a zone named %@", objc_msgSend(*(a1 + 48), "lastPathComponent"), *(a1 + 32)), "UTF8String"], *MEMORY[0x1E69E9858]);
    }
  }

  else
  {
    *(v4 + 24) = 0;
    *(*(*(a1 + 64) + 8) + 40) = v27;
  }

  v20 = *MEMORY[0x1E69E9840];
}

@end