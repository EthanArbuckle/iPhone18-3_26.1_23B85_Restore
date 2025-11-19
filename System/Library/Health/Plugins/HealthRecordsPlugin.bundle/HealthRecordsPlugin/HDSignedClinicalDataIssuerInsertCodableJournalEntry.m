@interface HDSignedClinicalDataIssuerInsertCodableJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (HDSignedClinicalDataIssuerInsertCodableJournalEntry)initWithCoder:(id)a3;
- (HDSignedClinicalDataIssuerInsertCodableJournalEntry)initWithIssuers:(id)a3 syncProvenance:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDSignedClinicalDataIssuerInsertCodableJournalEntry

- (HDSignedClinicalDataIssuerInsertCodableJournalEntry)initWithIssuers:(id)a3 syncProvenance:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HDSignedClinicalDataIssuerInsertCodableJournalEntry;
  v7 = [(HDSignedClinicalDataIssuerInsertCodableJournalEntry *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    issuers = v7->_issuers;
    v7->_issuers = v8;

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
        v13 = [v12 issuers];
        v14 = [v12 syncProvenance];
        v20 = 0;
        v15 = [HDSignedClinicalDataIssuerEntity insertCodableIssuers:v13 syncProvenance:v14 profile:v6 error:&v20];
        v16 = v20;

        if ((v15 & 1) == 0)
        {
          _HKInitializeLogging();
          v17 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v26 = a1;
            v27 = 2114;
            v28 = v16;
            _os_log_error_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%{public}@ failed to insert journaled Signed Clnical Data issuers: %{public}@", buf, 0x16u);
          }
        }
      }

      v9 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v9);
  }
}

- (HDSignedClinicalDataIssuerInsertCodableJournalEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [NSSet hk_typesForArrayOf:objc_opt_class()];
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"codableIssuers"];
  if (v6 && ([v4 containsValueForKey:@"syncProvenance"] & 1) != 0)
  {
    v12.receiver = self;
    v12.super_class = HDSignedClinicalDataIssuerInsertCodableJournalEntry;
    v7 = [(HDSignedClinicalDataIssuerInsertCodableJournalEntry *)&v12 initWithCoder:v4];
    if (v7)
    {
      v8 = [v6 copy];
      issuers = v7->_issuers;
      v7->_issuers = v8;

      v7->_syncProvenance = [v4 decodeIntegerForKey:@"syncProvenance"];
    }

    self = v7;
    v10 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HDSignedClinicalDataIssuerInsertCodableJournalEntry *)self issuers];
  [v4 encodeObject:v5 forKey:@"codableIssuers"];

  [v4 encodeInteger:-[HDSignedClinicalDataIssuerInsertCodableJournalEntry syncProvenance](self forKey:{"syncProvenance"), @"syncProvenance"}];
  v6.receiver = self;
  v6.super_class = HDSignedClinicalDataIssuerInsertCodableJournalEntry;
  [(HDSignedClinicalDataIssuerInsertCodableJournalEntry *)&v6 encodeWithCoder:v4];
}

@end