@interface HDClinicalAccountUpdateLastSubmittedJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (HDClinicalAccountUpdateLastSubmittedJournalEntry)initWithCoder:(id)coder;
- (HDClinicalAccountUpdateLastSubmittedJournalEntry)initWithLastSubmittedRowID:(id)d expectedRulesVersion:(id)version accountIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDClinicalAccountUpdateLastSubmittedJournalEntry

- (HDClinicalAccountUpdateLastSubmittedJournalEntry)initWithLastSubmittedRowID:(id)d expectedRulesVersion:(id)version accountIdentifier:(id)identifier
{
  dCopy = d;
  versionCopy = version;
  v16.receiver = self;
  v16.super_class = HDClinicalAccountUpdateLastSubmittedJournalEntry;
  v10 = [(HDClinicalAccountEntityUpdateJournalEntry *)&v16 initWithAccountIdentifier:identifier];
  if (v10)
  {
    v11 = [dCopy copy];
    lastSubmittedRowID = v10->_lastSubmittedRowID;
    v10->_lastSubmittedRowID = v11;

    v13 = [versionCopy copy];
    expectedRulesVersion = v10->_expectedRulesVersion;
    v10->_expectedRulesVersion = v13;
  }

  return v10;
}

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  entriesCopy = entries;
  profileCopy = profile;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = entriesCopy;
  v7 = [entriesCopy countByEnumeratingWithState:&v25 objects:v33 count:16];
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
        lastSubmittedRowID = [v12 lastSubmittedRowID];
        expectedRulesVersion = [v12 expectedRulesVersion];
        accountIdentifier = [v12 accountIdentifier];
        database = [profileCopy database];
        v24 = 0;
        v17 = [HDClinicalAccountEntity updateAccountLastSubmittedRowID:lastSubmittedRowID expectedRulesVersion:expectedRulesVersion identifier:accountIdentifier healthDatabase:database error:&v24];
        v18 = v24;

        if ((v17 & 1) == 0)
        {
          hk_isDatabaseAccessibilityError = [v18 hk_isDatabaseAccessibilityError];
          _HKInitializeLogging();
          v20 = HKLogHealthRecords;
          if (hk_isDatabaseAccessibilityError)
          {
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              selfCopy = self;
              v31 = 2114;
              v32 = v18;
              _os_log_error_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%{public}@ failed to update journaled clinical account last submitted row ID: %{public}@", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
          {
            *buf = v21;
            selfCopy = v18;
            _os_log_fault_impl(&dword_0, v20, OS_LOG_TYPE_FAULT, "HDClinicalAccountUpdateLastSubmittedJournalEntry failed to update journaled clinical account last submitted row ID: %{public}@", buf, 0xCu);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v9);
  }
}

- (HDClinicalAccountUpdateLastSubmittedJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expectedRulesVersion"];
  if (v5)
  {
    v11.receiver = self;
    v11.super_class = HDClinicalAccountUpdateLastSubmittedJournalEntry;
    v6 = [(HDClinicalAccountEntityUpdateJournalEntry *)&v11 initWithCoder:coderCopy];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastSubmittedRowID"];
      lastSubmittedRowID = v6->_lastSubmittedRowID;
      v6->_lastSubmittedRowID = v7;

      objc_storeStrong(&v6->_expectedRulesVersion, v5);
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  lastSubmittedRowID = [(HDClinicalAccountUpdateLastSubmittedJournalEntry *)self lastSubmittedRowID];
  [coderCopy encodeObject:lastSubmittedRowID forKey:@"lastSubmittedRowID"];

  expectedRulesVersion = [(HDClinicalAccountUpdateLastSubmittedJournalEntry *)self expectedRulesVersion];
  [coderCopy encodeObject:expectedRulesVersion forKey:@"expectedRulesVersion"];

  v7.receiver = self;
  v7.super_class = HDClinicalAccountUpdateLastSubmittedJournalEntry;
  [(HDClinicalAccountEntityUpdateJournalEntry *)&v7 encodeWithCoder:coderCopy];
}

@end