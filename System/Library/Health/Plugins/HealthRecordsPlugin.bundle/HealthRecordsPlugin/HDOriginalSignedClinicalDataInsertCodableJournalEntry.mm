@interface HDOriginalSignedClinicalDataInsertCodableJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (HDOriginalSignedClinicalDataInsertCodableJournalEntry)initWithCodableRecords:(id)a3 shouldReplace:(BOOL)a4 syncProvenance:(int64_t)a5;
- (HDOriginalSignedClinicalDataInsertCodableJournalEntry)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDOriginalSignedClinicalDataInsertCodableJournalEntry

- (HDOriginalSignedClinicalDataInsertCodableJournalEntry)initWithCodableRecords:(id)a3 shouldReplace:(BOOL)a4 syncProvenance:(int64_t)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = HDOriginalSignedClinicalDataInsertCodableJournalEntry;
  v9 = [(HDOriginalSignedClinicalDataInsertCodableJournalEntry *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    records = v9->_records;
    v9->_records = v10;

    v9->_shouldReplace = a4;
    v9->_syncProvenance = a5;
  }

  return v9;
}

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  v5 = a3;
  v6 = a4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v25;
    *&v8 = 138543618;
    v22 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [v12 records];
        v14 = [v12 shouldReplace];
        v15 = [v12 syncProvenance];
        v23 = 0;
        v16 = [HDOriginalSignedClinicalDataRecordEntity insertCodableOriginalRecords:v13 shouldReplace:v14 syncProvenance:v15 profile:v6 error:&v23];
        v17 = v23;

        if ((v16 & 1) == 0)
        {
          _HKInitializeLogging();
          v18 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            v19 = v18;
            v20 = objc_opt_class();
            v21 = NSStringFromClass(v20);
            *buf = v22;
            v29 = v21;
            v30 = 2114;
            v31 = v17;
            _os_log_error_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%{public}@ failed to insert journaled Signed Clnical Data original records: %{public}@", buf, 0x16u);
          }
        }
      }

      v9 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v9);
  }
}

- (HDOriginalSignedClinicalDataInsertCodableJournalEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [NSSet hk_typesForArrayOf:objc_opt_class()];
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"codableOriginalRecords"];
  if (v6 && [v4 containsValueForKey:@"shouldReplace"] && (objc_msgSend(v4, "containsValueForKey:", @"syncProvenance") & 1) != 0)
  {
    v12.receiver = self;
    v12.super_class = HDOriginalSignedClinicalDataInsertCodableJournalEntry;
    v7 = [(HDOriginalSignedClinicalDataInsertCodableJournalEntry *)&v12 initWithCoder:v4];
    if (v7)
    {
      v8 = [v6 copy];
      records = v7->_records;
      v7->_records = v8;

      v7->_shouldReplace = [v4 decodeBoolForKey:@"shouldReplace"];
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
  v5 = [(HDOriginalSignedClinicalDataInsertCodableJournalEntry *)self records];
  [v4 encodeObject:v5 forKey:@"codableOriginalRecords"];

  [v4 encodeBool:-[HDOriginalSignedClinicalDataInsertCodableJournalEntry shouldReplace](self forKey:{"shouldReplace"), @"shouldReplace"}];
  [v4 encodeInteger:-[HDOriginalSignedClinicalDataInsertCodableJournalEntry syncProvenance](self forKey:{"syncProvenance"), @"syncProvenance"}];
  v6.receiver = self;
  v6.super_class = HDOriginalSignedClinicalDataInsertCodableJournalEntry;
  [(HDOriginalSignedClinicalDataInsertCodableJournalEntry *)&v6 encodeWithCoder:v4];
}

@end