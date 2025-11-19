@interface HDClinicalAccountUpdateUserEnabledJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (HDClinicalAccountUpdateUserEnabledJournalEntry)initWithCoder:(id)a3;
- (HDClinicalAccountUpdateUserEnabledJournalEntry)initWithUserEnabled:(BOOL)a3 accountIdentifier:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDClinicalAccountUpdateUserEnabledJournalEntry

- (HDClinicalAccountUpdateUserEnabledJournalEntry)initWithUserEnabled:(BOOL)a3 accountIdentifier:(id)a4
{
  v6.receiver = self;
  v6.super_class = HDClinicalAccountUpdateUserEnabledJournalEntry;
  result = [(HDClinicalAccountEntityUpdateJournalEntry *)&v6 initWithAccountIdentifier:a4];
  if (result)
  {
    result->_userEnabled = a3;
  }

  return result;
}

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  v5 = a3;
  v6 = a4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v5;
  v7 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v25;
    *&v8 = 138543362;
    v20 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [v12 isUserEnabled];
        v14 = [v12 accountIdentifier];
        v15 = [v6 database];
        v23 = 0;
        v16 = [HDClinicalAccountEntity updateAccountUserEnabled:v13 identifier:v14 profile:v6 healthDatabase:v15 error:&v23];
        v17 = v23;

        if ((v16 & 1) == 0)
        {
          v18 = [v17 hk_isDatabaseAccessibilityError];
          _HKInitializeLogging();
          v19 = HKLogHealthRecords;
          if (v18)
          {
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v29 = a1;
              v30 = 2114;
              v31 = v17;
              _os_log_error_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%{public}@ failed to update journaled clinical account user enabled: %{public}@", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
          {
            *buf = v20;
            v29 = v17;
            _os_log_fault_impl(&dword_0, v19, OS_LOG_TYPE_FAULT, "HDClinicalAccountUpdateUserEnabledJournalEntry failed to update journaled clinical account user enabled: %{public}@", buf, 0xCu);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v9);
  }
}

- (HDClinicalAccountUpdateUserEnabledJournalEntry)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"userEnabled"])
  {
    v8.receiver = self;
    v8.super_class = HDClinicalAccountUpdateUserEnabledJournalEntry;
    v5 = [(HDClinicalAccountEntityUpdateJournalEntry *)&v8 initWithCoder:v4];
    if (v5)
    {
      v5->_userEnabled = [v4 decodeBoolForKey:@"userEnabled"];
    }

    self = v5;
    v6 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[HDClinicalAccountUpdateUserEnabledJournalEntry isUserEnabled](self forKey:{"isUserEnabled"), @"userEnabled"}];
  v5.receiver = self;
  v5.super_class = HDClinicalAccountUpdateUserEnabledJournalEntry;
  [(HDClinicalAccountEntityUpdateJournalEntry *)&v5 encodeWithCoder:v4];
}

@end