@interface NSCloudKitMirroringDelegateOptions
- (NSCloudKitMirroringDelegateOptions)init;
- (NSCloudKitMirroringDelegateOptions)initWithCloudKitContainerOptions:(id)options;
- (NSCloudKitMirroringDelegateOptions)initWithContainerIdentifier:(id)identifier;
- (id)copy;
- (id)description;
- (void)dealloc;
- (void)setActivityVouchers:(id)vouchers;
- (void)setInitializeSchema:(BOOL)schema;
@end

@implementation NSCloudKitMirroringDelegateOptions

- (id)copy
{
  v3 = objc_alloc_init(objc_opt_class());
  *(v3 + 3) = [(NSString *)self->_containerIdentifier copy];
  *(v3 + 4) = [(NSNumber *)self->_ckAssetThresholdBytes copy];
  *(v3 + 9) = self->_useDeviceToDeviceEncryption;
  *(v3 + 5) = self->_operationMemoryThresholdBytes;
  *(v3 + 6) = self->_containerOptions;
  *(v3 + 10) = self->_automaticallyDownloadFileBackedFutures;
  *(v3 + 11) = self->_automaticallyScheduleImportAndExportOperations;
  *(v3 + 7) = self->_scheduler;
  *(v3 + 8) = self->_notificationListener;
  *(v3 + 12) = self->_skipCloudKitSetup;
  *(v3 + 13) = self->_useDaemon;
  *(v3 + 14) = self->_useTestDaemon;

  *(v3 + 10) = self->_containerProvider;
  *(v3 + 11) = self->_storeMonitorProvider;
  *(v3 + 15) = self->_preserveLegacyRecordMetadataBehavior;
  *(v3 + 13) = self->_apsConnectionMachServiceName;

  *(v3 + 9) = self->_metricsClient;
  *(v3 + 12) = self->_metadataPurger;
  *(v3 + 14) = self->_defaultOperationConfiguration;
  *(v3 + 15) = self->_databaseScope;
  v4 = objc_autoreleasePoolPush();
  Weak = objc_loadWeak(&self->_progressProvider);
  objc_storeWeak(v3 + 16, Weak);
  objc_autoreleasePoolPop(v4);

  *(v3 + 17) = self->_archivingUtilities;
  *(v3 + 18) = self->_test_useLegacySavePolicy;
  [v3 setActivityVouchers:self->_activityVouchers];
  *(v3 + 16) = self->_bypassSchedulerActivityForInitialImport;
  *(v3 + 17) = self->_bypassDasdRateLimiting;
  return v3;
}

- (NSCloudKitMirroringDelegateOptions)init
{
  v4.receiver = self;
  v4.super_class = NSCloudKitMirroringDelegateOptions;
  v2 = [(NSCloudKitMirroringDelegateOptions *)&v4 init];
  if (v2)
  {
    *(v2 + 10) = objc_alloc_init(PFCloudKitContainerProvider);
    *(v2 + 11) = objc_alloc_init(PFCloudKitStoreMonitorProvider);
    *(v2 + 9) = objc_alloc_init(PFMetricsClient);
    *(v2 + 13) = 1;
    *(v2 + 9) = 0;
    v2[15] = 0;
    *(v2 + 12) = objc_alloc_init(PFCloudKitMetadataPurger);
    *(v2 + 14) = 0;
    *(v2 + 15) = 2;
    *(v2 + 17) = objc_alloc_init(PFCloudKitArchivingUtilities);
    v2[18] = 1;
    v2[16] = 0;
    *(v2 + 18) = objc_alloc_init(MEMORY[0x1E695DEC8]);
    if ([objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")])
    {
      v2[16] = 1;
    }
  }

  return v2;
}

- (void)dealloc
{
  self->_ckAssetThresholdBytes = 0;

  self->_operationMemoryThresholdBytes = 0;
  self->_containerOptions = 0;

  self->_scheduler = 0;
  self->_notificationListener = 0;

  self->_apsConnectionMachServiceName = 0;
  self->_defaultOperationConfiguration = 0;
  objc_storeWeak(&self->_progressProvider, 0);

  self->_archivingUtilities = 0;
  v3.receiver = self;
  v3.super_class = NSCloudKitMirroringDelegateOptions;
  [(NSCloudKitMirroringDelegateOptions *)&v3 dealloc];
}

- (NSCloudKitMirroringDelegateOptions)initWithContainerIdentifier:(id)identifier
{
  v4 = [(NSCloudKitMirroringDelegateOptions *)self init];
  if (v4)
  {
    v4->_containerIdentifier = identifier;
  }

  return v4;
}

- (NSCloudKitMirroringDelegateOptions)initWithCloudKitContainerOptions:(id)options
{
  v4 = -[NSCloudKitMirroringDelegateOptions initWithContainerIdentifier:](self, "initWithContainerIdentifier:", [options containerIdentifier]);
  v5 = v4;
  if (v4)
  {
    v4->_automaticallyScheduleImportAndExportOperations = 1;
    v4->_useDeviceToDeviceEncryption = [options useDeviceToDeviceEncryption];
    v5->_apsConnectionMachServiceName = [options apsConnectionMachServiceName];
    v5->_databaseScope = [options databaseScope];
    v5->_containerOptions = [options containerOptions];
    v5->_operationMemoryThresholdBytes = [options operationMemoryThresholdBytes];
    v5->_automaticallyDownloadFileBackedFutures = [options automaticallyDownloadFileBackedFutures];
    v5->_ckAssetThresholdBytes = [options ckAssetThresholdBytes];
    v6 = objc_autoreleasePoolPush();
    objc_storeWeak(&v5->_progressProvider, [options progressProvider]);
    if ([options testContainerOverride])
    {

      v5->_containerProvider = -[PFStaticCloudKitContainerProvider initWithContainer:]([PFStaticCloudKitContainerProvider alloc], "initWithContainer:", [options testContainerOverride]);
      v5->_bypassDasdRateLimiting = 1;
    }

    objc_autoreleasePoolPop(v6);
    if ([objc_msgSend(options "activityVouchers")])
    {

      v5->_activityVouchers = [options activityVouchers];
    }
  }

  return v5;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v33.receiver = self;
  v33.super_class = NSCloudKitMirroringDelegateOptions;
  v4 = [-[NSCloudKitMirroringDelegateOptions description](&v33 description)];
  containerIdentifier = self->_containerIdentifier;
  if (!containerIdentifier)
  {
    containerIdentifier = [MEMORY[0x1E695DFB0] null];
  }

  [v4 appendFormat:@" containerIdentifier:%@", containerIdentifier];
  if ((softLinkCKDatabaseScopeString[0])(self->_databaseScope))
  {
    null = (softLinkCKDatabaseScopeString[0])(self->_databaseScope);
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  [v4 appendFormat:@" databaseScope:%@", null];
  ckAssetThresholdBytes = self->_ckAssetThresholdBytes;
  if (!ckAssetThresholdBytes)
  {
    ckAssetThresholdBytes = [MEMORY[0x1E695DFB0] null];
  }

  [v4 appendFormat:@" ckAssetThresholdBytes:%@", ckAssetThresholdBytes];
  operationMemoryThresholdBytes = self->_operationMemoryThresholdBytes;
  if (!operationMemoryThresholdBytes)
  {
    operationMemoryThresholdBytes = [MEMORY[0x1E695DFB0] null];
  }

  [v4 appendFormat:@" operationMemoryThresholdBytes:%@", operationMemoryThresholdBytes];
  if (self->_useDeviceToDeviceEncryption)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v4 appendFormat:@" useEncryptedStorage:%@", v9];
  if (self->_useDeviceToDeviceEncryption)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v4 appendFormat:@" useDeviceToDeviceEncryption:%@", v10];
  if (self->_automaticallyDownloadFileBackedFutures)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  [v4 appendFormat:@" automaticallyDownloadFileBackedFutures:%@", v11];
  if (self->_automaticallyScheduleImportAndExportOperations)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [v4 appendFormat:@" automaticallyScheduleImportAndExportOperations:%@", v12];
  if (self->_skipCloudKitSetup)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  [v4 appendFormat:@" skipCloudKitSetup:%@", v13];
  if (self->_preserveLegacyRecordMetadataBehavior)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  [v4 appendFormat:@" preserveLegacyRecordMetadataBehavior:%@", v14];
  if (self->_useDaemon)
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  [v4 appendFormat:@" useDaemon:%@", v15];
  apsConnectionMachServiceName = self->_apsConnectionMachServiceName;
  if (!apsConnectionMachServiceName)
  {
    apsConnectionMachServiceName = [MEMORY[0x1E695DFB0] null];
  }

  [v4 appendFormat:@" apsConnectionMachServiceName:%@", apsConnectionMachServiceName];
  containerProvider = self->_containerProvider;
  if (!containerProvider)
  {
    containerProvider = [MEMORY[0x1E695DFB0] null];
  }

  [v4 appendFormat:@" containerProvider:%@", containerProvider];
  storeMonitorProvider = self->_storeMonitorProvider;
  if (!storeMonitorProvider)
  {
    storeMonitorProvider = [MEMORY[0x1E695DFB0] null];
  }

  [v4 appendFormat:@" storeMonitorProvider:%@", storeMonitorProvider];
  metricsClient = self->_metricsClient;
  if (!metricsClient)
  {
    metricsClient = [MEMORY[0x1E695DFB0] null];
  }

  [v4 appendFormat:@" metricsClient:%@", metricsClient];
  metadataPurger = self->_metadataPurger;
  if (!metadataPurger)
  {
    metadataPurger = [MEMORY[0x1E695DFB0] null];
  }

  [v4 appendFormat:@" metadataPurger:%@", metadataPurger];
  scheduler = self->_scheduler;
  if (!scheduler)
  {
    scheduler = [MEMORY[0x1E695DFB0] null];
  }

  [v4 appendFormat:@" scheduler:%@", scheduler];
  notificationListener = self->_notificationListener;
  if (!notificationListener)
  {
    notificationListener = [MEMORY[0x1E695DFB0] null];
  }

  [v4 appendFormat:@" notificationListener:%@", notificationListener];
  containerOptions = self->_containerOptions;
  if (!containerOptions)
  {
    containerOptions = [MEMORY[0x1E695DFB0] null];
  }

  [v4 appendFormat:@" containerOptions:%@", containerOptions];
  defaultOperationConfiguration = self->_defaultOperationConfiguration;
  if (!defaultOperationConfiguration)
  {
    defaultOperationConfiguration = [MEMORY[0x1E695DFB0] null];
  }

  [v4 appendFormat:@" defaultOperationConfiguration:%@", defaultOperationConfiguration];
  v25 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained(&self->_progressProvider);
  v27 = WeakRetained;
  if (!WeakRetained)
  {
    WeakRetained = [MEMORY[0x1E695DFB0] null];
  }

  [v4 appendFormat:@" progressProvider:%@", WeakRetained];

  objc_autoreleasePoolPop(v25);
  if (self->_test_useLegacySavePolicy)
  {
    v28 = @"YES";
  }

  else
  {
    v28 = @"NO";
  }

  [v4 appendFormat:@" test_useLegacySavePolicy:%@", v28];
  [v4 appendFormat:@" archivingUtilities:%@", self->_archivingUtilities];
  if (self->_bypassSchedulerActivityForInitialImport)
  {
    v29 = @"YES";
  }

  else
  {
    v29 = @"NO";
  }

  [v4 appendFormat:@" bypassSchedulerActivityForInitialImport:%@", v29];
  if (self->_bypassDasdRateLimiting)
  {
    v30 = @"YES";
  }

  else
  {
    v30 = @"NO";
  }

  [v4 appendFormat:@" bypassDasdRateLimiting:%@", v30];
  [v4 appendFormat:@" activityVouchers:%@", self->_activityVouchers];
  v31 = [v4 copy];

  objc_autoreleasePoolPop(v3);
  return v31;
}

- (void)setInitializeSchema:(BOOL)schema
{
  self->_initializeSchema = schema;
  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCloudKitMirroringDelegateOptions.initializeSchema is no longer supported and will be removed in a future release. Please use [NSPersistentCloudKitContainer initializeSchemaWithOptions:error:] or NSCloudKitMirroringInitializeSchemaRequest instead.\n", buf, 2u);
  }

  v4 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&dword_18565F000, v4, OS_LOG_TYPE_FAULT, "CoreData: NSCloudKitMirroringDelegateOptions.initializeSchema is no longer supported and will be removed in a future release. Please use [NSPersistentCloudKitContainer initializeSchemaWithOptions:error:] or NSCloudKitMirroringInitializeSchemaRequest instead.", v5, 2u);
  }
}

- (void)setActivityVouchers:(id)vouchers
{
  activityVouchers = self->_activityVouchers;
  if (activityVouchers != vouchers)
  {
    if (vouchers)
    {

      vouchersCopy = vouchers;
    }

    else
    {
      if (![(NSArray *)activityVouchers count])
      {
        return;
      }

      vouchersCopy = objc_alloc_init(MEMORY[0x1E695DEC8]);
    }

    self->_activityVouchers = vouchersCopy;
  }
}

@end