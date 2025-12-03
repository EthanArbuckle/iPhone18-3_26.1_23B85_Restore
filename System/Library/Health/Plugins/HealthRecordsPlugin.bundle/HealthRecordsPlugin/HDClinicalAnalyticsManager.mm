@interface HDClinicalAnalyticsManager
+ (Class)_medicalRecordEntityClassForDataTypeCode:(int64_t)code;
+ (id)_predicateForContentAnalyticMedicalRecordTypes;
- (BOOL)_lock_isImproveHealthRecordsDataSubmissionAllowedWithTransaction:(id)transaction;
- (BOOL)_lock_userHasAgreedToHealthRecordsDataSubmission;
- (BOOL)currentDeviceSupportsImproveHealthRecordsDataSubmissionOptionWithTransaction:(id)transaction;
- (BOOL)isImproveHealthRecordsDataSubmissionAllowedWithTransaction:(id)transaction;
- (BOOL)shouldPromptForImproveHealthRecordsDataSubmission;
- (BOOL)userHasAgreedToHealthRecordsDataSubmission;
- (HDClinicalAnalyticsManager)initWithProfileExtension:(id)extension;
- (HDHealthRecordsProfileExtension)profileExtension;
- (HDProfile)profile;
- (id)_clinicalAnalyticsKeyValueDomain;
- (id)_lock_readImproveHealthRecordsAgreementVersionOnDisk;
- (id)_medicalRecordForObjectID:(int64_t)d dataTypeCode:(int64_t)code error:(id *)error;
- (id)_queue_fetchRecordsForContentAnalyticsWithStartAnchor:(int64_t)anchor limitCount:(int64_t)count finalAnchor:(int64_t *)finalAnchor error:(id *)error;
- (int64_t)_lock_acceptedVersionForImproveHealthRecords;
- (int64_t)acceptedVersionForImproveHealthRecords;
- (void)_queue_didTriggerClinicalAnalyticsForReason:(int64_t)reason success:(BOOL)success error:(id)error;
- (void)_queue_triggerClinicalContentAnalyticsWithOptions:(unint64_t)options completion:(id)completion;
- (void)_submitPayload:(id)payload forEvent:(id)event usingCoordinator:(id)coordinator;
- (void)overrideIsImproveHealthRecordsDataSubmissionAllowed:(BOOL)allowed;
- (void)overrideIsImproveHealthRecordsDataSubmissionVersionAccepted:(id)accepted;
- (void)performPeriodicActivity:(id)activity completion:(id)completion;
- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria;
- (void)resetAcceptedVersionForImproveHealthRecords;
- (void)resetClinicalContentAnalyticsAnchorsWithCompletion:(id)completion;
- (void)submitClinicalIngestionAnalyticsFromAccumulator:(id)accumulator completion:(id)completion;
- (void)triggerClinicalContentAnalyticsForReason:(int64_t)reason options:(unint64_t)options completion:(id)completion;
@end

@implementation HDClinicalAnalyticsManager

- (HDClinicalAnalyticsManager)initWithProfileExtension:(id)extension
{
  extensionCopy = extension;
  v21.receiver = self;
  v21.super_class = HDClinicalAnalyticsManager;
  v5 = [(HDClinicalAnalyticsManager *)&v21 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profileExtension, extensionCopy);
    profile = [extensionCopy profile];
    objc_storeWeak(&v6->_profile, profile);

    v8 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v8;

    v6->_statusLock._os_unfair_lock_opaque = 0;
    profile2 = [extensionCopy profile];
    daemon = [profile2 daemon];
    ontologyConfigurationProvider = [daemon ontologyConfigurationProvider];
    improveHealthRecordsGatedAnalyticsEnabledCountryCodes = [ontologyConfigurationProvider improveHealthRecordsGatedAnalyticsEnabledCountryCodes];
    v14 = [improveHealthRecordsGatedAnalyticsEnabledCountryCodes copy];
    collectionEnabledCountryCodes = v6->_collectionEnabledCountryCodes;
    v6->_collectionEnabledCountryCodes = v14;

    v16 = [HDPeriodicActivity alloc];
    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    v18 = [v16 initWithProfile:WeakRetained name:@"com.apple.healthd.healthrecords-analytics-activity" interval:v6 delegate:HKLogHealthRecords loggingCategory:XPC_ACTIVITY_INTERVAL_7_DAYS];
    periodicActivity = v6->_periodicActivity;
    v6->_periodicActivity = v18;
  }

  return v6;
}

- (BOOL)userHasAgreedToHealthRecordsDataSubmission
{
  os_unfair_lock_assert_not_owner(&self->_statusLock);
  os_unfair_lock_lock(&self->_statusLock);
  _lock_userHasAgreedToHealthRecordsDataSubmission = [(HDClinicalAnalyticsManager *)self _lock_userHasAgreedToHealthRecordsDataSubmission];
  os_unfair_lock_unlock(&self->_statusLock);
  return _lock_userHasAgreedToHealthRecordsDataSubmission;
}

- (BOOL)_lock_userHasAgreedToHealthRecordsDataSubmission
{
  os_unfair_lock_assert_owner(&self->_statusLock);
  _lock_readImproveHealthRecordsAgreementVersionOnDisk = [(HDClinicalAnalyticsManager *)self _lock_readImproveHealthRecordsAgreementVersionOnDisk];
  overriddenSubmitsAnalytics = self->_overriddenSubmitsAnalytics;
  if (overriddenSubmitsAnalytics)
  {
    v5 = [(NSNumber *)overriddenSubmitsAnalytics isEqual:_lock_readImproveHealthRecordsAgreementVersionOnDisk];
  }

  else
  {
    _lock_acceptedVersionForImproveHealthRecords = [(HDClinicalAnalyticsManager *)self _lock_acceptedVersionForImproveHealthRecords];
    if (_lock_readImproveHealthRecordsAgreementVersionOnDisk)
    {
      v5 = _lock_acceptedVersionForImproveHealthRecords == [_lock_readImproveHealthRecordsAgreementVersionOnDisk integerValue];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isImproveHealthRecordsDataSubmissionAllowedWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  os_unfair_lock_assert_not_owner(&self->_statusLock);
  os_unfair_lock_lock(&self->_statusLock);
  v5 = [(HDClinicalAnalyticsManager *)self _lock_isImproveHealthRecordsDataSubmissionAllowedWithTransaction:transactionCopy];

  os_unfair_lock_unlock(&self->_statusLock);
  return v5;
}

- (BOOL)_lock_isImproveHealthRecordsDataSubmissionAllowedWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  os_unfair_lock_assert_owner(&self->_statusLock);
  v5 = [(HDClinicalAnalyticsManager *)self currentDeviceSupportsImproveHealthRecordsDataSubmissionOptionWithTransaction:transactionCopy];

  if (!v5)
  {
    return 0;
  }

  return [(HDClinicalAnalyticsManager *)self _lock_userHasAgreedToHealthRecordsDataSubmission];
}

- (id)_lock_readImproveHealthRecordsAgreementVersionOnDisk
{
  os_unfair_lock_assert_owner(&self->_statusLock);
  p_improveHealthRecordsAgreementVersionOnDisk = &self->_improveHealthRecordsAgreementVersionOnDisk;
  improveHealthRecordsAgreementVersionOnDisk = self->_improveHealthRecordsAgreementVersionOnDisk;
  if (improveHealthRecordsAgreementVersionOnDisk)
  {
    v5 = improveHealthRecordsAgreementVersionOnDisk;
  }

  else
  {
    v6 = HKCurrentOptInVersionOnDiskForOnBoardingBundle();
    if (v6 == HKImproveHealthRecordsDataSubmissionNotDetermined)
    {
      _HKInitializeLogging();
      v7 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_9CAD8(v7, self);
      }

      v5 = 0;
    }

    else
    {
      v5 = [NSNumber numberWithInteger:v6];
      objc_storeStrong(p_improveHealthRecordsAgreementVersionOnDisk, v5);
    }
  }

  return v5;
}

- (int64_t)acceptedVersionForImproveHealthRecords
{
  os_unfair_lock_assert_not_owner(&self->_statusLock);
  os_unfair_lock_lock(&self->_statusLock);
  _lock_acceptedVersionForImproveHealthRecords = [(HDClinicalAnalyticsManager *)self _lock_acceptedVersionForImproveHealthRecords];
  os_unfair_lock_unlock(&self->_statusLock);
  return _lock_acceptedVersionForImproveHealthRecords;
}

- (int64_t)_lock_acceptedVersionForImproveHealthRecords
{
  os_unfair_lock_assert_owner(&self->_statusLock);
  overriddenSubmitsAnalytics = self->_overriddenSubmitsAnalytics;
  if (overriddenSubmitsAnalytics)
  {

    return [(NSNumber *)overriddenSubmitsAnalytics integerValue];
  }

  else
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 objectForKey:kHKSettingsUserDefaultClinicalDataCollectionOptInKey];

    if (v6)
    {
      objc_opt_class();
      v7 = HKSafeObject();
      integerValue = [v7 integerValue];
    }

    else
    {
      integerValue = HKImproveHealthRecordsDataSubmissionNotDetermined;
    }

    return integerValue;
  }
}

- (void)resetAcceptedVersionForImproveHealthRecords
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 removeObjectForKey:kHKSettingsUserDefaultClinicalDataCollectionOptInKey];

  [(HDClinicalAnalyticsManager *)self overrideIsImproveHealthRecordsDataSubmissionVersionAccepted:0];
  _HKInitializeLogging();
  v4 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [(HDClinicalAnalyticsManager *)self debugDescription];
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ did reset Improve Health Records (IHR)", &v7, 0xCu);
  }
}

- (BOOL)shouldPromptForImproveHealthRecordsDataSubmission
{
  os_unfair_lock_assert_not_owner(&self->_statusLock);
  if (![(HDClinicalAnalyticsManager *)self currentDeviceSupportsImproveHealthRecordsDataSubmissionOption])
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_statusLock);
  _lock_acceptedVersionForImproveHealthRecords = [(HDClinicalAnalyticsManager *)self _lock_acceptedVersionForImproveHealthRecords];
  if (_lock_acceptedVersionForImproveHealthRecords == HKImproveHealthRecordsDataSubmissionNotAllowed)
  {
    v4 = 0;
  }

  else
  {
    v5 = _lock_acceptedVersionForImproveHealthRecords;
    if (_lock_acceptedVersionForImproveHealthRecords == HKImproveHealthRecordsDataSubmissionNotDetermined)
    {
      v4 = 1;
    }

    else
    {
      _lock_readImproveHealthRecordsAgreementVersionOnDisk = [(HDClinicalAnalyticsManager *)self _lock_readImproveHealthRecordsAgreementVersionOnDisk];
      v4 = [_lock_readImproveHealthRecordsAgreementVersionOnDisk integerValue] != v5;
    }
  }

  os_unfair_lock_unlock(&self->_statusLock);
  return v4;
}

- (BOOL)currentDeviceSupportsImproveHealthRecordsDataSubmissionOptionWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v6 = WeakRetained;
  if (transactionCopy)
  {
    v20 = 0;
    v7 = &v20;
    v8 = [WeakRetained hasGatewayBackedAccountsWithTransaction:transactionCopy error:&v20];
  }

  else
  {
    v19 = 0;
    v7 = &v19;
    v8 = [WeakRetained hasGatewayBackedAccountsWithError:&v19];
  }

  v9 = v8;
  v10 = *v7;

  if (v9 == &dword_0 + 2)
  {
    goto LABEL_11;
  }

  if (!v9)
  {
    _HKInitializeLogging();
    v11 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_9CB70(v11, self, v10);
    }

    goto LABEL_11;
  }

  v12 = +[MCProfileConnection sharedConnection];
  isDiagnosticSubmissionAllowed = [v12 isDiagnosticSubmissionAllowed];

  if (!isDiagnosticSubmissionAllowed)
  {
LABEL_11:
    LOBYTE(v17) = 0;
    goto LABEL_12;
  }

  profile = [(HDClinicalAnalyticsManager *)self profile];
  daemon = [profile daemon];
  behavior = [daemon behavior];

  if ([behavior isRealityDevice])
  {
    LOBYTE(v17) = 0;
  }

  else
  {
    v17 = [behavior isRunningStoreDemoMode] ^ 1;
  }

LABEL_12:
  return v17;
}

- (void)overrideIsImproveHealthRecordsDataSubmissionAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  os_unfair_lock_lock(&self->_statusLock);
  if (allowedCopy)
  {
    [(HDClinicalAnalyticsManager *)self _lock_readImproveHealthRecordsAgreementVersionOnDisk];
  }

  else
  {
    [NSNumber numberWithInteger:HKImproveHealthRecordsDataSubmissionNotAllowed];
  }
  v5 = ;
  overriddenSubmitsAnalytics = self->_overriddenSubmitsAnalytics;
  self->_overriddenSubmitsAnalytics = v5;

  os_unfair_lock_unlock(&self->_statusLock);
}

- (void)overrideIsImproveHealthRecordsDataSubmissionVersionAccepted:(id)accepted
{
  acceptedCopy = accepted;
  os_unfair_lock_lock(&self->_statusLock);
  overriddenSubmitsAnalytics = self->_overriddenSubmitsAnalytics;
  self->_overriddenSubmitsAnalytics = acceptedCopy;

  os_unfair_lock_unlock(&self->_statusLock);
}

- (void)triggerClinicalContentAnalyticsForReason:(int64_t)reason options:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_F524;
  v11[3] = &unk_105E68;
  reasonCopy = reason;
  optionsCopy = options;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(queue, v11);
}

- (void)resetClinicalContentAnalyticsAnchorsWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_F894;
  v7[3] = &unk_105E90;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)submitClinicalIngestionAnalyticsFromAccumulator:(id)accumulator completion:(id)completion
{
  accumulatorCopy = accumulator;
  completionCopy = completion;
  _HKInitializeLogging();
  v8 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *buf = 138543362;
    v26 = objc_opt_class();
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: checking to submit ingestion analytics", buf, 0xCu);
  }

  if ([(HDClinicalAnalyticsManager *)self isImproveHealthRecordsDataSubmissionAllowed])
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    daemon = [WeakRetained daemon];
    analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];

    _HKInitializeLogging();
    v13 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = objc_opt_class();
      *buf = 138543362;
      v26 = v15;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: submitting ingestion analytics", buf, 0xCu);
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_FCC8;
    v23[3] = &unk_105EB8;
    v23[4] = self;
    v24 = analyticsSubmissionCoordinator;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_FE00;
    v21[3] = &unk_105EE0;
    v21[4] = self;
    v22 = completionCopy;
    v16 = analyticsSubmissionCoordinator;
    [accumulatorCopy enumerateForCoreAnalyticsAndResetWithBlock:v23 completion:v21];
  }

  else
  {
    _HKInitializeLogging();
    v17 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = objc_opt_class();
      v20 = HKSensitiveLogItem();
      *buf = 138543618;
      v26 = v19;
      v27 = 2114;
      v28 = v20;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: not submitting ingestion analytics: %{public}@", buf, 0x16u);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)_submitPayload:(id)payload forEvent:(id)event usingCoordinator:(id)coordinator
{
  payloadCopy = payload;
  eventCopy = event;
  coordinatorCopy = coordinator;
  _HKInitializeLogging();
  v10 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    *buf = 138543362;
    v16 = objc_opt_class();
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%{public}@: submitting payload", buf, 0xCu);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1004C;
  v13[3] = &unk_105F08;
  v14 = payloadCopy;
  v12 = payloadCopy;
  [coordinatorCopy sendEvent:eventCopy block:v13];
}

- (void)_queue_triggerClinicalContentAnalyticsWithOptions:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  profile = [(HDClinicalAnalyticsManager *)self profile];
  database = [profile database];
  isProtectedDataAvailable = [database isProtectedDataAvailable];

  if (isProtectedDataAvailable)
  {
    v8 = [HDClinicalContentAnalyticsAccumulator alloc];
    WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
    v22 = [(HDClinicalContentAnalyticsAccumulator *)v8 initWithProfileExtension:WeakRetained];

    if ([(HDClinicalAnalyticsManager *)self isImproveHealthRecordsDataSubmissionAllowed])
    {
      _clinicalAnalyticsKeyValueDomain = [(HDClinicalAnalyticsManager *)self _clinicalAnalyticsKeyValueDomain];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v24 = 0x2020000000;
      v25 = 1;
      while (1)
      {
        v11 = _clinicalAnalyticsKeyValueDomain;
        v12 = v22;
        v13 = HKWithAutoreleasePool();
        v14 = 0;
        if ((v13 & 1) == 0)
        {
          break;
        }

        if (*(*(&buf + 1) + 24) != 1)
        {
          completionCopy[2](completionCopy, v12, 0);
          goto LABEL_14;
        }
      }

      (completionCopy)[2](completionCopy, 0, v14);

LABEL_14:
      _Block_object_dispose(&buf, 8);

      v22 = v12;
    }

    else
    {
      _HKInitializeLogging();
      v18 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
      {
        v19 = v18;
        v20 = [(HDClinicalAnalyticsManager *)self debugDescription];
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v20;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "%{public}@ content analytics collection is not enabled by the user", &buf, 0xCu);
      }

      completionCopy[2](completionCopy, v22, 0);
    }
  }

  else
  {
    _HKInitializeLogging();
    v15 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      v17 = [(HDClinicalAnalyticsManager *)self debugDescription];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v17;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "%{public}@: cannot begin content analytics collection without access to protected data", &buf, 0xCu);
    }

    v22 = +[NSError hk_protectedDataInaccessibilityError];
    (completionCopy)[2](completionCopy, 0, v22);
  }
}

- (id)_queue_fetchRecordsForContentAnalyticsWithStartAnchor:(int64_t)anchor limitCount:(int64_t)count finalAnchor:(int64_t *)finalAnchor error:(id *)error
{
  dispatch_assert_queue_V2(self->_queue);
  _predicateForContentAnalyticMedicalRecordTypes = [objc_opt_class() _predicateForContentAnalyticMedicalRecordTypes];
  v11 = HDSQLEntityPropertyPersistentID;
  v12 = [NSNumber numberWithLongLong:anchor];
  v13 = [HDSQLiteComparisonPredicate predicateWithProperty:v11 greaterThanValue:v12];

  v23 = _predicateForContentAnalyticMedicalRecordTypes;
  v14 = [HDSQLitePredicate compoundPredicateWithPredicate:v13 otherPredicate:_predicateForContentAnalyticMedicalRecordTypes];
  v15 = objc_alloc_init(NSMutableArray);
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  anchorCopy = anchor;
  profile = [(HDClinicalAnalyticsManager *)self profile];
  database = [profile database];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10BB4;
  v25[3] = &unk_105FA8;
  v18 = v14;
  v29 = &v31;
  countCopy = count;
  v26 = v18;
  selfCopy = self;
  v19 = v15;
  v28 = v19;
  v20 = [HDMedicalRecordEntity performReadTransactionWithHealthDatabase:database error:error block:v25];

  if (finalAnchor)
  {
    *finalAnchor = v32[3];
  }

  if (v20)
  {
    v21 = [v19 copy];
  }

  else
  {
    v21 = 0;
  }

  _Block_object_dispose(&v31, 8);

  return v21;
}

+ (id)_predicateForContentAnalyticMedicalRecordTypes
{
  v2 = [HKSampleType medicalRecordTypesWithOptions:1];
  v3 = [NSSet setWithArray:v2];

  v4 = HDSampleEntityPredicateForDataTypes();

  return v4;
}

+ (Class)_medicalRecordEntityClassForDataTypeCode:(int64_t)code
{
  v3 = [HKMedicalType dataTypeWithCode:code];
  v4 = [objc_msgSend(v3 "dataObjectClass")];

  return v4;
}

- (id)_medicalRecordForObjectID:(int64_t)d dataTypeCode:(int64_t)code error:(id *)error
{
  v9 = [objc_opt_class() _medicalRecordEntityClassForDataTypeCode:code];
  if (v9)
  {
    v10 = v9;
    v11 = [NSNumber numberWithLongLong:d];
    profile = [(HDClinicalAnalyticsManager *)self profile];
    v13 = [v10 objectWithID:v11 encodingOptions:0 profile:profile error:error];
  }

  else
  {
    [NSError hk_assignError:error code:3 format:@"Data Typde Code (%ld) cannot be mapped to a medical record entity class", code];
    v13 = 0;
  }

  return v13;
}

- (id)_clinicalAnalyticsKeyValueDomain
{
  v3 = [HDKeyValueDomain alloc];
  profile = [(HDClinicalAnalyticsManager *)self profile];
  v5 = [v3 initWithCategory:0 domainName:@"healthrecords-analytics" profile:profile];

  return v5;
}

- (void)_queue_didTriggerClinicalAnalyticsForReason:(int64_t)reason success:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  if (reason)
  {
    if (successCopy)
    {
      v8 = XPC_ACTIVITY_INTERVAL_7_DAYS;
      v9 = 0;
      v10 = 0;
    }

    else
    {
      v8 = XPC_ACTIVITY_INTERVAL_1_MIN;
      v9 = 2;
      v10 = errorCopy;
    }

    [(HDPeriodicActivity *)self->_periodicActivity didPerformActivityWithResult:v9 minimumRetryInterval:0 activityStartDate:v10 error:v8];
  }
}

- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria
{
  xdict = criteria;
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_string(xdict, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_REQUIRES_CLASS_A, 1);
}

- (void)performPeriodicActivity:(id)activity completion:(id)completion
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_114F4;
  v6[3] = &unk_105CE8;
  completionCopy = completion;
  v5 = completionCopy;
  [(HDClinicalAnalyticsManager *)self triggerClinicalContentAnalyticsForReason:0 options:0 completion:v6];
}

- (HDHealthRecordsProfileExtension)profileExtension
{
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);

  return WeakRetained;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end