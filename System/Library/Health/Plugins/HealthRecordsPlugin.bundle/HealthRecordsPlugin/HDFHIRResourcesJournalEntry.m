@interface HDFHIRResourcesJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (HDFHIRResourcesJournalEntry)initWithCodableResources:(id)a3 syncProvencance:(int64_t)a4;
- (HDFHIRResourcesJournalEntry)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDFHIRResourcesJournalEntry

- (HDFHIRResourcesJournalEntry)initWithCodableResources:(id)a3 syncProvencance:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HDFHIRResourcesJournalEntry;
  v7 = [(HDFHIRResourcesJournalEntry *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    codableResources = v7->_codableResources;
    v7->_codableResources = v8;

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
        v13 = [v12 codableResources];
        v14 = [v12 syncProvenance];
        v20 = 0;
        v15 = [HDOriginalFHIRResourceEntity _insertCodableFHIRResources:v13 syncProvenance:v14 profile:v6 error:&v20];
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
            _os_log_error_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%{public}@ Failed to insert journaled FHIR resources: %{public}@", buf, 0x16u);
          }
        }
      }

      v9 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v9);
  }
}

- (HDFHIRResourcesJournalEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [NSSet hk_typesForArrayOf:objc_opt_class()];
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"resources"];
  if (v6 && ([v4 containsValueForKey:@"provenance"] & 1) != 0)
  {
    v11.receiver = self;
    v11.super_class = HDFHIRResourcesJournalEntry;
    v7 = [(HDFHIRResourcesJournalEntry *)&v11 initWithCoder:v4];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_codableResources, v6);
      v8->_syncProvenance = [v4 decodeInt64ForKey:@"provenance"];
    }

    self = v8;
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
  codableResources = self->_codableResources;
  v5 = a3;
  [v5 encodeObject:codableResources forKey:@"resources"];
  [v5 encodeInt64:self->_syncProvenance forKey:@"provenance"];
  v6.receiver = self;
  v6.super_class = HDFHIRResourcesJournalEntry;
  [(HDFHIRResourcesJournalEntry *)&v6 encodeWithCoder:v5];
}

@end