@interface HDClinicalIngestionIsAccountFetchableOperation
- (BOOL)_refreshAccountWithErrorString:(id *)string;
- (BOOL)_verifyShouldFetchWithErrorString:(id *)string;
- (void)main;
@end

@implementation HDClinicalIngestionIsAccountFetchableOperation

- (void)main
{
  task = [(HDClinicalIngestionOperation *)self task];
  profileExtension = [task profileExtension];
  ingestionManager = [profileExtension ingestionManager];
  [(HDClinicalIngestionIsAccountFetchableOperation *)self setIngestionManager:ingestionManager];

  if (self->_ingestionManager)
  {
    v14 = 0;
    v6 = [(HDClinicalIngestionIsAccountFetchableOperation *)self _refreshAccountWithErrorString:&v14];
    v7 = v14;
    v8 = v7;
    if (v6)
    {
      v13 = v7;
      v9 = [(HDClinicalIngestionIsAccountFetchableOperation *)self _verifyShouldFetchWithErrorString:&v13];
      v10 = v13;

      [(HDClinicalIngestionIsAccountFetchableOperation *)self setAccountFetchable:v9];
      v8 = v10;
      if (v9)
      {
LABEL_10:

        return;
      }
    }

    else
    {
      [(HDClinicalIngestionIsAccountFetchableOperation *)self setAccountFetchable:0];
    }

    _HKInitializeLogging();
    v12 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A2414(v12, self, v8);
    }

    goto LABEL_10;
  }

  _HKInitializeLogging();
  v11 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_A250C(v11, self);
  }
}

- (BOOL)_refreshAccountWithErrorString:(id *)string
{
  account = [(HDClinicalIngestionPerAccountOperation *)self account];
  identifier = [account identifier];

  if (identifier)
  {
    v16 = identifier;
    v7 = [NSArray arrayWithObjects:&v16 count:1];
    profile = [(HDClinicalIngestionOperation *)self profile];
    v15 = 0;
    v9 = [HDClinicalAccountEntity fetchableAccountsWithIdentifiers:v7 profile:profile error:&v15];
    v10 = v15;

    if (v9)
    {
      firstObject = [v9 firstObject];
      if (firstObject)
      {
        [(HDClinicalIngestionIsAccountFetchableOperation *)self setRefreshedAccount:firstObject];
        v12 = 1;
LABEL_13:

        goto LABEL_14;
      }

      if (string)
      {
        v13 = @"the account does not have a credential or the associated gateway is disabled";
LABEL_11:
        v12 = 0;
        *string = [(__CFString *)v13 copy];
        goto LABEL_13;
      }
    }

    else
    {
      v13 = [NSString stringWithFormat:@"account entity retrieval failed with error: %@", v10];
      firstObject = v13;
      if (string)
      {
        goto LABEL_11;
      }
    }

    v12 = 0;
    goto LABEL_13;
  }

  v12 = 0;
  if (string)
  {
    *string = [@"account entity retrieval failed because there is no account identifier" copy];
  }

LABEL_14:

  return v12;
}

- (BOOL)_verifyShouldFetchWithErrorString:(id *)string
{
  task = [(HDClinicalIngestionOperation *)self task];
  context = [task context];

  if (([context shouldFetchImmediately] & 1) == 0)
  {
    v8 = +[NSDate date];
    refreshedAccount = [(HDClinicalIngestionIsAccountFetchableOperation *)self refreshedAccount];
    if ([context isBackgroundTask] && (objc_msgSend(refreshedAccount, "shouldPerformBackgroundFetchWithNowDate:", v8) & 1) == 0)
    {
      if (string)
      {
        v10 = @"background ingest should not yet be performed";
        goto LABEL_11;
      }
    }

    else
    {
      if ([refreshedAccount shouldPerformFetchWithNowDate:v8])
      {
        v7 = 1;
LABEL_13:

        goto LABEL_14;
      }

      if (string)
      {
        v10 = @"account is still blocked from fetching";
LABEL_11:
        v7 = 0;
        *string = [(__CFString *)v10 copy];
        goto LABEL_13;
      }
    }

    v7 = 0;
    goto LABEL_13;
  }

  v7 = 1;
LABEL_14:

  return v7;
}

@end