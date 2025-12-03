@interface HDOriginalSignedClinicalDataInsertCodableFromSyncJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (HDOriginalSignedClinicalDataInsertCodableFromSyncJournalEntry)initWithCodableRecords:(id)records syncProvenance:(int64_t)provenance;
- (HDOriginalSignedClinicalDataInsertCodableFromSyncJournalEntry)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDOriginalSignedClinicalDataInsertCodableFromSyncJournalEntry

- (HDOriginalSignedClinicalDataInsertCodableFromSyncJournalEntry)initWithCodableRecords:(id)records syncProvenance:(int64_t)provenance
{
  recordsCopy = records;
  v11.receiver = self;
  v11.super_class = HDOriginalSignedClinicalDataInsertCodableFromSyncJournalEntry;
  v7 = [(HDOriginalSignedClinicalDataInsertCodableFromSyncJournalEntry *)&v11 init];
  if (v7)
  {
    v8 = [recordsCopy copy];
    records = v7->_records;
    v7->_records = v8;

    v7->_syncProvenance = provenance;
  }

  return v7;
}

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  entriesCopy = entries;
  profileCopy = profile;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [entriesCopy countByEnumeratingWithState:&v23 objects:v31 count:16];
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
          objc_enumerationMutation(entriesCopy);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        records = [v12 records];
        syncProvenance = [v12 syncProvenance];
        v22 = 0;
        v15 = [HDOriginalSignedClinicalDataRecordEntity insertCodableOriginalRecordsFromSync:records syncProvenance:syncProvenance profile:profileCopy error:&v22];
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

      v9 = [entriesCopy countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v9);
  }
}

- (HDOriginalSignedClinicalDataInsertCodableFromSyncJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [NSSet hk_typesForArrayOf:objc_opt_class()];
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"codableOriginalRecords"];
  if (v6 && ([coderCopy containsValueForKey:@"syncProvenance"] & 1) != 0)
  {
    v12.receiver = self;
    v12.super_class = HDOriginalSignedClinicalDataInsertCodableFromSyncJournalEntry;
    v7 = [(HDOriginalSignedClinicalDataInsertCodableFromSyncJournalEntry *)&v12 initWithCoder:coderCopy];
    if (v7)
    {
      v8 = [v6 copy];
      records = v7->_records;
      v7->_records = v8;

      v7->_syncProvenance = [coderCopy decodeIntegerForKey:@"syncProvenance"];
    }

    self = v7;
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
  records = [(HDOriginalSignedClinicalDataInsertCodableFromSyncJournalEntry *)self records];
  [coderCopy encodeObject:records forKey:@"codableOriginalRecords"];

  [coderCopy encodeInteger:-[HDOriginalSignedClinicalDataInsertCodableFromSyncJournalEntry syncProvenance](self forKey:{"syncProvenance"), @"syncProvenance"}];
  v6.receiver = self;
  v6.super_class = HDOriginalSignedClinicalDataInsertCodableFromSyncJournalEntry;
  [(HDOriginalSignedClinicalDataInsertCodableFromSyncJournalEntry *)&v6 encodeWithCoder:coderCopy];
}

@end