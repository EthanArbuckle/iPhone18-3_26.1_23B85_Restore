@interface HDHealthRecordsProfileExtension
- (BOOL)_isHealthRecordsSupportedLocale:(id)locale;
- (BOOL)deviceConfigurationSupportsHealthRecords:(BOOL *)records error:(id *)error;
- (BOOL)deviceConfigurationSupportsHealthRecords:(BOOL *)records givenLocale:(id)locale error:(id *)error;
- (BOOL)isSupportedFHIRResourceType:(id)type FHIRVersionString:(id)string;
- (BOOL)isSupportedFHIRVersionString:(id)string;
- (HDHealthRecordsProfileExtension)initWithProfile:(id)profile;
- (HDProfile)profile;
- (id)_retrieveSupportedFHIRConfigurationWithError:(id *)error;
- (id)_supportedFHIRConfiguration;
- (id)createClinicalAnalyticsManager;
- (id)createClinicalSharingClient;
- (id)createClinicalSharingManager;
- (id)createDownloadableAttachmentManager;
- (id)createHealthRecordsAPIReminderRegistry;
- (id)createHealthRecordsClinicalAccountManager;
- (id)createHealthRecordsIngestionServiceClient;
- (id)createHealthRecordsLegacyIngestionServiceClient;
- (id)createHealthRecordsXPCServiceClient;
- (id)createOptInStudy;
- (id)createProviderServiceManager;
- (id)createSignedClinicalDataManager;
- (id)createSignedClinicalDataRegistry;
- (int64_t)hasGatewayBackedAccountsWithError:(id *)error;
- (int64_t)hasGatewayBackedAccountsWithTransaction:(id)transaction error:(id *)error;
- (int64_t)hasIssuerBackedAccountsWithError:(id *)error;
- (int64_t)hasIssuerBackedAccountsWithTransaction:(id)transaction error:(id *)error;
- (void)_deleteSignedClinicalDataRecords;
- (void)_handleDismissInstructionWithClient:(id)client;
- (void)_ivarLock_determineHealthRecordsSupportedStatusIfNeeded;
- (void)_ivarLock_registerAsAccountStateObserverIfNeeded;
- (void)_ivarLock_unregisterAsAccountStateObserverIfAppropriate;
- (void)_ivarLock_updateHealthRecordsSupportedStatus;
- (void)_notifyAccountEventObserversOfEvent:(unint64_t)event;
- (void)_notifyHealthRecordsSupportedChangeObservers;
- (void)accountManager:(id)manager account:(id)account didChangeState:(int64_t)state;
- (void)addAccountEventObserver:(id)observer;
- (void)didUpdateSourcesForAccountWithIdentifier:(id)identifier;
- (void)notificationSyncClient:(id)client didReceiveInstructionWithAction:(int64_t)action;
- (void)prepareForObliteration;
- (void)registerHealthRecordsSupportedChangeObserver:(id)observer;
- (void)removeAccountEventObserver:(id)observer;
- (void)unitTesting_replaceHealthRecordsPluginAndSetCompleteScheduledExtractionHandler:(id)handler;
- (void)unitTesting_triggerLocaleDidChangeNotification;
- (void)unregisterHealthRecordsSupportedChangeObserver:(id)observer;
@end

@implementation HDHealthRecordsProfileExtension

- (void)_ivarLock_registerAsAccountStateObserverIfNeeded
{
  os_unfair_lock_assert_owner(&self->_ivarLock);
  accountEventObservers = self->_accountEventObservers;
  if (accountEventObservers)
  {
    v4 = [(HKObserverSet *)accountEventObservers count];
    if (v4 + [(HKObserverSet *)self->_chrSupportedObservers count]<= 0)
    {
      accountManager = self->_accountManager;

      [(HDClinicalAccountManager *)accountManager addAccountStateObserver:self];
    }
  }
}

- (void)_ivarLock_determineHealthRecordsSupportedStatusIfNeeded
{
  os_unfair_lock_assert_owner(&self->_ivarLock);
  if (!self->_lastKnownSupportedStatus)
  {

    [(HDHealthRecordsProfileExtension *)self _ivarLock_updateHealthRecordsSupportedStatus];
  }
}

- (HDHealthRecordsProfileExtension)initWithProfile:(id)profile
{
  profileCopy = profile;
  v50.receiver = self;
  v50.super_class = HDHealthRecordsProfileExtension;
  v5 = [(HDHealthRecordsProfileExtension *)&v50 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    healthDaemon = [profileCopy healthDaemon];
    objc_storeWeak(&v6->_healthDeamon, healthDaemon);

    v6->_ivarLock._os_unfair_lock_opaque = 0;
    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    profileType = [WeakRetained profileType];

    if (profileType != &dword_0 + 2)
    {
      createHealthRecordsClinicalAccountManager = [(HDHealthRecordsProfileExtension *)v6 createHealthRecordsClinicalAccountManager];
      accountManager = v6->_accountManager;
      v6->_accountManager = createHealthRecordsClinicalAccountManager;

      createHealthRecordsAPIReminderRegistry = [(HDHealthRecordsProfileExtension *)v6 createHealthRecordsAPIReminderRegistry];
      APIReminderRegistry = v6->_APIReminderRegistry;
      v6->_APIReminderRegistry = createHealthRecordsAPIReminderRegistry;

      v14 = [[HDClinicalIngestionManager alloc] initWithProfileExtension:v6];
      ingestionManager = v6->_ingestionManager;
      v6->_ingestionManager = v14;

      createProviderServiceManager = [(HDHealthRecordsProfileExtension *)v6 createProviderServiceManager];
      providerServiceManager = v6->_providerServiceManager;
      v6->_providerServiceManager = createProviderServiceManager;

      createSignedClinicalDataManager = [(HDHealthRecordsProfileExtension *)v6 createSignedClinicalDataManager];
      signedClinicalDataManager = v6->_signedClinicalDataManager;
      v6->_signedClinicalDataManager = createSignedClinicalDataManager;

      createClinicalSharingManager = [(HDHealthRecordsProfileExtension *)v6 createClinicalSharingManager];
      clinicalSharingManager = v6->_clinicalSharingManager;
      v6->_clinicalSharingManager = createClinicalSharingManager;

      createDownloadableAttachmentManager = [(HDHealthRecordsProfileExtension *)v6 createDownloadableAttachmentManager];
      downloadableAttachmentManager = v6->_downloadableAttachmentManager;
      v6->_downloadableAttachmentManager = createDownloadableAttachmentManager;

      v24 = [HKObserverSet alloc];
      v25 = [v24 initWithName:@"health-records-profile-extension-account-event" loggingCategory:HKLogHealthRecords];
      accountEventObservers = v6->_accountEventObservers;
      v6->_accountEventObservers = v25;

      v27 = [HKObserverSet alloc];
      v28 = [v27 initWithName:@"health-records-profile-extension-chr-supported" loggingCategory:HKLogHealthRecords];
      chrSupportedObservers = v6->_chrSupportedObservers;
      v6->_chrSupportedObservers = v28;
    }

    v30 = objc_loadWeakRetained(&v6->_profile);
    profileType2 = [v30 profileType];

    if (profileType2 == &dword_0 + 1)
    {
      createClinicalAnalyticsManager = [(HDHealthRecordsProfileExtension *)v6 createClinicalAnalyticsManager];
      analyticsManager = v6->_analyticsManager;
      v6->_analyticsManager = createClinicalAnalyticsManager;

      v34 = [[HDClinicalDailyAnalyticsManager alloc] initWithProfileExtension:v6];
      dailyAnalyticsManager = v6->_dailyAnalyticsManager;
      v6->_dailyAnalyticsManager = v34;

      createOptInStudy = [(HDHealthRecordsProfileExtension *)v6 createOptInStudy];
      optInStudy = v6->_optInStudy;
      v6->_optInStudy = createOptInStudy;

      v38 = [[HDClinicalOptInDataCollectionManager alloc] initWithProfileExtension:v6];
      optInDataCollectionManager = v6->_optInDataCollectionManager;
      v6->_optInDataCollectionManager = v38;

      v40 = [[HDClinicalOptInDataUploadManager alloc] initWithProfileExtension:v6];
      optInDataUploadManager = v6->_optInDataUploadManager;
      v6->_optInDataUploadManager = v40;

      v42 = [HDNotificationSyncClient alloc];
      v43 = objc_loadWeakRetained(&v6->_profile);
      v44 = HKHealthRecordsNotificationSyncClientIdentifier;
      v45 = HKCreateSerialDispatchQueue();
      v46 = [v42 initWithProfile:v43 clientIdentifier:v44 queue:v45];
      notificationSyncClient = v6->_notificationSyncClient;
      v6->_notificationSyncClient = v46;

      [(HDNotificationSyncClient *)v6->_notificationSyncClient setDelegate:v6];
    }

    v6->_lastKnownSupportedStatus = 0;
    v48 = +[NSNotificationCenter defaultCenter];
    [v48 addObserver:v6 selector:"_localeDidChange:" name:NSCurrentLocaleDidChangeNotification object:0];
  }

  return v6;
}

- (int64_t)hasGatewayBackedAccountsWithError:(id *)error
{
  accountManager = self->_accountManager;
  if (accountManager)
  {
    return [(HDClinicalAccountManager *)accountManager highPriorityTransactionHasGatewayBackedAccountsWithError:error];
  }

  else
  {
    return 2;
  }
}

- (int64_t)hasIssuerBackedAccountsWithError:(id *)error
{
  accountManager = self->_accountManager;
  if (accountManager)
  {
    return [(HDClinicalAccountManager *)accountManager highPriorityTransactionHasIssuerBackedAccountsWithError:error];
  }

  else
  {
    return 2;
  }
}

- (int64_t)hasGatewayBackedAccountsWithTransaction:(id)transaction error:(id *)error
{
  accountManager = self->_accountManager;
  if (accountManager)
  {
    return [(HDClinicalAccountManager *)accountManager hasGatewayBackedAccountsWithTransaction:transaction error:error];
  }

  else
  {
    return 2;
  }
}

- (int64_t)hasIssuerBackedAccountsWithTransaction:(id)transaction error:(id *)error
{
  accountManager = self->_accountManager;
  if (accountManager)
  {
    return [(HDClinicalAccountManager *)accountManager hasIssuerBackedAccountsWithTransaction:transaction error:error];
  }

  else
  {
    return 2;
  }
}

- (BOOL)deviceConfigurationSupportsHealthRecords:(BOOL *)records error:(id *)error
{
  v7 = +[NSLocale autoupdatingCurrentLocale];
  LOBYTE(error) = [(HDHealthRecordsProfileExtension *)self deviceConfigurationSupportsHealthRecords:records givenLocale:v7 error:error];

  return error;
}

- (BOOL)deviceConfigurationSupportsHealthRecords:(BOOL *)records givenLocale:(id)locale error:(id *)error
{
  localeCopy = locale;
  if (!records)
  {
    sub_A25EC(a2, self);
  }

  if ([(HDHealthRecordsProfileExtension *)self _isHealthRecordsSupportedLocale:localeCopy])
  {
    v10 = 1;
    v11 = 1;
  }

  else
  {
    v12 = [(HDHealthRecordsProfileExtension *)self hasGatewayBackedAccountsWithError:error];
    v11 = v12 != 0;
    v10 = v12 == 1;
  }

  *records = v10;

  return v11;
}

- (BOOL)_isHealthRecordsSupportedLocale:(id)locale
{
  localeCopy = locale;
  profile = [(HDHealthRecordsProfileExtension *)self profile];
  daemon = [profile daemon];
  ontologyConfigurationProvider = [daemon ontologyConfigurationProvider];
  v8 = [ontologyConfigurationProvider isCountrySupported:localeCopy];

  return v8;
}

- (void)_ivarLock_updateHealthRecordsSupportedStatus
{
  os_unfair_lock_assert_owner(&self->_ivarLock);
  v7 = 0;
  v6 = 0;
  v3 = [(HDHealthRecordsProfileExtension *)self deviceConfigurationSupportsHealthRecords:&v7 error:&v6];
  v4 = v6;
  if (v3)
  {
    v5 = 1;
    if (!v7)
    {
      v5 = 2;
    }

    self->_lastKnownSupportedStatus = v5;
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A2668();
    }
  }
}

- (void)_notifyHealthRecordsSupportedChangeObservers
{
  os_unfair_lock_lock(&self->_ivarLock);
  if ([(HKObserverSet *)self->_chrSupportedObservers count])
  {
    lastKnownSupportedStatus = self->_lastKnownSupportedStatus;
    [(HDHealthRecordsProfileExtension *)self _ivarLock_updateHealthRecordsSupportedStatus];
    v4 = self->_lastKnownSupportedStatus;
    if (v4)
    {
      if (lastKnownSupportedStatus != v4)
      {
        chrSupportedObservers = self->_chrSupportedObservers;
        v6[0] = _NSConcreteStackBlock;
        v6[1] = 3221225472;
        v6[2] = sub_4990C;
        v6[3] = &unk_107748;
        v6[4] = self;
        v7 = v4 == 1;
        [(HKObserverSet *)chrSupportedObservers notifyObservers:v6];
      }
    }

    os_unfair_lock_unlock(&self->_ivarLock);
  }

  else
  {

    os_unfair_lock_unlock(&self->_ivarLock);
  }
}

- (BOOL)isSupportedFHIRVersionString:(id)string
{
  stringCopy = string;
  _supportedFHIRConfiguration = [(HDHealthRecordsProfileExtension *)self _supportedFHIRConfiguration];
  v6 = [_supportedFHIRConfiguration isSupportedFHIRVersionString:stringCopy];

  return v6;
}

- (BOOL)isSupportedFHIRResourceType:(id)type FHIRVersionString:(id)string
{
  stringCopy = string;
  typeCopy = type;
  _supportedFHIRConfiguration = [(HDHealthRecordsProfileExtension *)self _supportedFHIRConfiguration];
  v9 = [_supportedFHIRConfiguration isSupportedFHIRResourceType:typeCopy FHIRVersionString:stringCopy];

  return v9;
}

- (id)_supportedFHIRConfiguration
{
  os_unfair_lock_lock(&self->_ivarLock);
  if (!_HDIsUnitTesting || (supportedFHIRConfiguration = self->_unitTesting_supportedFHIRConfigurationOverride) == 0)
  {
    supportedFHIRConfiguration = self->_supportedFHIRConfiguration;
    if (!supportedFHIRConfiguration)
    {
      v10 = 0;
      v4 = [(HDHealthRecordsProfileExtension *)self _retrieveSupportedFHIRConfigurationWithError:&v10];
      v5 = v10;
      v6 = [v4 copy];
      v7 = self->_supportedFHIRConfiguration;
      self->_supportedFHIRConfiguration = v6;

      if (!self->_supportedFHIRConfiguration)
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          sub_A26D4();
        }
      }

      supportedFHIRConfiguration = self->_supportedFHIRConfiguration;
    }
  }

  v8 = supportedFHIRConfiguration;
  os_unfair_lock_unlock(&self->_ivarLock);

  return v8;
}

- (id)_retrieveSupportedFHIRConfigurationWithError:(id *)error
{
  createHealthRecordsXPCServiceClient = [(HDHealthRecordsProfileExtension *)self createHealthRecordsXPCServiceClient];
  v5 = [createHealthRecordsXPCServiceClient supportedFHIRConfigurationWithError:error];

  return v5;
}

- (void)didUpdateSourcesForAccountWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = dispatch_get_global_queue(17, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_49BE8;
  v7[3] = &unk_106B68;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(v5, v7);
}

- (void)registerHealthRecordsSupportedChangeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_ivarLock);
  if (!self->_chrSupportedObservers)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A27BC(self, v5);
    }
  }

  [(HDHealthRecordsProfileExtension *)self _ivarLock_determineHealthRecordsSupportedStatusIfNeeded];
  [(HDHealthRecordsProfileExtension *)self _ivarLock_registerAsAccountStateObserverIfNeeded];
  [(HKObserverSet *)self->_chrSupportedObservers registerObserver:observerCopy];

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (void)unregisterHealthRecordsSupportedChangeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_ivarLock);
  [(HKObserverSet *)self->_chrSupportedObservers unregisterObserver:observerCopy];

  [(HDHealthRecordsProfileExtension *)self _ivarLock_unregisterAsAccountStateObserverIfAppropriate];

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (void)addAccountEventObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_ivarLock);
  if (!self->_accountEventObservers)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A2854(self, v5);
    }
  }

  [(HDHealthRecordsProfileExtension *)self _ivarLock_registerAsAccountStateObserverIfNeeded];
  [(HKObserverSet *)self->_accountEventObservers registerObserver:observerCopy];

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (void)removeAccountEventObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_ivarLock);
  [(HKObserverSet *)self->_accountEventObservers unregisterObserver:observerCopy];

  [(HDHealthRecordsProfileExtension *)self _ivarLock_unregisterAsAccountStateObserverIfAppropriate];

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (void)_ivarLock_unregisterAsAccountStateObserverIfAppropriate
{
  os_unfair_lock_assert_owner(&self->_ivarLock);
  v3 = [(HKObserverSet *)self->_accountEventObservers count];
  if (v3 + [(HKObserverSet *)self->_chrSupportedObservers count]<= 0)
  {
    accountManager = self->_accountManager;

    [(HDClinicalAccountManager *)accountManager removeAccountStateObserver:self];
  }
}

- (id)createClinicalAnalyticsManager
{
  v2 = [[HDClinicalAnalyticsManager alloc] initWithProfileExtension:self];

  return v2;
}

- (id)createHealthRecordsAPIReminderRegistry
{
  v2 = [[HDHealthRecordsAPIReminderRegistry alloc] initWithProfileExtension:self];

  return v2;
}

- (id)createHealthRecordsXPCServiceClient
{
  v2 = objc_alloc_init(HDHealthRecordsXPCServiceClient);

  return v2;
}

- (id)createHealthRecordsClinicalAccountManager
{
  v2 = [[HDClinicalAccountManager alloc] initWithProfileExtension:self];

  return v2;
}

- (id)createProviderServiceManager
{
  v2 = [[HDClinicalProviderServiceManager alloc] initWithProfileExtension:self];

  return v2;
}

- (id)createHealthRecordsIngestionServiceClient
{
  v2 = objc_alloc_init(HDHealthRecordsIngestionServiceClient);

  return v2;
}

- (id)createHealthRecordsLegacyIngestionServiceClient
{
  v2 = objc_alloc_init(HDHealthRecordsLegacyIngestionServiceClient);

  return v2;
}

- (id)createSignedClinicalDataManager
{
  v2 = [[HDSignedClinicalDataManager alloc] initWithProfileExtension:self];

  return v2;
}

- (id)createSignedClinicalDataRegistry
{
  v3 = [HDSignedClinicalDataRegistry alloc];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  healthDirectoryURL = [daemon healthDirectoryURL];
  v7 = [(HDSignedClinicalDataRegistry *)v3 initWithHealthDirectoryURL:healthDirectoryURL];

  return v7;
}

- (id)createClinicalSharingManager
{
  v2 = [[HDClinicalSharingManager alloc] initWithProfileExtension:self];

  return v2;
}

- (id)createClinicalSharingClient
{
  v2 = objc_alloc_init(HKClinicalSharingClient);

  return v2;
}

- (id)createDownloadableAttachmentManager
{
  v2 = [[HDMedicalDownloadableAttachmentManager alloc] initWithProfileExtension:self];

  return v2;
}

- (id)createOptInStudy
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 integerForKey:HDClinicalOptInStudyHealthCloudEnvironmentKey];

  v5 = [HDClinicalOptInStudy alloc];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [(HDClinicalOptInStudy *)v5 initWithProfile:WeakRetained environment:v4];

  return v7;
}

- (void)unitTesting_triggerLocaleDidChangeNotification
{
  v3 = [NSNotification notificationWithName:NSCurrentLocaleDidChangeNotification object:self];
  [(HDHealthRecordsProfileExtension *)self _localeDidChange:v3];
}

- (void)accountManager:(id)manager account:(id)account didChangeState:(int64_t)state
{
  v5 = 100;
  if (state == 1)
  {
    v5 = 0;
  }

  if (state == 3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (v6 != 100)
  {
    [(HDHealthRecordsProfileExtension *)self _notifyHealthRecordsSupportedChangeObservers:manager];

    [(HDHealthRecordsProfileExtension *)self _notifyAccountEventObserversOfEvent:v6];
  }
}

- (void)_notifyAccountEventObserversOfEvent:(unint64_t)event
{
  accountEventObservers = self->_accountEventObservers;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_4A474;
  v4[3] = &unk_107798;
  v4[4] = self;
  v4[5] = event;
  [(HKObserverSet *)accountEventObservers notifyObservers:v4];
}

- (void)notificationSyncClient:(id)client didReceiveInstructionWithAction:(int64_t)action
{
  clientCopy = client;
  _HKInitializeLogging();
  v7 = HKLogNotifications;
  if (os_log_type_enabled(HKLogNotifications, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = objc_opt_class();
    v10 = v9;
    v11 = NSStringFromHKNotificationInstructionAction();
    v14 = 138543618;
    v15 = v9;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received instruction with action: %@", &v14, 0x16u);
  }

  if (action == 1)
  {
    [(HDHealthRecordsProfileExtension *)self _handleDismissInstructionWithClient:clientCopy];
  }

  else
  {
    _HKInitializeLogging();
    v12 = HKLogNotifications;
    if (os_log_type_enabled(HKLogNotifications, OS_LOG_TYPE_ERROR))
    {
      sub_A28EC(v12);
    }
  }

  unitTest_didProcessNotificationInstruction = self->_unitTest_didProcessNotificationInstruction;
  if (unitTest_didProcessNotificationInstruction)
  {
    unitTest_didProcessNotificationInstruction[2]();
  }
}

- (void)_handleDismissInstructionWithClient:(id)client
{
  clientCopy = client;
  _HKInitializeLogging();
  v5 = HKLogNotifications;
  if (os_log_type_enabled(HKLogNotifications, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Handling dismiss instruction", buf, 0xCu);
  }

  v23 = 0;
  v6 = [clientCopy pendingNotificationDismissInstructionsWithError:&v23];
  v7 = v23;
  _HKInitializeLogging();
  v8 = HKLogNotifications;
  if (v6)
  {
    if (os_log_type_enabled(HKLogNotifications, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = objc_opt_class();
      v11 = v10;
      messageIdentifiers = [v6 messageIdentifiers];
      *buf = 138543618;
      selfCopy = v10;
      v26 = 2114;
      v27 = messageIdentifiers;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received notification dismiss instructions with identifiers: %{public}@", buf, 0x16u);
    }

    categoryIdentifiers = [v6 categoryIdentifiers];
    allObjects = [categoryIdentifiers allObjects];

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    notificationManager = [WeakRetained notificationManager];
    [notificationManager removeDeliveredNotificationsWithIdentifiers:allObjects];

    v22 = v7;
    LODWORD(notificationManager) = [clientCopy markPendingNotificationInstructionsAsProcessed:v6 error:&v22];
    v17 = v22;

    _HKInitializeLogging();
    v18 = HKLogNotifications;
    if (notificationManager)
    {
      if (os_log_type_enabled(HKLogNotifications, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
        v20 = objc_opt_class();
        *buf = 138543618;
        selfCopy = v20;
        v26 = 2114;
        v27 = allObjects;
        v21 = v20;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Dismissed notifications: %{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(HKLogNotifications, OS_LOG_TYPE_ERROR))
    {
      sub_A299C(v18);
    }
  }

  else
  {
    if (os_log_type_enabled(HKLogNotifications, OS_LOG_TYPE_ERROR))
    {
      sub_A2A40(v8);
    }

    v17 = v7;
  }
}

- (void)prepareForObliteration
{
  _HKInitializeLogging();
  v3 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Preparing for obliteration", &v4, 0xCu);
  }

  [(HDHealthRecordsProfileExtension *)self _deleteSignedClinicalDataRecords];
}

- (void)_deleteSignedClinicalDataRecords
{
  v11 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataManager = [WeakRetained dataManager];
  v5 = objc_opt_class();
  v6 = +[HDSQLitePredicate truePredicate];
  v10 = 0;
  v7 = [dataManager deleteDataObjectsOfClass:v5 predicate:v6 limit:0 deletedSampleCount:&v11 notifyObservers:0 generateDeletedObjects:0 recursiveDeleteAuthorizationBlock:0 error:&v10];
  v8 = v10;

  if (v7)
  {
    if (v11)
    {
      _HKInitializeLogging();
      v9 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy = self;
        v14 = 2048;
        v15 = v11;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Deleted %lu signed clinical data records (and associated Wallet cards if any)", buf, 0x16u);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A2AE4();
    }
  }
}

- (void)unitTesting_replaceHealthRecordsPluginAndSetCompleteScheduledExtractionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[HDClinicalIngestionManager alloc] _initWithProfileExtension:self];
  [(HDClinicalIngestionManager *)v5 setUnitTesting_didCompleteScheduledExtraction:handlerCopy];

  [(HDClinicalIngestionManager *)v5 _registerForProfileDidBecomeReady];
  ingestionManager = self->_ingestionManager;
  self->_ingestionManager = v5;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end