@interface HDHealthRecordsProfileExtension
- (BOOL)_isHealthRecordsSupportedLocale:(id)a3;
- (BOOL)deviceConfigurationSupportsHealthRecords:(BOOL *)a3 error:(id *)a4;
- (BOOL)deviceConfigurationSupportsHealthRecords:(BOOL *)a3 givenLocale:(id)a4 error:(id *)a5;
- (BOOL)isSupportedFHIRResourceType:(id)a3 FHIRVersionString:(id)a4;
- (BOOL)isSupportedFHIRVersionString:(id)a3;
- (HDHealthRecordsProfileExtension)initWithProfile:(id)a3;
- (HDProfile)profile;
- (id)_retrieveSupportedFHIRConfigurationWithError:(id *)a3;
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
- (int64_t)hasGatewayBackedAccountsWithError:(id *)a3;
- (int64_t)hasGatewayBackedAccountsWithTransaction:(id)a3 error:(id *)a4;
- (int64_t)hasIssuerBackedAccountsWithError:(id *)a3;
- (int64_t)hasIssuerBackedAccountsWithTransaction:(id)a3 error:(id *)a4;
- (void)_deleteSignedClinicalDataRecords;
- (void)_handleDismissInstructionWithClient:(id)a3;
- (void)_ivarLock_determineHealthRecordsSupportedStatusIfNeeded;
- (void)_ivarLock_registerAsAccountStateObserverIfNeeded;
- (void)_ivarLock_unregisterAsAccountStateObserverIfAppropriate;
- (void)_ivarLock_updateHealthRecordsSupportedStatus;
- (void)_notifyAccountEventObserversOfEvent:(unint64_t)a3;
- (void)_notifyHealthRecordsSupportedChangeObservers;
- (void)accountManager:(id)a3 account:(id)a4 didChangeState:(int64_t)a5;
- (void)addAccountEventObserver:(id)a3;
- (void)didUpdateSourcesForAccountWithIdentifier:(id)a3;
- (void)notificationSyncClient:(id)a3 didReceiveInstructionWithAction:(int64_t)a4;
- (void)prepareForObliteration;
- (void)registerHealthRecordsSupportedChangeObserver:(id)a3;
- (void)removeAccountEventObserver:(id)a3;
- (void)unitTesting_replaceHealthRecordsPluginAndSetCompleteScheduledExtractionHandler:(id)a3;
- (void)unitTesting_triggerLocaleDidChangeNotification;
- (void)unregisterHealthRecordsSupportedChangeObserver:(id)a3;
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

- (HDHealthRecordsProfileExtension)initWithProfile:(id)a3
{
  v4 = a3;
  v50.receiver = self;
  v50.super_class = HDHealthRecordsProfileExtension;
  v5 = [(HDHealthRecordsProfileExtension *)&v50 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = [v4 healthDaemon];
    objc_storeWeak(&v6->_healthDeamon, v7);

    v6->_ivarLock._os_unfair_lock_opaque = 0;
    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    v9 = [WeakRetained profileType];

    if (v9 != &dword_0 + 2)
    {
      v10 = [(HDHealthRecordsProfileExtension *)v6 createHealthRecordsClinicalAccountManager];
      accountManager = v6->_accountManager;
      v6->_accountManager = v10;

      v12 = [(HDHealthRecordsProfileExtension *)v6 createHealthRecordsAPIReminderRegistry];
      APIReminderRegistry = v6->_APIReminderRegistry;
      v6->_APIReminderRegistry = v12;

      v14 = [[HDClinicalIngestionManager alloc] initWithProfileExtension:v6];
      ingestionManager = v6->_ingestionManager;
      v6->_ingestionManager = v14;

      v16 = [(HDHealthRecordsProfileExtension *)v6 createProviderServiceManager];
      providerServiceManager = v6->_providerServiceManager;
      v6->_providerServiceManager = v16;

      v18 = [(HDHealthRecordsProfileExtension *)v6 createSignedClinicalDataManager];
      signedClinicalDataManager = v6->_signedClinicalDataManager;
      v6->_signedClinicalDataManager = v18;

      v20 = [(HDHealthRecordsProfileExtension *)v6 createClinicalSharingManager];
      clinicalSharingManager = v6->_clinicalSharingManager;
      v6->_clinicalSharingManager = v20;

      v22 = [(HDHealthRecordsProfileExtension *)v6 createDownloadableAttachmentManager];
      downloadableAttachmentManager = v6->_downloadableAttachmentManager;
      v6->_downloadableAttachmentManager = v22;

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
    v31 = [v30 profileType];

    if (v31 == &dword_0 + 1)
    {
      v32 = [(HDHealthRecordsProfileExtension *)v6 createClinicalAnalyticsManager];
      analyticsManager = v6->_analyticsManager;
      v6->_analyticsManager = v32;

      v34 = [[HDClinicalDailyAnalyticsManager alloc] initWithProfileExtension:v6];
      dailyAnalyticsManager = v6->_dailyAnalyticsManager;
      v6->_dailyAnalyticsManager = v34;

      v36 = [(HDHealthRecordsProfileExtension *)v6 createOptInStudy];
      optInStudy = v6->_optInStudy;
      v6->_optInStudy = v36;

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

- (int64_t)hasGatewayBackedAccountsWithError:(id *)a3
{
  accountManager = self->_accountManager;
  if (accountManager)
  {
    return [(HDClinicalAccountManager *)accountManager highPriorityTransactionHasGatewayBackedAccountsWithError:a3];
  }

  else
  {
    return 2;
  }
}

- (int64_t)hasIssuerBackedAccountsWithError:(id *)a3
{
  accountManager = self->_accountManager;
  if (accountManager)
  {
    return [(HDClinicalAccountManager *)accountManager highPriorityTransactionHasIssuerBackedAccountsWithError:a3];
  }

  else
  {
    return 2;
  }
}

- (int64_t)hasGatewayBackedAccountsWithTransaction:(id)a3 error:(id *)a4
{
  accountManager = self->_accountManager;
  if (accountManager)
  {
    return [(HDClinicalAccountManager *)accountManager hasGatewayBackedAccountsWithTransaction:a3 error:a4];
  }

  else
  {
    return 2;
  }
}

- (int64_t)hasIssuerBackedAccountsWithTransaction:(id)a3 error:(id *)a4
{
  accountManager = self->_accountManager;
  if (accountManager)
  {
    return [(HDClinicalAccountManager *)accountManager hasIssuerBackedAccountsWithTransaction:a3 error:a4];
  }

  else
  {
    return 2;
  }
}

- (BOOL)deviceConfigurationSupportsHealthRecords:(BOOL *)a3 error:(id *)a4
{
  v7 = +[NSLocale autoupdatingCurrentLocale];
  LOBYTE(a4) = [(HDHealthRecordsProfileExtension *)self deviceConfigurationSupportsHealthRecords:a3 givenLocale:v7 error:a4];

  return a4;
}

- (BOOL)deviceConfigurationSupportsHealthRecords:(BOOL *)a3 givenLocale:(id)a4 error:(id *)a5
{
  v9 = a4;
  if (!a3)
  {
    sub_A25EC(a2, self);
  }

  if ([(HDHealthRecordsProfileExtension *)self _isHealthRecordsSupportedLocale:v9])
  {
    v10 = 1;
    v11 = 1;
  }

  else
  {
    v12 = [(HDHealthRecordsProfileExtension *)self hasGatewayBackedAccountsWithError:a5];
    v11 = v12 != 0;
    v10 = v12 == 1;
  }

  *a3 = v10;

  return v11;
}

- (BOOL)_isHealthRecordsSupportedLocale:(id)a3
{
  v4 = a3;
  v5 = [(HDHealthRecordsProfileExtension *)self profile];
  v6 = [v5 daemon];
  v7 = [v6 ontologyConfigurationProvider];
  v8 = [v7 isCountrySupported:v4];

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

- (BOOL)isSupportedFHIRVersionString:(id)a3
{
  v4 = a3;
  v5 = [(HDHealthRecordsProfileExtension *)self _supportedFHIRConfiguration];
  v6 = [v5 isSupportedFHIRVersionString:v4];

  return v6;
}

- (BOOL)isSupportedFHIRResourceType:(id)a3 FHIRVersionString:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HDHealthRecordsProfileExtension *)self _supportedFHIRConfiguration];
  v9 = [v8 isSupportedFHIRResourceType:v7 FHIRVersionString:v6];

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

- (id)_retrieveSupportedFHIRConfigurationWithError:(id *)a3
{
  v4 = [(HDHealthRecordsProfileExtension *)self createHealthRecordsXPCServiceClient];
  v5 = [v4 supportedFHIRConfigurationWithError:a3];

  return v5;
}

- (void)didUpdateSourcesForAccountWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(17, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_49BE8;
  v7[3] = &unk_106B68;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)registerHealthRecordsSupportedChangeObserver:(id)a3
{
  v4 = a3;
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
  [(HKObserverSet *)self->_chrSupportedObservers registerObserver:v4];

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (void)unregisterHealthRecordsSupportedChangeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_ivarLock);
  [(HKObserverSet *)self->_chrSupportedObservers unregisterObserver:v4];

  [(HDHealthRecordsProfileExtension *)self _ivarLock_unregisterAsAccountStateObserverIfAppropriate];

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (void)addAccountEventObserver:(id)a3
{
  v4 = a3;
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
  [(HKObserverSet *)self->_accountEventObservers registerObserver:v4];

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (void)removeAccountEventObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_ivarLock);
  [(HKObserverSet *)self->_accountEventObservers unregisterObserver:v4];

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
  v5 = [WeakRetained daemon];
  v6 = [v5 healthDirectoryURL];
  v7 = [(HDSignedClinicalDataRegistry *)v3 initWithHealthDirectoryURL:v6];

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

- (void)accountManager:(id)a3 account:(id)a4 didChangeState:(int64_t)a5
{
  v5 = 100;
  if (a5 == 1)
  {
    v5 = 0;
  }

  if (a5 == 3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (v6 != 100)
  {
    [(HDHealthRecordsProfileExtension *)self _notifyHealthRecordsSupportedChangeObservers:a3];

    [(HDHealthRecordsProfileExtension *)self _notifyAccountEventObserversOfEvent:v6];
  }
}

- (void)_notifyAccountEventObserversOfEvent:(unint64_t)a3
{
  accountEventObservers = self->_accountEventObservers;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_4A474;
  v4[3] = &unk_107798;
  v4[4] = self;
  v4[5] = a3;
  [(HKObserverSet *)accountEventObservers notifyObservers:v4];
}

- (void)notificationSyncClient:(id)a3 didReceiveInstructionWithAction:(int64_t)a4
{
  v6 = a3;
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

  if (a4 == 1)
  {
    [(HDHealthRecordsProfileExtension *)self _handleDismissInstructionWithClient:v6];
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

- (void)_handleDismissInstructionWithClient:(id)a3
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogNotifications;
  if (os_log_type_enabled(HKLogNotifications, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = self;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Handling dismiss instruction", buf, 0xCu);
  }

  v23 = 0;
  v6 = [v4 pendingNotificationDismissInstructionsWithError:&v23];
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
      v12 = [v6 messageIdentifiers];
      *buf = 138543618;
      v25 = v10;
      v26 = 2114;
      v27 = v12;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received notification dismiss instructions with identifiers: %{public}@", buf, 0x16u);
    }

    v13 = [v6 categoryIdentifiers];
    v14 = [v13 allObjects];

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v16 = [WeakRetained notificationManager];
    [v16 removeDeliveredNotificationsWithIdentifiers:v14];

    v22 = v7;
    LODWORD(v16) = [v4 markPendingNotificationInstructionsAsProcessed:v6 error:&v22];
    v17 = v22;

    _HKInitializeLogging();
    v18 = HKLogNotifications;
    if (v16)
    {
      if (os_log_type_enabled(HKLogNotifications, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
        v20 = objc_opt_class();
        *buf = 138543618;
        v25 = v20;
        v26 = 2114;
        v27 = v14;
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
    v5 = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Preparing for obliteration", &v4, 0xCu);
  }

  [(HDHealthRecordsProfileExtension *)self _deleteSignedClinicalDataRecords];
}

- (void)_deleteSignedClinicalDataRecords
{
  v11 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained dataManager];
  v5 = objc_opt_class();
  v6 = +[HDSQLitePredicate truePredicate];
  v10 = 0;
  v7 = [v4 deleteDataObjectsOfClass:v5 predicate:v6 limit:0 deletedSampleCount:&v11 notifyObservers:0 generateDeletedObjects:0 recursiveDeleteAuthorizationBlock:0 error:&v10];
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
        v13 = self;
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

- (void)unitTesting_replaceHealthRecordsPluginAndSetCompleteScheduledExtractionHandler:(id)a3
{
  v4 = a3;
  v5 = [[HDClinicalIngestionManager alloc] _initWithProfileExtension:self];
  [(HDClinicalIngestionManager *)v5 setUnitTesting_didCompleteScheduledExtraction:v4];

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