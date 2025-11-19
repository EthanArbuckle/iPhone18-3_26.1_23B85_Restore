@interface HDClinicalAccountUpdateLastExtractedJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (HDClinicalAccountUpdateLastExtractedJournalEntry)initWithCoder:(id)a3;
- (HDClinicalAccountUpdateLastExtractedJournalEntry)initWithLastExtractedRowID:(id)a3 rulesVersion:(id)a4 accountIdentifier:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDClinicalAccountUpdateLastExtractedJournalEntry

- (HDClinicalAccountUpdateLastExtractedJournalEntry)initWithLastExtractedRowID:(id)a3 rulesVersion:(id)a4 accountIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = HDClinicalAccountUpdateLastExtractedJournalEntry;
  v10 = [(HDClinicalAccountEntityUpdateJournalEntry *)&v16 initWithAccountIdentifier:a5];
  if (v10)
  {
    v11 = [v8 copy];
    lastExtractedRowID = v10->_lastExtractedRowID;
    v10->_lastExtractedRowID = v11;

    v13 = [v9 copy];
    lastExtractedRulesVersion = v10->_lastExtractedRulesVersion;
    v10->_lastExtractedRulesVersion = v13;
  }

  return v10;
}

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  v5 = a3;
  v6 = a4;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v5;
  v7 = [v5 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v26;
    *&v8 = 138543362;
    v21 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [v12 lastExtractedRowID];
        v14 = [v12 lastExtractedRulesVersion];
        v15 = [v12 accountIdentifier];
        v16 = [v6 database];
        v24 = 0;
        v17 = [HDClinicalAccountEntity updateAccountLastExtractedRowID:v13 rulesVersion:v14 identifier:v15 profile:v6 healthDatabase:v16 error:&v24];
        v18 = v24;

        if ((v17 & 1) == 0)
        {
          v19 = [v18 hk_isDatabaseAccessibilityError];
          _HKInitializeLogging();
          v20 = HKLogHealthRecords;
          if (v19)
          {
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v30 = a1;
              v31 = 2114;
              v32 = v18;
              _os_log_error_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%{public}@ failed to update journaled clinical account last extracted row ID: %{public}@", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
          {
            *buf = v21;
            v30 = v18;
            _os_log_fault_impl(&dword_0, v20, OS_LOG_TYPE_FAULT, "HDClinicalAccountUpdateLastExtractedJournalEntry failed to update journaled clinical account last extracted row ID: %{public}@", buf, 0xCu);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v9);
  }
}

- (HDClinicalAccountUpdateLastExtractedJournalEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastExtractedRulesVersion"];
  if (v5)
  {
    v11.receiver = self;
    v11.super_class = HDClinicalAccountUpdateLastExtractedJournalEntry;
    v6 = [(HDClinicalAccountEntityUpdateJournalEntry *)&v11 initWithCoder:v4];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastExtractedRowID"];
      lastExtractedRowID = v6->_lastExtractedRowID;
      v6->_lastExtractedRowID = v7;

      objc_storeStrong(&v6->_lastExtractedRulesVersion, v5);
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
  v5 = [(HDClinicalAccountUpdateLastExtractedJournalEntry *)self lastExtractedRowID];
  [v4 encodeObject:v5 forKey:@"lastExtractedRowID"];

  v6 = [(HDClinicalAccountUpdateLastExtractedJournalEntry *)self lastExtractedRulesVersion];
  [v4 encodeObject:v6 forKey:@"lastExtractedRulesVersion"];

  v7.receiver = self;
  v7.super_class = HDClinicalAccountUpdateLastExtractedJournalEntry;
  [(HDClinicalAccountEntityUpdateJournalEntry *)&v7 encodeWithCoder:v4];
}

@end