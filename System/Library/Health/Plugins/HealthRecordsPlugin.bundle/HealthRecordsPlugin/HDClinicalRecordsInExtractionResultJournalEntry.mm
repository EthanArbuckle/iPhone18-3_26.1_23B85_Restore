@interface HDClinicalRecordsInExtractionResultJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (BOOL)isEqual:(id)equal;
- (HDClinicalRecordsInExtractionResultJournalEntry)init;
- (HDClinicalRecordsInExtractionResultJournalEntry)initWithCoder:(id)coder;
- (HDClinicalRecordsInExtractionResultJournalEntry)initWithExtractionResult:(id)result clinicalExternalID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDClinicalRecordsInExtractionResultJournalEntry

- (HDClinicalRecordsInExtractionResultJournalEntry)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDClinicalRecordsInExtractionResultJournalEntry)initWithExtractionResult:(id)result clinicalExternalID:(id)d
{
  resultCopy = result;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = HDClinicalRecordsInExtractionResultJournalEntry;
  v8 = [(HDClinicalRecordsInExtractionResultJournalEntry *)&v14 init];
  if (v8)
  {
    v9 = [resultCopy copy];
    extractionResult = v8->_extractionResult;
    v8->_extractionResult = v9;

    v11 = [dCopy copy];
    clinicalExternalID = v8->_clinicalExternalID;
    v8->_clinicalExternalID = v11;
  }

  return v8;
}

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  entriesCopy = entries;
  profileCopy = profile;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [entriesCopy countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(entriesCopy);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        _HKInitializeLogging();
        v12 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          v14 = NSStringFromClass(self);
          clinicalExternalID = [v11 clinicalExternalID];
          *buf = 138543618;
          v31 = v14;
          v32 = 2114;
          v33 = clinicalExternalID;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ processing clinical records extraction journal entry for external ID %{public}@", buf, 0x16u);
        }

        extractionResult = [v11 extractionResult];
        clinicalExternalID2 = [v11 clinicalExternalID];
        v25 = 0;
        v18 = [HDClinicalRecordEntity processClinicalRecordsInExtractionResult:extractionResult clinicalExternalID:clinicalExternalID2 profile:profileCopy error:&v25];
        v19 = v25;

        _HKInitializeLogging();
        v20 = HKLogHealthRecords;
        if (v18)
        {
          if (!os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_13;
          }

          v21 = v20;
          v22 = NSStringFromClass(self);
          *buf = 138543618;
          v31 = v22;
          v32 = 2112;
          v33 = v18;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ inserted %@ clinical records from journal", buf, 0x16u);
          goto LABEL_11;
        }

        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          v21 = v20;
          v22 = NSStringFromClass(self);
          *buf = 138543618;
          v31 = v22;
          v32 = 2114;
          v33 = v19;
          _os_log_error_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%{public}@ failed to process journaled clinical records: %{public}@", buf, 0x16u);
LABEL_11:
        }

LABEL_13:

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v23 = [entriesCopy countByEnumeratingWithState:&v26 objects:v34 count:16];
      v8 = v23;
    }

    while (v23);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self != equalCopy)
  {
    v7 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
LABEL_18:

      goto LABEL_19;
    }

    extractionResult3 = &dword_8;
    extractionResult = self->_extractionResult;
    extractionResult = [(HDClinicalRecordsInExtractionResultJournalEntry *)v7 extractionResult];
    if (extractionResult == extractionResult)
    {
      goto LABEL_9;
    }

    extractionResult2 = [(HDClinicalRecordsInExtractionResultJournalEntry *)v7 extractionResult];
    if (!extractionResult2)
    {
      v13 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v3 = extractionResult2;
    v12 = self->_extractionResult;
    extractionResult3 = [(HDClinicalRecordsInExtractionResultJournalEntry *)v7 extractionResult];
    if ([(HDExtractionResult *)v12 isEqual:extractionResult3])
    {
LABEL_9:
      clinicalExternalID = self->_clinicalExternalID;
      clinicalExternalID = [(HDClinicalRecordsInExtractionResultJournalEntry *)v7 clinicalExternalID];
      v16 = clinicalExternalID;
      if (clinicalExternalID == clinicalExternalID)
      {

        v13 = 1;
      }

      else
      {
        clinicalExternalID2 = [(HDClinicalRecordsInExtractionResultJournalEntry *)v7 clinicalExternalID];
        if (clinicalExternalID2)
        {
          v18 = clinicalExternalID2;
          v19 = self->_clinicalExternalID;
          clinicalExternalID3 = [(HDClinicalRecordsInExtractionResultJournalEntry *)v7 clinicalExternalID];
          v13 = [(NSString *)v19 isEqualToString:clinicalExternalID3];
        }

        else
        {

          v13 = 0;
        }
      }

      if (extractionResult == extractionResult)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_17;
  }

  v13 = 1;
LABEL_19:

  return v13;
}

- (HDClinicalRecordsInExtractionResultJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extractionResult"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clinicalExternalID"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  else
  {
    self = [(HDClinicalRecordsInExtractionResultJournalEntry *)self initWithExtractionResult:v5 clinicalExternalID:v6];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  extractionResult = self->_extractionResult;
  coderCopy = coder;
  [coderCopy encodeObject:extractionResult forKey:@"extractionResult"];
  [coderCopy encodeObject:self->_clinicalExternalID forKey:@"clinicalExternalID"];
}

@end