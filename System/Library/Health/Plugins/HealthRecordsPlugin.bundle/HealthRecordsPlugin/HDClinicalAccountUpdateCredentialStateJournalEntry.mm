@interface HDClinicalAccountUpdateCredentialStateJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (HDClinicalAccountUpdateCredentialStateJournalEntry)initWithCoder:(id)coder;
- (HDClinicalAccountUpdateCredentialStateJournalEntry)initWithCredentialState:(int64_t)state accountIdentifier:(id)identifier event:(id)event;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDClinicalAccountUpdateCredentialStateJournalEntry

- (HDClinicalAccountUpdateCredentialStateJournalEntry)initWithCredentialState:(int64_t)state accountIdentifier:(id)identifier event:(id)event
{
  eventCopy = event;
  v14.receiver = self;
  v14.super_class = HDClinicalAccountUpdateCredentialStateJournalEntry;
  v9 = [(HDClinicalAccountEntityUpdateJournalEntry *)&v14 initWithAccountIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    v9->_credentialState = state;
    v11 = [eventCopy copy];
    event = v10->_event;
    v10->_event = v11;
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
        credentialState = [v12 credentialState];
        accountIdentifier = [v12 accountIdentifier];
        database = [profileCopy database];
        event = [v12 event];
        v24 = 0;
        v17 = [HDClinicalAccountEntity updateAccountCredentialState:credentialState identifier:accountIdentifier profile:profileCopy healthDatabase:database event:event error:&v24];
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
              _os_log_error_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%{public}@ failed to update journaled clinical account relogin needed: %{public}@", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
          {
            *buf = v21;
            selfCopy = v18;
            _os_log_fault_impl(&dword_0, v20, OS_LOG_TYPE_FAULT, "HDClinicalAccountUpdateCredentialStateJournalEntry failed to update journaled clinical account relogin needed: %{public}@", buf, 0xCu);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v9);
  }
}

- (HDClinicalAccountUpdateCredentialStateJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"event"];
  if (v5 && ([coderCopy containsValueForKey:@"credentialState"] & 1) != 0)
  {
    v11.receiver = self;
    v11.super_class = HDClinicalAccountUpdateCredentialStateJournalEntry;
    v6 = [(HDClinicalAccountEntityUpdateJournalEntry *)&v11 initWithCoder:coderCopy];
    if (v6)
    {
      v6->_credentialState = [coderCopy decodeIntForKey:@"credentialState"];
      v7 = [v5 copy];
      event = v6->_event;
      v6->_event = v7;
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
  [coderCopy encodeInteger:-[HDClinicalAccountUpdateCredentialStateJournalEntry credentialState](self forKey:{"credentialState"), @"credentialState"}];
  event = [(HDClinicalAccountUpdateCredentialStateJournalEntry *)self event];
  [coderCopy encodeObject:event forKey:@"event"];

  v6.receiver = self;
  v6.super_class = HDClinicalAccountUpdateCredentialStateJournalEntry;
  [(HDClinicalAccountEntityUpdateJournalEntry *)&v6 encodeWithCoder:coderCopy];
}

@end