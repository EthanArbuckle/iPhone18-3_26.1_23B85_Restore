@interface HDClinicalAccountManagerDeleteAccountByIdentifierJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (HDClinicalAccountManagerDeleteAccountByIdentifierJournalEntry)initWithAccountIdentifier:(id)a3 deletionReason:(int64_t)a4;
- (HDClinicalAccountManagerDeleteAccountByIdentifierJournalEntry)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDClinicalAccountManagerDeleteAccountByIdentifierJournalEntry

- (HDClinicalAccountManagerDeleteAccountByIdentifierJournalEntry)initWithAccountIdentifier:(id)a3 deletionReason:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HDClinicalAccountManagerDeleteAccountByIdentifierJournalEntry;
  v7 = [(HDClinicalAccountManagerDeleteAccountByIdentifierJournalEntry *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    accountIdentifier = v7->_accountIdentifier;
    v7->_accountIdentifier = v8;

    v7->_deletionReason = a4;
  }

  return v7;
}

- (HDClinicalAccountManagerDeleteAccountByIdentifierJournalEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
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

    self = [(HDClinicalAccountManagerDeleteAccountByIdentifierJournalEntry *)self initWithAccountIdentifier:v5 deletionReason:v6];
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
  v5 = [(HDClinicalAccountManagerDeleteAccountByIdentifierJournalEntry *)self accountIdentifier];
  [v4 encodeObject:v5 forKey:@"accountIdentifier"];

  [v4 encodeInteger:-[HDClinicalAccountManagerDeleteAccountByIdentifierJournalEntry deletionReason](self forKey:{"deletionReason"), @"deletionReason"}];
  v6.receiver = self;
  v6.super_class = HDClinicalAccountManagerDeleteAccountByIdentifierJournalEntry;
  [(HDClinicalAccountManagerDeleteAccountByIdentifierJournalEntry *)&v6 encodeWithCoder:v4];
}

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 healthRecordsExtension];
  v8 = [v7 accountManager];

  if (v8)
  {
    v22 = v6;
    v23 = v5;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          v15 = [v14 accountIdentifier];
          v16 = [v14 deletionReason];
          v24 = 0;
          v17 = [v8 deleteAccountWithIdentifier:v15 deletionReason:v16 error:&v24];
          v18 = v24;

          if ((v17 & 1) == 0)
          {
            _HKInitializeLogging();
            v19 = HKLogDatabase;
            if (os_log_type_enabled(HKLogDatabase, OS_LOG_TYPE_FAULT))
            {
              v20 = v19;
              v21 = [v14 accountIdentifier];
              *buf = 138543618;
              v30 = v21;
              v31 = 2114;
              v32 = v18;
              _os_log_fault_impl(&dword_0, v20, OS_LOG_TYPE_FAULT, "HDClinicalAccountManager journal: unable to delete account with identifier %{public}@: %{public}@", buf, 0x16u);
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v11);
    }

    v6 = v22;
    v5 = v23;
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

@end