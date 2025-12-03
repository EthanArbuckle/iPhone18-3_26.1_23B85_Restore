@interface HDRefreshAccountInformationTask
- (HDRefreshAccountInformationTask)init;
- (id)createUpdateGatewaysOperationForAccount:(id)account providerServiceManager:(id)manager;
- (id)initForUseWithAccountManager:(id)manager accountIdentifier:(id)identifier;
- (void)fetchOrRefreshCredentialForAccountConnectionInformation:(id)information completion:(id)completion;
- (void)runWithCompletion:(id)completion;
@end

@implementation HDRefreshAccountInformationTask

- (HDRefreshAccountInformationTask)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (id)initForUseWithAccountManager:(id)manager accountIdentifier:(id)identifier
{
  managerCopy = manager;
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    sub_9D7F4(a2, self);
  }

  v15.receiver = self;
  v15.super_class = HDRefreshAccountInformationTask;
  v10 = [(HDRefreshAccountInformationTask *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_accountManager, manager);
    v12 = [identifierCopy copy];
    accountIdentifier = v11->_accountIdentifier;
    v11->_accountIdentifier = v12;

    v11->_didUpdateGatewaysFromProviderService = 0;
  }

  return v11;
}

- (void)runWithCompletion:(id)completion
{
  completionCopy = completion;
  _HKInitializeLogging();
  v5 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    logPrefix = [(HDRefreshAccountInformationTask *)self logPrefix];
    *buf = 138543362;
    v46 = logPrefix;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: beginning", buf, 0xCu);
  }

  accountManager = self->_accountManager;
  accountIdentifier = self->_accountIdentifier;
  v9 = [NSArray arrayWithObjects:&accountIdentifier count:1];
  v43 = 0;
  v10 = [(HDClinicalAccountManager *)accountManager userFetchEligibleAccountsWithIdentifiers:v9 error:&v43];
  v11 = v43;

  if (v10)
  {
    firstObject = [v10 firstObject];
    v13 = firstObject;
    if (firstObject)
    {
      lastFetchDate = [firstObject lastFetchDate];
      if (!lastFetchDate || (v15 = lastFetchDate, [v13 lastFetchDate], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "timeIntervalSinceNow"), v18 = v17, v16, v15, v18 < -43200.0))
      {
        profileExtension = [(HDClinicalAccountManager *)self->_accountManager profileExtension];
        providerServiceManager = [profileExtension providerServiceManager];

        if (providerServiceManager)
        {
          v21 = [(HDRefreshAccountInformationTask *)self createUpdateGatewaysOperationForAccount:v13 providerServiceManager:providerServiceManager];
          if (v21)
          {
            [providerServiceManager addOperationUnlessAlreadyEnqueued:v21];
            [v21 waitUntilFinished];
            error = [v21 error];

            if (error)
            {
              _HKInitializeLogging();
              v23 = HKLogHealthRecords;
              if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
              {
                sub_9D870(v23, self, v21);
              }

              credential = [v13 credential];
              v25 = credential;
              if (!credential)
              {
                v25 = +[HKFHIRCredential nilCredential];
              }

              error2 = [v21 error];
              v27 = [v25 asRefreshResultWithError:error2];
              completionCopy[2](completionCopy, v27);

              if (!credential)
              {
              }

              goto LABEL_38;
            }

            self->_didUpdateGatewaysFromProviderService = 1;
          }
        }

        else
        {
          _HKInitializeLogging();
          v34 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            sub_9D920(v34, self);
          }
        }
      }

      v42 = v11;
      providerServiceManager = [v13 connectionInformationWithError:&v42];
      v35 = v42;

      if (providerServiceManager)
      {
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_179C4;
        v40[3] = &unk_106368;
        v40[4] = self;
        v41 = completionCopy;
        [(HDRefreshAccountInformationTask *)self fetchOrRefreshCredentialForAccountConnectionInformation:providerServiceManager completion:v40];
      }

      else
      {
        _HKInitializeLogging();
        v36 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          sub_9D9C8(v36);
        }

        credential2 = [v13 credential];
        v38 = credential2;
        if (!credential2)
        {
          v38 = +[HKFHIRCredential nilCredential];
        }

        v39 = [v38 asRefreshResultWithError:v35];
        completionCopy[2](completionCopy, v39);

        if (!credential2)
        {
        }
      }

      v11 = v35;
    }

    else
    {
      _HKInitializeLogging();
      v29 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v29;
        logPrefix2 = [(HDRefreshAccountInformationTask *)self logPrefix];
        *buf = 138543362;
        v46 = logPrefix2;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: not user fetch eligible, not trying to refresh", buf, 0xCu);
      }

      providerServiceManager = [NSError hk_error:3 description:@"account is not user fetch eligible"];
      v32 = +[HKFHIRCredential nilCredential];
      v33 = [v32 asRefreshResultWithError:providerServiceManager];
      completionCopy[2](completionCopy, v33);
    }
  }

  else
  {
    _HKInitializeLogging();
    v28 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_9DA64(v28);
    }

    v13 = +[HKFHIRCredential nilCredential];
    providerServiceManager = [v13 asRefreshResultWithError:v11];
    completionCopy[2](completionCopy, providerServiceManager);
  }

LABEL_38:
}

- (void)fetchOrRefreshCredentialForAccountConnectionInformation:(id)information completion:(id)completion
{
  accountManager = self->_accountManager;
  completionCopy = completion;
  informationCopy = information;
  legacyXPCIngestionServiceClient = [(HDClinicalAccountManager *)accountManager legacyXPCIngestionServiceClient];
  [legacyXPCIngestionServiceClient fetchOrRefreshCredentialForAccount:informationCopy completion:completionCopy];
}

- (id)createUpdateGatewaysOperationForAccount:(id)account providerServiceManager:(id)manager
{
  accountCopy = account;
  managerCopy = manager;
  accountCopy2 = account;
  v7 = [NSArray arrayWithObjects:&accountCopy count:1];
  v8 = [managerCopy createUpdateGatewaysOperationsForAccounts:{v7, accountCopy}];

  identifier = [accountCopy2 identifier];

  v10 = [v8 objectForKeyedSubscript:identifier];

  return v10;
}

@end