@interface HDClinicalAccountUpdateCredentialStateJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (HDClinicalAccountUpdateCredentialStateJournalEntry)initWithCoder:(id)a3;
- (HDClinicalAccountUpdateCredentialStateJournalEntry)initWithCredentialState:(int64_t)a3 accountIdentifier:(id)a4 event:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDClinicalAccountUpdateCredentialStateJournalEntry

- (HDClinicalAccountUpdateCredentialStateJournalEntry)initWithCredentialState:(int64_t)a3 accountIdentifier:(id)a4 event:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = HDClinicalAccountUpdateCredentialStateJournalEntry;
  v9 = [(HDClinicalAccountEntityUpdateJournalEntry *)&v14 initWithAccountIdentifier:a4];
  v10 = v9;
  if (v9)
  {
    v9->_credentialState = a3;
    v11 = [v8 copy];
    event = v10->_event;
    v10->_event = v11;
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
        v13 = [v12 credentialState];
        v14 = [v12 accountIdentifier];
        v15 = [v6 database];
        v16 = [v12 event];
        v24 = 0;
        v17 = [HDClinicalAccountEntity updateAccountCredentialState:v13 identifier:v14 profile:v6 healthDatabase:v15 event:v16 error:&v24];
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
              _os_log_error_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%{public}@ failed to update journaled clinical account relogin needed: %{public}@", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
          {
            *buf = v21;
            v30 = v18;
            _os_log_fault_impl(&dword_0, v20, OS_LOG_TYPE_FAULT, "HDClinicalAccountUpdateCredentialStateJournalEntry failed to update journaled clinical account relogin needed: %{public}@", buf, 0xCu);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v9);
  }
}

- (HDClinicalAccountUpdateCredentialStateJournalEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"event"];
  if (v5 && ([v4 containsValueForKey:@"credentialState"] & 1) != 0)
  {
    v11.receiver = self;
    v11.super_class = HDClinicalAccountUpdateCredentialStateJournalEntry;
    v6 = [(HDClinicalAccountEntityUpdateJournalEntry *)&v11 initWithCoder:v4];
    if (v6)
    {
      v6->_credentialState = [v4 decodeIntForKey:@"credentialState"];
      v7 = [v5 copy];
      event = v6->_event;
      v6->_event = v7;
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
  [v4 encodeInteger:-[HDClinicalAccountUpdateCredentialStateJournalEntry credentialState](self forKey:{"credentialState"), @"credentialState"}];
  v5 = [(HDClinicalAccountUpdateCredentialStateJournalEntry *)self event];
  [v4 encodeObject:v5 forKey:@"event"];

  v6.receiver = self;
  v6.super_class = HDClinicalAccountUpdateCredentialStateJournalEntry;
  [(HDClinicalAccountEntityUpdateJournalEntry *)&v6 encodeWithCoder:v4];
}

@end