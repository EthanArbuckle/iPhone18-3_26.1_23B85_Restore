@interface HDOriginalSignedClinicalDataReplaceSignatureStatusJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (HDOriginalSignedClinicalDataReplaceSignatureStatusJournalEntry)initWithCodableRecordSyncIdentifier:(id)a3 signatureStatus:(int64_t)a4;
- (HDOriginalSignedClinicalDataReplaceSignatureStatusJournalEntry)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDOriginalSignedClinicalDataReplaceSignatureStatusJournalEntry

- (HDOriginalSignedClinicalDataReplaceSignatureStatusJournalEntry)initWithCodableRecordSyncIdentifier:(id)a3 signatureStatus:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HDOriginalSignedClinicalDataReplaceSignatureStatusJournalEntry;
  v7 = [(HDOriginalSignedClinicalDataReplaceSignatureStatusJournalEntry *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    syncIdentifier = v7->_syncIdentifier;
    v7->_syncIdentifier = v8;

    v7->_status = a4;
  }

  return v7;
}

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  v5 = a3;
  v6 = a4;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v26;
    *&v8 = 138544130;
    v21 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [v12 syncIdentifier];
        v14 = [v12 status];
        v24 = 0;
        v15 = [HDOriginalSignedClinicalDataRecordEntity replaceOriginalRecordWithSyncIdentifier:v13 newSignatureStatus:v14 profile:v6 error:&v24];
        v16 = v24;

        if ((v15 & 1) == 0)
        {
          _HKInitializeLogging();
          v17 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            log = v17;
            v18 = objc_opt_class();
            v22 = NSStringFromClass(v18);
            v19 = [v12 syncIdentifier];
            [v12 status];
            v20 = NSStringForSignedClinicalDataRecordSignatureStatus();
            *buf = v21;
            v30 = v22;
            v31 = 2114;
            v32 = v19;
            v33 = 2114;
            v34 = v20;
            v35 = 2114;
            v36 = v16;
            _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@ failed to replace original record %{public}@ with new signature status: %{public}@ %{public}@", buf, 0x2Au);
          }
        }
      }

      v9 = [v5 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v9);
  }
}

- (HDOriginalSignedClinicalDataReplaceSignatureStatusJournalEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"syncIdentifier"];
  if (v5 && ([v4 containsValueForKey:@"signatureStatus"] & 1) != 0)
  {
    v11.receiver = self;
    v11.super_class = HDOriginalSignedClinicalDataReplaceSignatureStatusJournalEntry;
    v6 = [(HDOriginalSignedClinicalDataReplaceSignatureStatusJournalEntry *)&v11 initWithCoder:v4];
    if (v6)
    {
      v7 = [v5 copy];
      syncIdentifier = v6->_syncIdentifier;
      v6->_syncIdentifier = v7;

      v6->_status = [v4 decodeIntegerForKey:@"signatureStatus"];
    }

    self = v6;
    v9 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HDOriginalSignedClinicalDataReplaceSignatureStatusJournalEntry *)self syncIdentifier];
  [v4 encodeObject:v5 forKey:@"syncIdentifier"];

  [v4 encodeInteger:-[HDOriginalSignedClinicalDataReplaceSignatureStatusJournalEntry status](self forKey:{"status"), @"signatureStatus"}];
  v6.receiver = self;
  v6.super_class = HDOriginalSignedClinicalDataReplaceSignatureStatusJournalEntry;
  [(HDOriginalSignedClinicalDataReplaceSignatureStatusJournalEntry *)&v6 encodeWithCoder:v4];
}

@end