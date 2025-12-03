@interface HDClinicalAccountManagerDeleteAccountBySyncIdentifierJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (HDClinicalAccountManagerDeleteAccountBySyncIdentifierJournalEntry)initWithAccountSyncIdentifier:(id)identifier deletionReason:(int64_t)reason;
- (HDClinicalAccountManagerDeleteAccountBySyncIdentifierJournalEntry)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDClinicalAccountManagerDeleteAccountBySyncIdentifierJournalEntry

- (HDClinicalAccountManagerDeleteAccountBySyncIdentifierJournalEntry)initWithAccountSyncIdentifier:(id)identifier deletionReason:(int64_t)reason
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = HDClinicalAccountManagerDeleteAccountBySyncIdentifierJournalEntry;
  v7 = [(HDClinicalAccountManagerDeleteAccountBySyncIdentifierJournalEntry *)&v11 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    accountSyncIdentifier = v7->_accountSyncIdentifier;
    v7->_accountSyncIdentifier = v8;

    v7->_deletionReason = reason;
  }

  return v7;
}

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  entriesCopy = entries;
  profileCopy = profile;
  healthRecordsExtension = [profileCopy healthRecordsExtension];
  accountManager = [healthRecordsExtension accountManager];

  if (accountManager)
  {
    v20 = profileCopy;
    v21 = entriesCopy;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = entriesCopy;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          accountSyncIdentifier = [v14 accountSyncIdentifier];
          deletionReason = [v14 deletionReason];
          v22 = 0;
          v17 = [accountManager deleteAccountWithSyncIdentifier:accountSyncIdentifier deletionReason:deletionReason error:&v22];
          v18 = v22;
          if ((v17 & 1) == 0)
          {
            _HKInitializeLogging();
            v19 = HKLogDatabase;
            if (os_log_type_enabled(HKLogDatabase, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v28 = accountSyncIdentifier;
              v29 = 2114;
              v30 = v18;
              _os_log_error_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "Journal: unable to delete account with sync identifier %{public}@: %{public}@", buf, 0x16u);
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v11);
    }

    profileCopy = v20;
    entriesCopy = v21;
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A14FC();
    }
  }
}

- (HDClinicalAccountManagerDeleteAccountBySyncIdentifierJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountSyncIdentifier"];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"deletionReason"])
    {
      v6 = [coderCopy decodeIntegerForKey:@"deletionReason"];
    }

    else
    {
      v6 = 0;
    }

    self = [(HDClinicalAccountManagerDeleteAccountBySyncIdentifierJournalEntry *)self initWithAccountSyncIdentifier:v5 deletionReason:v6];
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
  accountSyncIdentifier = [(HDClinicalAccountManagerDeleteAccountBySyncIdentifierJournalEntry *)self accountSyncIdentifier];
  [coderCopy encodeObject:accountSyncIdentifier forKey:@"accountSyncIdentifier"];

  [coderCopy encodeInteger:-[HDClinicalAccountManagerDeleteAccountBySyncIdentifierJournalEntry deletionReason](self forKey:{"deletionReason"), @"deletionReason"}];
  v6.receiver = self;
  v6.super_class = HDClinicalAccountManagerDeleteAccountBySyncIdentifierJournalEntry;
  [(HDClinicalAccountManagerDeleteAccountBySyncIdentifierJournalEntry *)&v6 encodeWithCoder:coderCopy];
}

@end