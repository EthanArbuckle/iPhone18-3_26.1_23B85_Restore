@interface HDClinicalAccountStoreServer
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
- (HDClinicalAccountStoreServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate accountManager:(id)manager ingestionManager:(id)ingestionManager;
- (void)accountManager:(id)manager account:(id)account didChangeState:(int64_t)state;
- (void)dealloc;
- (void)remote_beginInitialLoginSessionForGatewayWithExternalID:(id)d completion:(id)completion;
- (void)remote_beginReloginSessionForAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)remote_createStaticAccountWithTitle:(id)title subtitle:(id)subtitle description:(id)description countryCode:(id)code fhirVersion:(id)version onlyIfNeededForSimulatedGatewayID:(id)d completion:(id)completion;
- (void)remote_deleteAccountWithIdentifier:(id)identifier deletionReason:(int64_t)reason completion:(id)completion;
- (void)remote_deviceConfigurationSupportsHealthRecords:(id)records;
- (void)remote_fetchAccountForSource:(id)source completion:(id)completion;
- (void)remote_fetchAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)remote_fetchAccountsForGatewaysWithExternalIDs:(id)ds completion:(id)completion;
- (void)remote_fetchAllAccountsWithCompletion:(id)completion;
- (void)remote_fetchAllEventsForAccountIdentifier:(id)identifier completion:(id)completion;
- (void)remote_hasAnyHealthRecordsAccountWithCompletion:(id)completion;
- (void)remote_hasGatewayBackedHealthRecordsAccountWithCompletion:(id)completion;
- (void)remote_invalidateCredentialForAccountWithIdentifier:(id)identifier event:(id)event completion:(id)completion;
- (void)remote_shouldShowHealthRecordsSectionWithCompletion:(id)completion;
- (void)remote_simulateAccountDownloadOverdueWithIdentifier:(id)identifier stage:(int64_t)stage completion:(id)completion;
- (void)remote_simulateUnmergeEventForAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)remote_supportsClinicalSharingWithCompletion:(id)completion;
- (void)remote_updateAccountCredentialStateWithIdentifier:(id)identifier state:(int64_t)state event:(id)event completion:(id)completion;
- (void)remote_updateClinicalSharingStatusForAccountWithIdentifier:(id)identifier firstSharedDate:(id)date lastSharedDate:(id)sharedDate userStatus:(id)status multiDeviceStatus:(id)deviceStatus primaryDeviceName:(id)name completion:(id)completion;
@end

@implementation HDClinicalAccountStoreServer

- (HDClinicalAccountStoreServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate accountManager:(id)manager ingestionManager:(id)ingestionManager
{
  managerCopy = manager;
  ingestionManagerCopy = ingestionManager;
  v20.receiver = self;
  v20.super_class = HDClinicalAccountStoreServer;
  v17 = [(HDClinicalAccountStoreServer *)&v20 initWithUUID:d configuration:configuration client:client delegate:delegate];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_accountManager, manager);
    objc_storeStrong(&v18->_ingestionManager, ingestionManager);
  }

  return v18;
}

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  dCopy = d;
  configurationCopy = configuration;
  clientCopy = client;
  delegateCopy = delegate;
  profile = [clientCopy profile];
  v17 = [profile profileExtensionWithIdentifier:HKHealthRecordsPluginIdentifier];

  accountManager = [v17 accountManager];
  if (accountManager)
  {
    ingestionManager = [v17 ingestionManager];
    if (ingestionManager)
    {
      v20 = [[self alloc] initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy accountManager:accountManager ingestionManager:ingestionManager];
      goto LABEL_7;
    }

    v23 = objc_opt_class();
    profile3 = NSStringFromClass(v23);
    profile2 = [clientCopy profile];
    [NSError hk_assignError:error code:100 format:@"Cannot use %@ on profile without ingestion manager: %@", profile3, profile2];
  }

  else
  {
    v21 = objc_opt_class();
    ingestionManager = NSStringFromClass(v21);
    profile3 = [clientCopy profile];
    [NSError hk_assignError:error code:100 format:@"Cannot use %@ on profile without account manager: %@", ingestionManager, profile3];
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

- (void)remote_beginInitialLoginSessionForGatewayWithExternalID:(id)d completion:(id)completion
{
  accountManager = self->_accountManager;
  v9 = 0;
  completionCopy = completion;
  v7 = [(HDClinicalAccountManager *)accountManager beginInitialLoginSessionForGatewayWithExternalID:d error:&v9];
  v8 = v9;
  completionCopy[2](completionCopy, v7, v8);
}

- (void)remote_beginReloginSessionForAccountWithIdentifier:(id)identifier completion:(id)completion
{
  accountManager = self->_accountManager;
  v9 = 0;
  completionCopy = completion;
  v7 = [(HDClinicalAccountManager *)accountManager beginReloginSessionForAccountWithIdentifier:identifier error:&v9];
  v8 = v9;
  completionCopy[2](completionCopy, v7, v8);
}

- (void)remote_fetchAllAccountsWithCompletion:(id)completion
{
  accountManager = self->_accountManager;
  v9 = 0;
  completionCopy = completion;
  v6 = [(HDClinicalAccountManager *)accountManager allAccountsWithError:&v9];
  v7 = v9;
  v8 = [(HDClinicalAccountStoreServer *)self _clientAccountsFromAccounts:v6];

  completionCopy[2](completionCopy, v8, v7);
}

- (void)remote_fetchAccountsForGatewaysWithExternalIDs:(id)ds completion:(id)completion
{
  accountManager = self->_accountManager;
  v11 = 0;
  completionCopy = completion;
  v8 = [(HDClinicalAccountManager *)accountManager accountsForGatewaysWithExternalIDs:ds errorOut:&v11];
  v9 = v11;
  v10 = [(HDClinicalAccountStoreServer *)self _clientAccountsFromAccounts:v8];

  completionCopy[2](completionCopy, v10, v9);
}

- (void)remote_fetchAccountForSource:(id)source completion:(id)completion
{
  sourceCopy = source;
  completionCopy = completion;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1BDD4;
  v25 = sub_1BDE4;
  v26 = 0;
  profile = [(HDClinicalAccountStoreServer *)self profile];
  database = [profile database];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1BDEC;
  v16 = &unk_106630;
  v19 = &v21;
  v20 = 0;
  selfCopy = self;
  v10 = sourceCopy;
  v18 = v10;
  [database performHighPriorityTransactionsWithError:&v20 block:&v13];
  v11 = v20;

  hkAccount = [v22[5] hkAccount];
  completionCopy[2](completionCopy, hkAccount, v11);

  _Block_object_dispose(&v21, 8);
}

- (void)remote_fetchAccountWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1BDD4;
  v22 = sub_1BDE4;
  v23 = 0;
  profile = [(HDClinicalAccountStoreServer *)self profile];
  database = [profile database];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1C018;
  v14[3] = &unk_106630;
  v16 = &v18;
  v17 = 0;
  v14[4] = self;
  v10 = identifierCopy;
  v15 = v10;
  [database performHighPriorityTransactionsWithError:&v17 block:v14];
  v11 = v17;

  v12 = v19[5];
  if (!(v12 | v11))
  {
    v11 = [NSError hk_error:118 format:@"Account with id %@ not found", v10];
    v12 = v19[5];
  }

  hkAccount = [v12 hkAccount];
  completionCopy[2](completionCopy, hkAccount, v11);

  _Block_object_dispose(&v18, 8);
}

- (void)remote_deleteAccountWithIdentifier:(id)identifier deletionReason:(int64_t)reason completion:(id)completion
{
  accountManager = self->_accountManager;
  v11 = 0;
  completionCopy = completion;
  v9 = [(HDClinicalAccountManager *)accountManager deleteAccountWithIdentifier:identifier deletionReason:reason error:&v11];
  v10 = v11;
  completionCopy[2](completionCopy, v9, v10);
}

- (void)remote_deviceConfigurationSupportsHealthRecords:(id)records
{
  accountManager = self->_accountManager;
  v7 = 0;
  recordsCopy = records;
  v5 = [(HDClinicalAccountManager *)accountManager deviceConfigurationSupportsHealthRecordsWithError:&v7];
  v6 = v7;
  recordsCopy[2](recordsCopy, v5, v6);
}

- (void)remote_hasAnyHealthRecordsAccountWithCompletion:(id)completion
{
  completionCopy = completion;
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

  completionCopy[2](completionCopy, v6, v7);
}

- (void)remote_hasGatewayBackedHealthRecordsAccountWithCompletion:(id)completion
{
  accountManager = self->_accountManager;
  v7 = 0;
  completionCopy = completion;
  v5 = [(HDClinicalAccountManager *)accountManager highPriorityTransactionHasGatewayBackedAccountsWithError:&v7];
  v6 = v7;
  completionCopy[2](completionCopy, v5, v6);
}

- (void)remote_shouldShowHealthRecordsSectionWithCompletion:(id)completion
{
  completionCopy = completion;
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

  completionCopy[2](completionCopy, v9, v6 == &dword_0 + 1, v7);
}

- (void)remote_supportsClinicalSharingWithCompletion:(id)completion
{
  accountManager = self->_accountManager;
  v7 = 0;
  completionCopy = completion;
  v5 = [(HDClinicalAccountManager *)accountManager deviceConfigurationSupportsClinicalSharingWithError:&v7];
  v6 = v7;
  completionCopy[2](completionCopy, v5, v6);
}

- (void)remote_updateClinicalSharingStatusForAccountWithIdentifier:(id)identifier firstSharedDate:(id)date lastSharedDate:(id)sharedDate userStatus:(id)status multiDeviceStatus:(id)deviceStatus primaryDeviceName:(id)name completion:(id)completion
{
  identifierCopy = identifier;
  dateCopy = date;
  sharedDateCopy = sharedDate;
  statusCopy = status;
  deviceStatusCopy = deviceStatus;
  nameCopy = name;
  completionCopy = completion;
  _HKInitializeLogging();
  v22 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_9E0DC(v22);
  }

  accountManager = self->_accountManager;
  v32 = identifierCopy;
  v33 = 0;
  v31 = dateCopy;
  v24 = [(HDClinicalAccountManager *)accountManager updateClinicalSharingStatusForAccountWithIdentifier:identifierCopy firstSharedDate:dateCopy lastSharedDate:sharedDateCopy userStatus:statusCopy multiDeviceStatus:deviceStatusCopy primaryDeviceName:nameCopy error:&v33];
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

  completionCopy[2](completionCopy, v24, v25);
}

- (void)remote_fetchAllEventsForAccountIdentifier:(id)identifier completion:(id)completion
{
  accountManager = self->_accountManager;
  v9 = 0;
  completionCopy = completion;
  v7 = [(HDClinicalAccountManager *)accountManager allEventsForAccountWithIdentifier:identifier error:&v9];
  v8 = v9;
  completionCopy[2](completionCopy, v7, v8);
}

- (void)remote_createStaticAccountWithTitle:(id)title subtitle:(id)subtitle description:(id)description countryCode:(id)code fhirVersion:(id)version onlyIfNeededForSimulatedGatewayID:(id)d completion:(id)completion
{
  accountManager = self->_accountManager;
  v20 = 0;
  completionCopy = completion;
  v17 = [(HDClinicalAccountManager *)accountManager createStaticAccountWithTitle:title subtitle:subtitle description:description countryCode:code fhirVersion:version onlyIfNeededForSimulatedGatewayID:d error:&v20];
  v18 = v20;
  hkAccount = [v17 hkAccount];
  completionCopy[2](completionCopy, hkAccount, v18);
}

- (void)remote_invalidateCredentialForAccountWithIdentifier:(id)identifier event:(id)event completion:(id)completion
{
  identifierCopy = identifier;
  eventCopy = event;
  completionCopy = completion;
  client = [(HDClinicalAccountStoreServer *)self client];
  process = [client process];
  v19 = 0;
  v13 = [process hasRequiredEntitlement:HKControlEntitlement error:&v19];
  v14 = v19;

  if (v13)
  {
    accountManager = self->_accountManager;
    v18 = 0;
    v16 = [(HDClinicalAccountManager *)accountManager invalidateCredentialForAccountWithIdentifier:identifierCopy event:eventCopy error:&v18];
    v17 = v18;
    completionCopy[2](completionCopy, v16, v17);
  }

  else
  {
    completionCopy[2](completionCopy, 0, v14);
  }
}

- (void)remote_updateAccountCredentialStateWithIdentifier:(id)identifier state:(int64_t)state event:(id)event completion:(id)completion
{
  accountManager = self->_accountManager;
  v13 = 0;
  completionCopy = completion;
  v11 = [(HDClinicalAccountManager *)accountManager updateCredentialStateForAccountWithIdentifier:identifier state:state event:event error:&v13];
  v12 = v13;
  completionCopy[2](completionCopy, v11, v12);
}

- (void)remote_simulateUnmergeEventForAccountWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  client = [(HDClinicalAccountStoreServer *)self client];
  process = [client process];
  v17 = 0;
  v10 = [process hasRequiredEntitlement:HKControlEntitlement error:&v17];
  v11 = v17;

  if (v10)
  {
    accountManager = self->_accountManager;
    profile = [(HDClinicalAccountStoreServer *)self profile];
    v16 = 0;
    v14 = [(HDClinicalAccountManager *)accountManager simulateUnmergeEventForAccountWithIdentifier:identifierCopy profile:profile error:&v16];
    v15 = v16;

    completionCopy[2](completionCopy, v14, v15);
  }

  else
  {
    completionCopy[2](completionCopy, 0, v11);
  }
}

- (void)remote_simulateAccountDownloadOverdueWithIdentifier:(id)identifier stage:(int64_t)stage completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  client = [(HDClinicalAccountStoreServer *)self client];
  process = [client process];
  v19 = 0;
  v12 = [process hasRequiredEntitlement:HKControlEntitlement error:&v19];
  v13 = v19;

  if (v12)
  {
    accountManager = self->_accountManager;
    profile = [(HDClinicalAccountStoreServer *)self profile];
    v18 = 0;
    v16 = [(HDClinicalAccountManager *)accountManager simulateAccountDownloadOverdueWithIdentifier:identifierCopy profile:profile stage:stage error:&v18];
    v17 = v18;

    completionCopy[2](completionCopy, v16, v17);
  }

  else
  {
    completionCopy[2](completionCopy, 0, v13);
  }
}

- (void)accountManager:(id)manager account:(id)account didChangeState:(int64_t)state
{
  accountCopy = account;
  _HKInitializeLogging();
  v8 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    v12 = v8;
    identifier = [accountCopy identifier];
    v14 = NSStringFromAccountStateChangeType();
    *buf = 138543874;
    selfCopy = self;
    v18 = 2114;
    v19 = identifier;
    v20 = 2114;
    v21 = v14;
    _os_log_debug_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%{public}@: account %{public}@ did change state: %{public}@", buf, 0x20u);
  }

  client = [(HDClinicalAccountStoreServer *)self client];
  connection = [client connection];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1CDD8;
  v15[3] = &unk_105C38;
  v15[4] = self;
  v11 = [connection remoteObjectProxyWithErrorHandler:v15];

  [v11 clientRemote_accountDidChange:accountCopy changeType:state];
}

@end