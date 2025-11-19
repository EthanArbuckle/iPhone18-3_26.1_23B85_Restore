@interface HDClinicalAccountManagerDeleteAccountBySyncIdentifierJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (HDClinicalAccountManagerDeleteAccountBySyncIdentifierJournalEntry)initWithAccountSyncIdentifier:(id)a3 deletionReason:(int64_t)a4;
- (HDClinicalAccountManagerDeleteAccountBySyncIdentifierJournalEntry)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDClinicalAccountManagerDeleteAccountBySyncIdentifierJournalEntry

- (HDClinicalAccountManagerDeleteAccountBySyncIdentifierJournalEntry)initWithAccountSyncIdentifier:(id)a3 deletionReason:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HDClinicalAccountManagerDeleteAccountBySyncIdentifierJournalEntry;
  v7 = [(HDClinicalAccountManagerDeleteAccountBySyncIdentifierJournalEntry *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    accountSyncIdentifier = v7->_accountSyncIdentifier;
    v7->_accountSyncIdentifier = v8;

    v7->_deletionReason = a4;
  }

  return v7;
}

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 healthRecordsExtension];
  v8 = [v7 accountManager];

  if (v8)
  {
    v20 = v6;
    v21 = v5;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [v14 accountSyncIdentifier];
          v16 = [v14 deletionReason];
          v22 = 0;
          v17 = [v8 deleteAccountWithSyncIdentifier:v15 deletionReason:v16 error:&v22];
          v18 = v22;
          if ((v17 & 1) == 0)
          {
            _HKInitializeLogging();
            v19 = HKLogDatabase;
            if (os_log_type_enabled(HKLogDatabase, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v28 = v15;
              v29 = 2114;
              v30 = v18;
              _os_log_error_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "Journal: unable to delete account with sync identifier %{public}@: %{public}@", buf, 0x16u);
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v11);
    }

    v6 = v20;
    v5 = v21;
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A14FC();
    }
  }
}

- (HDClinicalAccountManagerDeleteAccountBySyncIdentifierJournalEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountSyncIdentifier"];
  if (v5)
  {
    if ([v4 containsValueForKey:@"deletionReason"])
    {
      v6 = [v4 decodeIntegerForKey:@"deletionReason"];
    }

    else
    {
      v6 = 0;
    }

    self = [(HDClinicalAccountManagerDeleteAccountBySyncIdentifierJournalEntry *)self initWithAccountSyncIdentifier:v5 deletionReason:v6];
    v7 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HDClinicalAccountManagerDeleteAccountBySyncIdentifierJournalEntry *)self accountSyncIdentifier];
  [v4 encodeObject:v5 forKey:@"accountSyncIdentifier"];

  [v4 encodeInteger:-[HDClinicalAccountManagerDeleteAccountBySyncIdentifierJournalEntry deletionReason](self forKey:{"deletionReason"), @"deletionReason"}];
  v6.receiver = self;
  v6.super_class = HDClinicalAccountManagerDeleteAccountBySyncIdentifierJournalEntry;
  [(HDClinicalAccountManagerDeleteAccountBySyncIdentifierJournalEntry *)&v6 encodeWithCoder:v4];
}

@end