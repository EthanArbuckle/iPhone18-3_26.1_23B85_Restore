@interface HDClinicalIngestionIsAccountFetchableOperation
- (BOOL)_refreshAccountWithErrorString:(id *)a3;
- (BOOL)_verifyShouldFetchWithErrorString:(id *)a3;
- (void)main;
@end

@implementation HDClinicalIngestionIsAccountFetchableOperation

- (void)main
{
  v3 = [(HDClinicalIngestionOperation *)self task];
  v4 = [v3 profileExtension];
  v5 = [v4 ingestionManager];
  [(HDClinicalIngestionIsAccountFetchableOperation *)self setIngestionManager:v5];

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

- (BOOL)_refreshAccountWithErrorString:(id *)a3
{
  v5 = [(HDClinicalIngestionPerAccountOperation *)self account];
  v6 = [v5 identifier];

  if (v6)
  {
    v16 = v6;
    v7 = [NSArray arrayWithObjects:&v16 count:1];
    v8 = [(HDClinicalIngestionOperation *)self profile];
    v15 = 0;
    v9 = [HDClinicalAccountEntity fetchableAccountsWithIdentifiers:v7 profile:v8 error:&v15];
    v10 = v15;

    if (v9)
    {
      v11 = [v9 firstObject];
      if (v11)
      {
        [(HDClinicalIngestionIsAccountFetchableOperation *)self setRefreshedAccount:v11];
        v12 = 1;
LABEL_13:

        goto LABEL_14;
      }

      if (a3)
      {
        v13 = @"the account does not have a credential or the associated gateway is disabled";
LABEL_11:
        v12 = 0;
        *a3 = [(__CFString *)v13 copy];
        goto LABEL_13;
      }
    }

    else
    {
      v13 = [NSString stringWithFormat:@"account entity retrieval failed with error: %@", v10];
      v11 = v13;
      if (a3)
      {
        goto LABEL_11;
      }
    }

    v12 = 0;
    goto LABEL_13;
  }

  v12 = 0;
  if (a3)
  {
    *a3 = [@"account entity retrieval failed because there is no account identifier" copy];
  }

LABEL_14:

  return v12;
}

- (BOOL)_verifyShouldFetchWithErrorString:(id *)a3
{
  v5 = [(HDClinicalIngestionOperation *)self task];
  v6 = [v5 context];

  if (([v6 shouldFetchImmediately] & 1) == 0)
  {
    v8 = +[NSDate date];
    v9 = [(HDClinicalIngestionIsAccountFetchableOperation *)self refreshedAccount];
    if ([v6 isBackgroundTask] && (objc_msgSend(v9, "shouldPerformBackgroundFetchWithNowDate:", v8) & 1) == 0)
    {
      if (a3)
      {
        v10 = @"background ingest should not yet be performed";
        goto LABEL_11;
      }
    }

    else
    {
      if ([v9 shouldPerformFetchWithNowDate:v8])
      {
        v7 = 1;
LABEL_13:

        goto LABEL_14;
      }

      if (a3)
      {
        v10 = @"account is still blocked from fetching";
LABEL_11:
        v7 = 0;
        *a3 = [(__CFString *)v10 copy];
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