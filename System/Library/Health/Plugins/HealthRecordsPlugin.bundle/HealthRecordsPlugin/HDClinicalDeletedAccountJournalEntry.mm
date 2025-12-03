@interface HDClinicalDeletedAccountJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (HDClinicalDeletedAccountJournalEntry)initWithCodableDeletedAccounts:(id)accounts syncProvenance:(int64_t)provenance;
- (HDClinicalDeletedAccountJournalEntry)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDClinicalDeletedAccountJournalEntry

- (HDClinicalDeletedAccountJournalEntry)initWithCodableDeletedAccounts:(id)accounts syncProvenance:(int64_t)provenance
{
  accountsCopy = accounts;
  v11.receiver = self;
  v11.super_class = HDClinicalDeletedAccountJournalEntry;
  v7 = [(HDClinicalDeletedAccountJournalEntry *)&v11 init];
  if (v7)
  {
    v8 = [accountsCopy copy];
    codableDeletedAccounts = v7->_codableDeletedAccounts;
    v7->_codableDeletedAccounts = v8;

    v7->_syncProvenance = provenance;
  }

  return v7;
}

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  entriesCopy = entries;
  profileCopy = profile;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [entriesCopy countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v22;
    *&v8 = 138543618;
    v18 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(entriesCopy);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        codableDeletedAccounts = [v12 codableDeletedAccounts];
        syncProvenance = [v12 syncProvenance];
        v20 = 0;
        v15 = [HDClinicalDeletedAccountEntity _insertCodableDeletedAccounts:codableDeletedAccounts syncProvenance:syncProvenance profile:profileCopy error:&v20];
        v16 = v20;

        if (!v15)
        {
          _HKInitializeLogging();
          v17 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            selfCopy = self;
            v27 = 2114;
            v28 = v16;
            _os_log_error_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%{public}@ failed to insert journaled clinical deleted accounts: %{public}@", buf, 0x16u);
          }
        }
      }

      v9 = [entriesCopy countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v9);
  }
}

- (HDClinicalDeletedAccountJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"deletedAccounts"];
  if (v7 && ([coderCopy containsValueForKey:@"syncProvenance"] & 1) != 0)
  {
    v13.receiver = self;
    v13.super_class = HDClinicalDeletedAccountJournalEntry;
    v8 = [(HDClinicalDeletedAccountJournalEntry *)&v13 initWithCoder:coderCopy];
    if (v8)
    {
      v9 = [v7 copy];
      codableDeletedAccounts = v8->_codableDeletedAccounts;
      v8->_codableDeletedAccounts = v9;

      v8->_syncProvenance = [coderCopy decodeIntegerForKey:@"syncProvenance"];
    }

    self = v8;
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
  codableDeletedAccounts = self->_codableDeletedAccounts;
  coderCopy = coder;
  [coderCopy encodeObject:codableDeletedAccounts forKey:@"deletedAccounts"];
  [coderCopy encodeInteger:self->_syncProvenance forKey:@"syncProvenance"];
  v6.receiver = self;
  v6.super_class = HDClinicalDeletedAccountJournalEntry;
  [(HDClinicalDeletedAccountJournalEntry *)&v6 encodeWithCoder:coderCopy];
}

@end