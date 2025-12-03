@interface HDFHIRResourcesJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (HDFHIRResourcesJournalEntry)initWithCodableResources:(id)resources syncProvencance:(int64_t)provencance;
- (HDFHIRResourcesJournalEntry)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDFHIRResourcesJournalEntry

- (HDFHIRResourcesJournalEntry)initWithCodableResources:(id)resources syncProvencance:(int64_t)provencance
{
  resourcesCopy = resources;
  v11.receiver = self;
  v11.super_class = HDFHIRResourcesJournalEntry;
  v7 = [(HDFHIRResourcesJournalEntry *)&v11 init];
  if (v7)
  {
    v8 = [resourcesCopy copy];
    codableResources = v7->_codableResources;
    v7->_codableResources = v8;

    v7->_syncProvenance = provencance;
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
        codableResources = [v12 codableResources];
        syncProvenance = [v12 syncProvenance];
        v20 = 0;
        v15 = [HDOriginalFHIRResourceEntity _insertCodableFHIRResources:codableResources syncProvenance:syncProvenance profile:profileCopy error:&v20];
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
            _os_log_error_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%{public}@ Failed to insert journaled FHIR resources: %{public}@", buf, 0x16u);
          }
        }
      }

      v9 = [entriesCopy countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v9);
  }
}

- (HDFHIRResourcesJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [NSSet hk_typesForArrayOf:objc_opt_class()];
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"resources"];
  if (v6 && ([coderCopy containsValueForKey:@"provenance"] & 1) != 0)
  {
    v11.receiver = self;
    v11.super_class = HDFHIRResourcesJournalEntry;
    v7 = [(HDFHIRResourcesJournalEntry *)&v11 initWithCoder:coderCopy];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_codableResources, v6);
      v8->_syncProvenance = [coderCopy decodeInt64ForKey:@"provenance"];
    }

    self = v8;
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
  codableResources = self->_codableResources;
  coderCopy = coder;
  [coderCopy encodeObject:codableResources forKey:@"resources"];
  [coderCopy encodeInt64:self->_syncProvenance forKey:@"provenance"];
  v6.receiver = self;
  v6.super_class = HDFHIRResourcesJournalEntry;
  [(HDFHIRResourcesJournalEntry *)&v6 encodeWithCoder:coderCopy];
}

@end