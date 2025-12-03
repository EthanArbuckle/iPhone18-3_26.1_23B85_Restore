@interface HDClinicalAccountUpdateLastFailedFetchDateJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (HDClinicalAccountUpdateLastFailedFetchDateJournalEntry)initWithCoder:(id)coder;
- (HDClinicalAccountUpdateLastFailedFetchDateJournalEntry)initWithLastFailedFetchDate:(id)date overrideFailedAttemptsCount:(id)count accountIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDClinicalAccountUpdateLastFailedFetchDateJournalEntry

- (HDClinicalAccountUpdateLastFailedFetchDateJournalEntry)initWithLastFailedFetchDate:(id)date overrideFailedAttemptsCount:(id)count accountIdentifier:(id)identifier
{
  dateCopy = date;
  countCopy = count;
  v16.receiver = self;
  v16.super_class = HDClinicalAccountUpdateLastFailedFetchDateJournalEntry;
  v10 = [(HDClinicalAccountEntityUpdateJournalEntry *)&v16 initWithAccountIdentifier:identifier];
  if (v10)
  {
    v11 = [dateCopy copy];
    lastFailedFetchDate = v10->_lastFailedFetchDate;
    v10->_lastFailedFetchDate = v11;

    v13 = [countCopy copy];
    overrideFailedAttemptsCount = v10->_overrideFailedAttemptsCount;
    v10->_overrideFailedAttemptsCount = v13;
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
        lastFailedFetchDate = [v12 lastFailedFetchDate];
        overrideFailedAttemptsCount = [v12 overrideFailedAttemptsCount];
        accountIdentifier = [v12 accountIdentifier];
        database = [profileCopy database];
        v24 = 0;
        v17 = [HDClinicalAccountEntity updateAccountLastFailedFetchDate:lastFailedFetchDate overrideFailedAttemptsCount:overrideFailedAttemptsCount identifier:accountIdentifier profile:profileCopy healthDatabase:database error:&v24];
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
              _os_log_error_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%{public}@ failed to update journaled clinical account last failed fetch date: %{public}@", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
          {
            *buf = v21;
            selfCopy = v18;
            _os_log_fault_impl(&dword_0, v20, OS_LOG_TYPE_FAULT, "HDClinicalAccountUpdateLastFetchDateJournalEntry failed to update journaled clinical account last failed fetch date: %{public}@", buf, 0xCu);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v9);
  }
}

- (HDClinicalAccountUpdateLastFailedFetchDateJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastFailedFetchDate"];
  if (v5)
  {
    v13.receiver = self;
    v13.super_class = HDClinicalAccountUpdateLastFailedFetchDateJournalEntry;
    v6 = [(HDClinicalAccountEntityUpdateJournalEntry *)&v13 initWithCoder:coderCopy];
    if (v6)
    {
      v7 = [v5 copy];
      lastFailedFetchDate = v6->_lastFailedFetchDate;
      v6->_lastFailedFetchDate = v7;

      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"overrideFailedAttemptsCount"];
      overrideFailedAttemptsCount = v6->_overrideFailedAttemptsCount;
      v6->_overrideFailedAttemptsCount = v9;
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
  lastFailedFetchDate = [(HDClinicalAccountUpdateLastFailedFetchDateJournalEntry *)self lastFailedFetchDate];
  [coderCopy encodeObject:lastFailedFetchDate forKey:@"lastFailedFetchDate"];

  overrideFailedAttemptsCount = [(HDClinicalAccountUpdateLastFailedFetchDateJournalEntry *)self overrideFailedAttemptsCount];
  [coderCopy encodeObject:overrideFailedAttemptsCount forKey:@"overrideFailedAttemptsCount"];

  v7.receiver = self;
  v7.super_class = HDClinicalAccountUpdateLastFailedFetchDateJournalEntry;
  [(HDClinicalAccountEntityUpdateJournalEntry *)&v7 encodeWithCoder:coderCopy];
}

@end