@interface HDClinicalAccountUpdateUserEnabledJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (HDClinicalAccountUpdateUserEnabledJournalEntry)initWithCoder:(id)coder;
- (HDClinicalAccountUpdateUserEnabledJournalEntry)initWithUserEnabled:(BOOL)enabled accountIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDClinicalAccountUpdateUserEnabledJournalEntry

- (HDClinicalAccountUpdateUserEnabledJournalEntry)initWithUserEnabled:(BOOL)enabled accountIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = HDClinicalAccountUpdateUserEnabledJournalEntry;
  result = [(HDClinicalAccountEntityUpdateJournalEntry *)&v6 initWithAccountIdentifier:identifier];
  if (result)
  {
    result->_userEnabled = enabled;
  }

  return result;
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
        isUserEnabled = [v12 isUserEnabled];
        accountIdentifier = [v12 accountIdentifier];
        database = [profileCopy database];
        v23 = 0;
        v16 = [HDClinicalAccountEntity updateAccountUserEnabled:isUserEnabled identifier:accountIdentifier profile:profileCopy healthDatabase:database error:&v23];
        v17 = v23;

        if ((v16 & 1) == 0)
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
              _os_log_error_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%{public}@ failed to update journaled clinical account user enabled: %{public}@", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
          {
            *buf = v20;
            selfCopy = v17;
            _os_log_fault_impl(&dword_0, v19, OS_LOG_TYPE_FAULT, "HDClinicalAccountUpdateUserEnabledJournalEntry failed to update journaled clinical account user enabled: %{public}@", buf, 0xCu);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v9);
  }
}

- (HDClinicalAccountUpdateUserEnabledJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"userEnabled"])
  {
    v8.receiver = self;
    v8.super_class = HDClinicalAccountUpdateUserEnabledJournalEntry;
    v5 = [(HDClinicalAccountEntityUpdateJournalEntry *)&v8 initWithCoder:coderCopy];
    if (v5)
    {
      v5->_userEnabled = [coderCopy decodeBoolForKey:@"userEnabled"];
    }

    self = v5;
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
  [coderCopy encodeBool:-[HDClinicalAccountUpdateUserEnabledJournalEntry isUserEnabled](self forKey:{"isUserEnabled"), @"userEnabled"}];
  v5.receiver = self;
  v5.super_class = HDClinicalAccountUpdateUserEnabledJournalEntry;
  [(HDClinicalAccountEntityUpdateJournalEntry *)&v5 encodeWithCoder:coderCopy];
}

@end