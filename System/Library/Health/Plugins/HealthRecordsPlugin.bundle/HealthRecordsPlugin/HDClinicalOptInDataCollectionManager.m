@interface HDClinicalOptInDataCollectionManager
+ (id)_optInJSONForBuild:(id)a3 extractionRulesVersion:(id)a4 FHIRVersion:(id)a5 resource:(id)a6;
- (BOOL)_queue_updateSubmittedAnchors:(id)a3 accounts:(id)a4 error:(id *)a5;
- (HDClinicalOptInDataCollectionManager)initWithProfileExtension:(id)a3;
- (HDHealthRecordsProfileExtension)profileExtension;
- (HDProfile)profile;
- (void)_queue_submitAnalyticsForResult:(id)a3 completion:(id)a4;
- (void)_queue_submitFetchedResources:(id)a3 completion:(id)a4;
- (void)_queue_submitOptInResourcesForAccounts:(id)a3 batchCountLimit:(int64_t)a4 batchSizeLimit:(int64_t)a5 completion:(id)a6;
- (void)_queue_triggerClinicalOptInDataCollectionWithCompletion:(id)a3;
- (void)performPeriodicActivity:(id)a3 completion:(id)a4;
- (void)periodicActivity:(id)a3 configureXPCActivityCriteria:(id)a4;
- (void)resetClinicalOptInDataCollectionAnchorsWithCompletion:(id)a3;
- (void)triggerClinicalOptInDataCollectionForReason:(int64_t)a3 completion:(id)a4;
@end

@implementation HDClinicalOptInDataCollectionManager

- (HDClinicalOptInDataCollectionManager)initWithProfileExtension:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HDClinicalOptInDataCollectionManager;
  v5 = [(HDClinicalOptInDataCollectionManager *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profileExtension, v4);
    v7 = [v4 profile];
    objc_storeWeak(&v6->_profile, v7);

    WeakRetained = objc_loadWeakRetained(&v6->_profileExtension);
    v9 = [WeakRetained optInStudy];
    study = v6->_study;
    v6->_study = v9;

    v11 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v11;

    v13 = [HDPeriodicActivity alloc];
    v14 = objc_loadWeakRetained(&v6->_profile);
    v15 = [v13 initWithProfile:v14 name:@"com.apple.healthd.healthrecords.opt-in-data-collection" interval:v6 delegate:HKLogHealthRecords loggingCategory:XPC_ACTIVITY_INTERVAL_7_DAYS];
    periodicActivity = v6->_periodicActivity;
    v6->_periodicActivity = v15;
  }

  return v6;
}

- (void)triggerClinicalOptInDataCollectionForReason:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5F9A0;
  block[3] = &unk_107CC8;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)resetClinicalOptInDataCollectionAnchorsWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5FCE8;
  v7[3] = &unk_105E90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_queue_triggerClinicalOptInDataCollectionWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(HDClinicalOptInDataCollectionManager *)self profileExtension];
  v6 = [v5 isImproveHealthRecordsDataSubmissionAllowed];

  if (v6)
  {
    v7 = [(HDClinicalOptInDataCollectionManager *)self profile];
    v8 = [v7 database];
    v9 = [v8 isProtectedDataAvailable];

    if (v9)
    {
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      v11 = [WeakRetained database];
      v21 = 0;
      v12 = [HDClinicalAccountEntity allAccountsInHealthDatabase:v11 error:&v21];
      v13 = v21;

      if (v12)
      {
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_60340;
        v19[3] = &unk_107CF0;
        v19[4] = self;
        v20 = v4;
        [(HDClinicalOptInDataCollectionManager *)self _queue_submitOptInResourcesForAccounts:v12 batchCountLimit:50 batchSizeLimit:102400 completion:v19];
      }

      else
      {
        (*(v4 + 2))(v4, 0, v13);
      }
    }

    else
    {
      _HKInitializeLogging();
      v17 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_A5178(v17, self);
      }

      v18 = +[NSError hk_protectedDataInaccessibilityError];
      (*(v4 + 2))(v4, 0, v18);
    }
  }

  else
  {
    _HKInitializeLogging();
    v14 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      v16 = [(HDClinicalOptInDataCollectionManager *)self debugDescription];
      *buf = 138543362;
      v23 = v16;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "%{public}@ opt-in data collection is not enabled by the user", buf, 0xCu);
    }

    (*(v4 + 2))(v4, 1, 0);
  }
}

- (void)_queue_submitOptInResourcesForAccounts:(id)a3 batchCountLimit:(int64_t)a4 batchSizeLimit:(int64_t)a5 completion:(id)a6
{
  v8 = a3;
  v42 = a6;
  dispatch_assert_queue_V2(self->_queue);
  v39 = v8;
  if ([v8 count])
  {
    v9 = [(HDClinicalOptInDataCollectionManager *)self profile];
    v10 = [v9 daemon];
    v38 = [v10 ontologyConfigurationProvider];

    if (v38)
    {
      v48 = [v38 optInDataCollectionEnabledCountryCodes];
      v11 = [v39 hk_map:&stru_107D30];
      v40 = [NSMutableSet setWithArray:v11];

      v47 = objc_alloc_init(NSMutableArray);
      v44 = objc_alloc_init(NSMutableDictionary);
      v43 = objc_alloc_init(NSMutableDictionary);
      *&v78 = 0;
      *(&v78 + 1) = &v78;
      v79 = 0x2020000000;
      v80 = 0;
      v71 = 0;
      v72 = &v71;
      v73 = 0x2020000000;
      v74 = 0;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      obj = v39;
      v12 = [obj countByEnumeratingWithState:&v67 objects:v77 count:16];
      if (v12)
      {
        v14 = *v68;
        *&v13 = 138543362;
        v37 = v13;
LABEL_5:
        v15 = 0;
        while (1)
        {
          if (*v68 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v67 + 1) + 8 * v15);
          WeakRetained = objc_loadWeakRetained(&self->_profile);
          v18 = [WeakRetained database];
          v66 = 0;
          v57[0] = _NSConcreteStackBlock;
          v57[1] = 3221225472;
          v57[2] = sub_60B24;
          v57[3] = &unk_107D80;
          v57[4] = v16;
          v57[5] = self;
          v58 = v48;
          v59 = v44;
          v60 = v43;
          v62 = &v78;
          v19 = v47;
          v64 = a4;
          v65 = a5;
          v61 = v19;
          v63 = &v71;
          v20 = [HDOriginalFHIRResourceEntity performReadTransactionWithHealthDatabase:v18 error:&v66 block:v57];
          v21 = v66;

          if ((v20 & 1) == 0)
          {
            v42[2](v42, 0, v21);
            v27 = 0;
            v26 = 1;
            goto LABEL_18;
          }

          v22 = *(v72 + 24);
          if (v22 != 1)
          {
            break;
          }

          _HKInitializeLogging();
          v23 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
          {
            v24 = v23;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = [(HDClinicalOptInDataCollectionManager *)self debugDescription];
              *buf = v37;
              v76 = v25;
              _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "%{public}@: Hit a batch limit, so we'll process this batch before continuing", buf, 0xCu);
            }

            v26 = 6;
            goto LABEL_16;
          }

          v27 = 0;
          v26 = 6;
LABEL_18:

          if (!v27)
          {

            if (v26 != 6 && v26)
            {
              goto LABEL_39;
            }

            goto LABEL_27;
          }

          if (v12 == ++v15)
          {
            v12 = [obj countByEnumeratingWithState:&v67 objects:v77 count:16];
            if (v12)
            {
              goto LABEL_5;
            }

            goto LABEL_21;
          }
        }

        v24 = [v16 identifier];
        [v40 removeObject:v24];
        v26 = 0;
LABEL_16:

        v27 = v22 ^ 1;
        goto LABEL_18;
      }

LABEL_21:

LABEL_27:
      if ([v47 count])
      {
        if (!self->_transaction)
        {
          v31 = [HDDaemonTransaction transactionWithOwner:self];
          transaction = self->_transaction;
          self->_transaction = v31;
        }

        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_610C8;
        v49[3] = &unk_107DA8;
        v53 = v42;
        v49[4] = self;
        v50 = v44;
        v51 = v43;
        v54 = &v71;
        v52 = v40;
        v55 = a4;
        v56 = a5;
        [(HDClinicalOptInDataCollectionManager *)self _queue_submitFetchedResources:v47 completion:v49];
      }

      else
      {
        _HKInitializeLogging();
        v34 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
        {
          v35 = v34;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = [(HDClinicalOptInDataCollectionManager *)self debugDescription];
            *buf = 138543362;
            v76 = v36;
            _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "%{public}@: no resources to submit, trigger upload only", buf, 0xCu);
          }
        }

        v42[2](v42, 1, 0);
      }

LABEL_39:
      _Block_object_dispose(&v71, 8);
      _Block_object_dispose(&v78, 8);
    }

    else
    {
      _HKInitializeLogging();
      v33 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
      {
        sub_A5220(v33, self);
      }

      v48 = [NSError hk_error:100 description:@"unable to find ontology configuration provider needed for Opt-In eligibility determination"];
      v42[2](v42, 0, v48);
    }
  }

  else
  {
    _HKInitializeLogging();
    v28 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
    {
      v29 = v28;
      v30 = [(HDClinicalOptInDataCollectionManager *)self debugDescription];
      LODWORD(v78) = 138543362;
      *(&v78 + 4) = v30;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "%{public}@: no accounts for which to submit resources", &v78, 0xCu);
    }

    v42[2](v42, 1, 0);
  }
}

- (void)_queue_submitFetchedResources:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v17 = 0;
  v9 = [HKPIIRedactor redactorWithProfile:WeakRetained error:&v17];
  v10 = v17;

  if (v9)
  {
    v11 = [[HDExtractionRequest alloc] initWithResources:v6];
    v12 = objc_loadWeakRetained(&self->_profileExtension);
    v13 = [v12 createHealthRecordsXPCServiceClient];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_613EC;
    v15[3] = &unk_107DD0;
    v15[4] = self;
    v16 = v7;
    [v13 optInDataForFHIRDocumentWithRequest:v11 redactor:v9 completion:v15];
  }

  else
  {
    _HKInitializeLogging();
    v14 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A53C4(v14, self);
    }

    (*(v7 + 2))(v7, 0, v10);
  }
}

- (void)_queue_submitAnalyticsForResult:(id)a3 completion:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  v8 = a3;
  dispatch_assert_queue_V2(queue);
  v9 = +[_HKBehavior currentOSBuild];
  v10 = [v8 rulesVersion];
  v11 = [v10 stringValue];

  v12 = [v8 redactedResources];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_61748;
  v23[3] = &unk_107DF8;
  v23[4] = self;
  v13 = v9;
  v24 = v13;
  v14 = v11;
  v25 = v14;
  v15 = [v12 hk_map:v23];

  if ([v15 count])
  {
    v16 = [(HDClinicalOptInDataCollectionManager *)self study];

    if (v16)
    {
      v17 = [(HDClinicalOptInDataCollectionManager *)self study];
      v22 = 0;
      v18 = [v17 submitJSONAnalyticsData:v15 error:&v22];
      v19 = v22;

      if ((v18 & 1) == 0)
      {
        _HKInitializeLogging();
        v20 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          sub_A5464(v20, self);
        }
      }

      v6[2](v6, v18, v19);
    }

    else
    {
      v21 = [NSError hk_error:3 description:@"Study object not available when collecting opt-in data"];
      v6[2](v6, 0, v21);
    }
  }

  else
  {
    v6[2](v6, &dword_0 + 1, 0);
  }
}

- (BOOL)_queue_updateSubmittedAnchors:(id)a3 accounts:(id)a4 error:(id *)a5
{
  v8 = a3;
  v29 = a4;
  v30 = self;
  dispatch_assert_queue_V2(self->_queue);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = v8;
  v31 = [v9 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (!v31)
  {
    v23 = 1;
    v21 = v9;
LABEL_21:

    goto LABEL_22;
  }

  v25 = a5;
  v27 = 0;
  v28 = *v34;
  v26 = 1;
  do
  {
    for (i = 0; i != v31; i = i + 1)
    {
      if (*v34 != v28)
      {
        objc_enumerationMutation(v9);
      }

      v11 = *(*(&v33 + 1) + 8 * i);
      v12 = [v9 objectForKeyedSubscript:v11];
      v13 = [v29 objectForKeyedSubscript:v11];
      v14 = [v13 lastExtractedRulesVersion];
      WeakRetained = objc_loadWeakRetained(&v30->_profile);
      v16 = [WeakRetained database];
      v32 = 0;
      v17 = [HDClinicalAccountEntity updateAccountLastSubmittedRowID:v12 expectedRulesVersion:v14 identifier:v11 healthDatabase:v16 error:&v32];
      v18 = v32;

      if ((v17 & 1) == 0)
      {
        _HKInitializeLogging();
        v19 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v38 = v30;
          v39 = 2114;
          v40 = v11;
          v41 = 2114;
          v42 = v18;
          _os_log_error_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%{public}@: Unable to update last submitted anchor for account %{public}@, %{public}@", buf, 0x20u);
        }

        if (!v27)
        {
          v27 = v18;
        }

        v26 = 0;
      }
    }

    v31 = [v9 countByEnumeratingWithState:&v33 objects:v43 count:16];
  }

  while (v31);

  v20 = v27;
  if (v20)
  {
    v21 = v20;
    if (v25)
    {
      v22 = v20;
      *v25 = v21;
    }

    else
    {
      _HKLogDroppedError();
    }

    v23 = v26;

    goto LABEL_21;
  }

  v23 = v26;
LABEL_22:

  return v23 & 1;
}

+ (id)_optInJSONForBuild:(id)a3 extractionRulesVersion:(id)a4 FHIRVersion:(id)a5 resource:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(NSMutableDictionary);
  [v13 setObject:&off_1102D0 forKeyedSubscript:@"schemaVersion"];
  [v13 setObject:v12 forKeyedSubscript:@"os"];

  [v13 setObject:v11 forKeyedSubscript:@"extractionRulesVersion"];
  [v13 setObject:v10 forKeyedSubscript:@"FHIRVersion"];

  [v13 setObject:v9 forKeyedSubscript:@"resource"];

  return v13;
}

- (void)periodicActivity:(id)a3 configureXPCActivityCriteria:(id)a4
{
  xdict = a4;
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_string(xdict, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_REQUIRES_CLASS_A, 1);
}

- (void)performPeriodicActivity:(id)a3 completion:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_61CEC;
  v6[3] = &unk_107E20;
  v7 = a4;
  v5 = v7;
  [(HDClinicalOptInDataCollectionManager *)self triggerClinicalOptInDataCollectionForReason:0 completion:v6];
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