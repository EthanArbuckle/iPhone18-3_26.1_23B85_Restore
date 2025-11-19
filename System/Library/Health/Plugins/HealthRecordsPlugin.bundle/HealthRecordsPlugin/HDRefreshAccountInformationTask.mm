@interface HDRefreshAccountInformationTask
- (HDRefreshAccountInformationTask)init;
- (id)createUpdateGatewaysOperationForAccount:(id)a3 providerServiceManager:(id)a4;
- (id)initForUseWithAccountManager:(id)a3 accountIdentifier:(id)a4;
- (void)fetchOrRefreshCredentialForAccountConnectionInformation:(id)a3 completion:(id)a4;
- (void)runWithCompletion:(id)a3;
@end

@implementation HDRefreshAccountInformationTask

- (HDRefreshAccountInformationTask)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (id)initForUseWithAccountManager:(id)a3 accountIdentifier:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    sub_9D7F4(a2, self);
  }

  v15.receiver = self;
  v15.super_class = HDRefreshAccountInformationTask;
  v10 = [(HDRefreshAccountInformationTask *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_accountManager, a3);
    v12 = [v9 copy];
    accountIdentifier = v11->_accountIdentifier;
    v11->_accountIdentifier = v12;

    v11->_didUpdateGatewaysFromProviderService = 0;
  }

  return v11;
}

- (void)runWithCompletion:(id)a3
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(HDRefreshAccountInformationTask *)self logPrefix];
    *buf = 138543362;
    v46 = v7;
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
    v12 = [v10 firstObject];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 lastFetchDate];
      if (!v14 || (v15 = v14, [v13 lastFetchDate], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "timeIntervalSinceNow"), v18 = v17, v16, v15, v18 < -43200.0))
      {
        v19 = [(HDClinicalAccountManager *)self->_accountManager profileExtension];
        v20 = [v19 providerServiceManager];

        if (v20)
        {
          v21 = [(HDRefreshAccountInformationTask *)self createUpdateGatewaysOperationForAccount:v13 providerServiceManager:v20];
          if (v21)
          {
            [v20 addOperationUnlessAlreadyEnqueued:v21];
            [v21 waitUntilFinished];
            v22 = [v21 error];

            if (v22)
            {
              _HKInitializeLogging();
              v23 = HKLogHealthRecords;
              if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
              {
                sub_9D870(v23, self, v21);
              }

              v24 = [v13 credential];
              v25 = v24;
              if (!v24)
              {
                v25 = +[HKFHIRCredential nilCredential];
              }

              v26 = [v21 error];
              v27 = [v25 asRefreshResultWithError:v26];
              v4[2](v4, v27);

              if (!v24)
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
      v20 = [v13 connectionInformationWithError:&v42];
      v35 = v42;

      if (v20)
      {
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_179C4;
        v40[3] = &unk_106368;
        v40[4] = self;
        v41 = v4;
        [(HDRefreshAccountInformationTask *)self fetchOrRefreshCredentialForAccountConnectionInformation:v20 completion:v40];
      }

      else
      {
        _HKInitializeLogging();
        v36 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          sub_9D9C8(v36);
        }

        v37 = [v13 credential];
        v38 = v37;
        if (!v37)
        {
          v38 = +[HKFHIRCredential nilCredential];
        }

        v39 = [v38 asRefreshResultWithError:v35];
        v4[2](v4, v39);

        if (!v37)
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
        v31 = [(HDRefreshAccountInformationTask *)self logPrefix];
        *buf = 138543362;
        v46 = v31;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: not user fetch eligible, not trying to refresh", buf, 0xCu);
      }

      v20 = [NSError hk_error:3 description:@"account is not user fetch eligible"];
      v32 = +[HKFHIRCredential nilCredential];
      v33 = [v32 asRefreshResultWithError:v20];
      v4[2](v4, v33);
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
    v20 = [v13 asRefreshResultWithError:v11];
    v4[2](v4, v20);
  }

LABEL_38:
}

- (void)fetchOrRefreshCredentialForAccountConnectionInformation:(id)a3 completion:(id)a4
{
  accountManager = self->_accountManager;
  v6 = a4;
  v7 = a3;
  v8 = [(HDClinicalAccountManager *)accountManager legacyXPCIngestionServiceClient];
  [v8 fetchOrRefreshCredentialForAccount:v7 completion:v6];
}

- (id)createUpdateGatewaysOperationForAccount:(id)a3 providerServiceManager:(id)a4
{
  v12 = a3;
  v5 = a4;
  v6 = a3;
  v7 = [NSArray arrayWithObjects:&v12 count:1];
  v8 = [v5 createUpdateGatewaysOperationsForAccounts:{v7, v12}];

  v9 = [v6 identifier];

  v10 = [v8 objectForKeyedSubscript:v9];

  return v10;
}

@end