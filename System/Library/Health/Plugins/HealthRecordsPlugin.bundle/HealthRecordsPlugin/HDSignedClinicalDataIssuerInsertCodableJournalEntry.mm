@interface HDSignedClinicalDataIssuerInsertCodableJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (HDSignedClinicalDataIssuerInsertCodableJournalEntry)initWithCoder:(id)coder;
- (HDSignedClinicalDataIssuerInsertCodableJournalEntry)initWithIssuers:(id)issuers syncProvenance:(int64_t)provenance;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDSignedClinicalDataIssuerInsertCodableJournalEntry

- (HDSignedClinicalDataIssuerInsertCodableJournalEntry)initWithIssuers:(id)issuers syncProvenance:(int64_t)provenance
{
  issuersCopy = issuers;
  v11.receiver = self;
  v11.super_class = HDSignedClinicalDataIssuerInsertCodableJournalEntry;
  v7 = [(HDSignedClinicalDataIssuerInsertCodableJournalEntry *)&v11 init];
  if (v7)
  {
    v8 = [issuersCopy copy];
    issuers = v7->_issuers;
    v7->_issuers = v8;

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
        issuers = [v12 issuers];
        syncProvenance = [v12 syncProvenance];
        v20 = 0;
        v15 = [HDSignedClinicalDataIssuerEntity insertCodableIssuers:issuers syncProvenance:syncProvenance profile:profileCopy error:&v20];
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
            _os_log_error_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%{public}@ failed to insert journaled Signed Clnical Data issuers: %{public}@", buf, 0x16u);
          }
        }
      }

      v9 = [entriesCopy countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v9);
  }
}

- (HDSignedClinicalDataIssuerInsertCodableJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [NSSet hk_typesForArrayOf:objc_opt_class()];
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"codableIssuers"];
  if (v6 && ([coderCopy containsValueForKey:@"syncProvenance"] & 1) != 0)
  {
    v12.receiver = self;
    v12.super_class = HDSignedClinicalDataIssuerInsertCodableJournalEntry;
    v7 = [(HDSignedClinicalDataIssuerInsertCodableJournalEntry *)&v12 initWithCoder:coderCopy];
    if (v7)
    {
      v8 = [v6 copy];
      issuers = v7->_issuers;
      v7->_issuers = v8;

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
  issuers = [(HDSignedClinicalDataIssuerInsertCodableJournalEntry *)self issuers];
  [coderCopy encodeObject:issuers forKey:@"codableIssuers"];

  [coderCopy encodeInteger:-[HDSignedClinicalDataIssuerInsertCodableJournalEntry syncProvenance](self forKey:{"syncProvenance"), @"syncProvenance"}];
  v6.receiver = self;
  v6.super_class = HDSignedClinicalDataIssuerInsertCodableJournalEntry;
  [(HDSignedClinicalDataIssuerInsertCodableJournalEntry *)&v6 encodeWithCoder:coderCopy];
}

@end