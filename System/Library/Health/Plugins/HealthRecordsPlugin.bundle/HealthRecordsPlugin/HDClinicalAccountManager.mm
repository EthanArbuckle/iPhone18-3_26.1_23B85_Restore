@interface HDClinicalAccountManager
- (BOOL)_createOrUpdateCredentialFromAuthResponse:(id)a3 account:(id)a4 requestedScope:(id)a5 event:(id)a6 error:(id *)a7;
- (BOOL)_deleteAccountWithSyncIdentifier:(id)a3 deletionReason:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
- (BOOL)_isClinicalSharingSupportedLocale:(id)a3;
- (BOOL)_updateCredentialStateForAccountWithIdentifier:(id)a3 state:(int64_t)a4 event:(id)a5 error:(id *)a6;
- (BOOL)deleteAccountWithIdentifier:(id)a3 deletionReason:(int64_t)a4 error:(id *)a5;
- (BOOL)deleteAccountWithSyncIdentifier:(id)a3 deletionReason:(int64_t)a4 error:(id *)a5;
- (BOOL)simulateAccountDownloadOverdueWithIdentifier:(id)a3 profile:(id)a4 stage:(int64_t)a5 error:(id *)a6;
- (BOOL)updateClinicalSharingStatusForAccountWithIdentifier:(id)a3 firstSharedDate:(id)a4 lastSharedDate:(id)a5 userStatus:(id)a6 multiDeviceStatus:(id)a7 primaryDeviceName:(id)a8 error:(id *)a9;
- (BOOL)updateCredentialStateForAccount:(id)a3 state:(int64_t)a4 force:(BOOL)a5 event:(id)a6 error:(id *)a7;
- (HDClinicalAccountManager)init;
- (HDClinicalAccountManager)initWithProfileExtension:(id)a3;
- (HDHealthRecordsProfileExtension)profileExtension;
- (HDProfile)profile;
- (id)_accountEntityForIssuerIdentifier:(id)a3 label:(id)a4 createIfNecessary:(BOOL)a5 wellKnown:(BOOL)a6 error:(id *)a7;
- (id)_createAccountForGatewayWithExternalID:(id)a3 database:(id)a4 profile:(id)a5 error:(id *)a6;
- (id)_createRefreshAccountInformationTaskForAccountWithIdentifier:(id)a3;
- (id)_newAccountIdentifierAfterReplacingAccountWithIdentifier:(id)a3 usingCredentialWithPersistentID:(id)a4 error:(id *)a5;
- (id)_savePatientMismatchedCredentialFromAuthResponse:(id)a3 requestedScope:(id)a4 error:(id *)a5;
- (id)accountForSource:(id)a3 error:(id *)a4;
- (id)accountWithIdentifier:(id)a3 error:(id *)a4;
- (id)accountsForGatewaysWithExternalIDs:(id)a3 errorOut:(id *)a4;
- (id)accountsWithIdentifiers:(id)a3 error:(id *)a4;
- (id)allAccountsWithError:(id *)a3;
- (id)allEventsForAccountWithIdentifier:(id)a3 error:(id *)a4;
- (id)beginInitialLoginSessionForGatewayWithExternalID:(id)a3 error:(id *)a4;
- (id)beginReloginSessionForAccountWithIdentifier:(id)a3 error:(id *)a4;
- (id)createAccountForIssuer:(id)a3 databaseTransaction:(id)a4 error:(id *)a5;
- (id)createStaticAccountWithTitle:(id)a3 subtitle:(id)a4 description:(id)a5 countryCode:(id)a6 fhirVersion:(id)a7 onlyIfNeededForSimulatedGatewayID:(id)a8 error:(id *)a9;
- (id)createStaticDSTU2AccountWithTitle:(id)a3 error:(id *)a4;
- (id)credentialFromCodableCredential:(id)a3;
- (id)debugDescription;
- (id)didRefreshCredentialForAccount:(id)a3 refreshResult:(id)a4 error:(id *)a5;
- (id)fetchableAccountsWithIdentifiers:(id)a3 error:(id *)a4;
- (id)finalizeAfterRunningRefreshAccountInformationTask:(id)a3 refreshResult:(id)a4 finalizationError:(id *)a5;
- (id)persistEphemeralAccount:(id)a3 triggerIngestion:(BOOL)a4 error:(id *)a5;
- (id)simulateUnmergeEventForAccountWithIdentifier:(id)a3 profile:(id)a4 error:(id *)a5;
- (id)unitTesting_createAccountForGateway:(id)a3 authResponse:(id)a4 error:(id *)a5;
- (id)unitTesting_createAccountForGateway:(id)a3 requestedScope:(id)a4 authResponse:(id)a5 error:(id *)a6;
- (id)unitTesting_createAccountWithoutCredentialForGateway:(id)a3 error:(id *)a4;
- (id)userFetchEligibleAccountsWithIdentifiers:(id)a3 error:(id *)a4;
- (int64_t)_hasClinicalSharingEnabledAccountWithError:(id *)a3;
- (int64_t)_highPriorityTransactionHasClinicalSharingEnabledAccountWithError:(id *)a3;
- (int64_t)deviceConfigurationSupportsClinicalSharingGivenLocale:(id)a3 error:(id *)a4;
- (int64_t)deviceConfigurationSupportsClinicalSharingWithError:(id *)a3;
- (int64_t)deviceConfigurationSupportsHealthRecordsWithError:(id *)a3;
- (int64_t)hasGatewayBackedAccountsWithTransaction:(id)a3 error:(id *)a4;
- (int64_t)hasIssuerBackedAccountsWithTransaction:(id)a3 error:(id *)a4;
- (int64_t)highPriorityTransactionHasGatewayBackedAccountsWithError:(id *)a3;
- (int64_t)highPriorityTransactionHasIssuerBackedAccountsWithError:(id *)a3;
- (void)_accountDidChange:(id)a3;
- (void)_accountDidChange:(id)a3 changeType:(int64_t)a4;
- (void)_accumulateMetricsFromTaskEndStates:(id)a3 gateway:(id)a4;
- (void)_fetchAccessTokenForTokenSession:(id)a3 existingAccount:(id)a4 gateway:(id)a5 completion:(id)a6;
- (void)_messageObserversAboutAccount:(id)a3 changeType:(int64_t)a4;
- (void)_performIngestionForNewCredentialsWithReason:(id)a3 accountIdentifier:(id)a4;
- (void)_requestChangesCloudSyncForProfile:(id)a3 reason:(id)a4;
- (void)dealloc;
- (void)didRefreshCredentialForAccount:(id)a3 refreshResult:(id)a4;
- (void)endLoginSessionWithState:(id)a3 code:(id)a4 completion:(id)a5;
- (void)failedToCompleteFetchForAccount:(id)a3 mustLimitFutureRequests:(BOOL)a4;
- (void)prepareExtractionOfAccount:(id)a3;
- (void)pruneAuthenticationDataWithCompletion:(id)a3;
- (void)refreshAccountConnectionInformationForAccountWithIdentifier:(id)a3 completion:(id)a4;
- (void)replaceAccountWithNewAccountForAccountWithIdentifier:(id)a3 usingCredentialWithPersistentID:(id)a4 completion:(id)a5;
- (void)resetLastExtractedRowIDWithCompletion:(id)a3;
@end

@implementation HDClinicalAccountManager

- (HDClinicalAccountManager)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDClinicalAccountManager)initWithProfileExtension:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HDClinicalAccountManager;
  v5 = [(HDClinicalAccountManager *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profileExtension, v4);
    v7 = [v4 profile];
    objc_storeWeak(&v6->_profile, v7);

    WeakRetained = objc_loadWeakRetained(&v6->_profileExtension);
    v9 = [WeakRetained createHealthRecordsLegacyIngestionServiceClient];
    legacyXPCIngestionServiceClient = v6->_legacyXPCIngestionServiceClient;
    v6->_legacyXPCIngestionServiceClient = v9;

    v11 = objc_alloc_init(HDClinicalIngestionAnalyticsAccumulator);
    currentAnalyticsAccumulator = v6->_currentAnalyticsAccumulator;
    v6->_currentAnalyticsAccumulator = v11;

    v13 = [HKSynchronousObserverSet alloc];
    v14 = [v13 initWithName:@"HDClinicalAccountManager-accountStateChangeObservers" loggingCategory:HKLogHealthRecords];
    stateChangeObservers = v6->_stateChangeObservers;
    v6->_stateChangeObservers = v14;

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v6 selector:"_accountDidChange:" name:@"HDClinicalAccountEntityDidChangeEventNotification" object:0];
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"HDClinicalAccountEntityDidChangeEventNotification" object:0];

  v4.receiver = self;
  v4.super_class = HDClinicalAccountManager;
  [(HDClinicalAccountManager *)&v4 dealloc];
}

- (id)beginInitialLoginSessionForGatewayWithExternalID:(id)a3 error:(id *)a4
{
  v6 = a3;
  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(HDClinicalAccountManager *)self debugDescription];
    v10 = HKSensitiveLogItem();
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2114;
    *&buf[14] = v10;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ beginning initial login session for gateway %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v42 = sub_2CB44;
  v43 = sub_2CB54;
  v44 = 0;
  v11 = [(HDClinicalAccountManager *)self profile];
  v12 = [v11 database];
  v27 = _NSConcreteStackBlock;
  v28 = 3221225472;
  v29 = sub_2CB5C;
  v30 = &unk_106C30;
  v31 = self;
  v33 = buf;
  v34 = 0;
  v13 = v6;
  v32 = v13;
  v14 = [HDClinicalAuthorizationSessionEntity performWriteTransactionWithHealthDatabase:v12 error:&v34 block:&v27];
  v15 = v34;

  if (v14)
  {
    _HKInitializeLogging();
    v16 = HKLogHealthRecords;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(HDClinicalAccountManager *)self debugDescription:v27];
      v18 = [*(*&buf[8] + 40) loginURL];
      v19 = HKSensitiveLogItem();
      *v35 = 138543618;
      v36 = v17;
      v37 = 2114;
      v38 = v19;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ ready to start initial login session at %{public}@", v35, 0x16u);
    }

    v20 = *(*&buf[8] + 40);
  }

  else
  {
    _HKInitializeLogging();
    v21 = HKLogHealthRecords;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v26 = [(HDClinicalAccountManager *)self debugDescription:v27];
      *v35 = 138543874;
      v36 = v26;
      v37 = 2114;
      v38 = v13;
      v39 = 2114;
      v40 = v15;
      _os_log_error_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%{public}@ failed to begin initial login session for gateway %{public}@: %{public}@", v35, 0x20u);
    }

    v22 = v15;
    v23 = v22;
    if (v22)
    {
      if (a4)
      {
        v24 = v22;
        *a4 = v23;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v20 = 0;
  }

  _Block_object_dispose(buf, 8);

  return v20;
}

- (id)beginReloginSessionForAccountWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(HDClinicalAccountManager *)self debugDescription];
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2114;
    *&buf[14] = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ beginning relogin session for account %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v37 = sub_2CB44;
  v38 = sub_2CB54;
  v39 = 0;
  v10 = [(HDClinicalAccountManager *)self profile];
  v11 = [v10 database];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_2D010;
  v26[3] = &unk_106C58;
  v28 = buf;
  v29 = 0;
  v12 = v6;
  v27 = v12;
  v13 = [HDClinicalAuthorizationSessionEntity performWriteTransactionWithHealthDatabase:v11 error:&v29 block:v26];
  v14 = v29;

  if (v13)
  {
    _HKInitializeLogging();
    v15 = HKLogHealthRecords;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(HDClinicalAccountManager *)self debugDescription];
      v17 = [*(*&buf[8] + 40) loginURL];
      v18 = HKSensitiveLogItem();
      *v30 = 138543618;
      v31 = v16;
      v32 = 2114;
      v33 = v18;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ ready to start relogin session at %{public}@", v30, 0x16u);
    }

    v19 = *(*&buf[8] + 40);
  }

  else
  {
    _HKInitializeLogging();
    v20 = HKLogHealthRecords;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v25 = [(HDClinicalAccountManager *)self debugDescription];
      *v30 = 138543874;
      v31 = v25;
      v32 = 2114;
      v33 = v12;
      v34 = 2114;
      v35 = v14;
      _os_log_error_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%{public}@ failed to begin relogin session for account %{public}@: %{public}@", v30, 0x20u);
    }

    v21 = v14;
    v22 = v21;
    if (v21)
    {
      if (a4)
      {
        v23 = v21;
        *a4 = v22;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v19 = 0;
  }

  _Block_object_dispose(buf, 8);

  return v19;
}

- (void)endLoginSessionWithState:(id)a3 code:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  _HKInitializeLogging();
  v11 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [(HDClinicalAccountManager *)self debugDescription];
    v14 = HKSensitiveLogItem();
    *buf = 138543874;
    *&buf[4] = v13;
    *&buf[12] = 2114;
    *&buf[14] = v14;
    *&buf[22] = 2114;
    v80 = v8;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ ending login session with code %{public}@ and state %{public}@", buf, 0x20u);
  }

  v15 = [(HDClinicalAccountManager *)self profile];
  v38 = [v15 database];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v80 = sub_2CB44;
  v81 = sub_2CB54;
  v82 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = sub_2CB44;
  v69 = sub_2CB54;
  v70 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = sub_2CB44;
  v63 = sub_2CB54;
  v64 = 0;
  v58 = 0;
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_2D7B0;
  v51[3] = &unk_106C80;
  v52 = v8;
  v53 = v9;
  v54 = self;
  v55 = &v59;
  v56 = &v65;
  v16 = v15;
  v57 = buf;
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_2DBB4;
  v47[3] = &unk_1063B8;
  v17 = v53;
  v48 = v17;
  v18 = v52;
  v49 = v18;
  v19 = v38;
  v50 = v19;
  v20 = [HDClinicalAccountEntity performWriteTransactionWithHealthDatabase:v19 error:&v58 block:v51 inaccessibilityHandler:v47];
  v21 = v58;
  if (v20)
  {
    if (*(*&buf[8] + 40) && v60[5])
    {
      _HKInitializeLogging();
      v22 = HKLogHealthRecords;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [(HDClinicalAccountManager *)self debugDescription];
        v23 = HKSensitiveLogItem();
        v24 = [v60[5] pkceVerifier];
        v25 = HKStringFromBool();
        *v71 = 138543874;
        v72 = v39;
        v73 = 2114;
        v74 = v23;
        v75 = 2114;
        v37 = v25;
        v76 = v25;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ exchanging code %{public}@ for tokens, using PKCE: %{public}@", v71, 0x20u);
      }

      v26 = v60[5];
      v27 = v66[5];
      v28 = *(*&buf[8] + 40);
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_2DC14;
      v40[3] = &unk_106CA8;
      v44 = &v65;
      v40[4] = self;
      v45 = buf;
      v46 = &v59;
      v41 = v16;
      v42 = v18;
      v43 = v10;
      [(HDClinicalAccountManager *)self _fetchAccessTokenForTokenSession:v26 existingAccount:v27 gateway:v28 completion:v40];
    }

    else
      v31 = {;

      _HKInitializeLogging();
      v32 = HKLogHealthRecords;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = [(HDClinicalAccountManager *)self debugDescription];
        sub_A06AC(v33, v31, v71);
      }

      v34 = [HKClinicalAccountLoginCompletionState completionStateWithError:v31];
      (*(v10 + 2))(v10, v34);

      v21 = v31;
    }
  }

  else
  {
    _HKInitializeLogging();
    v29 = HKLogHealthRecords;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v35 = [(HDClinicalAccountManager *)self debugDescription];
      v36 = HKSensitiveLogItem();
      *v71 = 138544130;
      v72 = v35;
      v73 = 2112;
      v74 = v36;
      v75 = 2114;
      v76 = v18;
      v77 = 2114;
      v78 = v21;
      _os_log_error_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%{public}@ failed to end login session with code %@ and state %{public}@: %{public}@", v71, 0x2Au);
    }

    v30 = [HKClinicalAccountLoginCompletionState completionStateWithError:v21];
    (*(v10 + 2))(v10, v30);
  }

  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v65, 8);

  _Block_object_dispose(buf, 8);
}

- (void)pruneAuthenticationDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDClinicalAccountManager *)self profile];
  v6 = [v5 database];
  v9 = 0;
  v7 = [HDClinicalAccountEntity performWriteTransactionWithHealthDatabase:v6 error:&v9 block:&stru_106CE8];
  v8 = v9;
  v4[2](v4, v7, v8);
}

- (void)_fetchAccessTokenForTokenSession:(id)a3 existingAccount:(id)a4 gateway:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v11 identifier];
  v15 = v14;
  if (!v14)
  {
    v15 = +[NSUUID UUID];
  }

  v24 = 0;
  v16 = [v12 connectionInformationWithAccountIdentifier:v15 credential:0 error:&v24];
  v17 = v24;
  if (!v14)
  {
  }

  if (v16)
  {
    legacyXPCIngestionServiceClient = self->_legacyXPCIngestionServiceClient;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_2E480;
    v19[3] = &unk_106D10;
    v19[4] = self;
    v20 = v12;
    v23 = v13;
    v21 = v11;
    v22 = v10;
    [(HDHealthRecordsLegacyIngestionServiceClient *)legacyXPCIngestionServiceClient fetchAccessTokenForTokenSession:v22 connectionInformation:v16 completion:v19];
  }

  else
  {
    (*(v13 + 2))(v13, 0, 0, v17);
  }
}

- (id)_createRefreshAccountInformationTaskForAccountWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[HDRefreshAccountInformationTask alloc] initForUseWithAccountManager:self accountIdentifier:v4];

  return v5;
}

- (void)refreshAccountConnectionInformationForAccountWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  _HKInitializeLogging();
  v8 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v18 = self;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ starting credential refresh for account %{public}@", buf, 0x16u);
  }

  v9 = [HDDaemonTransaction transactionWithOwner:self activityName:@"RefreshAccountConnectionInformation"];
  [(HDClinicalAccountManager *)self _createRefreshAccountInformationTaskForAccountWithIdentifier:v6];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_2EA14;
  v13[3] = &unk_106D38;
  v14 = v13[4] = self;
  v15 = v9;
  v16 = v7;
  v10 = v9;
  v11 = v7;
  v12 = v14;
  [v12 runWithCompletion:v13];
}

- (id)finalizeAfterRunningRefreshAccountInformationTask:(id)a3 refreshResult:(id)a4 finalizationError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 error];

  _HKInitializeLogging();
  v11 = HKLogHealthRecords;
  if (v10)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v33 = v11;
      v34 = [v8 accountIdentifier];
      v35 = [v9 error];
      *buf = 138543874;
      v53 = self;
      v54 = 2114;
      v55 = v34;
      v56 = 2114;
      v57 = v35;
      _os_log_error_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "%{public}@ failed to refresh credential for account %{public}@: %{public}@", buf, 0x20u);
    }

    v12 = [v9 error];
    if (v12)
    {
      if (a5)
      {
        v13 = v12;
        v14 = 0;
        *a5 = v12;
LABEL_14:
        v20 = v12;
        goto LABEL_53;
      }

      _HKLogDroppedError();
    }

    v14 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v11;
    v16 = [v8 accountIdentifier];
    *buf = 138543618;
    v53 = self;
    v54 = 2114;
    v55 = v16;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ finalizing after running account connection information refresh for account %{public}@", buf, 0x16u);
  }

  v17 = [v8 accountIdentifier];
  v51 = 0;
  v12 = [(HDClinicalAccountManager *)self accountWithIdentifier:v17 error:&v51];
  v18 = v51;

  if (v12)
  {
    v19 = [v9 authResponse];
    if (v19)
    {
    }

    else
    {
      v24 = [v9 error];

      if (!v24)
      {
        _HKInitializeLogging();
        v36 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
        {
          v37 = v36;
          v38 = [v8 accountIdentifier];
          *buf = 138543618;
          v53 = self;
          v54 = 2114;
          v55 = v38;
          _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ credential for account %{public}@ didn't need refreshing", buf, 0x16u);
        }

        v39 = [v9 credential];
        v50 = v18;
        v22 = [v12 connectionInformationWithCredential:v39 error:&v50];
        v20 = v50;

        if (v22)
        {
          v22 = v22;
          v14 = v22;
        }

        else
        {
          v20 = v20;
          if (v20)
          {
            if (a5)
            {
              v40 = v20;
              *a5 = v20;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          v14 = 0;
        }

        goto LABEL_52;
      }
    }

    v49 = v18;
    v22 = [(HDClinicalAccountManager *)self didRefreshCredentialForAccount:v12 refreshResult:v9 error:&v49];
    v25 = v49;

    if (v22)
    {
      v48 = v25;
      v26 = [v12 connectionInformationWithCredential:v22 error:&v48];
      v20 = v48;

      _HKInitializeLogging();
      v27 = HKLogHealthRecords;
      if (v26)
      {
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v27;
          v29 = [v8 accountIdentifier];
          *buf = 138543618;
          v53 = self;
          v54 = 2114;
          v55 = v29;
          _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully finalized credential refresh for account %{public}@", buf, 0x16u);
        }

        v26 = v26;
        v14 = v26;
      }

      else
      {
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          v46 = v27;
          v47 = [v8 accountIdentifier];
          *buf = 138543874;
          v53 = self;
          v54 = 2114;
          v55 = v47;
          v56 = 2114;
          v57 = v20;
          _os_log_error_impl(&dword_0, v46, OS_LOG_TYPE_ERROR, "%{public}@: failed to retrieve fresh account connection information with fresh credential for account %{public}@: %{public}@", buf, 0x20u);
        }

        v20 = v20;
        if (v20)
        {
          if (a5)
          {
            v32 = v20;
            *a5 = v20;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v14 = 0;
      }

      goto LABEL_51;
    }

    _HKInitializeLogging();
    v30 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v44 = v30;
      v45 = [v8 accountIdentifier];
      *buf = 138543874;
      v53 = self;
      v54 = 2114;
      v55 = v45;
      v56 = 2114;
      v57 = v25;
      _os_log_error_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "%{public}@: failed to persist fresh credential to account %{public}@: %{public}@", buf, 0x20u);
    }

    v26 = v25;
    if (v26)
    {
      if (a5)
      {
        v31 = v26;
        v14 = 0;
        *a5 = v26;
LABEL_45:
        v20 = v26;
LABEL_51:

        goto LABEL_52;
      }

      _HKLogDroppedError();
    }

    v14 = 0;
    goto LABEL_45;
  }

  _HKInitializeLogging();
  v21 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    v42 = v21;
    v43 = [v8 accountIdentifier];
    *buf = 138543874;
    v53 = self;
    v54 = 2114;
    v55 = v43;
    v56 = 2114;
    v57 = v18;
    _os_log_error_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, "%{public}@ failed to fetch account %{public}@ after account connection information  refresh: %{public}@", buf, 0x20u);
  }

  v22 = v18;
  if (!v22)
  {
    goto LABEL_37;
  }

  if (!a5)
  {
    _HKLogDroppedError();
LABEL_37:
    v14 = 0;
    goto LABEL_38;
  }

  v23 = v22;
  v14 = 0;
  *a5 = v22;
LABEL_38:
  v20 = v22;
LABEL_52:

LABEL_53:

  return v14;
}

- (id)persistEphemeralAccount:(id)a3 triggerIngestion:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_2CB44;
  v28 = sub_2CB54;
  v29 = 0;
  v10 = [WeakRetained database];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_2F2FC;
  v19 = &unk_106D60;
  v20 = self;
  v11 = v8;
  v21 = v11;
  v12 = WeakRetained;
  v22 = v12;
  v23 = &v24;
  LOBYTE(a5) = [HDClinicalAccountEntity performWriteTransactionWithHealthDatabase:v10 error:a5 block:&v16];

  if (a5)
  {
    if (v6)
    {
      v13 = [v25[5] identifier];
      [(HDClinicalAccountManager *)self _performIngestionForNewCredentialsWithReason:@"account added" accountIdentifier:v13];
    }

    [(HDClinicalAccountManager *)self _requestChangesCloudSyncForProfile:v12 reason:@"new CHR account inserted", v16, v17, v18, v19, v20];
    v14 = v25[5];
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v24, 8);

  return v14;
}

- (BOOL)_createOrUpdateCredentialFromAuthResponse:(id)a3 account:(id)a4 requestedScope:(id)a5 event:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [(HDClinicalAccountManager *)self profile];
  v17 = [v16 database];

  [v13 identifier];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_2F7D8;
  v25[3] = &unk_106D88;
  v26 = v13;
  v28 = v27 = v12;
  v29 = v14;
  v30 = self;
  v31 = v17;
  v32 = v15;
  v18 = v15;
  v19 = v17;
  v20 = v14;
  v21 = v28;
  v22 = v12;
  v23 = v13;
  LOBYTE(a7) = [HDClinicalAccountEntity performWriteTransactionWithHealthDatabase:v19 error:a7 block:v25];

  return a7;
}

- (id)_savePatientMismatchedCredentialFromAuthResponse:(id)a3 requestedScope:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [HKFHIRCredential from:v8 requestedScope:v9];
  v11 = [v10 createCredentialWithIdentifier:0 error:a5];
  if (v11)
  {
    v12 = [(HDClinicalAccountManager *)self profile];
    v13 = [v12 database];

    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = sub_2CB44;
    v31 = sub_2CB54;
    v32 = 0;
    v26 = 0;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_2FBDC;
    v22[3] = &unk_106DB0;
    v23 = v11;
    v24 = self;
    v25 = &v27;
    LOBYTE(v12) = [HDFHIRCredentialEntity performWriteTransactionWithHealthDatabase:v13 error:&v26 block:v22];
    v14 = v26;
    v15 = v14;
    if (v12)
    {
      v16 = v28[5];
    }

    else
    {
      v18 = v14;
      v19 = v18;
      if (v18)
      {
        if (a5)
        {
          v20 = v18;
          *a5 = v19;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v16 = 0;
    }

    v17 = v16;

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_newAccountIdentifierAfterReplacingAccountWithIdentifier:(id)a3 usingCredentialWithPersistentID:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(HDClinicalAccountManager *)self profile];
  v10 = [v9 database];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_2CB44;
  v30 = sub_2CB54;
  v31 = 0;
  v25 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_2FE58;
  v19[3] = &unk_106DD8;
  v11 = v7;
  v20 = v11;
  v21 = self;
  v12 = v9;
  v22 = v12;
  v13 = v8;
  v23 = v13;
  v24 = &v26;
  v14 = [HDClinicalAccountEntity performWriteTransactionWithHealthDatabase:v10 error:&v25 block:v19];
  v15 = v25;
  if (v14)
  {
    v16 = v27[5];
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  _Block_object_dispose(&v26, 8);
  return v17;
}

- (void)replaceAccountWithNewAccountForAccountWithIdentifier:(id)a3 usingCredentialWithPersistentID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v11 = 0;
  v9 = [(HDClinicalAccountManager *)self _newAccountIdentifierAfterReplacingAccountWithIdentifier:a3 usingCredentialWithPersistentID:a4 error:&v11];
  v10 = v11;
  if (v9)
  {
    [(HDClinicalAccountManager *)self _performIngestionForNewCredentialsWithReason:@"account replacement" accountIdentifier:v9];
    v8[2](v8, 1, 0);
  }

  else
  {
    (v8)[2](v8, 0, v10);
  }
}

- (id)allAccountsWithError:(id *)a3
{
  v4 = [(HDClinicalAccountManager *)self profile];
  v5 = [v4 database];
  v6 = [HDClinicalAccountEntity allAccountsInHealthDatabase:v5 error:a3];

  return v6;
}

- (int64_t)hasGatewayBackedAccountsWithTransaction:(id)a3 error:(id *)a4
{
  v5 = [(HDClinicalAccountManager *)self profile];
  v6 = [v5 database];
  v7 = [HDClinicalAccountEntity hasGatewayBackedAccountsInHealthDatabase:v6 error:a4];

  return v7;
}

- (int64_t)hasIssuerBackedAccountsWithTransaction:(id)a3 error:(id *)a4
{
  v5 = [(HDClinicalAccountManager *)self profile];
  v6 = [v5 database];
  v7 = [HDClinicalAccountEntity hasIssuerBackedAccountsInHealthDatabase:v6 error:a4];

  return v7;
}

- (int64_t)highPriorityTransactionHasGatewayBackedAccountsWithError:(id *)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = [(HDClinicalAccountManager *)self profile];
  v6 = [v5 database];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_303CC;
  v9[3] = &unk_106E00;
  v9[4] = self;
  v9[5] = &v10;
  LODWORD(a3) = [v6 performHighPriorityTransactionsWithError:a3 block:v9];

  if (a3)
  {
    v7 = v11[3];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v10, 8);
  return v7;
}

- (int64_t)highPriorityTransactionHasIssuerBackedAccountsWithError:(id *)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 2;
  v5 = [(HDClinicalAccountManager *)self profile];
  v6 = [v5 database];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_30564;
  v9[3] = &unk_106E00;
  v9[4] = self;
  v9[5] = &v10;
  LODWORD(a3) = [v6 performHighPriorityTransactionsWithError:a3 block:v9];

  if (a3)
  {
    v7 = v11[3];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v10, 8);
  return v7;
}

- (int64_t)deviceConfigurationSupportsHealthRecordsWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v14 = 0;
    v6 = [WeakRetained deviceConfigurationSupportsHealthRecords:&v14 error:a3];
    v7 = 1;
    if ((v14 & 1) == 0)
    {
      v7 = 2;
    }

    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A0918(v9);
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [NSError hk_error:100 format:@"%@ lost track of its profile extension", v11];

    v8 = 0;
  }

  return v8;
}

- (int64_t)deviceConfigurationSupportsClinicalSharingWithError:(id *)a3
{
  v5 = +[NSLocale autoupdatingCurrentLocale];
  v6 = [(HDClinicalAccountManager *)self deviceConfigurationSupportsClinicalSharingGivenLocale:v5 error:a3];

  return v6;
}

- (int64_t)deviceConfigurationSupportsClinicalSharingGivenLocale:(id)a3 error:(id *)a4
{
  if ([(HDClinicalAccountManager *)self _isClinicalSharingSupportedLocale:a3])
  {
    return 1;
  }

  return [(HDClinicalAccountManager *)self _highPriorityTransactionHasClinicalSharingEnabledAccountWithError:a4];
}

- (BOOL)_isClinicalSharingSupportedLocale:(id)a3
{
  v3 = [a3 countryCode];
  v4 = [v3 isEqualToString:@"US"];

  return v4;
}

- (int64_t)_highPriorityTransactionHasClinicalSharingEnabledAccountWithError:(id *)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = [(HDClinicalAccountManager *)self profile];
  v6 = [v5 database];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_308D8;
  v9[3] = &unk_106E00;
  v9[4] = self;
  v9[5] = &v10;
  LODWORD(a3) = [v6 performHighPriorityTransactionsWithError:a3 block:v9];

  if (a3)
  {
    v7 = v11[3];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v10, 8);
  return v7;
}

- (int64_t)_hasClinicalSharingEnabledAccountWithError:(id *)a3
{
  v3 = [(HDClinicalAccountManager *)self allAccountsWithError:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 hk_firstObjectPassingTest:&stru_106E40];

    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)accountsWithIdentifiers:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDClinicalAccountManager *)self profile];
  v8 = [HDClinicalAccountEntity accountsWithIdentifiers:v6 profile:v7 error:a4];

  return v8;
}

- (id)accountWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDClinicalAccountManager *)self profile];
  v8 = [v7 database];
  v9 = [HDClinicalAccountEntity accountWithIdentifier:v6 healthDatabase:v8 error:a4];

  return v9;
}

- (id)userFetchEligibleAccountsWithIdentifiers:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDClinicalAccountManager *)self profile];
  v8 = [HDClinicalAccountEntity userFetchEligibleAccountsWithIdentifiers:v6 profile:v7 error:a4];

  return v8;
}

- (id)fetchableAccountsWithIdentifiers:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDClinicalAccountManager *)self profile];
  v8 = [HDClinicalAccountEntity fetchableAccountsWithIdentifiers:v6 profile:v7 error:a4];

  return v8;
}

- (id)accountsForGatewaysWithExternalIDs:(id)a3 errorOut:(id *)a4
{
  v6 = a3;
  v7 = [(HDClinicalAccountManager *)self profile];
  v8 = [v7 database];
  v9 = [HDClinicalAccountEntity accountsForGatewayExternalIDs:v6 healthDatabase:v8 error:a4];

  return v9;
}

- (id)accountForSource:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 _isClinicalSource])
  {
    v7 = [v6 _deducedClinicalAccountIdentifier];
    if (v7)
    {
      v8 = [(HDClinicalAccountManager *)self profile];
      v9 = [v8 database];
      v10 = [HDClinicalAccountEntity accountWithIdentifier:v7 healthDatabase:v9 error:a4];
    }

    else
    {
      [NSError hk_assignError:a4 code:3 format:@"Source does not represent a clinical account: %@", v6];
      v10 = 0;
    }
  }

  else
  {
    [NSError hk_assignError:a4 code:3 format:@"Source is not a clinical source: %@", v6];
    v10 = 0;
  }

  return v10;
}

- (BOOL)_updateCredentialStateForAccountWithIdentifier:(id)a3 state:(int64_t)a4 event:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [(HDClinicalAccountManager *)self profile];
  v13 = [v12 database];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(a6) = [HDClinicalAccountEntity updateAccountCredentialState:a4 identifier:v11 profile:WeakRetained healthDatabase:v13 event:v10 error:a6];

  return a6;
}

- (BOOL)_deleteAccountWithSyncIdentifier:(id)a3 deletionReason:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [(HDClinicalAccountManager *)self profile];
  v13 = [v11 protectedDatabase];
  v14 = +[NSDate date];
  v15 = [NSString stringWithFormat:@"Failed to delete account with sync identifier %@", v10];
  v66 = 0;
  v16 = [HDClinicalDeletedAccountEntity insertTombstoneWithSyncIdentifierIfNotExists:v10 deletionDate:v14 deletionReason:0 profile:v12 transaction:v11 error:&v66];

  v17 = v66;
  if (v16)
  {
    v65 = 0;
    v18 = [HDClinicalAccountEntity accountEntityWithSyncIdentifier:v10 database:v13 error:&v65];
    v60 = v18;
    v61 = v65;
    if (v61)
    {
      _HKInitializeLogging();
      v19 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        v45 = v19;
        v46 = [(HDClinicalAccountManager *)self debugDescription];
        *buf = 138543874;
        v68 = v46;
        v69 = 2114;
        v70 = v10;
        v71 = 2114;
        v72 = v61;
        _os_log_error_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "%{public}@ unable to delete account with sync identifier %{public}@, failed to retrieve entity for account: %{public}@", buf, 0x20u);
      }

      v20 = v61;
      [NSError hk_assignError:a6 code:100 description:v15 underlyingError:v61];
      v21 = 0;
    }

    else if (v18)
    {
      v59 = v17;
      v23 = [v18 identifierInDatabase:v13];
      if (v23)
      {
        v58 = v13;
        v24 = [HKSharingRecipientIdentifier alloc];
        v25 = [v23 UUIDString];
        v26 = [v24 initForClinicalAccountIdentifier:v25];

        v27 = [v12 sharingAuthorizationManager];
        v64 = 0;
        v56 = v26;
        LOBYTE(v26) = [v27 revokeRecipientWithIdentifier:v26 error:&v64];
        v57 = v64;

        if (v26)
        {
          v63 = 0;
          v21 = [HDClinicalAccountEntity deleteAccountWithIdentifier:v23 deletionReason:a4 deleteGateway:0 deleteIssuer:1 profile:v12 error:&v63];
          v55 = v63;
          _HKInitializeLogging();
          if (v21)
          {
            v28 = HKLogHealthRecords;
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
            {
              v29 = v28;
              v30 = [(HDClinicalAccountManager *)self debugDescription];
              v31 = NSStringFromHKClinicalAccountDeletionReason();
              *buf = 138544130;
              v68 = v30;
              v69 = 2114;
              v70 = v23;
              v71 = 2114;
              v72 = v10;
              v73 = 2114;
              v74 = v31;
              _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully deleted account %{public}@, sync identifier %{public}@, with reason: %{public}@", buf, 0x2Au);
            }

            v62 = 0;
            v13 = v58;
            v32 = [HDClinicalAccountEntity countValueForProperty:HDSQLEntityPropertyStar predicate:0 database:v58 error:&v62];
            v54 = v62;
            if (v32)
            {
              if ([v32 integerValue] <= 0)
              {
                _HKInitializeLogging();
                v33 = HKLogHealthRecords;
                if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
                {
                  v34 = v33;
                  v35 = [(HDClinicalAccountManager *)self debugDescription];
                  *buf = 138543362;
                  v68 = v35;
                  _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ no accounts remain, will reset IHR", buf, 0xCu);
                }

                WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
                v37 = [WeakRetained analyticsManager];
                [v37 resetAcceptedVersionForImproveHealthRecords];

                v13 = v58;
              }
            }

            else
            {
              _HKInitializeLogging();
              if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
              {
                sub_A095C();
              }
            }

            v48 = v55;
          }

          else
          {
            v47 = HKLogHealthRecords;
            v13 = v58;
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
            {
              v52 = v47;
              v53 = [(HDClinicalAccountManager *)self debugDescription];
              *buf = 138544130;
              v68 = v53;
              v69 = 2114;
              v70 = v23;
              v71 = 2114;
              v72 = v10;
              v73 = 2114;
              v74 = v55;
              _os_log_error_impl(&dword_0, v52, OS_LOG_TYPE_ERROR, "%{public}@ unable to delete account %{public}@, sync identifier %{public}@, clinical account entity deletion failed: %{public}@", buf, 0x2Au);

              v13 = v58;
            }

            v48 = v55;
            [NSError hk_assignError:a6 code:100 description:v15 underlyingError:v55];
          }

          v20 = 0;
          v42 = v57;
        }

        else
        {
          _HKInitializeLogging();
          v41 = HKLogHealthRecords;
          v20 = 0;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            v50 = v41;
            v51 = [(HDClinicalAccountManager *)self debugDescription];
            *buf = 138544130;
            v68 = v51;
            v69 = 2114;
            v70 = v23;
            v71 = 2114;
            v72 = v10;
            v73 = 2114;
            v74 = v57;
            _os_log_error_impl(&dword_0, v50, OS_LOG_TYPE_ERROR, "%{public}@ unable to delete account %{public}@, sync identifier %{public}@, revoking sharing authorization failed: %{public}@", buf, 0x2Au);
          }

          v42 = v57;
          [NSError hk_assignError:a6 code:100 description:v15 underlyingError:v57];
          v21 = 0;
          v13 = v58;
        }
      }

      else
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          sub_A09F4();
        }

        [NSError hk_assignError:a6 code:100 format:@"Failed to retrieve identifier for account with sync identifier %@", v10];
        v21 = 0;
        v20 = 0;
      }

      v17 = v59;
    }

    else
    {
      _HKInitializeLogging();
      v38 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v38;
        v40 = [(HDClinicalAccountManager *)self debugDescription];
        *buf = 138543618;
        v68 = v40;
        v69 = 2114;
        v70 = v10;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "%{public}@ asked to delete account with sync identifier %{public}@, but no such account found.", buf, 0x16u);
      }

      v21 = 1;
      v20 = 0;
    }
  }

  else
  {
    _HKInitializeLogging();
    v22 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v43 = v22;
      v44 = [(HDClinicalAccountManager *)self debugDescription];
      *buf = 138543874;
      v68 = v44;
      v69 = 2114;
      v70 = v10;
      v71 = 2114;
      v72 = v17;
      _os_log_error_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "%{public}@ unable to delete account with sync identifier %{public}@, failed to insert tombstone: %{public}@", buf, 0x20u);
    }

    [NSError hk_assignError:a6 code:100 description:v15 underlyingError:v17];
    v21 = 0;
  }

  return v21;
}

- (BOOL)deleteAccountWithIdentifier:(id)a3 deletionReason:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  _HKInitializeLogging();
  v9 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = objc_opt_class();
    v12 = v11;
    v13 = NSStringFromHKClinicalAccountDeletionReason();
    *buf = 138543874;
    *&buf[4] = v11;
    *&buf[12] = 2114;
    *&buf[14] = v8;
    *&buf[22] = 2114;
    v35 = v13;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ starting to delete account %{public}@ with reason: %{public}@", buf, 0x20u);
  }

  v14 = [(HDClinicalAccountManager *)self profile];
  v15 = [v14 database];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v35) = 0;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_319F4;
  v29[3] = &unk_106EA8;
  v30 = v8;
  v31 = self;
  v32 = buf;
  v33 = a4;
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_31B28;
  v24 = &unk_106ED0;
  v27 = buf;
  v16 = v30;
  v25 = v16;
  v28 = a4;
  v17 = v15;
  v26 = v17;
  v18 = [HDClinicalAccountEntity performWriteTransactionWithHealthDatabase:v17 error:a5 block:v29 inaccessibilityHandler:&v21];
  if (v18 && *(*&buf[8] + 24) == 1)
  {
    v19 = [(HDClinicalAccountManager *)self profile:v21];
    [(HDClinicalAccountManager *)self _requestChangesCloudSyncForProfile:v19 reason:@"CHR account deleted"];
  }

  _Block_object_dispose(buf, 8);
  return v18;
}

- (BOOL)deleteAccountWithSyncIdentifier:(id)a3 deletionReason:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  _HKInitializeLogging();
  v9 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = objc_opt_class();
    v12 = v11;
    v13 = NSStringFromHKClinicalAccountDeletionReason();
    *buf = 138543874;
    v28 = v11;
    v29 = 2114;
    v30 = v8;
    v31 = 2114;
    v32 = v13;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ starting to delete account with sync identifier %{public}@ with reason: %{public}@", buf, 0x20u);
  }

  v14 = [(HDClinicalAccountManager *)self profile];
  v15 = [v14 database];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_31DD4;
  v24[3] = &unk_106500;
  v24[4] = self;
  v25 = v8;
  v26 = a4;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_31DEC;
  v20[3] = &unk_106800;
  v22 = v15;
  v23 = a4;
  v21 = v25;
  v16 = v15;
  v17 = v25;
  v18 = [HDClinicalAccountEntity performWriteTransactionWithHealthDatabase:v16 error:a5 block:v24 inaccessibilityHandler:v20];

  return v18;
}

- (void)failedToCompleteFetchForAccount:(id)a3 mustLimitFutureRequests:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[NSDate date];
  if (v4)
  {
    v8 = +[HDClinicalAccount numFailedAttemptsToReachMaxBlockTime];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(HDClinicalAccountManager *)self profile];
  v10 = [v9 database];

  v11 = [v6 identifier];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v23 = 0;
  v13 = [HDClinicalAccountEntity updateAccountLastFailedFetchDate:v7 overrideFailedAttemptsCount:v8 identifier:v11 profile:WeakRetained healthDatabase:v10 error:&v23];
  v14 = v23;

  _HKInitializeLogging();
  v15 = HKLogHealthRecords;
  if (v13)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
    {
      log = v15;
      v20 = [v6 identifier];
      v22 = [v6 lastFailedFetchDate];
      v16 = [v22 hk_truncateToDay];
      v17 = HDDiagnosticStringFromDate();
      v18 = [v7 hk_truncateToDay];
      v19 = HDDiagnosticStringFromDate();
      *buf = 138543874;
      v25 = v20;
      v26 = 2114;
      v27 = v17;
      v28 = 2114;
      v29 = v19;
    }
  }

  else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_A0B24();
  }
}

- (void)prepareExtractionOfAccount:(id)a3
{
  v4 = a3;
  v5 = [v4 gateway];
  v6 = [v5 externalID];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [v4 signedClinicalDataIssuer];
    v8 = [v9 identifier];
  }

  v10 = [v4 gateway];
  v11 = [v10 title];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = [v4 signedClinicalDataIssuer];
    v13 = [v14 title];
  }

  if (v8)
  {
    v15 = [v4 identifier];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v20 = 0;
    v17 = [HDClinicalAccountEntity updateSourcesForAccountWithIdentifier:v15 wasAccountInsert:1 clinicalExternalID:v8 externalTitle:v13 profile:WeakRetained error:&v20];
    v18 = v20;

    if ((v17 & 1) == 0)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_A0BBC();
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v19 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_A0C54(v19);
    }
  }
}

- (void)resetLastExtractedRowIDWithCompletion:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained database];
  v35 = 0;
  v7 = [HDClinicalAccountEntity allAccountsInHealthDatabase:v6 error:&v35];
  v8 = v35;

  if (!v7)
  {
    _HKInitializeLogging();
    v23 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "No accounts for which to reset extracted row IDs", buf, 2u);
    }

    v4[2](v4, 0, v8);
    goto LABEL_24;
  }

  v25 = v4;

  v9 = objc_loadWeakRetained(&self->_profile);
  v28 = [v9 database];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v24 = v7;
  v10 = v7;
  v29 = [v10 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (!v29)
  {

    goto LABEL_22;
  }

  v8 = 0;
  v27 = *v32;
  obj = v10;
  do
  {
    v11 = 0;
    do
    {
      v12 = v8;
      if (*v32 != v27)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v31 + 1) + 8 * v11);
      v14 = [v13 lastExtractedRulesVersion];
      v15 = [v13 identifier];
      v16 = self;
      v17 = objc_loadWeakRetained(&self->_profile);
      v30 = v8;
      v18 = [HDClinicalAccountEntity updateAccountLastExtractedRowID:0 rulesVersion:v14 identifier:v15 profile:v17 healthDatabase:v28 error:&v30];
      v8 = v30;

      _HKInitializeLogging();
      v19 = HKLogHealthRecords;
      if (v18)
      {
        if (!os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
        {
          goto LABEL_12;
        }

        v20 = v19;
        v21 = [v13 identifier];
        *buf = 138543362;
        v37 = v21;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Did reset last extracted row ID on account %{public}@", buf, 0xCu);
        goto LABEL_10;
      }

      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        v20 = v19;
        v21 = [v13 identifier];
        *buf = 138543618;
        v37 = v21;
        v38 = 2114;
        v39 = v8;
        _os_log_error_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "Unable to reset last extracted row ID for account %{public}@: %{public}@", buf, 0x16u);
LABEL_10:
      }

LABEL_12:
      v11 = v11 + 1;
      self = v16;
    }

    while (v29 != v11);
    v22 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
    v29 = v22;
  }

  while (v22);

  if (v8)
  {
    v4 = v25;
    v25[2](v25, 0, v8);
    goto LABEL_23;
  }

LABEL_22:
  v4 = v25;
  v25[2](v25, 1, 0);
  v8 = 0;
LABEL_23:
  v7 = v24;

LABEL_24:
}

- (BOOL)updateCredentialStateForAccount:(id)a3 state:(int64_t)a4 force:(BOOL)a5 event:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a6;
  if (!a5 && (v18 = [v12 credentialState], a4 == 2) && v18 == &dword_0 + 1)
  {
    v19 = [v12 identifier];
    v20 = [NSError hk_error:3 format:@"Attempted to mark account %@ as needing scope upgrade when it already needs relogin", v19];
    if (v20)
    {
      if (a7)
      {
        v21 = v20;
        *a7 = v20;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    _HKInitializeLogging();
    v22 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A0CF4(a7, v22);
    }

    v17 = 0;
  }

  else
  {
    v14 = [(HDClinicalAccountManager *)self profile];
    v15 = [v14 database];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_32B20;
    v27[3] = &unk_106EF8;
    v28 = v12;
    v31 = a4;
    v29 = v14;
    v30 = v13;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_32C7C;
    v24[3] = &unk_106F20;
    v25 = v30;
    v26 = v29;
    v16 = v29;
    v17 = [HDClinicalAccountEntity performWriteTransactionWithHealthDatabase:v15 error:a7 block:v27 inaccessibilityHandler:v24];
  }

  return v17;
}

- (BOOL)updateClinicalSharingStatusForAccountWithIdentifier:(id)a3 firstSharedDate:(id)a4 lastSharedDate:(id)a5 userStatus:(id)a6 multiDeviceStatus:(id)a7 primaryDeviceName:(id)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = [(HDClinicalAccountManager *)self profile];
  v22 = [v21 database];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_32F14;
  v30[3] = &unk_106D88;
  v31 = v15;
  v32 = self;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = v19;
  v37 = v20;
  v23 = v20;
  v24 = v19;
  v25 = v18;
  v26 = v17;
  v27 = v16;
  v28 = v15;
  LOBYTE(v20) = [HDClinicalAccountEntity performWriteTransactionWithHealthDatabase:v22 error:a9 block:v30];

  return v20;
}

- (void)didRefreshCredentialForAccount:(id)a3 refreshResult:(id)a4
{
  v6 = a3;
  v13 = 0;
  v7 = [(HDClinicalAccountManager *)self didRefreshCredentialForAccount:v6 refreshResult:a4 error:&v13];
  v8 = v13;
  if (!v7)
  {
    _HKInitializeLogging();
    v9 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      v11 = [(HDClinicalAccountManager *)self debugDescription];
      v12 = [v6 identifier];
      *buf = 138543874;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = v8;
      _os_log_error_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%{public}@ failed to update credential for account %{public}@: %{public}@", buf, 0x20u);
    }
  }
}

- (id)didRefreshCredentialForAccount:(id)a3 refreshResult:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HDClinicalAccountManager *)self profile];
  v55 = [v10 database];

  v11 = [v8 identifier];
  v12 = [HKClinicalAccountEvent alloc];
  v13 = [v8 identifier];
  v14 = [NSString stringWithFormat:@"%s:%d (%s)", "[HDClinicalAccountManager didRefreshCredentialForAccount:refreshResult:error:]", 1285, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthRecords/HealthRecordsPlugin/Managers/HDClinicalAccountManager.m"];
  v15 = +[NSDate date];
  v16 = [v12 initWithAccountIdentifier:v13 type:1 caller:v14 timestamp:v15 eventDescription:@"Updating existing account credential state from auth response in credentialed session"];

  v17 = [v9 endStates];
  v18 = [v17 eventLoggingDescription];
  v19 = [v16 eventWithAppendedEventDescription:v18];

  v20 = [v9 credential];
  v21 = [v20 refreshToken];
  v22 = [v19 eventWithAppendedRefreshToken:v21 description:@"Refresh token used for request."];

  v23 = [v9 authResponse];

  if (v23)
  {
    v24 = [v9 authResponse];
    v25 = [v24 descriptionForAccountEvent];
    v26 = [v22 eventWithAppendedEventDescription:v25];

    v22 = v26;
  }

  v27 = [v9 endStates];
  v28 = [v8 gateway];
  [(HDClinicalAccountManager *)self _accumulateMetricsFromTaskEndStates:v27 gateway:v28];

  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_336E4;
  v58[3] = &unk_106F48;
  v58[4] = self;
  v29 = v11;
  v59 = v29;
  v30 = v22;
  v60 = v30;
  v31 = objc_retainBlock(v58);
  v32 = [v9 authResponse];

  if (v32)
  {
    v51 = a5;
    v52 = v31;
    v54 = v8;
    _HKInitializeLogging();
    v33 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v34 = v33;
      v35 = [(HDClinicalAccountManager *)self debugDescription];
      *buf = 138543618;
      v62 = v35;
      v63 = 2114;
      v64 = v29;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ did change credential for account %{public}@", buf, 0x16u);
    }

    v36 = [v9 authResponse];
    v37 = [v9 credential];
    v38 = [v37 requestedScopeString];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v53 = v30;
    v40 = [v30 eventWithAppendedEventDescription:@"update credential"];
    v56 = 0;
    v57 = 0;
    v41 = [HDClinicalAccountEntity updateAccountCredentialFromAuthResponse:v36 accountIdentifier:v29 requestedScope:v38 profile:WeakRetained healthDatabase:v55 event:v40 updatedCredential:&v57 error:&v56];
    v42 = v57;
    v43 = v56;

    if (v41)
    {
      v42 = v42;
      v44 = v42;
      v30 = v53;
      v8 = v54;
      v31 = v52;
    }

    else
    {
      v31 = v52;
      v52[2](v52, v43);
      v46 = v43;
      v43 = v46;
      v30 = v53;
      v8 = v54;
      if (v46)
      {
        if (v51)
        {
          v47 = v46;
          *v51 = v43;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v44 = 0;
    }

    goto LABEL_25;
  }

  v45 = [v9 error];
  if ([v45 hrs_isReloginRequiredError])
  {
    (v31[2])(v31, v45);
  }

  else
  {
    if (v45)
    {
      v42 = v45;
LABEL_21:
      if (a5)
      {
        v49 = v42;
        v44 = 0;
        *a5 = v42;
      }

      else
      {
        _HKLogDroppedError();
        v44 = 0;
      }

      v43 = v42;
LABEL_25:

      goto LABEL_26;
    }

    _HKInitializeLogging();
    v48 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A0E08(v48);
    }

    v45 = [NSError hk_error:122 description:&stru_1090E8];
  }

  v42 = v45;
  if (v42)
  {
    goto LABEL_21;
  }

  v44 = 0;
LABEL_26:

  return v44;
}

- (void)_accountDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"changeType"];

    if (v7)
    {
      v8 = [v7 integerValue];
    }

    else
    {
      v8 = 0;
    }

    [(HDClinicalAccountManager *)self _accountDidChange:v5 changeType:v8];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A0F40();
    }
  }
}

- (void)_accountDidChange:(id)a3 changeType:(int64_t)a4
{
  v6 = a3;
  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    v8 = v7;
    v9 = [(HDClinicalAccountManager *)self debugDescription];
    v10 = [v6 identifier];
    v11 = NSStringFromAccountStateChangeType();
    v12 = 138543874;
    v13 = v9;
    v14 = 2114;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    _os_log_debug_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%{public}@ account with identifier %{public}@ did change state: %{public}@", &v12, 0x20u);
  }

  [(HDClinicalAccountManager *)self _messageObserversAboutAccount:v6 changeType:a4];
}

- (void)_messageObserversAboutAccount:(id)a3 changeType:(int64_t)a4
{
  v6 = a3;
  stateChangeObservers = self->_stateChangeObservers;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_33A80;
  v9[3] = &unk_106F70;
  v9[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  [(HKSynchronousObserverSet *)stateChangeObservers notifyObservers:v9];
}

- (id)allEventsForAccountWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDClinicalAccountManager *)self profile];
  v8 = [HDClinicalAccountEventEntity fetchEventsForAccountWithIdentifier:v6 profile:v7 error:a4];

  return v8;
}

- (id)createStaticDSTU2AccountWithTitle:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[HKFHIRVersion primaryDSTU2Version];
  v8 = [(HDClinicalAccountManager *)self createStaticAccountWithTitle:v6 subtitle:0 description:0 countryCode:0 fhirVersion:v7 onlyIfNeededForSimulatedGatewayID:0 error:a4];

  return v8;
}

- (id)createStaticAccountWithTitle:(id)a3 subtitle:(id)a4 description:(id)a5 countryCode:(id)a6 fhirVersion:(id)a7 onlyIfNeededForSimulatedGatewayID:(id)a8 error:(id *)a9
{
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = v17;
  if (v17)
  {
    v56 = v17;
    v19 = [NSArray arrayWithObjects:&v56 count:1];
    v20 = [(HDClinicalAccountManager *)self accountsForGatewaysWithExternalIDs:v19 errorOut:a9];

    if (!v20)
    {
      v21 = 0;
      goto LABEL_20;
    }

    if ([(__CFString *)v20 count])
    {
      v21 = [(__CFString *)v20 firstObject];
      goto LABEL_20;
    }

    v36 = v18;
    if (!v15)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v22 = objc_alloc_init(NSUUID);
    v36 = [v22 UUIDString];

    if (!v15)
    {
LABEL_12:
      v20 = @"US";
      goto LABEL_13;
    }
  }

  v23 = [NSString stringWithFormat:@"en_%@", v15];
  v24 = [[NSLocale alloc] initWithLocaleIdentifier:v23];
  v25 = [v24 countryCode];
  if (v25)
  {
    v26 = [v24 countryCode];
    v27 = [v26 length] == &dword_0 + 2;

    if (v27)
    {
      v20 = [v24 countryCode];

LABEL_13:
      v28 = [v16 FHIRRelease];
      v29 = v28 == HKFHIRReleaseUnknown;

      if (!v29)
      {
        v50 = 0;
        v51 = &v50;
        v52 = 0x3032000000;
        v53 = sub_2CB44;
        v54 = sub_2CB54;
        v55 = 0;
        v30 = [(HDClinicalAccountManager *)self profile];
        v31 = [v30 database];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_3404C;
        v40[3] = &unk_106F98;
        v49 = v18 != 0;
        v20 = v20;
        v41 = v20;
        v42 = v16;
        v18 = v36;
        v43 = v18;
        v44 = v37;
        v45 = v38;
        v46 = v39;
        v47 = self;
        v48 = &v50;
        v32 = [HDClinicalGatewayEntity performWriteTransactionWithHealthDatabase:v31 error:a9 block:v40];

        if (v32)
        {
          v21 = v51[5];
        }

        else
        {
          v21 = 0;
        }

        _Block_object_dispose(&v50, 8);
        goto LABEL_20;
      }

      v33 = [v16 stringRepresentation];
      v34 = [NSString stringWithFormat:@"Unable to create HDClinicalAccount with unknown FHIR release for version %@", v33];

      [NSError hk_assignError:a9 code:100 description:v34];
      v21 = 0;
      goto LABEL_17;
    }
  }

  [NSError hk_assignError:a9 code:3 format:@"It appears country code %@ is not valid", v15];

  v21 = 0;
  v20 = @"US";
LABEL_17:
  v18 = v36;
LABEL_20:

  return v21;
}

- (id)unitTesting_createAccountForGateway:(id)a3 authResponse:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 authScopeWithError:a5];
  if (v10)
  {
    v11 = [(HDClinicalAccountManager *)self unitTesting_createAccountForGateway:v8 requestedScope:v10 authResponse:v9 error:a5];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)unitTesting_createAccountWithoutCredentialForGateway:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDClinicalAccountManager *)self profile];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_2CB44;
  v22 = sub_2CB54;
  v23 = 0;
  v8 = [v7 database];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_346DC;
  v14[3] = &unk_106D60;
  v14[4] = self;
  v9 = v6;
  v15 = v9;
  v10 = v7;
  v16 = v10;
  v17 = &v18;
  LODWORD(a4) = [HDClinicalAccountEntity performWriteTransactionWithHealthDatabase:v8 error:a4 block:v14];

  if (a4)
  {
    v11 = v19[5];
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  _Block_object_dispose(&v18, 8);

  return v12;
}

- (id)unitTesting_createAccountForGateway:(id)a3 requestedScope:(id)a4 authResponse:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(HDClinicalAccountManager *)self profile];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_2CB44;
  v32 = sub_2CB54;
  v33 = 0;
  v14 = [v13 database];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_349B4;
  v22[3] = &unk_106FC0;
  v22[4] = self;
  v15 = v10;
  v23 = v15;
  v16 = v13;
  v24 = v16;
  v17 = v12;
  v25 = v17;
  v18 = v11;
  v26 = v18;
  v27 = &v28;
  LODWORD(a6) = [HDClinicalAccountEntity performWriteTransactionWithHealthDatabase:v14 error:a6 block:v22];

  if (a6)
  {
    v19 = v29[5];
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  _Block_object_dispose(&v28, 8);

  return v20;
}

- (id)credentialFromCodableCredential:(id)a3
{
  v3 = a3;
  v4 = [[HDFHIRCredential alloc] initWithCodableCredential:v3];

  return v4;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"%@ (%p)", v4, self];

  return v5;
}

- (id)_createAccountForGatewayWithExternalID:(id)a3 database:(id)a4 profile:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  v11 = [HDClinicalGatewayEntity existingGatewayEntityWithExternalID:a3 database:v9 error:a6];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 gatewayInDatabase:v9 error:a6];
    if (v13)
    {
      v14 = +[NSUUID UUID];
      v15 = +[NSUUID UUID];
      v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v12 persistentID]);
      v17 = +[HKClinicalSharingStatus unknownStatus];
      v18 = [HDClinicalAccountEntity insertAccountWithIdentifier:v14 syncIdentifier:v15 userEnabled:1 credentialState:0 credentialID:0 patientHash:0 gatewayID:v16 signedClinicalDataIssuerID:0 clinicalSharingStatus:v17 profile:v10 error:a6];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)createAccountForIssuer:(id)a3 databaseTransaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 databaseForEntityClass:objc_opt_class()];
  v11 = [v8 identifier];
  v35 = 0;
  v12 = [HDSignedClinicalDataIssuerEntity issuerEntityWithIdentifier:v11 database:v10 error:&v35];
  v13 = v35;

  if (v12)
  {
    v34 = self;
LABEL_3:
    v30 = v13;
    v32 = v10;
    v14 = v9;
    v15 = v8;
    v16 = +[NSUUID UUID];
    v17 = +[NSUUID UUID];
    v18 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v12 persistentID]);
    v19 = +[HKClinicalSharingStatus unknownStatus];
    WeakRetained = objc_loadWeakRetained(&v34->_profile);
    a5 = [HDClinicalAccountEntity insertAccountWithIdentifier:v16 syncIdentifier:v17 userEnabled:1 credentialState:0 credentialID:0 patientHash:0 gatewayID:0 signedClinicalDataIssuerID:v18 clinicalSharingStatus:v19 profile:WeakRetained error:a5];

    v8 = v15;
    v9 = v14;
    v13 = v30;
    v10 = v32;
    goto LABEL_4;
  }

  if (v13)
  {
    if (a5)
    {
      v22 = v13;
      v23 = a5;
      a5 = 0;
      *v23 = v13;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  else
  {
    v33 = objc_loadWeakRetained(&self->_profile);
    v31 = [v33 syncIdentityManager];
    v29 = [v31 currentSyncIdentity];
    v28 = [v29 identity];
    [v28 codableSyncIdentity];
    v25 = v24 = self;
    v26 = [v8 asCodableIssuerWithSyncIdentity:v25];
    v34 = v24;
    v27 = objc_loadWeakRetained(&v24->_profile);
    v12 = [HDSignedClinicalDataIssuerEntity insertCodableIssuer:v26 syncProvenance:0 profile:v27 transaction:v9 error:a5];

    if (v12)
    {
      goto LABEL_3;
    }

    a5 = 0;
  }

LABEL_4:

  return a5;
}

- (id)_accountEntityForIssuerIdentifier:(id)a3 label:(id)a4 createIfNecessary:(BOOL)a5 wellKnown:(BOOL)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_2CB44;
  v43 = sub_2CB54;
  v44 = 0;
  v14 = +[HDDatabaseTransactionContext contextForWritingProtectedData];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v16 = [WeakRetained database];
  v38 = 0;
  v28 = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_353B4;
  v31 = &unk_106FE8;
  v35 = &v39;
  v17 = v12;
  v32 = v17;
  v33 = self;
  v36 = a5;
  v18 = v13;
  v34 = v18;
  v37 = a6;
  LOBYTE(v13) = [v16 performTransactionWithContext:v14 error:&v38 block:&v28 inaccessibilityHandler:&stru_107028];
  v19 = v38;

  if (v13)
  {
    v20 = v40[5];
  }

  else
  {
    _HKInitializeLogging();
    v21 = HKLogHealthRecords;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [(HDClinicalAccountManager *)self debugDescription:v28];
      v23 = HKSensitiveLogItem();
      sub_A0FE8(v22, v23, v45);
    }

    v24 = v19;
    v25 = v24;
    if (v24)
    {
      if (a7)
      {
        v26 = v24;
        *a7 = v25;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v20 = 0;
  }

  _Block_object_dispose(&v39, 8);

  return v20;
}

- (void)_performIngestionForNewCredentialsWithReason:(id)a3 accountIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [HDDaemonTransaction transactionWithOwner:self activityName:@"NewCredentialIngestion"];
  v9 = [[HDClinicalIngestionTaskContext alloc] initWithOptions:0 reason:v6];
  v10 = [(HDClinicalAccountManager *)self profileExtension];
  v11 = [v10 ingestionManager];
  v20 = v7;
  v12 = [NSArray arrayWithObjects:&v20 count:1];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_359A4;
  v16[3] = &unk_107050;
  v16[4] = self;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  [v11 performIngestionWithContext:v9 accountIdentifiers:v12 completion:v16];
}

- (void)_accumulateMetricsFromTaskEndStates:(id)a3 gateway:(id)a4
{
  currentAnalyticsAccumulator = self->_currentAnalyticsAccumulator;
  v6 = a3;
  v7 = [a4 hkGateway];
  [(HDClinicalIngestionAnalyticsAccumulator *)currentAnalyticsAccumulator accumulateIngestionAnalyticsFromTaskStates:v6 gateway:v7 completion:0];
}

- (void)_requestChangesCloudSyncForProfile:(id)a3 reason:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[HKChangesSyncRequest alloc] initWithPush:1 pull:0 lite:1];
  v9 = [[HKCloudSyncRequest alloc] initWithChangesSyncRequest:v8];
  v10 = [v7 cloudSyncManager];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_35BAC;
  v12[3] = &unk_107078;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [v10 syncWithRequest:v9 reason:v11 completion:v12];
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

- (id)simulateUnmergeEventForAccountWithIdentifier:(id)a3 profile:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v9 = [v8 database];
  v33 = 0;
  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_4F9C0;
  v29 = &unk_106DB0;
  v10 = v7;
  v30 = v10;
  v11 = v8;
  v31 = v11;
  v32 = &v34;
  v12 = [HDOriginalFHIRResourceEntity performWriteTransactionWithHealthDatabase:v9 error:&v33 block:&v26];
  v13 = v33;

  if (v12)
  {
    _HKInitializeLogging();
    v14 = HKLogHealthRecords;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = v35[3];
      *buf = 138543618;
      v39 = v16;
      v40 = 2048;
      v41 = v17;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ did mark %lu resources as stale", buf, 0x16u);
    }

    v18 = [NSNumber numberWithUnsignedInteger:v35[3], v26, v27, v28, v29, v30];
  }

  else
  {
    _HKInitializeLogging();
    v19 = HKLogHealthRecords;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      sub_A3084(v21, v13, buf, v19);
    }

    v22 = v13;
    v23 = v22;
    if (v22)
    {
      if (a5)
      {
        v24 = v22;
        *a5 = v23;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v18 = 0;
  }

  _Block_object_dispose(&v34, 8);

  return v18;
}

- (BOOL)simulateAccountDownloadOverdueWithIdentifier:(id)a3 profile:(id)a4 stage:(int64_t)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  if (a5 == 1)
  {
    v11 = -610000.0;
    v12 = 5;
  }

  else
  {
    if (a5 != 2)
    {
      v17 = 0;
      goto LABEL_21;
    }

    v11 = -2500000.0;
    v12 = 11;
  }

  v13 = [NSDate dateWithTimeIntervalSinceNow:v11];
  v14 = [v10 database];
  v25 = 0;
  [HDClinicalAccountEntity updateAccountLastFetchDateNoValidation:v13 identifier:v9 profile:v10 healthDatabase:v14 error:&v25];
  v15 = v25;

  if (v15)
  {
    if (a6)
    {
      v16 = v15;
      *a6 = v15;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  else
  {
    v18 = -v12;
    while (1)
    {
      v19 = [NSDate dateWithTimeIntervalSinceNow:v18];
      v20 = [v10 database];
      v24 = 0;
      [HDClinicalAccountEntity updateAccountLastFailedFetchDate:v19 overrideFailedAttemptsCount:0 identifier:v9 profile:v10 healthDatabase:v20 error:&v24];
      v15 = v24;

      if (v15)
      {
        break;
      }

      if (__CFADD__(v18++, 1))
      {
        v17 = 1;
        goto LABEL_20;
      }
    }

    if (a6)
    {
      v22 = v15;
      *a6 = v15;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v17 = 0;
LABEL_20:

LABEL_21:
  return v17;
}

@end