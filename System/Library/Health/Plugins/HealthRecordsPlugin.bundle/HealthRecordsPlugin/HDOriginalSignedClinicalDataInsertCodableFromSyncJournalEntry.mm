@interface HDOriginalSignedClinicalDataInsertCodableFromSyncJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (HDOriginalSignedClinicalDataInsertCodableFromSyncJournalEntry)initWithCodableRecords:(id)a3 syncProvenance:(int64_t)a4;
- (HDOriginalSignedClinicalDataInsertCodableFromSyncJournalEntry)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDOriginalSignedClinicalDataInsertCodableFromSyncJournalEntry

- (HDOriginalSignedClinicalDataInsertCodableFromSyncJournalEntry)initWithCodableRecords:(id)a3 syncProvenance:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HDOriginalSignedClinicalDataInsertCodableFromSyncJournalEntry;
  v7 = [(HDOriginalSignedClinicalDataInsertCodableFromSyncJournalEntry *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    records = v7->_records;
    v7->_records = v8;

    v7->_syncProvenance = a4;
  }

  return v7;
}

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  v5 = a3;
  v6 = a4;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v24;
    *&v8 = 138543618;
    v21 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [v12 records];
        v14 = [v12 syncProvenance];
        v22 = 0;
        v15 = [HDOriginalSignedClinicalDataRecordEntity insertCodableOriginalRecordsFromSync:v13 syncProvenance:v14 profile:v6 error:&v22];
        v16 = v22;

        if ((v15 & 1) == 0)
        {
          _HKInitializeLogging();
          v17 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            v18 = v17;
            v19 = objc_opt_class();
            v20 = NSStringFromClass(v19);
            *buf = v21;
            v28 = v20;
            v29 = 2114;
            v30 = v16;
            _os_log_error_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%{public}@ failed to insert journaled SYNCED Signed Clnical Data original records: %{public}@", buf, 0x16u);
          }
        }
      }

      v9 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v9);
  }
}

- (HDOriginalSignedClinicalDataInsertCodableFromSyncJournalEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [NSSet hk_typesForArrayOf:objc_opt_class()];
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"codableOriginalRecords"];
  if (v6 && ([v4 containsValueForKey:@"syncProvenance"] & 1) != 0)
  {
    v12.receiver = self;
    v12.super_class = HDOriginalSignedClinicalDataInsertCodableFromSyncJournalEntry;
    v7 = [(HDOriginalSignedClinicalDataInsertCodableFromSyncJournalEntry *)&v12 initWithCoder:v4];
    if (v7)
    {
      v8 = [v6 copy];
      records = v7->_records;
      v7->_records = v8;

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
  v5 = [(HDOriginalSignedClinicalDataInsertCodableFromSyncJournalEntry *)self records];
  [v4 encodeObject:v5 forKey:@"codableOriginalRecords"];

  [v4 encodeInteger:-[HDOriginalSignedClinicalDataInsertCodableFromSyncJournalEntry syncProvenance](self forKey:{"syncProvenance"), @"syncProvenance"}];
  v6.receiver = self;
  v6.super_class = HDOriginalSignedClinicalDataInsertCodableFromSyncJournalEntry;
  [(HDOriginalSignedClinicalDataInsertCodableFromSyncJournalEntry *)&v6 encodeWithCoder:v4];
}

@end