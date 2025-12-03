@interface HDOriginalSignedClinicalDataReplaceSignatureStatusJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (HDOriginalSignedClinicalDataReplaceSignatureStatusJournalEntry)initWithCodableRecordSyncIdentifier:(id)identifier signatureStatus:(int64_t)status;
- (HDOriginalSignedClinicalDataReplaceSignatureStatusJournalEntry)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDOriginalSignedClinicalDataReplaceSignatureStatusJournalEntry

- (HDOriginalSignedClinicalDataReplaceSignatureStatusJournalEntry)initWithCodableRecordSyncIdentifier:(id)identifier signatureStatus:(int64_t)status
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = HDOriginalSignedClinicalDataReplaceSignatureStatusJournalEntry;
  v7 = [(HDOriginalSignedClinicalDataReplaceSignatureStatusJournalEntry *)&v11 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    syncIdentifier = v7->_syncIdentifier;
    v7->_syncIdentifier = v8;

    v7->_status = status;
  }

  return v7;
}

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  entriesCopy = entries;
  profileCopy = profile;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [entriesCopy countByEnumeratingWithState:&v25 objects:v37 count:16];
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
          objc_enumerationMutation(entriesCopy);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        syncIdentifier = [v12 syncIdentifier];
        status = [v12 status];
        v24 = 0;
        v15 = [HDOriginalSignedClinicalDataRecordEntity replaceOriginalRecordWithSyncIdentifier:syncIdentifier newSignatureStatus:status profile:profileCopy error:&v24];
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
            syncIdentifier2 = [v12 syncIdentifier];
            [v12 status];
            v20 = NSStringForSignedClinicalDataRecordSignatureStatus();
            *buf = v21;
            v30 = v22;
            v31 = 2114;
            v32 = syncIdentifier2;
            v33 = 2114;
            v34 = v20;
            v35 = 2114;
            v36 = v16;
            _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@ failed to replace original record %{public}@ with new signature status: %{public}@ %{public}@", buf, 0x2Au);
          }
        }
      }

      v9 = [entriesCopy countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v9);
  }
}

- (HDOriginalSignedClinicalDataReplaceSignatureStatusJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"syncIdentifier"];
  if (v5 && ([coderCopy containsValueForKey:@"signatureStatus"] & 1) != 0)
  {
    v11.receiver = self;
    v11.super_class = HDOriginalSignedClinicalDataReplaceSignatureStatusJournalEntry;
    v6 = [(HDOriginalSignedClinicalDataReplaceSignatureStatusJournalEntry *)&v11 initWithCoder:coderCopy];
    if (v6)
    {
      v7 = [v5 copy];
      syncIdentifier = v6->_syncIdentifier;
      v6->_syncIdentifier = v7;

      v6->_status = [coderCopy decodeIntegerForKey:@"signatureStatus"];
    }

    self = v6;
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
  syncIdentifier = [(HDOriginalSignedClinicalDataReplaceSignatureStatusJournalEntry *)self syncIdentifier];
  [coderCopy encodeObject:syncIdentifier forKey:@"syncIdentifier"];

  [coderCopy encodeInteger:-[HDOriginalSignedClinicalDataReplaceSignatureStatusJournalEntry status](self forKey:{"status"), @"signatureStatus"}];
  v6.receiver = self;
  v6.super_class = HDOriginalSignedClinicalDataReplaceSignatureStatusJournalEntry;
  [(HDOriginalSignedClinicalDataReplaceSignatureStatusJournalEntry *)&v6 encodeWithCoder:coderCopy];
}

@end