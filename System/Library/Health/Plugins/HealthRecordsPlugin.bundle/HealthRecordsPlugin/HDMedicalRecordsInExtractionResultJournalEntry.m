@interface HDMedicalRecordsInExtractionResultJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (BOOL)isEqual:(id)a3;
- (HDMedicalRecordsInExtractionResultJournalEntry)init;
- (HDMedicalRecordsInExtractionResultJournalEntry)initWithCoder:(id)a3;
- (HDMedicalRecordsInExtractionResultJournalEntry)initWithExtractionResult:(id)a3 accountIdentifier:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDMedicalRecordsInExtractionResultJournalEntry

- (HDMedicalRecordsInExtractionResultJournalEntry)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDMedicalRecordsInExtractionResultJournalEntry)initWithExtractionResult:(id)a3 accountIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HDMedicalRecordsInExtractionResultJournalEntry;
  v8 = [(HDMedicalRecordsInExtractionResultJournalEntry *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    extractionResult = v8->_extractionResult;
    v8->_extractionResult = v9;

    v11 = [v7 copy];
    accountIdentifier = v8->_accountIdentifier;
    v8->_accountIdentifier = v11;
  }

  return v8;
}

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  v5 = a3;
  v6 = a4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        _HKInitializeLogging();
        v12 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          v14 = NSStringFromClass(a1);
          v15 = [v11 accountIdentifier];
          *buf = 138543618;
          v31 = v14;
          v32 = 2114;
          v33 = v15;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ processing medical records extraction journal entry for account %{public}@", buf, 0x16u);
        }

        v16 = [v11 extractionResult];
        v17 = [v11 accountIdentifier];
        v25 = 0;
        v18 = [HDMedicalRecordEntity processMedicalRecordsInExtractionResult:v16 accountIdentifier:v17 profile:v6 error:&v25];
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
          v22 = NSStringFromClass(a1);
          *buf = 138543618;
          v31 = v22;
          v32 = 2112;
          v33 = v18;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ inserted %@ medical records from journal", buf, 0x16u);
          goto LABEL_11;
        }

        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          v21 = v20;
          v22 = NSStringFromClass(a1);
          *buf = 138543618;
          v31 = v22;
          v32 = 2114;
          v33 = v19;
          _os_log_error_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%{public}@ failed to process journaled medical records: %{public}@", buf, 0x16u);
LABEL_11:
        }

LABEL_13:

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v23 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
      v8 = v23;
    }

    while (v23);
  }
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self != v5)
  {
    v7 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v8 = &dword_8;
    extractionResult = self->_extractionResult;
    v10 = [(HDMedicalRecordsInExtractionResultJournalEntry *)v7 extractionResult];
    if (extractionResult == v10)
    {
      goto LABEL_9;
    }

    v11 = [(HDMedicalRecordsInExtractionResultJournalEntry *)v7 extractionResult];
    if (!v11)
    {
      v13 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v3 = v11;
    v12 = self->_extractionResult;
    v8 = [(HDMedicalRecordsInExtractionResultJournalEntry *)v7 extractionResult];
    if ([(HDExtractionResult *)v12 isEqual:v8])
    {
LABEL_9:
      accountIdentifier = self->_accountIdentifier;
      v15 = [(HDMedicalRecordsInExtractionResultJournalEntry *)v7 accountIdentifier];
      v16 = v15;
      if (accountIdentifier == v15)
      {

        v13 = 1;
      }

      else
      {
        v17 = [(HDMedicalRecordsInExtractionResultJournalEntry *)v7 accountIdentifier];
        if (v17)
        {
          v18 = v17;
          v19 = self->_accountIdentifier;
          v20 = [(HDMedicalRecordsInExtractionResultJournalEntry *)v7 accountIdentifier];
          v13 = [(NSUUID *)v19 isEqual:v20];
        }

        else
        {

          v13 = 0;
        }
      }

      if (extractionResult == v10)
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

- (HDMedicalRecordsInExtractionResultJournalEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extractionResult"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
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
    [v4 hrs_failWithCocoaValueNotFoundError];
    v9 = 0;
  }

  else
  {
    self = [(HDMedicalRecordsInExtractionResultJournalEntry *)self initWithExtractionResult:v5 accountIdentifier:v6];
    v9 = self;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  extractionResult = self->_extractionResult;
  v5 = a3;
  [v5 encodeObject:extractionResult forKey:@"extractionResult"];
  [v5 encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
}

@end