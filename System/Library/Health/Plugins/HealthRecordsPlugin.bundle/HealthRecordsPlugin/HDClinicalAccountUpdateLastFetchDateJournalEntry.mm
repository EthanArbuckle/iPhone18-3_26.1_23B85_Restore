@interface HDClinicalAccountUpdateLastFetchDateJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (HDClinicalAccountUpdateLastFetchDateJournalEntry)initWithCoder:(id)a3;
- (HDClinicalAccountUpdateLastFetchDateJournalEntry)initWithLastFetchDate:(id)a3 wasFullFetch:(BOOL)a4 accountIdentifier:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDClinicalAccountUpdateLastFetchDateJournalEntry

- (HDClinicalAccountUpdateLastFetchDateJournalEntry)initWithLastFetchDate:(id)a3 wasFullFetch:(BOOL)a4 accountIdentifier:(id)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = HDClinicalAccountUpdateLastFetchDateJournalEntry;
  v9 = [(HDClinicalAccountEntityUpdateJournalEntry *)&v13 initWithAccountIdentifier:a5];
  if (v9)
  {
    v10 = [v8 copy];
    lastFetchDate = v9->_lastFetchDate;
    v9->_lastFetchDate = v10;

    v9->_wasFullFetch = a4;
  }

  return v9;
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
        v13 = [v12 lastFetchDate];
        v14 = [v12 wasFullFetch];
        v15 = [v12 accountIdentifier];
        v16 = [v6 database];
        v23 = 0;
        LOBYTE(v14) = [HDClinicalAccountEntity updateAccountLastFetchDate:v13 wasFullFetch:v14 identifier:v15 profile:v6 healthDatabase:v16 error:&v23];
        v17 = v23;

        if ((v14 & 1) == 0)
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
              _os_log_error_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%{public}@ failed to update journaled clinical account last fetch date: %{public}@", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
          {
            *buf = v20;
            v29 = v17;
            _os_log_fault_impl(&dword_0, v19, OS_LOG_TYPE_FAULT, "HDClinicalAccountUpdateLastFetchDateJournalEntry failed to update journaled clinical account last fetch date: %{public}@", buf, 0xCu);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v9);
  }
}

- (HDClinicalAccountUpdateLastFetchDateJournalEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastFetchDate"];
  if (v5 && ([v4 containsValueForKey:@"wasFullFetch"] & 1) != 0)
  {
    v11.receiver = self;
    v11.super_class = HDClinicalAccountUpdateLastFetchDateJournalEntry;
    v6 = [(HDClinicalAccountEntityUpdateJournalEntry *)&v11 initWithCoder:v4];
    if (v6)
    {
      v7 = [v5 copy];
      lastFetchDate = v6->_lastFetchDate;
      v6->_lastFetchDate = v7;

      v6->_wasFullFetch = [v4 decodeBoolForKey:@"wasFullFetch"];
    }

    self = v6;
    v9 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HDClinicalAccountUpdateLastFetchDateJournalEntry *)self lastFetchDate];
  [v4 encodeObject:v5 forKey:@"lastFetchDate"];

  [v4 encodeBool:-[HDClinicalAccountUpdateLastFetchDateJournalEntry wasFullFetch](self forKey:{"wasFullFetch"), @"wasFullFetch"}];
  v6.receiver = self;
  v6.super_class = HDClinicalAccountUpdateLastFetchDateJournalEntry;
  [(HDClinicalAccountEntityUpdateJournalEntry *)&v6 encodeWithCoder:v4];
}

@end