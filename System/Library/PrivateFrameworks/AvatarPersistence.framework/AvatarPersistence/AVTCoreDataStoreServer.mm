@interface AVTCoreDataStoreServer
+ (BOOL)resetSyncShouldPreserveContentForReason:(unint64_t)a3;
- (AVTCoreDataStoreServer)initWithEnvironment:(id)a3 imageHandlingDelegate:(id)a4;
- (AVTCoreDataStoreServer)initWithLocalBackend:(id)a3 configuration:(id)a4 migratorProvider:(id)a5 pushSupport:(id)a6 mirroringHandler:(id)a7 schedulingAuthority:(id)a8 remoteChangesObserver:(id)a9 stickerChangeObserver:(id)a10 changeTracker:(id)a11 daemonServer:(id)a12 storeMaintenance:(id)a13 backgroundQueue:(id)a14 environment:(id)a15 imageHandlingDelegate:(id)a16;
- (BOOL)processInternalSettingsChanges:(id)a3;
- (void)clientDidCheckInForServer:(id)a3;
- (void)completeMigrationActivityIfNeeded;
- (void)completeUserRequestedBackupActivityIfNeeded;
- (void)deleteStickerRecents;
- (void)didReceivePushNotification:(id)a3;
- (void)migrate;
- (void)mirroringHandler:(id)a3 didResetSyncWithReason:(unint64_t)a4;
- (void)mirroringHandler:(id)a3 willResetSyncWithReason:(unint64_t)a4;
- (void)scheduleImportDiscretionary:(BOOL)a3 completionBlock:(id)a4;
- (void)scheduleImportExportIfRequiredWithPostImportHandler:(id)a3 completion:(id)a4;
- (void)scheduleMigrationThen:(id)a3;
- (void)scheduleSetupThen:(id)a3;
- (void)scheduleUpdateThumbnails;
- (void)setImageHandlingDelegate:(id)a3;
- (void)setupThen:(id)a3;
- (void)startListening;
- (void)updateThumbnails;
@end

@implementation AVTCoreDataStoreServer

- (AVTCoreDataStoreServer)initWithEnvironment:(id)a3 imageHandlingDelegate:(id)a4
{
  v5 = a3;
  v36 = a4;
  v6 = [v5 serialQueueProvider];
  v7 = (v6)[2](v6, "com.apple.AvatarUI.AVTCoreDataStoreServer.backgroundQueue");

  v8 = [v5 storeLocation];
  v9 = [AVTCoreDataPersistentStoreConfiguration localConfigurationWithStoreLocation:v8 environment:v5];

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __68__AVTCoreDataStoreServer_initWithEnvironment_imageHandlingDelegate___block_invoke;
  v42[3] = &unk_278CFB040;
  v43 = v5;
  v10 = v5;
  v39 = MEMORY[0x245CF3540](v42);
  v35 = [[AVTCoreDataStoreBackend alloc] initWithConfiguration:v9 environment:v10];
  v11 = [AVTStickerUserDefaultsBackend alloc];
  v12 = [v10 serialQueueProvider];
  v13 = (v12)[2](v12, "com.apple.AvatarUI.AVTCoreDataStoreServer.stickerBackend");
  v14 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v34 = [(AVTStickerUserDefaultsBackend *)v11 initWithWorkQueue:v13 environment:v10 userDefaults:v14];

  v33 = [[AVTStickerChangeObserver alloc] initWithStickerBackend:v34 environment:v10];
  v15 = [AVTPushNotificationsSupport alloc];
  v16 = objc_alloc_init(AVTPushNotificationsConnectionFactory);
  v32 = [(AVTPushNotificationsSupport *)v15 initWithEnvironment:v10 connectionFactory:v16];

  v31 = [AVTCoreDataCloudKitMirroringConfiguration createMirroringHandlerWithEnvironment:v10];
  v17 = [AVTSyncSchedulingAuthority alloc];
  v18 = [v10 logger];
  v29 = [(AVTSyncSchedulingAuthority *)v17 initWithLogger:v18];

  v30 = objc_alloc_init(AVTPassthroughEventCoalescer);
  v19 = v7;
  v27 = [[AVTCoreDataRemoteChangesObserver alloc] initWithConfiguration:v9 workQueue:v7 coalescer:v30 environment:v10];
  v20 = [[AVTCoreDataChangeTracker alloc] initWithConfiguration:v9 environment:v10];
  v21 = [AVTCoreDataStoreMaintenance alloc];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __68__AVTCoreDataStoreServer_initWithEnvironment_imageHandlingDelegate___block_invoke_2;
  v40[3] = &unk_278CFB068;
  v41 = v9;
  v28 = v9;
  v22 = [(AVTCoreDataStoreMaintenance *)v21 initWithEnvironment:v10 managedObjectContextFactory:v40];
  v23 = [AVTAvatarsDaemonServer alloc];
  v24 = [v10 logger];
  v25 = [(AVTAvatarsDaemonServer *)v23 initWithLogger:v24];

  v38 = [(AVTCoreDataStoreServer *)self initWithLocalBackend:v35 configuration:v28 migratorProvider:v39 pushSupport:v32 mirroringHandler:v31 schedulingAuthority:v29 remoteChangesObserver:v27 stickerChangeObserver:v33 changeTracker:v20 daemonServer:v25 storeMaintenance:v22 backgroundQueue:v19 environment:v10 imageHandlingDelegate:v36];
  return v38;
}

AVTStoreBackendMigrator *__68__AVTCoreDataStoreServer_initWithEnvironment_imageHandlingDelegate___block_invoke(uint64_t a1)
{
  v1 = [[AVTStoreBackendMigrator alloc] initWithEnvironment:*(a1 + 32)];

  return v1;
}

- (AVTCoreDataStoreServer)initWithLocalBackend:(id)a3 configuration:(id)a4 migratorProvider:(id)a5 pushSupport:(id)a6 mirroringHandler:(id)a7 schedulingAuthority:(id)a8 remoteChangesObserver:(id)a9 stickerChangeObserver:(id)a10 changeTracker:(id)a11 daemonServer:(id)a12 storeMaintenance:(id)a13 backgroundQueue:(id)a14 environment:(id)a15 imageHandlingDelegate:(id)a16
{
  v47 = a3;
  v36 = a4;
  v46 = a4;
  v48 = a5;
  v37 = a6;
  v45 = a6;
  v38 = a7;
  v44 = a7;
  v43 = a8;
  v42 = a9;
  v41 = a10;
  v40 = a11;
  v21 = a12;
  v22 = a13;
  v23 = a14;
  v24 = a15;
  v25 = a16;
  v49.receiver = self;
  v49.super_class = AVTCoreDataStoreServer;
  v26 = [(AVTCoreDataStoreServer *)&v49 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_backend, a3);
    v28 = [v24 logger];
    logger = v27->_logger;
    v27->_logger = v28;

    v30 = [v24 scheduler];
    blockScheduler = v27->_blockScheduler;
    v27->_blockScheduler = v30;

    objc_storeStrong(&v27->_configuration, v36);
    v32 = [v48 copy];
    migratorProvider = v27->_migratorProvider;
    v27->_migratorProvider = v32;

    objc_storeStrong(&v27->_pushNotificationsSupport, v37);
    [(AVTPushNotificationsSupport *)v27->_pushNotificationsSupport setDelegate:v27];
    objc_storeStrong(&v27->_schedulingAuthority, a8);
    objc_storeStrong(&v27->_mirroringHandler, v38);
    [(AVTCoreDataCloudKitMirroringHandler *)v27->_mirroringHandler setDelegate:v27];
    objc_storeStrong(&v27->_remoteChangesObserver, a9);
    objc_storeStrong(&v27->_stickerChangeObserver, a10);
    objc_storeStrong(&v27->_changeTracker, a11);
    objc_storeStrong(&v27->_daemonServer, a12);
    [(AVTAvatarsDaemonServer *)v27->_daemonServer setDelegate:v27];
    objc_storeStrong(&v27->_storeMaintenance, a13);
    objc_storeStrong(&v27->_backgroundQueue, a14);
    objc_storeStrong(&v27->_environment, a15);
    objc_storeStrong(&v27->_imageHandlingDelegate, a16);
    [(AVTStickerChangeObserver *)v27->_stickerChangeObserver setImageHandlingDelegate:v25];
  }

  return v27;
}

- (void)setImageHandlingDelegate:(id)a3
{
  v5 = a3;
  p_imageHandlingDelegate = &self->_imageHandlingDelegate;
  if (self->_imageHandlingDelegate != v5)
  {
    v7 = v5;
    objc_storeStrong(p_imageHandlingDelegate, a3);
    p_imageHandlingDelegate = [(AVTStickerChangeObserver *)self->_stickerChangeObserver setImageHandlingDelegate:v7];
  }

  MEMORY[0x2821F9730](p_imageHandlingDelegate);
}

- (void)startListening
{
  if (AVTIsRunningAsSetupUser())
  {
    v20 = [(AVTCoreDataStoreServer *)self logger];
    [v20 logAvatarsdExitingWithReason:@"Cancelling due to running as Setup User"];

    exit(0);
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __40__AVTCoreDataStoreServer_startListening__block_invoke;
  v28[3] = &unk_278CFA4E8;
  v28[4] = self;
  if (![(AVTCoreDataStoreServer *)self processInternalSettingsChanges:v28])
  {
    v3 = [(AVTCoreDataStoreServer *)self logger];
    [v3 logStartingServer];

    v4 = [(AVTCoreDataStoreServer *)self configuration];
    v27 = 0;
    v5 = [v4 createStoreServerWithError:&v27];
    v6 = v27;
    [(AVTCoreDataStoreServer *)self setServer:v5];

    v7 = [(AVTCoreDataStoreServer *)self server];

    if (v7)
    {
      v8 = [(AVTCoreDataStoreServer *)self server];
      [v8 startListening];

      v9 = [(AVTCoreDataStoreServer *)self daemonServer];
      [v9 startListening];

      v10 = [(AVTCoreDataStoreServer *)self pushNotificationsSupport];
      [v10 startListeningToPushNotifications];

      objc_initWeak(&location, self);
      v11 = [(AVTCoreDataStoreServer *)self remoteChangesObserver];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __40__AVTCoreDataStoreServer_startListening__block_invoke_2;
      v24[3] = &unk_278CF9FA0;
      objc_copyWeak(&v25, &location);
      [v11 addChangesHandler:v24];

      v12 = [(AVTCoreDataStoreServer *)self remoteChangesObserver];
      [v12 startObservingChanges];

      v13 = [(AVTCoreDataStoreServer *)self mirroringHandler];
      v14 = [(AVTCoreDataStoreServer *)self environment];
      v15 = [v14 notificationCenter];
      [v13 startObservingResetSyncWithNotificationCenter:v15];

      v16 = +[AVTBackgroundActivitySchedulerFactory schedulerForPostInstallMigrationActivity];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __40__AVTCoreDataStoreServer_startListening__block_invoke_4;
      v23[3] = &unk_278CFB0B8;
      v23[4] = self;
      [v16 scheduleWithBlock:v23];
      v17 = +[AVTBackgroundActivitySchedulerFactory schedulerForUserRequestedBackupActivity];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __40__AVTCoreDataStoreServer_startListening__block_invoke_7;
      v22[3] = &unk_278CFB0B8;
      v22[4] = self;
      [v17 scheduleWithBlock:v22];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __40__AVTCoreDataStoreServer_startListening__block_invoke_11;
      v21[3] = &unk_278CFA4E8;
      v21[4] = self;
      [(AVTCoreDataStoreServer *)self scheduleSetupThen:v21];

      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
    }

    else
    {
      v18 = [(AVTCoreDataStoreServer *)self logger];
      v19 = [v6 description];
      [v18 logErrorStartingServer:v19];
    }
  }
}

void __40__AVTCoreDataStoreServer_startListening__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) logger];
  [v1 logAvatarsdExitingWithReason:@"Completed Internal Settings changes"];

  exit(0);
}

void __40__AVTCoreDataStoreServer_startListening__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ((*(AVTAnyTransactionHasChangesFromAuthor + 2))(AVTAnyTransactionHasChangesFromAuthor, v5, @"AvatarUIClient"))
  {
    v7 = [WeakRetained logger];
    [v7 logChangesRequireExport];

    v8 = [WeakRetained schedulingAuthority];
    [v8 madeLocalChanges];

    [WeakRetained scheduleExportWithManagedObjectContext:v11 discretionary:0 completion:&__block_literal_global_10];
  }

  if ((*(AVTAnyTransactionHasChangesFromOtherThanAuthor + 2))(AVTAnyTransactionHasChangesFromOtherThanAuthor, v5, @"AvatarUIClient"))
  {
    v9 = [WeakRetained logger];
    [v9 logChangesRequireThumbnailUpdate];

    v10 = [WeakRetained storeMaintenance];
    [v10 storeDidChange];

    [WeakRetained scheduleUpdateThumbnails];
    [WeakRetained deleteStickerRecents];
  }

  if ((!AVTUIHasDisplayedSplashScreen_once() || !AVTUIHasDisplayedAnimojiSplashScreen_once() || !AVTUIHasDisplayedCameraEffectsSplashScreen_once() || (AVTUIHasDisplayedPaddleView_once() & 1) == 0) && (*(AVTAnyTransactionHasAvatarChange + 2))(AVTAnyTransactionHasAvatarChange, v5))
  {
    AVTUISetHasDisplayedSplashScreen(1);
    AVTUISetHasDisplayedAnimojiSplashScreen(1);
    AVTUISetHasDisplayedCameraEffectsSplashScreen(1);
    AVTUISetHasDisplayedPaddleView(1);
  }
}

void __40__AVTCoreDataStoreServer_startListening__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__AVTCoreDataStoreServer_startListening__block_invoke_5;
  v6[3] = &unk_278CFB090;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  [v4 performingMigrationXPCActivity:v6];
}

void __40__AVTCoreDataStoreServer_startListening__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) blockScheduler];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__AVTCoreDataStoreServer_startListening__block_invoke_6;
  v5[3] = &unk_278CF9F50;
  v3 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = [*(a1 + 32) backgroundQueue];
  [v2 performBlock:v5 afterDelay:v4 onQueue:0.0];
}

uint64_t __40__AVTCoreDataStoreServer_startListening__block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) setMigrationActivityCompletion:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 completeMigrationActivityIfNeeded];
}

void __40__AVTCoreDataStoreServer_startListening__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__AVTCoreDataStoreServer_startListening__block_invoke_8;
  v6[3] = &unk_278CFB090;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  [v4 performingUserRequestedBackupActivity:v6];
}

void __40__AVTCoreDataStoreServer_startListening__block_invoke_8(uint64_t a1)
{
  v2 = [*(a1 + 32) blockScheduler];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__AVTCoreDataStoreServer_startListening__block_invoke_9;
  v5[3] = &unk_278CF9F50;
  v3 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = [*(a1 + 32) backgroundQueue];
  [v2 performBlock:v5 afterDelay:v4 onQueue:0.0];
}

uint64_t __40__AVTCoreDataStoreServer_startListening__block_invoke_9(uint64_t a1)
{
  [*(a1 + 32) setUserRequestedBackupActivityCompletion:*(a1 + 40)];
  result = [*(a1 + 32) setupCompleted];
  if (result)
  {
    v3 = *(a1 + 32);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __40__AVTCoreDataStoreServer_startListening__block_invoke_10;
    v4[3] = &unk_278CFA4E8;
    v4[4] = v3;
    return [v3 scheduleImportExportIfRequiredWithPostImportHandler:0 completion:v4];
  }

  return result;
}

uint64_t __40__AVTCoreDataStoreServer_startListening__block_invoke_11(uint64_t a1)
{
  [*(a1 + 32) completeMigrationActivityIfNeeded];
  [*(a1 + 32) completeUserRequestedBackupActivityIfNeeded];
  v2 = *(a1 + 32);

  return [v2 importSetupUserDataIfNeeded];
}

- (void)completeMigrationActivityIfNeeded
{
  v3 = [(AVTCoreDataStoreServer *)self backgroundQueue];
  dispatch_assert_queue_V2(v3);

  if ([(AVTCoreDataStoreServer *)self setupCompleted])
  {
    v4 = [(AVTCoreDataStoreServer *)self migrationActivityCompletion];

    if (v4)
    {
      v5 = [(AVTCoreDataStoreServer *)self logger];
      [v5 logMigrationXPCActivityFinished];

      v6 = [(AVTCoreDataStoreServer *)self migrationActivityCompletion];
      v6[2](v6, 1);

      [(AVTCoreDataStoreServer *)self setMigrationActivityCompletion:0];
    }
  }
}

- (void)completeUserRequestedBackupActivityIfNeeded
{
  v3 = [(AVTCoreDataStoreServer *)self backgroundQueue];
  dispatch_assert_queue_V2(v3);

  if ([(AVTCoreDataStoreServer *)self setupCompleted])
  {
    v4 = [(AVTCoreDataStoreServer *)self userRequestedBackupActivityCompletion];

    if (v4)
    {
      v5 = [(AVTCoreDataStoreServer *)self logger];
      [v5 logUserRequestedBackupXPCActivityFinished];

      v6 = [(AVTCoreDataStoreServer *)self userRequestedBackupActivityCompletion];
      v6[2](v6, 1);

      [(AVTCoreDataStoreServer *)self setUserRequestedBackupActivityCompletion:0];
    }
  }
}

- (void)scheduleSetupThen:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = [(AVTCoreDataStoreServer *)self blockScheduler];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__AVTCoreDataStoreServer_scheduleSetupThen___block_invoke;
  v10[3] = &unk_278CFA5D0;
  v10[4] = self;
  v11 = v5;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  v9 = [(AVTCoreDataStoreServer *)self backgroundQueue];
  [v6 performBlock:v10 afterDelay:v9 onQueue:0.0];
}

void __44__AVTCoreDataStoreServer_scheduleSetupThen___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__AVTCoreDataStoreServer_scheduleSetupThen___block_invoke_2;
  v3[3] = &unk_278CF9F50;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 setupThen:v3];
}

uint64_t __44__AVTCoreDataStoreServer_scheduleSetupThen___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setupThen:(id)a3
{
  v4 = a3;
  v5 = [(AVTCoreDataStoreServer *)self logger];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__AVTCoreDataStoreServer_setupThen___block_invoke;
  v7[3] = &unk_278CFB090;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 settingUpStore:v7];
}

void __36__AVTCoreDataStoreServer_setupThen___block_invoke(uint64_t a1)
{
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __36__AVTCoreDataStoreServer_setupThen___block_invoke_2;
  v18[3] = &unk_278CF9F50;
  v2 = *(a1 + 40);
  v18[4] = *(a1 + 32);
  v19 = v2;
  v3 = MEMORY[0x245CF3540](v18);
  v4 = [*(a1 + 32) configuration];
  v17 = 0;
  v5 = [v4 setupIfNeeded:&v17];
  v6 = v17;

  v7 = os_transaction_create();
  v8 = [*(a1 + 32) configuration];
  v9 = [*(a1 + 32) backgroundQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __36__AVTCoreDataStoreServer_setupThen___block_invoke_3;
  v15[3] = &unk_278CFB0E0;
  v16 = v7;
  v10 = v7;
  [v8 updateBackupInclusionStatusOnQueue:v9 completionHandler:v15];

  v11 = *(a1 + 32);
  if (v5)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __36__AVTCoreDataStoreServer_setupThen___block_invoke_4;
    v14[3] = &unk_278CFA430;
    v14[4] = v11;
    [v11 scheduleImportExportIfRequiredWithPostImportHandler:v14 completion:v3];
  }

  else
  {
    v12 = [v11 logger];
    v13 = [v6 description];
    [v12 logErrorSettingUpStore:v13];
  }
}

uint64_t __36__AVTCoreDataStoreServer_setupThen___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setSetupCompleted:1];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __36__AVTCoreDataStoreServer_setupThen___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  [v4 logSetupSchedulingMigrationCheck];

  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__AVTCoreDataStoreServer_setupThen___block_invoke_5;
  v7[3] = &unk_278CF9F50;
  v7[4] = v5;
  v8 = v3;
  v6 = v3;
  [v5 scheduleMigrationThen:v7];
}

uint64_t __36__AVTCoreDataStoreServer_setupThen___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) updateThumbnails];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)scheduleImportExportIfRequiredWithPostImportHandler:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __89__AVTCoreDataStoreServer_scheduleImportExportIfRequiredWithPostImportHandler_completion___block_invoke;
  v16[3] = &unk_278CFB158;
  v16[4] = self;
  v19 = 1;
  v8 = v7;
  v17 = v8;
  v9 = v6;
  v18 = v9;
  v10 = MEMORY[0x245CF3540](v16);
  v11 = [(AVTCoreDataStoreServer *)self schedulingAuthority];
  v12 = [v11 importRequired];

  if (v12)
  {
    v13 = [(AVTCoreDataStoreServer *)self logger];
    [v13 logSetupSchedulingImport];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __89__AVTCoreDataStoreServer_scheduleImportExportIfRequiredWithPostImportHandler_completion___block_invoke_4;
    v14[3] = &unk_278CFB180;
    v15 = v10;
    [(AVTCoreDataStoreServer *)self scheduleImportDiscretionary:1 completionBlock:v14];
  }

  else
  {
    v10[2](v10, 0);
  }
}

void __89__AVTCoreDataStoreServer_scheduleImportExportIfRequiredWithPostImportHandler_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__AVTCoreDataStoreServer_scheduleImportExportIfRequiredWithPostImportHandler_completion___block_invoke_2;
  v7[3] = &unk_278CFB130;
  v7[4] = *(a1 + 32);
  v4 = v3;
  v8 = v4;
  v10 = *(a1 + 56);
  v9 = *(a1 + 40);
  v5 = MEMORY[0x245CF3540](v7);
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }

  else
  {
    v5[2](v5);
  }
}

void __89__AVTCoreDataStoreServer_scheduleImportExportIfRequiredWithPostImportHandler_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) schedulingAuthority];
  v3 = [v2 exportRequired];

  if (v3)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v7 = [*(a1 + 32) configuration];
      v5 = [v7 createManagedObjectContext];
    }

    v8 = [*(a1 + 32) logger];
    [v8 logSetupSchedulingExport];

    v9 = *(a1 + 32);
    v10 = *(a1 + 56);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __89__AVTCoreDataStoreServer_scheduleImportExportIfRequiredWithPostImportHandler_completion___block_invoke_3;
    v11[3] = &unk_278CFB108;
    v12 = *(a1 + 48);
    [v9 scheduleExportWithManagedObjectContext:v5 discretionary:v10 completion:v11];
  }

  else
  {
    v6 = *(*(a1 + 48) + 16);

    v6();
  }
}

- (void)scheduleMigrationThen:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = [(AVTCoreDataStoreServer *)self blockScheduler];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__AVTCoreDataStoreServer_scheduleMigrationThen___block_invoke;
  v10[3] = &unk_278CFA5D0;
  v10[4] = self;
  v11 = v5;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  v9 = [(AVTCoreDataStoreServer *)self backgroundQueue];
  [v6 performBlock:v10 afterDelay:v9 onQueue:0.0];
}

uint64_t __48__AVTCoreDataStoreServer_scheduleMigrationThen___block_invoke(uint64_t a1)
{
  [*(a1 + 32) migrate];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)migrate
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(AVTCoreDataStoreServer *)self logger];
  [v3 logCheckingIfMigrationNeeded];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(AVTCoreDataStoreServer *)self configuration];
  v5 = [v4 migratableSources];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 migrationNeeded])
        {
          if (!v8)
          {
            v12 = [(AVTCoreDataStoreServer *)self migratorProvider];
            v8 = v12[2]();
          }

          v13 = [(AVTCoreDataStoreServer *)self backend];
          [v8 migrateContentFromSource:v11 toDestination:v13 error:0];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)scheduleImportDiscretionary:(BOOL)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = [(AVTCoreDataStoreServer *)self logger];
  [v7 logSchedulingImport];

  v8 = os_transaction_create();
  v9 = [(AVTCoreDataStoreServer *)self blockScheduler];
  v13 = MEMORY[0x277D85DD0];
  v16 = a3;
  v14 = v8;
  v15 = v6;
  v10 = v8;
  v11 = v6;
  v12 = [(AVTCoreDataStoreServer *)self backgroundQueue:v13];
  [v9 performBlock:&v13 afterDelay:v12 onQueue:1.0];
}

void __70__AVTCoreDataStoreServer_scheduleImportDiscretionary_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) configuration];
  v3 = [v2 createManagedObjectContext];

  v4 = [*(a1 + 32) mirroringHandler];
  v5 = *(a1 + 56);
  v6 = [*(a1 + 32) backgroundQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__AVTCoreDataStoreServer_scheduleImportDiscretionary_completionBlock___block_invoke_2;
  v8[3] = &unk_278CFB1A8;
  v8[4] = *(a1 + 32);
  v11 = *(a1 + 48);
  v9 = v3;
  v10 = *(a1 + 40);
  v7 = v3;
  [v4 importChangesWithManagedObjectContext:v7 discretionary:v5 workQueue:v6 completionHandler:v8];
}

uint64_t __70__AVTCoreDataStoreServer_scheduleImportDiscretionary_completionBlock___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) schedulingAuthority];
    [v3 importDidCompleteSuccessfully];
  }

  v4 = *(a1 + 40);
  v5 = *(*(a1 + 56) + 16);

  return v5();
}

- (BOOL)processInternalSettingsChanges:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __57__AVTCoreDataStoreServer_processInternalSettingsChanges___block_invoke;
  v23[3] = &unk_278CFA4E8;
  v23[4] = self;
  v6 = MEMORY[0x245CF3540](v23);
  if (AVTUIWipeLocalDatabase())
  {
    AVTUISetWipeLocalDatabase(0);
    v6[2](v6);
    v4[2](v4);
LABEL_9:
    v14 = 1;
    goto LABEL_10;
  }

  if (AVTUIWipeCloudKitContainer())
  {
    v7 = [(AVTCoreDataStoreServer *)self logger];
    [v7 logWillResetZone];

    AVTUISetWipeCloudKitContainer(0);
    v8 = [(AVTCoreDataStoreServer *)self configuration];
    v22 = 0;
    v9 = [v8 setupIfNeeded:&v22];
    v10 = v22;

    if (v9)
    {
      v11 = [(AVTCoreDataStoreServer *)self configuration];
      v12 = [v11 createManagedObjectContext];

      v13 = [(AVTCoreDataStoreServer *)self mirroringHandler];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __57__AVTCoreDataStoreServer_processInternalSettingsChanges___block_invoke_2;
      v18[3] = &unk_278CFB1F8;
      v18[4] = self;
      v20 = v6;
      v19 = v5;
      v21 = v4;
      [v13 resetZoneWithManagedObjectContext:v12 completionHandler:v18];

      v10 = v12;
    }

    else
    {
      v15 = [(AVTCoreDataStoreServer *)self logger];
      v16 = [v10 description];
      [v15 logErrorSettingUpStore:v16];

      v4[2](v4);
    }

    goto LABEL_9;
  }

  v14 = 0;
LABEL_10:

  return v14;
}

void __57__AVTCoreDataStoreServer_processInternalSettingsChanges___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) configuration];
  [v2 tearDownAndEraseAllContent:0];

  v3 = [*(a1 + 32) environment];
  v5 = [v3 imageStoreLocation];

  v4 = [*(a1 + 32) imageHandlingDelegate];
  [v4 clearContentAtLocation:v5];
}

void __57__AVTCoreDataStoreServer_processInternalSettingsChanges___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v7 = [v5 logger];
  v8 = [v6 description];

  [v7 logDidResetZoneWithSuccess:a2 error:v8];
  if (a2)
  {
    (*(a1[6] + 16))();
    v9 = *(a1[7] + 16);

    v9();
  }
}

void __90__AVTCoreDataStoreServer_scheduleExportWithManagedObjectContext_discretionary_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  if (a2)
  {
    v5 = [*(a1 + 32) schedulingAuthority];
    [v5 exportDidCompleteSuccessfully];
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

- (void)updateThumbnails
{
  v3 = [(AVTCoreDataStoreServer *)self logger];
  [v3 logUpdatingThumbnails];

  v5 = [(AVTCoreDataStoreServer *)self imageHandlingDelegate];
  v4 = [(AVTCoreDataStoreServer *)self changeTracker];
  [v5 updateThumbnailsForChangesWithTracker:v4 recordProvider:0];
}

- (void)scheduleUpdateThumbnails
{
  v3 = os_transaction_create();
  v4 = [(AVTCoreDataStoreServer *)self logger];
  [v4 logSchedulingUpdateThumbnails];

  v5 = [(AVTCoreDataStoreServer *)self blockScheduler];
  v8 = MEMORY[0x277D85DD0];
  v9 = v3;
  v6 = v3;
  v7 = [(AVTCoreDataStoreServer *)self backgroundQueue:v8];
  [v5 performBlock:&v8 afterDelay:v7 onQueue:1.0];
}

- (void)deleteStickerRecents
{
  v3 = os_transaction_create();
  v4 = [(AVTCoreDataStoreServer *)self logger];
  [v4 logDeletingStickerRecents];

  v5 = [(AVTCoreDataStoreServer *)self stickerChangeObserver];
  v6 = [(AVTCoreDataStoreServer *)self changeTracker];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__AVTCoreDataStoreServer_deleteStickerRecents__block_invoke;
  v8[3] = &unk_278CFB0E0;
  v9 = v3;
  v7 = v3;
  [v5 processChangesForChangeTracker:v6 completionHandler:v8];
}

- (void)didReceivePushNotification:(id)a3
{
  v4 = os_transaction_create();
  v5 = [(AVTCoreDataStoreServer *)self blockScheduler];
  v8 = MEMORY[0x277D85DD0];
  v9 = v4;
  v6 = v4;
  v7 = [(AVTCoreDataStoreServer *)self backgroundQueue:v8];
  [v5 performBlock:&v8 afterDelay:v7 onQueue:0.0];
}

void __53__AVTCoreDataStoreServer_didReceivePushNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) schedulingAuthority];
  [v2 didReceivePushNotification];

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__AVTCoreDataStoreServer_didReceivePushNotification___block_invoke_2;
  v4[3] = &unk_278CFA6E8;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 scheduleImportDiscretionary:1 completionBlock:v4];
}

+ (BOOL)resetSyncShouldPreserveContentForReason:(unint64_t)a3
{
  result = AVTUIPreserveContentOnAccountChange();
  if (a3 == 4)
  {
    return 0;
  }

  return result;
}

- (void)mirroringHandler:(id)a3 willResetSyncWithReason:(unint64_t)a4
{
  if ([objc_opt_class() resetSyncShouldPreserveContentForReason:a4])
  {
    v5 = [(AVTCoreDataStoreServer *)self configuration];
    v10 = 0;
    v6 = [v5 copyStorageAside:&v10];
    v7 = v10;

    if ((v6 & 1) == 0)
    {
      v8 = [(AVTCoreDataStoreServer *)self logger];
      v9 = [v7 description];
      [v8 logErrorCopyingStorageAside:v9];
    }
  }
}

- (void)mirroringHandler:(id)a3 didResetSyncWithReason:(unint64_t)a4
{
  v6 = os_transaction_create();
  v7 = [(AVTCoreDataStoreServer *)self blockScheduler];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__AVTCoreDataStoreServer_mirroringHandler_didResetSyncWithReason___block_invoke;
  v10[3] = &unk_278CFA2D0;
  v11 = v6;
  v12 = a4;
  v10[4] = self;
  v8 = v6;
  v9 = [(AVTCoreDataStoreServer *)self backgroundQueue];
  [v7 performBlock:v10 afterDelay:v9 onQueue:0.0];
}

void __66__AVTCoreDataStoreServer_mirroringHandler_didResetSyncWithReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) schedulingAuthority];
  [v2 didResetSync];

  v3 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__AVTCoreDataStoreServer_mirroringHandler_didResetSyncWithReason___block_invoke_2;
  v7[3] = &unk_278CFB248;
  v4 = *(a1 + 48);
  v7[4] = v3;
  v7[5] = v4;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__AVTCoreDataStoreServer_mirroringHandler_didResetSyncWithReason___block_invoke_3;
  v5[3] = &unk_278CFA4E8;
  v6 = *(a1 + 40);
  [v3 scheduleImportExportIfRequiredWithPostImportHandler:v7 completion:v5];
}

void __66__AVTCoreDataStoreServer_mirroringHandler_didResetSyncWithReason___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if ([objc_opt_class() resetSyncShouldPreserveContentForReason:*(a1 + 40)])
  {
    v5 = [*(a1 + 32) configuration];
    v6 = [v5 copiedAsideMigratableSource];

    v7 = [*(a1 + 32) migratorProvider];
    v8 = v7[2]();

    v9 = [*(a1 + 32) backend];
    v14 = 0;
    v10 = [v8 migrateContentFromSource:v6 toDestination:v9 error:&v14];
    v11 = v14;

    if ((v10 & 1) == 0)
    {
      v12 = [*(a1 + 32) logger];
      v13 = [v11 description];
      [v12 logErrorMergingCopiedAsideContent:v13];
    }
  }

  v3[2](v3);
}

- (void)clientDidCheckInForServer:(id)a3
{
  v4 = os_transaction_create();
  v5 = [(AVTCoreDataStoreServer *)self blockScheduler];
  v8 = MEMORY[0x277D85DD0];
  v9 = v4;
  v6 = v4;
  v7 = [(AVTCoreDataStoreServer *)self backgroundQueue:v8];
  [v5 performBlock:&v8 afterDelay:v7 onQueue:0.0];
}

void __52__AVTCoreDataStoreServer_clientDidCheckInForServer___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) setupCompleted])
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __52__AVTCoreDataStoreServer_clientDidCheckInForServer___block_invoke_2;
    v3[3] = &unk_278CFA4E8;
    v2 = *(a1 + 32);
    v4 = *(a1 + 40);
    [v2 scheduleImportExportIfRequiredWithPostImportHandler:0 completion:v3];
  }
}

@end