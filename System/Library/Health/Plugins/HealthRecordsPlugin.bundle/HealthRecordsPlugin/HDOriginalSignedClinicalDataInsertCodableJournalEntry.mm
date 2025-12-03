@interface HDOriginalSignedClinicalDataInsertCodableJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (HDOriginalSignedClinicalDataInsertCodableJournalEntry)initWithCodableRecords:(id)records shouldReplace:(BOOL)replace syncProvenance:(int64_t)provenance;
- (HDOriginalSignedClinicalDataInsertCodableJournalEntry)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDOriginalSignedClinicalDataInsertCodableJournalEntry

- (HDOriginalSignedClinicalDataInsertCodableJournalEntry)initWithCodableRecords:(id)records shouldReplace:(BOOL)replace syncProvenance:(int64_t)provenance
{
  recordsCopy = records;
  v13.receiver = self;
  v13.super_class = HDOriginalSignedClinicalDataInsertCodableJournalEntry;
  v9 = [(HDOriginalSignedClinicalDataInsertCodableJournalEntry *)&v13 init];
  if (v9)
  {
    v10 = [recordsCopy copy];
    records = v9->_records;
    v9->_records = v10;

    v9->_shouldReplace = replace;
    v9->_syncProvenance = provenance;
  }

  return v9;
}

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  entriesCopy = entries;
  profileCopy = profile;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [entriesCopy countByEnumeratingWithState:&v24 objects:v32 count:16];
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
          objc_enumerationMutation(entriesCopy);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        records = [v12 records];
        shouldReplace = [v12 shouldReplace];
        syncProvenance = [v12 syncProvenance];
        v23 = 0;
        v16 = [HDOriginalSignedClinicalDataRecordEntity insertCodableOriginalRecords:records shouldReplace:shouldReplace syncProvenance:syncProvenance profile:profileCopy error:&v23];
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

      v9 = [entriesCopy countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v9);
  }
}

- (HDOriginalSignedClinicalDataInsertCodableJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [NSSet hk_typesForArrayOf:objc_opt_class()];
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"codableOriginalRecords"];
  if (v6 && [coderCopy containsValueForKey:@"shouldReplace"] && (objc_msgSend(coderCopy, "containsValueForKey:", @"syncProvenance") & 1) != 0)
  {
    v12.receiver = self;
    v12.super_class = HDOriginalSignedClinicalDataInsertCodableJournalEntry;
    v7 = [(HDOriginalSignedClinicalDataInsertCodableJournalEntry *)&v12 initWithCoder:coderCopy];
    if (v7)
    {
      v8 = [v6 copy];
      records = v7->_records;
      v7->_records = v8;

      v7->_shouldReplace = [coderCopy decodeBoolForKey:@"shouldReplace"];
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
  records = [(HDOriginalSignedClinicalDataInsertCodableJournalEntry *)self records];
  [coderCopy encodeObject:records forKey:@"codableOriginalRecords"];

  [coderCopy encodeBool:-[HDOriginalSignedClinicalDataInsertCodableJournalEntry shouldReplace](self forKey:{"shouldReplace"), @"shouldReplace"}];
  [coderCopy encodeInteger:-[HDOriginalSignedClinicalDataInsertCodableJournalEntry syncProvenance](self forKey:{"syncProvenance"), @"syncProvenance"}];
  v6.receiver = self;
  v6.super_class = HDOriginalSignedClinicalDataInsertCodableJournalEntry;
  [(HDOriginalSignedClinicalDataInsertCodableJournalEntry *)&v6 encodeWithCoder:coderCopy];
}

@end