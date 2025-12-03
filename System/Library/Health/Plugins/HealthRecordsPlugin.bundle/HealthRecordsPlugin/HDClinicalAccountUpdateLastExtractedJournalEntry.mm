@interface HDClinicalAccountUpdateLastExtractedJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (HDClinicalAccountUpdateLastExtractedJournalEntry)initWithCoder:(id)coder;
- (HDClinicalAccountUpdateLastExtractedJournalEntry)initWithLastExtractedRowID:(id)d rulesVersion:(id)version accountIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDClinicalAccountUpdateLastExtractedJournalEntry

- (HDClinicalAccountUpdateLastExtractedJournalEntry)initWithLastExtractedRowID:(id)d rulesVersion:(id)version accountIdentifier:(id)identifier
{
  dCopy = d;
  versionCopy = version;
  v16.receiver = self;
  v16.super_class = HDClinicalAccountUpdateLastExtractedJournalEntry;
  v10 = [(HDClinicalAccountEntityUpdateJournalEntry *)&v16 initWithAccountIdentifier:identifier];
  if (v10)
  {
    v11 = [dCopy copy];
    lastExtractedRowID = v10->_lastExtractedRowID;
    v10->_lastExtractedRowID = v11;

    v13 = [versionCopy copy];
    lastExtractedRulesVersion = v10->_lastExtractedRulesVersion;
    v10->_lastExtractedRulesVersion = v13;
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
        lastExtractedRowID = [v12 lastExtractedRowID];
        lastExtractedRulesVersion = [v12 lastExtractedRulesVersion];
        accountIdentifier = [v12 accountIdentifier];
        database = [profileCopy database];
        v24 = 0;
        v17 = [HDClinicalAccountEntity updateAccountLastExtractedRowID:lastExtractedRowID rulesVersion:lastExtractedRulesVersion identifier:accountIdentifier profile:profileCopy healthDatabase:database error:&v24];
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
              _os_log_error_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%{public}@ failed to update journaled clinical account last extracted row ID: %{public}@", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
          {
            *buf = v21;
            selfCopy = v18;
            _os_log_fault_impl(&dword_0, v20, OS_LOG_TYPE_FAULT, "HDClinicalAccountUpdateLastExtractedJournalEntry failed to update journaled clinical account last extracted row ID: %{public}@", buf, 0xCu);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v9);
  }
}

- (HDClinicalAccountUpdateLastExtractedJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastExtractedRulesVersion"];
  if (v5)
  {
    v11.receiver = self;
    v11.super_class = HDClinicalAccountUpdateLastExtractedJournalEntry;
    v6 = [(HDClinicalAccountEntityUpdateJournalEntry *)&v11 initWithCoder:coderCopy];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastExtractedRowID"];
      lastExtractedRowID = v6->_lastExtractedRowID;
      v6->_lastExtractedRowID = v7;

      objc_storeStrong(&v6->_lastExtractedRulesVersion, v5);
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
  lastExtractedRowID = [(HDClinicalAccountUpdateLastExtractedJournalEntry *)self lastExtractedRowID];
  [coderCopy encodeObject:lastExtractedRowID forKey:@"lastExtractedRowID"];

  lastExtractedRulesVersion = [(HDClinicalAccountUpdateLastExtractedJournalEntry *)self lastExtractedRulesVersion];
  [coderCopy encodeObject:lastExtractedRulesVersion forKey:@"lastExtractedRulesVersion"];

  v7.receiver = self;
  v7.super_class = HDClinicalAccountUpdateLastExtractedJournalEntry;
  [(HDClinicalAccountEntityUpdateJournalEntry *)&v7 encodeWithCoder:coderCopy];
}

@end