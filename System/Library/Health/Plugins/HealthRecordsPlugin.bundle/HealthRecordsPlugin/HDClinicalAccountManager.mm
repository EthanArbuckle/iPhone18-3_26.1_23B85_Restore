@interface HDClinicalAccountManager
- (BOOL)_createOrUpdateCredentialFromAuthResponse:(id)response account:(id)account requestedScope:(id)scope event:(id)event error:(id *)error;
- (BOOL)_deleteAccountWithSyncIdentifier:(id)identifier deletionReason:(int64_t)reason transaction:(id)transaction error:(id *)error;
- (BOOL)_isClinicalSharingSupportedLocale:(id)locale;
- (BOOL)_updateCredentialStateForAccountWithIdentifier:(id)identifier state:(int64_t)state event:(id)event error:(id *)error;
- (BOOL)deleteAccountWithIdentifier:(id)identifier deletionReason:(int64_t)reason error:(id *)error;
- (BOOL)deleteAccountWithSyncIdentifier:(id)identifier deletionReason:(int64_t)reason error:(id *)error;
- (BOOL)simulateAccountDownloadOverdueWithIdentifier:(id)identifier profile:(id)profile stage:(int64_t)stage error:(id *)error;
- (BOOL)updateClinicalSharingStatusForAccountWithIdentifier:(id)identifier firstSharedDate:(id)date lastSharedDate:(id)sharedDate userStatus:(id)status multiDeviceStatus:(id)deviceStatus primaryDeviceName:(id)name error:(id *)error;
- (BOOL)updateCredentialStateForAccount:(id)account state:(int64_t)state force:(BOOL)force event:(id)event error:(id *)error;
- (HDClinicalAccountManager)init;
- (HDClinicalAccountManager)initWithProfileExtension:(id)extension;
- (HDHealthRecordsProfileExtension)profileExtension;
- (HDProfile)profile;
- (id)_accountEntityForIssuerIdentifier:(id)identifier label:(id)label createIfNecessary:(BOOL)necessary wellKnown:(BOOL)known error:(id *)error;
- (id)_createAccountForGatewayWithExternalID:(id)d database:(id)database profile:(id)profile error:(id *)error;
- (id)_createRefreshAccountInformationTaskForAccountWithIdentifier:(id)identifier;
- (id)_newAccountIdentifierAfterReplacingAccountWithIdentifier:(id)identifier usingCredentialWithPersistentID:(id)d error:(id *)error;
- (id)_savePatientMismatchedCredentialFromAuthResponse:(id)response requestedScope:(id)scope error:(id *)error;
- (id)accountForSource:(id)source error:(id *)error;
- (id)accountWithIdentifier:(id)identifier error:(id *)error;
- (id)accountsForGatewaysWithExternalIDs:(id)ds errorOut:(id *)out;
- (id)accountsWithIdentifiers:(id)identifiers error:(id *)error;
- (id)allAccountsWithError:(id *)error;
- (id)allEventsForAccountWithIdentifier:(id)identifier error:(id *)error;
- (id)beginInitialLoginSessionForGatewayWithExternalID:(id)d error:(id *)error;
- (id)beginReloginSessionForAccountWithIdentifier:(id)identifier error:(id *)error;
- (id)createAccountForIssuer:(id)issuer databaseTransaction:(id)transaction error:(id *)error;
- (id)createStaticAccountWithTitle:(id)title subtitle:(id)subtitle description:(id)description countryCode:(id)code fhirVersion:(id)version onlyIfNeededForSimulatedGatewayID:(id)d error:(id *)error;
- (id)createStaticDSTU2AccountWithTitle:(id)title error:(id *)error;
- (id)credentialFromCodableCredential:(id)credential;
- (id)debugDescription;
- (id)didRefreshCredentialForAccount:(id)account refreshResult:(id)result error:(id *)error;
- (id)fetchableAccountsWithIdentifiers:(id)identifiers error:(id *)error;
- (id)finalizeAfterRunningRefreshAccountInformationTask:(id)task refreshResult:(id)result finalizationError:(id *)error;
- (id)persistEphemeralAccount:(id)account triggerIngestion:(BOOL)ingestion error:(id *)error;
- (id)simulateUnmergeEventForAccountWithIdentifier:(id)identifier profile:(id)profile error:(id *)error;
- (id)unitTesting_createAccountForGateway:(id)gateway authResponse:(id)response error:(id *)error;
- (id)unitTesting_createAccountForGateway:(id)gateway requestedScope:(id)scope authResponse:(id)response error:(id *)error;
- (id)unitTesting_createAccountWithoutCredentialForGateway:(id)gateway error:(id *)error;
- (id)userFetchEligibleAccountsWithIdentifiers:(id)identifiers error:(id *)error;
- (int64_t)_hasClinicalSharingEnabledAccountWithError:(id *)error;
- (int64_t)_highPriorityTransactionHasClinicalSharingEnabledAccountWithError:(id *)error;
- (int64_t)deviceConfigurationSupportsClinicalSharingGivenLocale:(id)locale error:(id *)error;
- (int64_t)deviceConfigurationSupportsClinicalSharingWithError:(id *)error;
- (int64_t)deviceConfigurationSupportsHealthRecordsWithError:(id *)error;
- (int64_t)hasGatewayBackedAccountsWithTransaction:(id)transaction error:(id *)error;
- (int64_t)hasIssuerBackedAccountsWithTransaction:(id)transaction error:(id *)error;
- (int64_t)highPriorityTransactionHasGatewayBackedAccountsWithError:(id *)error;
- (int64_t)highPriorityTransactionHasIssuerBackedAccountsWithError:(id *)error;
- (void)_accountDidChange:(id)change;
- (void)_accountDidChange:(id)change changeType:(int64_t)type;
- (void)_accumulateMetricsFromTaskEndStates:(id)states gateway:(id)gateway;
- (void)_fetchAccessTokenForTokenSession:(id)session existingAccount:(id)account gateway:(id)gateway completion:(id)completion;
- (void)_messageObserversAboutAccount:(id)account changeType:(int64_t)type;
- (void)_performIngestionForNewCredentialsWithReason:(id)reason accountIdentifier:(id)identifier;
- (void)_requestChangesCloudSyncForProfile:(id)profile reason:(id)reason;
- (void)dealloc;
- (void)didRefreshCredentialForAccount:(id)account refreshResult:(id)result;
- (void)endLoginSessionWithState:(id)state code:(id)code completion:(id)completion;
- (void)failedToCompleteFetchForAccount:(id)account mustLimitFutureRequests:(BOOL)requests;
- (void)prepareExtractionOfAccount:(id)account;
- (void)pruneAuthenticationDataWithCompletion:(id)completion;
- (void)refreshAccountConnectionInformationForAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)replaceAccountWithNewAccountForAccountWithIdentifier:(id)identifier usingCredentialWithPersistentID:(id)d completion:(id)completion;
- (void)resetLastExtractedRowIDWithCompletion:(id)completion;
@end

@implementation HDClinicalAccountManager

- (HDClinicalAccountManager)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDClinicalAccountManager)initWithProfileExtension:(id)extension
{
  extensionCopy = extension;
  v18.receiver = self;
  v18.super_class = HDClinicalAccountManager;
  v5 = [(HDClinicalAccountManager *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profileExtension, extensionCopy);
    profile = [extensionCopy profile];
    objc_storeWeak(&v6->_profile, profile);

    WeakRetained = objc_loadWeakRetained(&v6->_profileExtension);
    createHealthRecordsLegacyIngestionServiceClient = [WeakRetained createHealthRecordsLegacyIngestionServiceClient];
    legacyXPCIngestionServiceClient = v6->_legacyXPCIngestionServiceClient;
    v6->_legacyXPCIngestionServiceClient = createHealthRecordsLegacyIngestionServiceClient;

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

- (id)beginInitialLoginSessionForGatewayWithExternalID:(id)d error:(id *)error
{
  dCopy = d;
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
  profile = [(HDClinicalAccountManager *)self profile];
  database = [profile database];
  v27 = _NSConcreteStackBlock;
  v28 = 3221225472;
  v29 = sub_2CB5C;
  v30 = &unk_106C30;
  selfCopy = self;
  v33 = buf;
  v34 = 0;
  v13 = dCopy;
  v32 = v13;
  v14 = [HDClinicalAuthorizationSessionEntity performWriteTransactionWithHealthDatabase:database error:&v34 block:&v27];
  v15 = v34;

  if (v14)
  {
    _HKInitializeLogging();
    v16 = HKLogHealthRecords;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(HDClinicalAccountManager *)self debugDescription:v27];
      loginURL = [*(*&buf[8] + 40) loginURL];
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
      if (error)
      {
        v24 = v22;
        *error = v23;
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

- (id)beginReloginSessionForAccountWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(HDClinicalAccountManager *)self debugDescription];
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2114;
    *&buf[14] = identifierCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ beginning relogin session for account %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v37 = sub_2CB44;
  v38 = sub_2CB54;
  v39 = 0;
  profile = [(HDClinicalAccountManager *)self profile];
  database = [profile database];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_2D010;
  v26[3] = &unk_106C58;
  v28 = buf;
  v29 = 0;
  v12 = identifierCopy;
  v27 = v12;
  v13 = [HDClinicalAuthorizationSessionEntity performWriteTransactionWithHealthDatabase:database error:&v29 block:v26];
  v14 = v29;

  if (v13)
  {
    _HKInitializeLogging();
    v15 = HKLogHealthRecords;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(HDClinicalAccountManager *)self debugDescription];
      loginURL = [*(*&buf[8] + 40) loginURL];
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
      if (error)
      {
        v23 = v21;
        *error = v22;
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

- (void)endLoginSessionWithState:(id)state code:(id)code completion:(id)completion
{
  stateCopy = state;
  codeCopy = code;
  completionCopy = completion;
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
    v80 = stateCopy;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ ending login session with code %{public}@ and state %{public}@", buf, 0x20u);
  }

  profile = [(HDClinicalAccountManager *)self profile];
  database = [profile database];
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
  v52 = stateCopy;
  v53 = codeCopy;
  selfCopy = self;
  v55 = &v59;
  v56 = &v65;
  v16 = profile;
  v57 = buf;
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_2DBB4;
  v47[3] = &unk_1063B8;
  v17 = v53;
  v48 = v17;
  v18 = v52;
  v49 = v18;
  v19 = database;
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
        pkceVerifier = [v60[5] pkceVerifier];
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
      v43 = completionCopy;
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
      (*(completionCopy + 2))(completionCopy, v34);

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
    (*(completionCopy + 2))(completionCopy, v30);
  }

  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v65, 8);

  _Block_object_dispose(buf, 8);
}

- (void)pruneAuthenticationDataWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDClinicalAccountManager *)self profile];
  database = [profile database];
  v9 = 0;
  v7 = [HDClinicalAccountEntity performWriteTransactionWithHealthDatabase:database error:&v9 block:&stru_106CE8];
  v8 = v9;
  completionCopy[2](completionCopy, v7, v8);
}

- (void)_fetchAccessTokenForTokenSession:(id)session existingAccount:(id)account gateway:(id)gateway completion:(id)completion
{
  sessionCopy = session;
  accountCopy = account;
  gatewayCopy = gateway;
  completionCopy = completion;
  identifier = [accountCopy identifier];
  v15 = identifier;
  if (!identifier)
  {
    v15 = +[NSUUID UUID];
  }

  v24 = 0;
  v16 = [gatewayCopy connectionInformationWithAccountIdentifier:v15 credential:0 error:&v24];
  v17 = v24;
  if (!identifier)
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
    v20 = gatewayCopy;
    v23 = completionCopy;
    v21 = accountCopy;
    v22 = sessionCopy;
    [(HDHealthRecordsLegacyIngestionServiceClient *)legacyXPCIngestionServiceClient fetchAccessTokenForTokenSession:v22 connectionInformation:v16 completion:v19];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, v17);
  }
}

- (id)_createRefreshAccountInformationTaskForAccountWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[HDRefreshAccountInformationTask alloc] initForUseWithAccountManager:self accountIdentifier:identifierCopy];

  return v5;
}

- (void)refreshAccountConnectionInformationForAccountWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  _HKInitializeLogging();
  v8 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v19 = 2114;
    v20 = identifierCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ starting credential refresh for account %{public}@", buf, 0x16u);
  }

  v9 = [HDDaemonTransaction transactionWithOwner:self activityName:@"RefreshAccountConnectionInformation"];
  [(HDClinicalAccountManager *)self _createRefreshAccountInformationTaskForAccountWithIdentifier:identifierCopy];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_2EA14;
  v13[3] = &unk_106D38;
  v14 = v13[4] = self;
  v15 = v9;
  v16 = completionCopy;
  v10 = v9;
  v11 = completionCopy;
  v12 = v14;
  [v12 runWithCompletion:v13];
}

- (id)finalizeAfterRunningRefreshAccountInformationTask:(id)task refreshResult:(id)result finalizationError:(id *)error
{
  taskCopy = task;
  resultCopy = result;
  error = [resultCopy error];

  _HKInitializeLogging();
  v11 = HKLogHealthRecords;
  if (error)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v33 = v11;
      accountIdentifier = [taskCopy accountIdentifier];
      error2 = [resultCopy error];
      *buf = 138543874;
      selfCopy7 = self;
      v54 = 2114;
      v55 = accountIdentifier;
      v56 = 2114;
      v57 = error2;
      _os_log_error_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "%{public}@ failed to refresh credential for account %{public}@: %{public}@", buf, 0x20u);
    }

    error3 = [resultCopy error];
    if (error3)
    {
      if (error)
      {
        v13 = error3;
        v14 = 0;
        *error = error3;
LABEL_14:
        v20 = error3;
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
    accountIdentifier2 = [taskCopy accountIdentifier];
    *buf = 138543618;
    selfCopy7 = self;
    v54 = 2114;
    v55 = accountIdentifier2;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ finalizing after running account connection information refresh for account %{public}@", buf, 0x16u);
  }

  accountIdentifier3 = [taskCopy accountIdentifier];
  v51 = 0;
  error3 = [(HDClinicalAccountManager *)self accountWithIdentifier:accountIdentifier3 error:&v51];
  v18 = v51;

  if (error3)
  {
    authResponse = [resultCopy authResponse];
    if (authResponse)
    {
    }

    else
    {
      error4 = [resultCopy error];

      if (!error4)
      {
        _HKInitializeLogging();
        v36 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
        {
          v37 = v36;
          accountIdentifier4 = [taskCopy accountIdentifier];
          *buf = 138543618;
          selfCopy7 = self;
          v54 = 2114;
          v55 = accountIdentifier4;
          _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ credential for account %{public}@ didn't need refreshing", buf, 0x16u);
        }

        credential = [resultCopy credential];
        v50 = v18;
        v22 = [error3 connectionInformationWithCredential:credential error:&v50];
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
            if (error)
            {
              v40 = v20;
              *error = v20;
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
    v22 = [(HDClinicalAccountManager *)self didRefreshCredentialForAccount:error3 refreshResult:resultCopy error:&v49];
    v25 = v49;

    if (v22)
    {
      v48 = v25;
      v26 = [error3 connectionInformationWithCredential:v22 error:&v48];
      v20 = v48;

      _HKInitializeLogging();
      v27 = HKLogHealthRecords;
      if (v26)
      {
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v27;
          accountIdentifier5 = [taskCopy accountIdentifier];
          *buf = 138543618;
          selfCopy7 = self;
          v54 = 2114;
          v55 = accountIdentifier5;
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
          accountIdentifier6 = [taskCopy accountIdentifier];
          *buf = 138543874;
          selfCopy7 = self;
          v54 = 2114;
          v55 = accountIdentifier6;
          v56 = 2114;
          v57 = v20;
          _os_log_error_impl(&dword_0, v46, OS_LOG_TYPE_ERROR, "%{public}@: failed to retrieve fresh account connection information with fresh credential for account %{public}@: %{public}@", buf, 0x20u);
        }

        v20 = v20;
        if (v20)
        {
          if (error)
          {
            v32 = v20;
            *error = v20;
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
      accountIdentifier7 = [taskCopy accountIdentifier];
      *buf = 138543874;
      selfCopy7 = self;
      v54 = 2114;
      v55 = accountIdentifier7;
      v56 = 2114;
      v57 = v25;
      _os_log_error_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "%{public}@: failed to persist fresh credential to account %{public}@: %{public}@", buf, 0x20u);
    }

    v26 = v25;
    if (v26)
    {
      if (error)
      {
        v31 = v26;
        v14 = 0;
        *error = v26;
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
    accountIdentifier8 = [taskCopy accountIdentifier];
    *buf = 138543874;
    selfCopy7 = self;
    v54 = 2114;
    v55 = accountIdentifier8;
    v56 = 2114;
    v57 = v18;
    _os_log_error_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, "%{public}@ failed to fetch account %{public}@ after account connection information  refresh: %{public}@", buf, 0x20u);
  }

  v22 = v18;
  if (!v22)
  {
    goto LABEL_37;
  }

  if (!error)
  {
    _HKLogDroppedError();
LABEL_37:
    v14 = 0;
    goto LABEL_38;
  }

  v23 = v22;
  v14 = 0;
  *error = v22;
LABEL_38:
  v20 = v22;
LABEL_52:

LABEL_53:

  return v14;
}

- (id)persistEphemeralAccount:(id)account triggerIngestion:(BOOL)ingestion error:(id *)error
{
  ingestionCopy = ingestion;
  accountCopy = account;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_2CB44;
  v28 = sub_2CB54;
  v29 = 0;
  database = [WeakRetained database];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_2F2FC;
  v19 = &unk_106D60;
  selfCopy = self;
  v11 = accountCopy;
  v21 = v11;
  v12 = WeakRetained;
  v22 = v12;
  v23 = &v24;
  LOBYTE(error) = [HDClinicalAccountEntity performWriteTransactionWithHealthDatabase:database error:error block:&v16];

  if (error)
  {
    if (ingestionCopy)
    {
      identifier = [v25[5] identifier];
      [(HDClinicalAccountManager *)self _performIngestionForNewCredentialsWithReason:@"account added" accountIdentifier:identifier];
    }

    [(HDClinicalAccountManager *)self _requestChangesCloudSyncForProfile:v12 reason:@"new CHR account inserted", v16, v17, v18, v19, selfCopy];
    v14 = v25[5];
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v24, 8);

  return v14;
}

- (BOOL)_createOrUpdateCredentialFromAuthResponse:(id)response account:(id)account requestedScope:(id)scope event:(id)event error:(id *)error
{
  responseCopy = response;
  accountCopy = account;
  scopeCopy = scope;
  eventCopy = event;
  profile = [(HDClinicalAccountManager *)self profile];
  database = [profile database];

  [accountCopy identifier];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_2F7D8;
  v25[3] = &unk_106D88;
  v26 = accountCopy;
  v28 = v27 = responseCopy;
  v29 = scopeCopy;
  selfCopy = self;
  v31 = database;
  v32 = eventCopy;
  v18 = eventCopy;
  v19 = database;
  v20 = scopeCopy;
  v21 = v28;
  v22 = responseCopy;
  v23 = accountCopy;
  LOBYTE(error) = [HDClinicalAccountEntity performWriteTransactionWithHealthDatabase:v19 error:error block:v25];

  return error;
}

- (id)_savePatientMismatchedCredentialFromAuthResponse:(id)response requestedScope:(id)scope error:(id *)error
{
  responseCopy = response;
  scopeCopy = scope;
  v10 = [HKFHIRCredential from:responseCopy requestedScope:scopeCopy];
  v11 = [v10 createCredentialWithIdentifier:0 error:error];
  if (v11)
  {
    profile = [(HDClinicalAccountManager *)self profile];
    database = [profile database];

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
    selfCopy = self;
    v25 = &v27;
    LOBYTE(profile) = [HDFHIRCredentialEntity performWriteTransactionWithHealthDatabase:database error:&v26 block:v22];
    v14 = v26;
    v15 = v14;
    if (profile)
    {
      v16 = v28[5];
    }

    else
    {
      v18 = v14;
      v19 = v18;
      if (v18)
      {
        if (error)
        {
          v20 = v18;
          *error = v19;
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

- (id)_newAccountIdentifierAfterReplacingAccountWithIdentifier:(id)identifier usingCredentialWithPersistentID:(id)d error:(id *)error
{
  identifierCopy = identifier;
  dCopy = d;
  profile = [(HDClinicalAccountManager *)self profile];
  database = [profile database];
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
  v11 = identifierCopy;
  v20 = v11;
  selfCopy = self;
  v12 = profile;
  v22 = v12;
  v13 = dCopy;
  v23 = v13;
  v24 = &v26;
  v14 = [HDClinicalAccountEntity performWriteTransactionWithHealthDatabase:database error:&v25 block:v19];
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

- (void)replaceAccountWithNewAccountForAccountWithIdentifier:(id)identifier usingCredentialWithPersistentID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v11 = 0;
  v9 = [(HDClinicalAccountManager *)self _newAccountIdentifierAfterReplacingAccountWithIdentifier:identifier usingCredentialWithPersistentID:d error:&v11];
  v10 = v11;
  if (v9)
  {
    [(HDClinicalAccountManager *)self _performIngestionForNewCredentialsWithReason:@"account replacement" accountIdentifier:v9];
    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    (completionCopy)[2](completionCopy, 0, v10);
  }
}

- (id)allAccountsWithError:(id *)error
{
  profile = [(HDClinicalAccountManager *)self profile];
  database = [profile database];
  v6 = [HDClinicalAccountEntity allAccountsInHealthDatabase:database error:error];

  return v6;
}

- (int64_t)hasGatewayBackedAccountsWithTransaction:(id)transaction error:(id *)error
{
  profile = [(HDClinicalAccountManager *)self profile];
  database = [profile database];
  v7 = [HDClinicalAccountEntity hasGatewayBackedAccountsInHealthDatabase:database error:error];

  return v7;
}

- (int64_t)hasIssuerBackedAccountsWithTransaction:(id)transaction error:(id *)error
{
  profile = [(HDClinicalAccountManager *)self profile];
  database = [profile database];
  v7 = [HDClinicalAccountEntity hasIssuerBackedAccountsInHealthDatabase:database error:error];

  return v7;
}

- (int64_t)highPriorityTransactionHasGatewayBackedAccountsWithError:(id *)error
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  profile = [(HDClinicalAccountManager *)self profile];
  database = [profile database];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_303CC;
  v9[3] = &unk_106E00;
  v9[4] = self;
  v9[5] = &v10;
  LODWORD(error) = [database performHighPriorityTransactionsWithError:error block:v9];

  if (error)
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

- (int64_t)highPriorityTransactionHasIssuerBackedAccountsWithError:(id *)error
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 2;
  profile = [(HDClinicalAccountManager *)self profile];
  database = [profile database];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_30564;
  v9[3] = &unk_106E00;
  v9[4] = self;
  v9[5] = &v10;
  LODWORD(error) = [database performHighPriorityTransactionsWithError:error block:v9];

  if (error)
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

- (int64_t)deviceConfigurationSupportsHealthRecordsWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v14 = 0;
    v6 = [WeakRetained deviceConfigurationSupportsHealthRecords:&v14 error:error];
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

- (int64_t)deviceConfigurationSupportsClinicalSharingWithError:(id *)error
{
  v5 = +[NSLocale autoupdatingCurrentLocale];
  v6 = [(HDClinicalAccountManager *)self deviceConfigurationSupportsClinicalSharingGivenLocale:v5 error:error];

  return v6;
}

- (int64_t)deviceConfigurationSupportsClinicalSharingGivenLocale:(id)locale error:(id *)error
{
  if ([(HDClinicalAccountManager *)self _isClinicalSharingSupportedLocale:locale])
  {
    return 1;
  }

  return [(HDClinicalAccountManager *)self _highPriorityTransactionHasClinicalSharingEnabledAccountWithError:error];
}

- (BOOL)_isClinicalSharingSupportedLocale:(id)locale
{
  countryCode = [locale countryCode];
  v4 = [countryCode isEqualToString:@"US"];

  return v4;
}

- (int64_t)_highPriorityTransactionHasClinicalSharingEnabledAccountWithError:(id *)error
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  profile = [(HDClinicalAccountManager *)self profile];
  database = [profile database];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_308D8;
  v9[3] = &unk_106E00;
  v9[4] = self;
  v9[5] = &v10;
  LODWORD(error) = [database performHighPriorityTransactionsWithError:error block:v9];

  if (error)
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

- (int64_t)_hasClinicalSharingEnabledAccountWithError:(id *)error
{
  v3 = [(HDClinicalAccountManager *)self allAccountsWithError:error];
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

- (id)accountsWithIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  profile = [(HDClinicalAccountManager *)self profile];
  v8 = [HDClinicalAccountEntity accountsWithIdentifiers:identifiersCopy profile:profile error:error];

  return v8;
}

- (id)accountWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  profile = [(HDClinicalAccountManager *)self profile];
  database = [profile database];
  v9 = [HDClinicalAccountEntity accountWithIdentifier:identifierCopy healthDatabase:database error:error];

  return v9;
}

- (id)userFetchEligibleAccountsWithIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  profile = [(HDClinicalAccountManager *)self profile];
  v8 = [HDClinicalAccountEntity userFetchEligibleAccountsWithIdentifiers:identifiersCopy profile:profile error:error];

  return v8;
}

- (id)fetchableAccountsWithIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  profile = [(HDClinicalAccountManager *)self profile];
  v8 = [HDClinicalAccountEntity fetchableAccountsWithIdentifiers:identifiersCopy profile:profile error:error];

  return v8;
}

- (id)accountsForGatewaysWithExternalIDs:(id)ds errorOut:(id *)out
{
  dsCopy = ds;
  profile = [(HDClinicalAccountManager *)self profile];
  database = [profile database];
  v9 = [HDClinicalAccountEntity accountsForGatewayExternalIDs:dsCopy healthDatabase:database error:out];

  return v9;
}

- (id)accountForSource:(id)source error:(id *)error
{
  sourceCopy = source;
  if ([sourceCopy _isClinicalSource])
  {
    _deducedClinicalAccountIdentifier = [sourceCopy _deducedClinicalAccountIdentifier];
    if (_deducedClinicalAccountIdentifier)
    {
      profile = [(HDClinicalAccountManager *)self profile];
      database = [profile database];
      v10 = [HDClinicalAccountEntity accountWithIdentifier:_deducedClinicalAccountIdentifier healthDatabase:database error:error];
    }

    else
    {
      [NSError hk_assignError:error code:3 format:@"Source does not represent a clinical account: %@", sourceCopy];
      v10 = 0;
    }
  }

  else
  {
    [NSError hk_assignError:error code:3 format:@"Source is not a clinical source: %@", sourceCopy];
    v10 = 0;
  }

  return v10;
}

- (BOOL)_updateCredentialStateForAccountWithIdentifier:(id)identifier state:(int64_t)state event:(id)event error:(id *)error
{
  eventCopy = event;
  identifierCopy = identifier;
  profile = [(HDClinicalAccountManager *)self profile];
  database = [profile database];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(error) = [HDClinicalAccountEntity updateAccountCredentialState:state identifier:identifierCopy profile:WeakRetained healthDatabase:database event:eventCopy error:error];

  return error;
}

- (BOOL)_deleteAccountWithSyncIdentifier:(id)identifier deletionReason:(int64_t)reason transaction:(id)transaction error:(id *)error
{
  identifierCopy = identifier;
  transactionCopy = transaction;
  profile = [(HDClinicalAccountManager *)self profile];
  protectedDatabase = [transactionCopy protectedDatabase];
  v14 = +[NSDate date];
  identifierCopy = [NSString stringWithFormat:@"Failed to delete account with sync identifier %@", identifierCopy];
  v66 = 0;
  v16 = [HDClinicalDeletedAccountEntity insertTombstoneWithSyncIdentifierIfNotExists:identifierCopy deletionDate:v14 deletionReason:0 profile:profile transaction:transactionCopy error:&v66];

  v17 = v66;
  if (v16)
  {
    v65 = 0;
    v18 = [HDClinicalAccountEntity accountEntityWithSyncIdentifier:identifierCopy database:protectedDatabase error:&v65];
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
        v70 = identifierCopy;
        v71 = 2114;
        v72 = v61;
        _os_log_error_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "%{public}@ unable to delete account with sync identifier %{public}@, failed to retrieve entity for account: %{public}@", buf, 0x20u);
      }

      v20 = v61;
      [NSError hk_assignError:error code:100 description:identifierCopy underlyingError:v61];
      v21 = 0;
    }

    else if (v18)
    {
      v59 = v17;
      v23 = [v18 identifierInDatabase:protectedDatabase];
      if (v23)
      {
        v58 = protectedDatabase;
        v24 = [HKSharingRecipientIdentifier alloc];
        uUIDString = [v23 UUIDString];
        v26 = [v24 initForClinicalAccountIdentifier:uUIDString];

        sharingAuthorizationManager = [profile sharingAuthorizationManager];
        v64 = 0;
        v56 = v26;
        LOBYTE(v26) = [sharingAuthorizationManager revokeRecipientWithIdentifier:v26 error:&v64];
        v57 = v64;

        if (v26)
        {
          v63 = 0;
          v21 = [HDClinicalAccountEntity deleteAccountWithIdentifier:v23 deletionReason:reason deleteGateway:0 deleteIssuer:1 profile:profile error:&v63];
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
              v72 = identifierCopy;
              v73 = 2114;
              v74 = v31;
              _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully deleted account %{public}@, sync identifier %{public}@, with reason: %{public}@", buf, 0x2Au);
            }

            v62 = 0;
            protectedDatabase = v58;
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
                analyticsManager = [WeakRetained analyticsManager];
                [analyticsManager resetAcceptedVersionForImproveHealthRecords];

                protectedDatabase = v58;
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
            protectedDatabase = v58;
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
            {
              v52 = v47;
              v53 = [(HDClinicalAccountManager *)self debugDescription];
              *buf = 138544130;
              v68 = v53;
              v69 = 2114;
              v70 = v23;
              v71 = 2114;
              v72 = identifierCopy;
              v73 = 2114;
              v74 = v55;
              _os_log_error_impl(&dword_0, v52, OS_LOG_TYPE_ERROR, "%{public}@ unable to delete account %{public}@, sync identifier %{public}@, clinical account entity deletion failed: %{public}@", buf, 0x2Au);

              protectedDatabase = v58;
            }

            v48 = v55;
            [NSError hk_assignError:error code:100 description:identifierCopy underlyingError:v55];
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
            v72 = identifierCopy;
            v73 = 2114;
            v74 = v57;
            _os_log_error_impl(&dword_0, v50, OS_LOG_TYPE_ERROR, "%{public}@ unable to delete account %{public}@, sync identifier %{public}@, revoking sharing authorization failed: %{public}@", buf, 0x2Au);
          }

          v42 = v57;
          [NSError hk_assignError:error code:100 description:identifierCopy underlyingError:v57];
          v21 = 0;
          protectedDatabase = v58;
        }
      }

      else
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          sub_A09F4();
        }

        [NSError hk_assignError:error code:100 format:@"Failed to retrieve identifier for account with sync identifier %@", identifierCopy];
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
        v70 = identifierCopy;
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
      v70 = identifierCopy;
      v71 = 2114;
      v72 = v17;
      _os_log_error_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "%{public}@ unable to delete account with sync identifier %{public}@, failed to insert tombstone: %{public}@", buf, 0x20u);
    }

    [NSError hk_assignError:error code:100 description:identifierCopy underlyingError:v17];
    v21 = 0;
  }

  return v21;
}

- (BOOL)deleteAccountWithIdentifier:(id)identifier deletionReason:(int64_t)reason error:(id *)error
{
  identifierCopy = identifier;
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
    *&buf[14] = identifierCopy;
    *&buf[22] = 2114;
    v35 = v13;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ starting to delete account %{public}@ with reason: %{public}@", buf, 0x20u);
  }

  profile = [(HDClinicalAccountManager *)self profile];
  database = [profile database];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v35) = 0;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_319F4;
  v29[3] = &unk_106EA8;
  v30 = identifierCopy;
  selfCopy = self;
  v32 = buf;
  reasonCopy = reason;
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_31B28;
  v24 = &unk_106ED0;
  v27 = buf;
  v16 = v30;
  v25 = v16;
  reasonCopy2 = reason;
  v17 = database;
  v26 = v17;
  v18 = [HDClinicalAccountEntity performWriteTransactionWithHealthDatabase:v17 error:error block:v29 inaccessibilityHandler:&v21];
  if (v18 && *(*&buf[8] + 24) == 1)
  {
    v19 = [(HDClinicalAccountManager *)self profile:v21];
    [(HDClinicalAccountManager *)self _requestChangesCloudSyncForProfile:v19 reason:@"CHR account deleted"];
  }

  _Block_object_dispose(buf, 8);
  return v18;
}

- (BOOL)deleteAccountWithSyncIdentifier:(id)identifier deletionReason:(int64_t)reason error:(id *)error
{
  identifierCopy = identifier;
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
    v30 = identifierCopy;
    v31 = 2114;
    v32 = v13;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ starting to delete account with sync identifier %{public}@ with reason: %{public}@", buf, 0x20u);
  }

  profile = [(HDClinicalAccountManager *)self profile];
  database = [profile database];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_31DD4;
  v24[3] = &unk_106500;
  v24[4] = self;
  v25 = identifierCopy;
  reasonCopy = reason;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_31DEC;
  v20[3] = &unk_106800;
  v22 = database;
  reasonCopy2 = reason;
  v21 = v25;
  v16 = database;
  v17 = v25;
  v18 = [HDClinicalAccountEntity performWriteTransactionWithHealthDatabase:v16 error:error block:v24 inaccessibilityHandler:v20];

  return v18;
}

- (void)failedToCompleteFetchForAccount:(id)account mustLimitFutureRequests:(BOOL)requests
{
  requestsCopy = requests;
  accountCopy = account;
  v7 = +[NSDate date];
  if (requestsCopy)
  {
    v8 = +[HDClinicalAccount numFailedAttemptsToReachMaxBlockTime];
  }

  else
  {
    v8 = 0;
  }

  profile = [(HDClinicalAccountManager *)self profile];
  database = [profile database];

  identifier = [accountCopy identifier];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v23 = 0;
  v13 = [HDClinicalAccountEntity updateAccountLastFailedFetchDate:v7 overrideFailedAttemptsCount:v8 identifier:identifier profile:WeakRetained healthDatabase:database error:&v23];
  v14 = v23;

  _HKInitializeLogging();
  v15 = HKLogHealthRecords;
  if (v13)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
    {
      log = v15;
      identifier2 = [accountCopy identifier];
      lastFailedFetchDate = [accountCopy lastFailedFetchDate];
      hk_truncateToDay = [lastFailedFetchDate hk_truncateToDay];
      v17 = HDDiagnosticStringFromDate();
      hk_truncateToDay2 = [v7 hk_truncateToDay];
      v19 = HDDiagnosticStringFromDate();
      *buf = 138543874;
      v25 = identifier2;
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

- (void)prepareExtractionOfAccount:(id)account
{
  accountCopy = account;
  gateway = [accountCopy gateway];
  externalID = [gateway externalID];
  v7 = externalID;
  if (externalID)
  {
    identifier = externalID;
  }

  else
  {
    signedClinicalDataIssuer = [accountCopy signedClinicalDataIssuer];
    identifier = [signedClinicalDataIssuer identifier];
  }

  gateway2 = [accountCopy gateway];
  title = [gateway2 title];
  v12 = title;
  if (title)
  {
    title2 = title;
  }

  else
  {
    signedClinicalDataIssuer2 = [accountCopy signedClinicalDataIssuer];
    title2 = [signedClinicalDataIssuer2 title];
  }

  if (identifier)
  {
    identifier2 = [accountCopy identifier];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v20 = 0;
    v17 = [HDClinicalAccountEntity updateSourcesForAccountWithIdentifier:identifier2 wasAccountInsert:1 clinicalExternalID:identifier externalTitle:title2 profile:WeakRetained error:&v20];
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

- (void)resetLastExtractedRowIDWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v35 = 0;
  v7 = [HDClinicalAccountEntity allAccountsInHealthDatabase:database error:&v35];
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

    completionCopy[2](completionCopy, 0, v8);
    goto LABEL_24;
  }

  v25 = completionCopy;

  v9 = objc_loadWeakRetained(&self->_profile);
  database2 = [v9 database];

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
      lastExtractedRulesVersion = [v13 lastExtractedRulesVersion];
      identifier = [v13 identifier];
      selfCopy = self;
      v17 = objc_loadWeakRetained(&self->_profile);
      v30 = v8;
      v18 = [HDClinicalAccountEntity updateAccountLastExtractedRowID:0 rulesVersion:lastExtractedRulesVersion identifier:identifier profile:v17 healthDatabase:database2 error:&v30];
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
        identifier2 = [v13 identifier];
        *buf = 138543362;
        v37 = identifier2;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Did reset last extracted row ID on account %{public}@", buf, 0xCu);
        goto LABEL_10;
      }

      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        v20 = v19;
        identifier2 = [v13 identifier];
        *buf = 138543618;
        v37 = identifier2;
        v38 = 2114;
        v39 = v8;
        _os_log_error_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "Unable to reset last extracted row ID for account %{public}@: %{public}@", buf, 0x16u);
LABEL_10:
      }

LABEL_12:
      v11 = v11 + 1;
      self = selfCopy;
    }

    while (v29 != v11);
    v22 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
    v29 = v22;
  }

  while (v22);

  if (v8)
  {
    completionCopy = v25;
    v25[2](v25, 0, v8);
    goto LABEL_23;
  }

LABEL_22:
  completionCopy = v25;
  v25[2](v25, 1, 0);
  v8 = 0;
LABEL_23:
  v7 = v24;

LABEL_24:
}

- (BOOL)updateCredentialStateForAccount:(id)account state:(int64_t)state force:(BOOL)force event:(id)event error:(id *)error
{
  accountCopy = account;
  eventCopy = event;
  if (!force && (v18 = [accountCopy credentialState], state == 2) && v18 == &dword_0 + 1)
  {
    identifier = [accountCopy identifier];
    v20 = [NSError hk_error:3 format:@"Attempted to mark account %@ as needing scope upgrade when it already needs relogin", identifier];
    if (v20)
    {
      if (error)
      {
        v21 = v20;
        *error = v20;
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
      sub_A0CF4(error, v22);
    }

    v17 = 0;
  }

  else
  {
    profile = [(HDClinicalAccountManager *)self profile];
    database = [profile database];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_32B20;
    v27[3] = &unk_106EF8;
    v28 = accountCopy;
    stateCopy = state;
    v29 = profile;
    v30 = eventCopy;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_32C7C;
    v24[3] = &unk_106F20;
    v25 = v30;
    v26 = v29;
    v16 = v29;
    v17 = [HDClinicalAccountEntity performWriteTransactionWithHealthDatabase:database error:error block:v27 inaccessibilityHandler:v24];
  }

  return v17;
}

- (BOOL)updateClinicalSharingStatusForAccountWithIdentifier:(id)identifier firstSharedDate:(id)date lastSharedDate:(id)sharedDate userStatus:(id)status multiDeviceStatus:(id)deviceStatus primaryDeviceName:(id)name error:(id *)error
{
  identifierCopy = identifier;
  dateCopy = date;
  sharedDateCopy = sharedDate;
  statusCopy = status;
  deviceStatusCopy = deviceStatus;
  nameCopy = name;
  profile = [(HDClinicalAccountManager *)self profile];
  database = [profile database];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_32F14;
  v30[3] = &unk_106D88;
  v31 = identifierCopy;
  selfCopy = self;
  v33 = dateCopy;
  v34 = sharedDateCopy;
  v35 = statusCopy;
  v36 = deviceStatusCopy;
  v37 = nameCopy;
  v23 = nameCopy;
  v24 = deviceStatusCopy;
  v25 = statusCopy;
  v26 = sharedDateCopy;
  v27 = dateCopy;
  v28 = identifierCopy;
  LOBYTE(nameCopy) = [HDClinicalAccountEntity performWriteTransactionWithHealthDatabase:database error:error block:v30];

  return nameCopy;
}

- (void)didRefreshCredentialForAccount:(id)account refreshResult:(id)result
{
  accountCopy = account;
  v13 = 0;
  v7 = [(HDClinicalAccountManager *)self didRefreshCredentialForAccount:accountCopy refreshResult:result error:&v13];
  v8 = v13;
  if (!v7)
  {
    _HKInitializeLogging();
    v9 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      v11 = [(HDClinicalAccountManager *)self debugDescription];
      identifier = [accountCopy identifier];
      *buf = 138543874;
      v15 = v11;
      v16 = 2114;
      v17 = identifier;
      v18 = 2114;
      v19 = v8;
      _os_log_error_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%{public}@ failed to update credential for account %{public}@: %{public}@", buf, 0x20u);
    }
  }
}

- (id)didRefreshCredentialForAccount:(id)account refreshResult:(id)result error:(id *)error
{
  accountCopy = account;
  resultCopy = result;
  profile = [(HDClinicalAccountManager *)self profile];
  database = [profile database];

  identifier = [accountCopy identifier];
  v12 = [HKClinicalAccountEvent alloc];
  identifier2 = [accountCopy identifier];
  v14 = [NSString stringWithFormat:@"%s:%d (%s)", "[HDClinicalAccountManager didRefreshCredentialForAccount:refreshResult:error:]", 1285, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthRecords/HealthRecordsPlugin/Managers/HDClinicalAccountManager.m"];
  v15 = +[NSDate date];
  v16 = [v12 initWithAccountIdentifier:identifier2 type:1 caller:v14 timestamp:v15 eventDescription:@"Updating existing account credential state from auth response in credentialed session"];

  endStates = [resultCopy endStates];
  eventLoggingDescription = [endStates eventLoggingDescription];
  v19 = [v16 eventWithAppendedEventDescription:eventLoggingDescription];

  credential = [resultCopy credential];
  refreshToken = [credential refreshToken];
  v22 = [v19 eventWithAppendedRefreshToken:refreshToken description:@"Refresh token used for request."];

  authResponse = [resultCopy authResponse];

  if (authResponse)
  {
    authResponse2 = [resultCopy authResponse];
    descriptionForAccountEvent = [authResponse2 descriptionForAccountEvent];
    v26 = [v22 eventWithAppendedEventDescription:descriptionForAccountEvent];

    v22 = v26;
  }

  endStates2 = [resultCopy endStates];
  gateway = [accountCopy gateway];
  [(HDClinicalAccountManager *)self _accumulateMetricsFromTaskEndStates:endStates2 gateway:gateway];

  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_336E4;
  v58[3] = &unk_106F48;
  v58[4] = self;
  v29 = identifier;
  v59 = v29;
  v30 = v22;
  v60 = v30;
  v31 = objc_retainBlock(v58);
  authResponse3 = [resultCopy authResponse];

  if (authResponse3)
  {
    errorCopy = error;
    v52 = v31;
    v54 = accountCopy;
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

    authResponse4 = [resultCopy authResponse];
    credential2 = [resultCopy credential];
    requestedScopeString = [credential2 requestedScopeString];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v53 = v30;
    v40 = [v30 eventWithAppendedEventDescription:@"update credential"];
    v56 = 0;
    v57 = 0;
    v41 = [HDClinicalAccountEntity updateAccountCredentialFromAuthResponse:authResponse4 accountIdentifier:v29 requestedScope:requestedScopeString profile:WeakRetained healthDatabase:database event:v40 updatedCredential:&v57 error:&v56];
    v42 = v57;
    v43 = v56;

    if (v41)
    {
      v42 = v42;
      v44 = v42;
      v30 = v53;
      accountCopy = v54;
      v31 = v52;
    }

    else
    {
      v31 = v52;
      v52[2](v52, v43);
      v46 = v43;
      v43 = v46;
      v30 = v53;
      accountCopy = v54;
      if (v46)
      {
        if (errorCopy)
        {
          v47 = v46;
          *errorCopy = v43;
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

  error = [resultCopy error];
  if ([error hrs_isReloginRequiredError])
  {
    (v31[2])(v31, error);
  }

  else
  {
    if (error)
    {
      v42 = error;
LABEL_21:
      if (error)
      {
        v49 = v42;
        v44 = 0;
        *error = v42;
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

    error = [NSError hk_error:122 description:&stru_1090E8];
  }

  v42 = error;
  if (v42)
  {
    goto LABEL_21;
  }

  v44 = 0;
LABEL_26:

  return v44;
}

- (void)_accountDidChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userInfo = [changeCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:@"changeType"];

    if (v7)
    {
      integerValue = [v7 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    [(HDClinicalAccountManager *)self _accountDidChange:object changeType:integerValue];
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

- (void)_accountDidChange:(id)change changeType:(int64_t)type
{
  changeCopy = change;
  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    v8 = v7;
    v9 = [(HDClinicalAccountManager *)self debugDescription];
    identifier = [changeCopy identifier];
    v11 = NSStringFromAccountStateChangeType();
    v12 = 138543874;
    v13 = v9;
    v14 = 2114;
    v15 = identifier;
    v16 = 2114;
    v17 = v11;
    _os_log_debug_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%{public}@ account with identifier %{public}@ did change state: %{public}@", &v12, 0x20u);
  }

  [(HDClinicalAccountManager *)self _messageObserversAboutAccount:changeCopy changeType:type];
}

- (void)_messageObserversAboutAccount:(id)account changeType:(int64_t)type
{
  accountCopy = account;
  stateChangeObservers = self->_stateChangeObservers;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_33A80;
  v9[3] = &unk_106F70;
  v9[4] = self;
  v10 = accountCopy;
  typeCopy = type;
  v8 = accountCopy;
  [(HKSynchronousObserverSet *)stateChangeObservers notifyObservers:v9];
}

- (id)allEventsForAccountWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  profile = [(HDClinicalAccountManager *)self profile];
  v8 = [HDClinicalAccountEventEntity fetchEventsForAccountWithIdentifier:identifierCopy profile:profile error:error];

  return v8;
}

- (id)createStaticDSTU2AccountWithTitle:(id)title error:(id *)error
{
  titleCopy = title;
  v7 = +[HKFHIRVersion primaryDSTU2Version];
  v8 = [(HDClinicalAccountManager *)self createStaticAccountWithTitle:titleCopy subtitle:0 description:0 countryCode:0 fhirVersion:v7 onlyIfNeededForSimulatedGatewayID:0 error:error];

  return v8;
}

- (id)createStaticAccountWithTitle:(id)title subtitle:(id)subtitle description:(id)description countryCode:(id)code fhirVersion:(id)version onlyIfNeededForSimulatedGatewayID:(id)d error:(id *)error
{
  titleCopy = title;
  subtitleCopy = subtitle;
  descriptionCopy = description;
  codeCopy = code;
  versionCopy = version;
  dCopy = d;
  v18 = dCopy;
  if (dCopy)
  {
    v56 = dCopy;
    v19 = [NSArray arrayWithObjects:&v56 count:1];
    countryCode3 = [(HDClinicalAccountManager *)self accountsForGatewaysWithExternalIDs:v19 errorOut:error];

    if (!countryCode3)
    {
      firstObject = 0;
      goto LABEL_20;
    }

    if ([(__CFString *)countryCode3 count])
    {
      firstObject = [(__CFString *)countryCode3 firstObject];
      goto LABEL_20;
    }

    uUIDString = v18;
    if (!codeCopy)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v22 = objc_alloc_init(NSUUID);
    uUIDString = [v22 UUIDString];

    if (!codeCopy)
    {
LABEL_12:
      countryCode3 = @"US";
      goto LABEL_13;
    }
  }

  codeCopy = [NSString stringWithFormat:@"en_%@", codeCopy];
  v24 = [[NSLocale alloc] initWithLocaleIdentifier:codeCopy];
  countryCode = [v24 countryCode];
  if (countryCode)
  {
    countryCode2 = [v24 countryCode];
    v27 = [countryCode2 length] == &dword_0 + 2;

    if (v27)
    {
      countryCode3 = [v24 countryCode];

LABEL_13:
      fHIRRelease = [versionCopy FHIRRelease];
      v29 = fHIRRelease == HKFHIRReleaseUnknown;

      if (!v29)
      {
        v50 = 0;
        v51 = &v50;
        v52 = 0x3032000000;
        v53 = sub_2CB44;
        v54 = sub_2CB54;
        v55 = 0;
        profile = [(HDClinicalAccountManager *)self profile];
        database = [profile database];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_3404C;
        v40[3] = &unk_106F98;
        v49 = v18 != 0;
        countryCode3 = countryCode3;
        v41 = countryCode3;
        v42 = versionCopy;
        v18 = uUIDString;
        v43 = v18;
        v44 = titleCopy;
        v45 = subtitleCopy;
        v46 = descriptionCopy;
        selfCopy = self;
        v48 = &v50;
        v32 = [HDClinicalGatewayEntity performWriteTransactionWithHealthDatabase:database error:error block:v40];

        if (v32)
        {
          firstObject = v51[5];
        }

        else
        {
          firstObject = 0;
        }

        _Block_object_dispose(&v50, 8);
        goto LABEL_20;
      }

      stringRepresentation = [versionCopy stringRepresentation];
      v34 = [NSString stringWithFormat:@"Unable to create HDClinicalAccount with unknown FHIR release for version %@", stringRepresentation];

      [NSError hk_assignError:error code:100 description:v34];
      firstObject = 0;
      goto LABEL_17;
    }
  }

  [NSError hk_assignError:error code:3 format:@"It appears country code %@ is not valid", codeCopy];

  firstObject = 0;
  countryCode3 = @"US";
LABEL_17:
  v18 = uUIDString;
LABEL_20:

  return firstObject;
}

- (id)unitTesting_createAccountForGateway:(id)gateway authResponse:(id)response error:(id *)error
{
  gatewayCopy = gateway;
  responseCopy = response;
  v10 = [gatewayCopy authScopeWithError:error];
  if (v10)
  {
    v11 = [(HDClinicalAccountManager *)self unitTesting_createAccountForGateway:gatewayCopy requestedScope:v10 authResponse:responseCopy error:error];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)unitTesting_createAccountWithoutCredentialForGateway:(id)gateway error:(id *)error
{
  gatewayCopy = gateway;
  profile = [(HDClinicalAccountManager *)self profile];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_2CB44;
  v22 = sub_2CB54;
  v23 = 0;
  database = [profile database];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_346DC;
  v14[3] = &unk_106D60;
  v14[4] = self;
  v9 = gatewayCopy;
  v15 = v9;
  v10 = profile;
  v16 = v10;
  v17 = &v18;
  LODWORD(error) = [HDClinicalAccountEntity performWriteTransactionWithHealthDatabase:database error:error block:v14];

  if (error)
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

- (id)unitTesting_createAccountForGateway:(id)gateway requestedScope:(id)scope authResponse:(id)response error:(id *)error
{
  gatewayCopy = gateway;
  scopeCopy = scope;
  responseCopy = response;
  profile = [(HDClinicalAccountManager *)self profile];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_2CB44;
  v32 = sub_2CB54;
  v33 = 0;
  database = [profile database];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_349B4;
  v22[3] = &unk_106FC0;
  v22[4] = self;
  v15 = gatewayCopy;
  v23 = v15;
  v16 = profile;
  v24 = v16;
  v17 = responseCopy;
  v25 = v17;
  v18 = scopeCopy;
  v26 = v18;
  v27 = &v28;
  LODWORD(error) = [HDClinicalAccountEntity performWriteTransactionWithHealthDatabase:database error:error block:v22];

  if (error)
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

- (id)credentialFromCodableCredential:(id)credential
{
  credentialCopy = credential;
  v4 = [[HDFHIRCredential alloc] initWithCodableCredential:credentialCopy];

  return v4;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"%@ (%p)", v4, self];

  return v5;
}

- (id)_createAccountForGatewayWithExternalID:(id)d database:(id)database profile:(id)profile error:(id *)error
{
  databaseCopy = database;
  profileCopy = profile;
  v11 = [HDClinicalGatewayEntity existingGatewayEntityWithExternalID:d database:databaseCopy error:error];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 gatewayInDatabase:databaseCopy error:error];
    if (v13)
    {
      v14 = +[NSUUID UUID];
      v15 = +[NSUUID UUID];
      v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v12 persistentID]);
      v17 = +[HKClinicalSharingStatus unknownStatus];
      v18 = [HDClinicalAccountEntity insertAccountWithIdentifier:v14 syncIdentifier:v15 userEnabled:1 credentialState:0 credentialID:0 patientHash:0 gatewayID:v16 signedClinicalDataIssuerID:0 clinicalSharingStatus:v17 profile:profileCopy error:error];
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

- (id)createAccountForIssuer:(id)issuer databaseTransaction:(id)transaction error:(id *)error
{
  issuerCopy = issuer;
  transactionCopy = transaction;
  v10 = [transactionCopy databaseForEntityClass:objc_opt_class()];
  identifier = [issuerCopy identifier];
  v35 = 0;
  v12 = [HDSignedClinicalDataIssuerEntity issuerEntityWithIdentifier:identifier database:v10 error:&v35];
  v13 = v35;

  if (v12)
  {
    selfCopy = self;
LABEL_3:
    v30 = v13;
    v32 = v10;
    v14 = transactionCopy;
    v15 = issuerCopy;
    v16 = +[NSUUID UUID];
    v17 = +[NSUUID UUID];
    v18 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v12 persistentID]);
    v19 = +[HKClinicalSharingStatus unknownStatus];
    WeakRetained = objc_loadWeakRetained(&selfCopy->_profile);
    error = [HDClinicalAccountEntity insertAccountWithIdentifier:v16 syncIdentifier:v17 userEnabled:1 credentialState:0 credentialID:0 patientHash:0 gatewayID:0 signedClinicalDataIssuerID:v18 clinicalSharingStatus:v19 profile:WeakRetained error:error];

    issuerCopy = v15;
    transactionCopy = v14;
    v13 = v30;
    v10 = v32;
    goto LABEL_4;
  }

  if (v13)
  {
    if (error)
    {
      v22 = v13;
      errorCopy = error;
      error = 0;
      *errorCopy = v13;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  else
  {
    v33 = objc_loadWeakRetained(&self->_profile);
    syncIdentityManager = [v33 syncIdentityManager];
    currentSyncIdentity = [syncIdentityManager currentSyncIdentity];
    identity = [currentSyncIdentity identity];
    [identity codableSyncIdentity];
    v25 = v24 = self;
    v26 = [issuerCopy asCodableIssuerWithSyncIdentity:v25];
    selfCopy = v24;
    v27 = objc_loadWeakRetained(&v24->_profile);
    v12 = [HDSignedClinicalDataIssuerEntity insertCodableIssuer:v26 syncProvenance:0 profile:v27 transaction:transactionCopy error:error];

    if (v12)
    {
      goto LABEL_3;
    }

    error = 0;
  }

LABEL_4:

  return error;
}

- (id)_accountEntityForIssuerIdentifier:(id)identifier label:(id)label createIfNecessary:(BOOL)necessary wellKnown:(BOOL)known error:(id *)error
{
  identifierCopy = identifier;
  labelCopy = label;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_2CB44;
  v43 = sub_2CB54;
  v44 = 0;
  v14 = +[HDDatabaseTransactionContext contextForWritingProtectedData];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v38 = 0;
  v28 = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_353B4;
  v31 = &unk_106FE8;
  v35 = &v39;
  v17 = identifierCopy;
  v32 = v17;
  selfCopy = self;
  necessaryCopy = necessary;
  v18 = labelCopy;
  v34 = v18;
  knownCopy = known;
  LOBYTE(labelCopy) = [database performTransactionWithContext:v14 error:&v38 block:&v28 inaccessibilityHandler:&stru_107028];
  v19 = v38;

  if (labelCopy)
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
      if (error)
      {
        v26 = v24;
        *error = v25;
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

- (void)_performIngestionForNewCredentialsWithReason:(id)reason accountIdentifier:(id)identifier
{
  reasonCopy = reason;
  identifierCopy = identifier;
  v8 = [HDDaemonTransaction transactionWithOwner:self activityName:@"NewCredentialIngestion"];
  v9 = [[HDClinicalIngestionTaskContext alloc] initWithOptions:0 reason:reasonCopy];
  profileExtension = [(HDClinicalAccountManager *)self profileExtension];
  ingestionManager = [profileExtension ingestionManager];
  v20 = identifierCopy;
  v12 = [NSArray arrayWithObjects:&v20 count:1];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_359A4;
  v16[3] = &unk_107050;
  v16[4] = self;
  v17 = reasonCopy;
  v18 = identifierCopy;
  v19 = v8;
  v13 = v8;
  v14 = identifierCopy;
  v15 = reasonCopy;
  [ingestionManager performIngestionWithContext:v9 accountIdentifiers:v12 completion:v16];
}

- (void)_accumulateMetricsFromTaskEndStates:(id)states gateway:(id)gateway
{
  currentAnalyticsAccumulator = self->_currentAnalyticsAccumulator;
  statesCopy = states;
  hkGateway = [gateway hkGateway];
  [(HDClinicalIngestionAnalyticsAccumulator *)currentAnalyticsAccumulator accumulateIngestionAnalyticsFromTaskStates:statesCopy gateway:hkGateway completion:0];
}

- (void)_requestChangesCloudSyncForProfile:(id)profile reason:(id)reason
{
  reasonCopy = reason;
  profileCopy = profile;
  v8 = [[HKChangesSyncRequest alloc] initWithPush:1 pull:0 lite:1];
  v9 = [[HKCloudSyncRequest alloc] initWithChangesSyncRequest:v8];
  cloudSyncManager = [profileCopy cloudSyncManager];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_35BAC;
  v12[3] = &unk_107078;
  v12[4] = self;
  v13 = reasonCopy;
  v11 = reasonCopy;
  [cloudSyncManager syncWithRequest:v9 reason:v11 completion:v12];
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

- (id)simulateUnmergeEventForAccountWithIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  profileCopy = profile;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  database = [profileCopy database];
  v33 = 0;
  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_4F9C0;
  v29 = &unk_106DB0;
  v10 = identifierCopy;
  v30 = v10;
  v11 = profileCopy;
  v31 = v11;
  v32 = &v34;
  v12 = [HDOriginalFHIRResourceEntity performWriteTransactionWithHealthDatabase:database error:&v33 block:&v26];
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
      if (error)
      {
        v24 = v22;
        *error = v23;
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

- (BOOL)simulateAccountDownloadOverdueWithIdentifier:(id)identifier profile:(id)profile stage:(int64_t)stage error:(id *)error
{
  identifierCopy = identifier;
  profileCopy = profile;
  if (stage == 1)
  {
    v11 = -610000.0;
    v12 = 5;
  }

  else
  {
    if (stage != 2)
    {
      v17 = 0;
      goto LABEL_21;
    }

    v11 = -2500000.0;
    v12 = 11;
  }

  v13 = [NSDate dateWithTimeIntervalSinceNow:v11];
  database = [profileCopy database];
  v25 = 0;
  [HDClinicalAccountEntity updateAccountLastFetchDateNoValidation:v13 identifier:identifierCopy profile:profileCopy healthDatabase:database error:&v25];
  v15 = v25;

  if (v15)
  {
    if (error)
    {
      v16 = v15;
      *error = v15;
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
      database2 = [profileCopy database];
      v24 = 0;
      [HDClinicalAccountEntity updateAccountLastFailedFetchDate:v19 overrideFailedAttemptsCount:0 identifier:identifierCopy profile:profileCopy healthDatabase:database2 error:&v24];
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

    if (error)
    {
      v22 = v15;
      *error = v15;
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