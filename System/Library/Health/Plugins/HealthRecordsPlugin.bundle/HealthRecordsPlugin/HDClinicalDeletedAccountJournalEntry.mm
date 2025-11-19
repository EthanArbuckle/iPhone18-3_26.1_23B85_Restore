@interface HDClinicalDeletedAccountJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (HDClinicalDeletedAccountJournalEntry)initWithCodableDeletedAccounts:(id)a3 syncProvenance:(int64_t)a4;
- (HDClinicalDeletedAccountJournalEntry)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDClinicalDeletedAccountJournalEntry

- (HDClinicalDeletedAccountJournalEntry)initWithCodableDeletedAccounts:(id)a3 syncProvenance:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HDClinicalDeletedAccountJournalEntry;
  v7 = [(HDClinicalDeletedAccountJournalEntry *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    codableDeletedAccounts = v7->_codableDeletedAccounts;
    v7->_codableDeletedAccounts = v8;

    v7->_syncProvenance = a4;
  }

  return v7;
}

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  v5 = a3;
  v6 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v12 codableDeletedAccounts];
        v14 = [v12 syncProvenance];
        v20 = 0;
        v15 = [HDClinicalDeletedAccountEntity _insertCodableDeletedAccounts:v13 syncProvenance:v14 profile:v6 error:&v20];
        v16 = v20;

        if (!v15)
        {
          _HKInitializeLogging();
          v17 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v26 = a1;
            v27 = 2114;
            v28 = v16;
            _os_log_error_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%{public}@ failed to insert journaled clinical deleted accounts: %{public}@", buf, 0x16u);
          }
        }
      }

      v9 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v9);
  }
}

- (HDClinicalDeletedAccountJournalEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"deletedAccounts"];
  if (v7 && ([v4 containsValueForKey:@"syncProvenance"] & 1) != 0)
  {
    v13.receiver = self;
    v13.super_class = HDClinicalDeletedAccountJournalEntry;
    v8 = [(HDClinicalDeletedAccountJournalEntry *)&v13 initWithCoder:v4];
    if (v8)
    {
      v9 = [v7 copy];
      codableDeletedAccounts = v8->_codableDeletedAccounts;
      v8->_codableDeletedAccounts = v9;

      v8->_syncProvenance = [v4 decodeIntegerForKey:@"syncProvenance"];
    }

    self = v8;
    v11 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v11 = 0;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  codableDeletedAccounts = self->_codableDeletedAccounts;
  v5 = a3;
  [v5 encodeObject:codableDeletedAccounts forKey:@"deletedAccounts"];
  [v5 encodeInteger:self->_syncProvenance forKey:@"syncProvenance"];
  v6.receiver = self;
  v6.super_class = HDClinicalDeletedAccountJournalEntry;
  [(HDClinicalDeletedAccountJournalEntry *)&v6 encodeWithCoder:v5];
}

@end