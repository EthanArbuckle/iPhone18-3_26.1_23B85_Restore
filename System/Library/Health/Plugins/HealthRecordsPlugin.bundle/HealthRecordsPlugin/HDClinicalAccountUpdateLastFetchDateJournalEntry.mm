@interface HDClinicalAccountUpdateLastFetchDateJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (HDClinicalAccountUpdateLastFetchDateJournalEntry)initWithCoder:(id)coder;
- (HDClinicalAccountUpdateLastFetchDateJournalEntry)initWithLastFetchDate:(id)date wasFullFetch:(BOOL)fetch accountIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDClinicalAccountUpdateLastFetchDateJournalEntry

- (HDClinicalAccountUpdateLastFetchDateJournalEntry)initWithLastFetchDate:(id)date wasFullFetch:(BOOL)fetch accountIdentifier:(id)identifier
{
  dateCopy = date;
  v13.receiver = self;
  v13.super_class = HDClinicalAccountUpdateLastFetchDateJournalEntry;
  v9 = [(HDClinicalAccountEntityUpdateJournalEntry *)&v13 initWithAccountIdentifier:identifier];
  if (v9)
  {
    v10 = [dateCopy copy];
    lastFetchDate = v9->_lastFetchDate;
    v9->_lastFetchDate = v10;

    v9->_wasFullFetch = fetch;
  }

  return v9;
}

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  entriesCopy = entries;
  profileCopy = profile;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = entriesCopy;
  v7 = [entriesCopy countByEnumeratingWithState:&v24 objects:v32 count:16];
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
        lastFetchDate = [v12 lastFetchDate];
        wasFullFetch = [v12 wasFullFetch];
        accountIdentifier = [v12 accountIdentifier];
        database = [profileCopy database];
        v23 = 0;
        LOBYTE(wasFullFetch) = [HDClinicalAccountEntity updateAccountLastFetchDate:lastFetchDate wasFullFetch:wasFullFetch identifier:accountIdentifier profile:profileCopy healthDatabase:database error:&v23];
        v17 = v23;

        if ((wasFullFetch & 1) == 0)
        {
          hk_isDatabaseAccessibilityError = [v17 hk_isDatabaseAccessibilityError];
          _HKInitializeLogging();
          v19 = HKLogHealthRecords;
          if (hk_isDatabaseAccessibilityError)
          {
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              selfCopy = self;
              v30 = 2114;
              v31 = v17;
              _os_log_error_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%{public}@ failed to update journaled clinical account last fetch date: %{public}@", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
          {
            *buf = v20;
            selfCopy = v17;
            _os_log_fault_impl(&dword_0, v19, OS_LOG_TYPE_FAULT, "HDClinicalAccountUpdateLastFetchDateJournalEntry failed to update journaled clinical account last fetch date: %{public}@", buf, 0xCu);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v9);
  }
}

- (HDClinicalAccountUpdateLastFetchDateJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastFetchDate"];
  if (v5 && ([coderCopy containsValueForKey:@"wasFullFetch"] & 1) != 0)
  {
    v11.receiver = self;
    v11.super_class = HDClinicalAccountUpdateLastFetchDateJournalEntry;
    v6 = [(HDClinicalAccountEntityUpdateJournalEntry *)&v11 initWithCoder:coderCopy];
    if (v6)
    {
      v7 = [v5 copy];
      lastFetchDate = v6->_lastFetchDate;
      v6->_lastFetchDate = v7;

      v6->_wasFullFetch = [coderCopy decodeBoolForKey:@"wasFullFetch"];
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
  lastFetchDate = [(HDClinicalAccountUpdateLastFetchDateJournalEntry *)self lastFetchDate];
  [coderCopy encodeObject:lastFetchDate forKey:@"lastFetchDate"];

  [coderCopy encodeBool:-[HDClinicalAccountUpdateLastFetchDateJournalEntry wasFullFetch](self forKey:{"wasFullFetch"), @"wasFullFetch"}];
  v6.receiver = self;
  v6.super_class = HDClinicalAccountUpdateLastFetchDateJournalEntry;
  [(HDClinicalAccountEntityUpdateJournalEntry *)&v6 encodeWithCoder:coderCopy];
}

@end