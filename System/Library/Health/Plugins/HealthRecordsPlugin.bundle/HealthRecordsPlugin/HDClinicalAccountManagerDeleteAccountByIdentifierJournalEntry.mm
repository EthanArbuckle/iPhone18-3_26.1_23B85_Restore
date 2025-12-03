@interface HDClinicalAccountManagerDeleteAccountByIdentifierJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (HDClinicalAccountManagerDeleteAccountByIdentifierJournalEntry)initWithAccountIdentifier:(id)identifier deletionReason:(int64_t)reason;
- (HDClinicalAccountManagerDeleteAccountByIdentifierJournalEntry)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDClinicalAccountManagerDeleteAccountByIdentifierJournalEntry

- (HDClinicalAccountManagerDeleteAccountByIdentifierJournalEntry)initWithAccountIdentifier:(id)identifier deletionReason:(int64_t)reason
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = HDClinicalAccountManagerDeleteAccountByIdentifierJournalEntry;
  v7 = [(HDClinicalAccountManagerDeleteAccountByIdentifierJournalEntry *)&v11 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    accountIdentifier = v7->_accountIdentifier;
    v7->_accountIdentifier = v8;

    v7->_deletionReason = reason;
  }

  return v7;
}

- (HDClinicalAccountManagerDeleteAccountByIdentifierJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
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

    self = [(HDClinicalAccountManagerDeleteAccountByIdentifierJournalEntry *)self initWithAccountIdentifier:v5 deletionReason:v6];
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
  accountIdentifier = [(HDClinicalAccountManagerDeleteAccountByIdentifierJournalEntry *)self accountIdentifier];
  [coderCopy encodeObject:accountIdentifier forKey:@"accountIdentifier"];

  [coderCopy encodeInteger:-[HDClinicalAccountManagerDeleteAccountByIdentifierJournalEntry deletionReason](self forKey:{"deletionReason"), @"deletionReason"}];
  v6.receiver = self;
  v6.super_class = HDClinicalAccountManagerDeleteAccountByIdentifierJournalEntry;
  [(HDClinicalAccountManagerDeleteAccountByIdentifierJournalEntry *)&v6 encodeWithCoder:coderCopy];
}

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  entriesCopy = entries;
  profileCopy = profile;
  healthRecordsExtension = [profileCopy healthRecordsExtension];
  accountManager = [healthRecordsExtension accountManager];

  if (accountManager)
  {
    v22 = profileCopy;
    v23 = entriesCopy;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = entriesCopy;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          accountIdentifier = [v14 accountIdentifier];
          deletionReason = [v14 deletionReason];
          v24 = 0;
          v17 = [accountManager deleteAccountWithIdentifier:accountIdentifier deletionReason:deletionReason error:&v24];
          v18 = v24;

          if ((v17 & 1) == 0)
          {
            _HKInitializeLogging();
            v19 = HKLogDatabase;
            if (os_log_type_enabled(HKLogDatabase, OS_LOG_TYPE_FAULT))
            {
              v20 = v19;
              accountIdentifier2 = [v14 accountIdentifier];
              *buf = 138543618;
              v30 = accountIdentifier2;
              v31 = 2114;
              v32 = v18;
              _os_log_fault_impl(&dword_0, v20, OS_LOG_TYPE_FAULT, "HDClinicalAccountManager journal: unable to delete account with identifier %{public}@: %{public}@", buf, 0x16u);
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v11);
    }

    profileCopy = v22;
    entriesCopy = v23;
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

@end