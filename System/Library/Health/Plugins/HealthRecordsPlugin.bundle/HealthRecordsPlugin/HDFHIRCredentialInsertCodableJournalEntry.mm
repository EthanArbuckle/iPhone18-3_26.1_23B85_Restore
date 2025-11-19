@interface HDFHIRCredentialInsertCodableJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (HDFHIRCredentialInsertCodableJournalEntry)initWithCodableCredential:(id)a3 syncProvenance:(int64_t)a4;
- (HDFHIRCredentialInsertCodableJournalEntry)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDFHIRCredentialInsertCodableJournalEntry

- (HDFHIRCredentialInsertCodableJournalEntry)initWithCodableCredential:(id)a3 syncProvenance:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HDFHIRCredentialInsertCodableJournalEntry;
  v7 = [(HDFHIRCredentialInsertCodableJournalEntry *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    credential = v7->_credential;
    v7->_credential = v8;

    v7->_syncProvenance = a4;
  }

  return v7;
}

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  v5 = a3;
  v6 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v12 credential];
        v14 = [v12 syncProvenance];
        v20 = 0;
        v15 = [HDFHIRCredentialEntity _insertCodableCredentialFromSync:v13 syncProvenance:v14 profile:v6 error:&v20];
        v16 = v20;

        if ((v15 & 1) == 0)
        {
          _HKInitializeLogging();
          v17 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v26 = a1;
            v27 = 2114;
            v28 = v16;
            _os_log_error_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%{public}@ failed to insert journaled FHIR credential: %{public}@", buf, 0x16u);
          }
        }
      }

      v9 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v9);
  }
}

- (HDFHIRCredentialInsertCodableJournalEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"codableCredential"];
  if (v5 && ([v4 containsValueForKey:@"syncProvenance"] & 1) != 0)
  {
    v10.receiver = self;
    v10.super_class = HDFHIRCredentialInsertCodableJournalEntry;
    v6 = [(HDFHIRCredentialInsertCodableJournalEntry *)&v10 initWithCoder:v4];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_credential, v5);
      v7->_syncProvenance = [v4 decodeIntegerForKey:@"syncProvenance"];
    }

    self = v7;
    v8 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HDFHIRCredentialInsertCodableJournalEntry *)self credential];
  [v4 encodeObject:v5 forKey:@"codableCredential"];

  [v4 encodeInteger:-[HDFHIRCredentialInsertCodableJournalEntry syncProvenance](self forKey:{"syncProvenance"), @"syncProvenance"}];
  v6.receiver = self;
  v6.super_class = HDFHIRCredentialInsertCodableJournalEntry;
  [(HDFHIRCredentialInsertCodableJournalEntry *)&v6 encodeWithCoder:v4];
}

@end