@interface HDFHIRCredentialInsertCodableJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (HDFHIRCredentialInsertCodableJournalEntry)initWithCodableCredential:(id)credential syncProvenance:(int64_t)provenance;
- (HDFHIRCredentialInsertCodableJournalEntry)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDFHIRCredentialInsertCodableJournalEntry

- (HDFHIRCredentialInsertCodableJournalEntry)initWithCodableCredential:(id)credential syncProvenance:(int64_t)provenance
{
  credentialCopy = credential;
  v11.receiver = self;
  v11.super_class = HDFHIRCredentialInsertCodableJournalEntry;
  v7 = [(HDFHIRCredentialInsertCodableJournalEntry *)&v11 init];
  if (v7)
  {
    v8 = [credentialCopy copy];
    credential = v7->_credential;
    v7->_credential = v8;

    v7->_syncProvenance = provenance;
  }

  return v7;
}

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  entriesCopy = entries;
  profileCopy = profile;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [entriesCopy countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(entriesCopy);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        credential = [v12 credential];
        syncProvenance = [v12 syncProvenance];
        v20 = 0;
        v15 = [HDFHIRCredentialEntity _insertCodableCredentialFromSync:credential syncProvenance:syncProvenance profile:profileCopy error:&v20];
        v16 = v20;

        if ((v15 & 1) == 0)
        {
          _HKInitializeLogging();
          v17 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            selfCopy = self;
            v27 = 2114;
            v28 = v16;
            _os_log_error_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%{public}@ failed to insert journaled FHIR credential: %{public}@", buf, 0x16u);
          }
        }
      }

      v9 = [entriesCopy countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v9);
  }
}

- (HDFHIRCredentialInsertCodableJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"codableCredential"];
  if (v5 && ([coderCopy containsValueForKey:@"syncProvenance"] & 1) != 0)
  {
    v10.receiver = self;
    v10.super_class = HDFHIRCredentialInsertCodableJournalEntry;
    v6 = [(HDFHIRCredentialInsertCodableJournalEntry *)&v10 initWithCoder:coderCopy];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_credential, v5);
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
  credential = [(HDFHIRCredentialInsertCodableJournalEntry *)self credential];
  [coderCopy encodeObject:credential forKey:@"codableCredential"];

  [coderCopy encodeInteger:-[HDFHIRCredentialInsertCodableJournalEntry syncProvenance](self forKey:{"syncProvenance"), @"syncProvenance"}];
  v6.receiver = self;
  v6.super_class = HDFHIRCredentialInsertCodableJournalEntry;
  [(HDFHIRCredentialInsertCodableJournalEntry *)&v6 encodeWithCoder:coderCopy];
}

@end