@interface HDMedicalDownloadableAttachmentsInExtractionResultJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (BOOL)isEqual:(id)equal;
- (HDMedicalDownloadableAttachmentsInExtractionResultJournalEntry)init;
- (HDMedicalDownloadableAttachmentsInExtractionResultJournalEntry)initWithCoder:(id)coder;
- (HDMedicalDownloadableAttachmentsInExtractionResultJournalEntry)initWithExtractionResult:(id)result accountIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDMedicalDownloadableAttachmentsInExtractionResultJournalEntry

- (HDMedicalDownloadableAttachmentsInExtractionResultJournalEntry)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDMedicalDownloadableAttachmentsInExtractionResultJournalEntry)initWithExtractionResult:(id)result accountIdentifier:(id)identifier
{
  resultCopy = result;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = HDMedicalDownloadableAttachmentsInExtractionResultJournalEntry;
  v8 = [(HDMedicalDownloadableAttachmentsInExtractionResultJournalEntry *)&v14 init];
  if (v8)
  {
    v9 = [resultCopy copy];
    extractionResult = v8->_extractionResult;
    v8->_extractionResult = v9;

    v11 = [identifierCopy copy];
    accountIdentifier = v8->_accountIdentifier;
    v8->_accountIdentifier = v11;
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
          accountIdentifier = [v11 accountIdentifier];
          *buf = 138543618;
          v31 = v14;
          v32 = 2114;
          v33 = accountIdentifier;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ processing medical downloadable attachments in extraction journal entry for account %{public}@", buf, 0x16u);
        }

        extractionResult = [v11 extractionResult];
        accountIdentifier2 = [v11 accountIdentifier];
        v25 = 0;
        v18 = [HDMedicalDownloadableAttachmentEntity processMedicalDownloadableAttachmentsInExtractionResult:extractionResult accountIdentifier:accountIdentifier2 profile:profileCopy error:&v25];
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
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ inserted %@ medical downloadable attachments from journal", buf, 0x16u);
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
          _os_log_error_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%{public}@ failed to process journaled downloadable attachments: %{public}@", buf, 0x16u);
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
    extractionResult = [(HDMedicalDownloadableAttachmentsInExtractionResultJournalEntry *)v7 extractionResult];
    if (extractionResult == extractionResult)
    {
      goto LABEL_9;
    }

    extractionResult2 = [(HDMedicalDownloadableAttachmentsInExtractionResultJournalEntry *)v7 extractionResult];
    if (!extractionResult2)
    {
      v13 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v3 = extractionResult2;
    v12 = self->_extractionResult;
    extractionResult3 = [(HDMedicalDownloadableAttachmentsInExtractionResultJournalEntry *)v7 extractionResult];
    if ([(HDExtractionResult *)v12 isEqual:extractionResult3])
    {
LABEL_9:
      accountIdentifier = self->_accountIdentifier;
      accountIdentifier = [(HDMedicalDownloadableAttachmentsInExtractionResultJournalEntry *)v7 accountIdentifier];
      v16 = accountIdentifier;
      if (accountIdentifier == accountIdentifier)
      {

        v13 = 1;
      }

      else
      {
        accountIdentifier2 = [(HDMedicalDownloadableAttachmentsInExtractionResultJournalEntry *)v7 accountIdentifier];
        if (accountIdentifier2)
        {
          v18 = accountIdentifier2;
          v19 = self->_accountIdentifier;
          accountIdentifier3 = [(HDMedicalDownloadableAttachmentsInExtractionResultJournalEntry *)v7 accountIdentifier];
          v13 = [(NSUUID *)v19 isEqual:accountIdentifier3];
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

- (HDMedicalDownloadableAttachmentsInExtractionResultJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extractionResult"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
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
    self = [(HDMedicalDownloadableAttachmentsInExtractionResultJournalEntry *)self initWithExtractionResult:v5 accountIdentifier:v6];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  extractionResult = self->_extractionResult;
  coderCopy = coder;
  [coderCopy encodeObject:extractionResult forKey:@"extractionResult"];
  [coderCopy encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
}

@end