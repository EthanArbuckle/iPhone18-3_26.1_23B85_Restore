@interface HDClinicalAccountStoreServer
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
- (HDClinicalAccountStoreServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 accountManager:(id)a7 ingestionManager:(id)a8;
- (void)accountManager:(id)a3 account:(id)a4 didChangeState:(int64_t)a5;
- (void)dealloc;
- (void)remote_beginInitialLoginSessionForGatewayWithExternalID:(id)a3 completion:(id)a4;
- (void)remote_beginReloginSessionForAccountWithIdentifier:(id)a3 completion:(id)a4;
- (void)remote_createStaticAccountWithTitle:(id)a3 subtitle:(id)a4 description:(id)a5 countryCode:(id)a6 fhirVersion:(id)a7 onlyIfNeededForSimulatedGatewayID:(id)a8 completion:(id)a9;
- (void)remote_deleteAccountWithIdentifier:(id)a3 deletionReason:(int64_t)a4 completion:(id)a5;
- (void)remote_deviceConfigurationSupportsHealthRecords:(id)a3;
- (void)remote_fetchAccountForSource:(id)a3 completion:(id)a4;
- (void)remote_fetchAccountWithIdentifier:(id)a3 completion:(id)a4;
- (void)remote_fetchAccountsForGatewaysWithExternalIDs:(id)a3 completion:(id)a4;
- (void)remote_fetchAllAccountsWithCompletion:(id)a3;
- (void)remote_fetchAllEventsForAccountIdentifier:(id)a3 completion:(id)a4;
- (void)remote_hasAnyHealthRecordsAccountWithCompletion:(id)a3;
- (void)remote_hasGatewayBackedHealthRecordsAccountWithCompletion:(id)a3;
- (void)remote_invalidateCredentialForAccountWithIdentifier:(id)a3 event:(id)a4 completion:(id)a5;
- (void)remote_shouldShowHealthRecordsSectionWithCompletion:(id)a3;
- (void)remote_simulateAccountDownloadOverdueWithIdentifier:(id)a3 stage:(int64_t)a4 completion:(id)a5;
- (void)remote_simulateUnmergeEventForAccountWithIdentifier:(id)a3 completion:(id)a4;
- (void)remote_supportsClinicalSharingWithCompletion:(id)a3;
- (void)remote_updateAccountCredentialStateWithIdentifier:(id)a3 state:(int64_t)a4 event:(id)a5 completion:(id)a6;
- (void)remote_updateClinicalSharingStatusForAccountWithIdentifier:(id)a3 firstSharedDate:(id)a4 lastSharedDate:(id)a5 userStatus:(id)a6 multiDeviceStatus:(id)a7 primaryDeviceName:(id)a8 completion:(id)a9;
@end

@implementation HDClinicalAccountStoreServer

- (HDClinicalAccountStoreServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 accountManager:(id)a7 ingestionManager:(id)a8
{
  v15 = a7;
  v16 = a8;
  v20.receiver = self;
  v20.super_class = HDClinicalAccountStoreServer;
  v17 = [(HDClinicalAccountStoreServer *)&v20 initWithUUID:a3 configuration:a4 client:a5 delegate:a6];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_accountManager, a7);
    objc_storeStrong(&v18->_ingestionManager, a8);
  }

  return v18;
}

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [v14 profile];
  v17 = [v16 profileExtensionWithIdentifier:HKHealthRecordsPluginIdentifier];

  v18 = [v17 accountManager];
  if (v18)
  {
    v19 = [v17 ingestionManager];
    if (v19)
    {
      v20 = [[a1 alloc] initWithUUID:v12 configuration:v13 client:v14 delegate:v15 accountManager:v18 ingestionManager:v19];
      goto LABEL_7;
    }

    v23 = objc_opt_class();
    v22 = NSStringFromClass(v23);
    v24 = [v14 profile];
    [NSError hk_assignError:a7 code:100 format:@"Cannot use %@ on profile without ingestion manager: %@", v22, v24];
  }

  else
  {
    v21 = objc_opt_class();
    v19 = NSStringFromClass(v21);
    v22 = [v14 profile];
    [NSError hk_assignError:a7 code:100 format:@"Cannot use %@ on profile without account manager: %@", v19, v22];
  }

  v20 = 0;
LABEL_7:

  return v20;
}

- (void)dealloc
{
  [(HDClinicalAccountManager *)self->_accountManager removeAccountStateObserver:self];
  v3.receiver = self;
  v3.super_class = HDClinicalAccountStoreServer;
  [(HDClinicalAccountStoreServer *)&v3 dealloc];
}

- (void)remote_beginInitialLoginSessionForGatewayWithExternalID:(id)a3 completion:(id)a4
{
  accountManager = self->_accountManager;
  v9 = 0;
  v6 = a4;
  v7 = [(HDClinicalAccountManager *)accountManager beginInitialLoginSessionForGatewayWithExternalID:a3 error:&v9];
  v8 = v9;
  v6[2](v6, v7, v8);
}

- (void)remote_beginReloginSessionForAccountWithIdentifier:(id)a3 completion:(id)a4
{
  accountManager = self->_accountManager;
  v9 = 0;
  v6 = a4;
  v7 = [(HDClinicalAccountManager *)accountManager beginReloginSessionForAccountWithIdentifier:a3 error:&v9];
  v8 = v9;
  v6[2](v6, v7, v8);
}

- (void)remote_fetchAllAccountsWithCompletion:(id)a3
{
  accountManager = self->_accountManager;
  v9 = 0;
  v5 = a3;
  v6 = [(HDClinicalAccountManager *)accountManager allAccountsWithError:&v9];
  v7 = v9;
  v8 = [(HDClinicalAccountStoreServer *)self _clientAccountsFromAccounts:v6];

  v5[2](v5, v8, v7);
}

- (void)remote_fetchAccountsForGatewaysWithExternalIDs:(id)a3 completion:(id)a4
{
  accountManager = self->_accountManager;
  v11 = 0;
  v7 = a4;
  v8 = [(HDClinicalAccountManager *)accountManager accountsForGatewaysWithExternalIDs:a3 errorOut:&v11];
  v9 = v11;
  v10 = [(HDClinicalAccountStoreServer *)self _clientAccountsFromAccounts:v8];

  v7[2](v7, v10, v9);
}

- (void)remote_fetchAccountForSource:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1BDD4;
  v25 = sub_1BDE4;
  v26 = 0;
  v8 = [(HDClinicalAccountStoreServer *)self profile];
  v9 = [v8 database];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1BDEC;
  v16 = &unk_106630;
  v19 = &v21;
  v20 = 0;
  v17 = self;
  v10 = v6;
  v18 = v10;
  [v9 performHighPriorityTransactionsWithError:&v20 block:&v13];
  v11 = v20;

  v12 = [v22[5] hkAccount];
  v7[2](v7, v12, v11);

  _Block_object_dispose(&v21, 8);
}

- (void)remote_fetchAccountWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1BDD4;
  v22 = sub_1BDE4;
  v23 = 0;
  v8 = [(HDClinicalAccountStoreServer *)self profile];
  v9 = [v8 database];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1C018;
  v14[3] = &unk_106630;
  v16 = &v18;
  v17 = 0;
  v14[4] = self;
  v10 = v6;
  v15 = v10;
  [v9 performHighPriorityTransactionsWithError:&v17 block:v14];
  v11 = v17;

  v12 = v19[5];
  if (!(v12 | v11))
  {
    v11 = [NSError hk_error:118 format:@"Account with id %@ not found", v10];
    v12 = v19[5];
  }

  v13 = [v12 hkAccount];
  v7[2](v7, v13, v11);

  _Block_object_dispose(&v18, 8);
}

- (void)remote_deleteAccountWithIdentifier:(id)a3 deletionReason:(int64_t)a4 completion:(id)a5
{
  accountManager = self->_accountManager;
  v11 = 0;
  v8 = a5;
  v9 = [(HDClinicalAccountManager *)accountManager deleteAccountWithIdentifier:a3 deletionReason:a4 error:&v11];
  v10 = v11;
  v8[2](v8, v9, v10);
}

- (void)remote_deviceConfigurationSupportsHealthRecords:(id)a3
{
  accountManager = self->_accountManager;
  v7 = 0;
  v4 = a3;
  v5 = [(HDClinicalAccountManager *)accountManager deviceConfigurationSupportsHealthRecordsWithError:&v7];
  v6 = v7;
  v4[2](v4, v5, v6);
}

- (void)remote_hasAnyHealthRecordsAccountWithCompletion:(id)a3
{
  v4 = a3;
  accountManager = self->_accountManager;
  v11 = 0;
  v6 = [(HDClinicalAccountManager *)accountManager highPriorityTransactionHasGatewayBackedAccountsWithError:&v11];
  v7 = v11;
  if (v6 == &dword_0 + 2)
  {
    v8 = self->_accountManager;
    v10 = v7;
    v6 = [(HDClinicalAccountManager *)v8 highPriorityTransactionHasIssuerBackedAccountsWithError:&v10];
    v9 = v10;

    v7 = v9;
  }

  v4[2](v4, v6, v7);
}

- (void)remote_hasGatewayBackedHealthRecordsAccountWithCompletion:(id)a3
{
  accountManager = self->_accountManager;
  v7 = 0;
  v4 = a3;
  v5 = [(HDClinicalAccountManager *)accountManager highPriorityTransactionHasGatewayBackedAccountsWithError:&v7];
  v6 = v7;
  v4[2](v4, v5, v6);
}

- (void)remote_shouldShowHealthRecordsSectionWithCompletion:(id)a3
{
  v4 = a3;
  accountManager = self->_accountManager;
  v12 = 0;
  v6 = [(HDClinicalAccountManager *)accountManager deviceConfigurationSupportsHealthRecordsWithError:&v12];
  v7 = v12;
  if (v6 == &dword_0 + 2)
  {
    v8 = self->_accountManager;
    v11 = v7;
    v9 = [(HDClinicalAccountManager *)v8 highPriorityTransactionHasIssuerBackedAccountsWithError:&v11];
    v10 = v11;

    v7 = v10;
  }

  else
  {
    v9 = v6;
  }

  v4[2](v4, v9, v6 == &dword_0 + 1, v7);
}

- (void)remote_supportsClinicalSharingWithCompletion:(id)a3
{
  accountManager = self->_accountManager;
  v7 = 0;
  v4 = a3;
  v5 = [(HDClinicalAccountManager *)accountManager deviceConfigurationSupportsClinicalSharingWithError:&v7];
  v6 = v7;
  v4[2](v4, v5, v6);
}

- (void)remote_updateClinicalSharingStatusForAccountWithIdentifier:(id)a3 firstSharedDate:(id)a4 lastSharedDate:(id)a5 userStatus:(id)a6 multiDeviceStatus:(id)a7 primaryDeviceName:(id)a8 completion:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  _HKInitializeLogging();
  v22 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_9E0DC(v22);
  }

  accountManager = self->_accountManager;
  v32 = v15;
  v33 = 0;
  v31 = v16;
  v24 = [(HDClinicalAccountManager *)accountManager updateClinicalSharingStatusForAccountWithIdentifier:v15 firstSharedDate:v16 lastSharedDate:v17 userStatus:v18 multiDeviceStatus:v19 primaryDeviceName:v20 error:&v33];
  v25 = v33;
  _HKInitializeLogging();
  v26 = HKLogHealthRecords;
  if (v24)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_9E180(v26);
    }
  }

  else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    v27 = v26;
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = HKSensitiveLogItem();
    *buf = 138543874;
    v35 = v29;
    v36 = 2114;
    v37 = v32;
    v38 = 2114;
    v39 = v30;
    _os_log_error_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%{public}@ remote_updateClinicalSharingStatusForAccountWithIdentifier: failed to update clinical sharing status on account %{public}@ with error: %{public}@", buf, 0x20u);
  }

  v21[2](v21, v24, v25);
}

- (void)remote_fetchAllEventsForAccountIdentifier:(id)a3 completion:(id)a4
{
  accountManager = self->_accountManager;
  v9 = 0;
  v6 = a4;
  v7 = [(HDClinicalAccountManager *)accountManager allEventsForAccountWithIdentifier:a3 error:&v9];
  v8 = v9;
  v6[2](v6, v7, v8);
}

- (void)remote_createStaticAccountWithTitle:(id)a3 subtitle:(id)a4 description:(id)a5 countryCode:(id)a6 fhirVersion:(id)a7 onlyIfNeededForSimulatedGatewayID:(id)a8 completion:(id)a9
{
  accountManager = self->_accountManager;
  v20 = 0;
  v16 = a9;
  v17 = [(HDClinicalAccountManager *)accountManager createStaticAccountWithTitle:a3 subtitle:a4 description:a5 countryCode:a6 fhirVersion:a7 onlyIfNeededForSimulatedGatewayID:a8 error:&v20];
  v18 = v20;
  v19 = [v17 hkAccount];
  v16[2](v16, v19, v18);
}

- (void)remote_invalidateCredentialForAccountWithIdentifier:(id)a3 event:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HDClinicalAccountStoreServer *)self client];
  v12 = [v11 process];
  v19 = 0;
  v13 = [v12 hasRequiredEntitlement:HKControlEntitlement error:&v19];
  v14 = v19;

  if (v13)
  {
    accountManager = self->_accountManager;
    v18 = 0;
    v16 = [(HDClinicalAccountManager *)accountManager invalidateCredentialForAccountWithIdentifier:v8 event:v9 error:&v18];
    v17 = v18;
    v10[2](v10, v16, v17);
  }

  else
  {
    v10[2](v10, 0, v14);
  }
}

- (void)remote_updateAccountCredentialStateWithIdentifier:(id)a3 state:(int64_t)a4 event:(id)a5 completion:(id)a6
{
  accountManager = self->_accountManager;
  v13 = 0;
  v10 = a6;
  v11 = [(HDClinicalAccountManager *)accountManager updateCredentialStateForAccountWithIdentifier:a3 state:a4 event:a5 error:&v13];
  v12 = v13;
  v10[2](v10, v11, v12);
}

- (void)remote_simulateUnmergeEventForAccountWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HDClinicalAccountStoreServer *)self client];
  v9 = [v8 process];
  v17 = 0;
  v10 = [v9 hasRequiredEntitlement:HKControlEntitlement error:&v17];
  v11 = v17;

  if (v10)
  {
    accountManager = self->_accountManager;
    v13 = [(HDClinicalAccountStoreServer *)self profile];
    v16 = 0;
    v14 = [(HDClinicalAccountManager *)accountManager simulateUnmergeEventForAccountWithIdentifier:v6 profile:v13 error:&v16];
    v15 = v16;

    v7[2](v7, v14, v15);
  }

  else
  {
    v7[2](v7, 0, v11);
  }
}

- (void)remote_simulateAccountDownloadOverdueWithIdentifier:(id)a3 stage:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(HDClinicalAccountStoreServer *)self client];
  v11 = [v10 process];
  v19 = 0;
  v12 = [v11 hasRequiredEntitlement:HKControlEntitlement error:&v19];
  v13 = v19;

  if (v12)
  {
    accountManager = self->_accountManager;
    v15 = [(HDClinicalAccountStoreServer *)self profile];
    v18 = 0;
    v16 = [(HDClinicalAccountManager *)accountManager simulateAccountDownloadOverdueWithIdentifier:v8 profile:v15 stage:a4 error:&v18];
    v17 = v18;

    v9[2](v9, v16, v17);
  }

  else
  {
    v9[2](v9, 0, v13);
  }
}

- (void)accountManager:(id)a3 account:(id)a4 didChangeState:(int64_t)a5
{
  v7 = a4;
  _HKInitializeLogging();
  v8 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    v12 = v8;
    v13 = [v7 identifier];
    v14 = NSStringFromAccountStateChangeType();
    *buf = 138543874;
    v17 = self;
    v18 = 2114;
    v19 = v13;
    v20 = 2114;
    v21 = v14;
    _os_log_debug_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%{public}@: account %{public}@ did change state: %{public}@", buf, 0x20u);
  }

  v9 = [(HDClinicalAccountStoreServer *)self client];
  v10 = [v9 connection];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1CDD8;
  v15[3] = &unk_105C38;
  v15[4] = self;
  v11 = [v10 remoteObjectProxyWithErrorHandler:v15];

  [v11 clientRemote_accountDidChange:v7 changeType:a5];
}

@end