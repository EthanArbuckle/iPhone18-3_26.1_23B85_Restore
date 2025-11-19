@interface HDClinicalIngestionTaskWorkItem
+ (id)new;
- (BOOL)_download;
- (BOOL)getDataFromResourceFetchOperation:(id)a3;
- (HDClinicalIngestionTaskWorkItem)init;
- (HDClinicalIngestionTaskWorkItem)initWithResourceFetchOperation:(id)a3 targetResourceURLsBySourceResource:(id)a4 schemaContext:(id)a5;
- (id)_extractReferencesAfterFetchSuccess:(BOOL)a3;
- (id)_newExtractReferencesOperation;
- (void)main;
@end

@implementation HDClinicalIngestionTaskWorkItem

+ (id)new
{
  v2 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v2, objc_opt_class()];

  return 0;
}

- (HDClinicalIngestionTaskWorkItem)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDClinicalIngestionTaskWorkItem)initWithResourceFetchOperation:(id)a3 targetResourceURLsBySourceResource:(id)a4 schemaContext:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ((v10 == 0) != (v11 != 0))
  {
    sub_A4B5C(a2, self);
  }

  v26.receiver = self;
  v26.super_class = HDClinicalIngestionTaskWorkItem;
  v13 = [(HDClinicalIngestionTaskWorkItem *)&v26 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_resourceFetchOperation, a3);
    v15 = [v11 copy];
    targetResourceURLsBySourceResource = v14->_targetResourceURLsBySourceResource;
    v14->_targetResourceURLsBySourceResource = v15;

    objc_storeStrong(&v14->_schemaOperation, a5);
    v17 = objc_alloc_init(NSMutableArray);
    fetchedResourceData = v14->_fetchedResourceData;
    v14->_fetchedResourceData = v17;

    v19 = objc_alloc_init(NSMutableArray);
    existingResourceData = v14->_existingResourceData;
    v14->_existingResourceData = v19;

    v21 = objc_alloc_init(NSMutableSet);
    resolvableResourceObjects = v14->_resolvableResourceObjects;
    v14->_resolvableResourceObjects = v21;

    v23 = objc_alloc_init(NSMutableArray);
    unresolvableResourceObjects = v14->_unresolvableResourceObjects;
    v14->_unresolvableResourceObjects = v23;
  }

  return v14;
}

- (BOOL)getDataFromResourceFetchOperation:(id)a3
{
  v4 = a3;
  v5 = [v4 fetchedData];
  if (v5)
  {
    [(NSMutableArray *)self->_fetchedResourceData addObject:v5];
  }

  else
  {
    v6 = [v4 fetchError];

    if (v6)
    {
      v7 = [(HDClinicalIngestionTaskResourceSchemaOperation *)self->_schemaOperation accountContext];
      v8 = [v4 fetchError];
      [v7 didEncounterError:v8];

      _HKInitializeLogging();
      v9 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        schemaOperation = self->_schemaOperation;
        log = v9;
        v11 = [(HDClinicalIngestionTaskResourceSchemaOperation *)schemaOperation accountContext];
        v12 = [v11 account];
        v13 = [v12 identifier];
        v14 = [v4 effectiveRequestURL];
        v15 = HKSensitiveLogItem();
        v16 = [v4 fetchError];
        v17 = [v16 hrs_safelyLoggableDescription];
        *buf = 138544130;
        v29 = self;
        v30 = 2114;
        v31 = v13;
        v32 = 2112;
        v33 = v15;
        v34 = 2114;
        v35 = v17;
        _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@ Account %{public}@: couldn't fetch data from URL %@: %{public}@", buf, 0x2Au);
      }
    }

    else
    {
      _HKInitializeLogging();
      v18 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
      {
        v19 = self->_schemaOperation;
        v20 = v18;
        v21 = [(HDClinicalIngestionTaskResourceSchemaOperation *)v19 accountContext];
        v22 = [v21 account];
        v23 = [v22 identifier];
        v24 = [v4 effectiveRequestURL];
        v25 = HKSensitiveLogItem();
        *buf = 138543874;
        v29 = self;
        v30 = 2114;
        v31 = v23;
        v32 = 2112;
        v33 = v25;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "%{public}@ Account %{public}@: did not fetch data from URL %@", buf, 0x20u);
      }
    }
  }

  return v5 != 0;
}

- (void)main
{
  v3 = [(HDClinicalIngestionTaskWorkItem *)self _extractReferencesAfterFetchSuccess:[(HDClinicalIngestionTaskWorkItem *)self _download]];
  outcome = self->_outcome;
  self->_outcome = v3;

  _objc_release_x1();
}

- (BOOL)_download
{
  resourceFetchOperation = self->_resourceFetchOperation;
  if (!resourceFetchOperation)
  {
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    obj = self->_targetResourceURLsBySourceResource;
    v59 = [(NSDictionary *)obj countByEnumeratingWithState:&v74 objects:v85 count:16];
    if (!v59)
    {
      goto LABEL_41;
    }

    v58 = *v75;
    v6 = &BiomeLibrary_ptr;
    while (1)
    {
      for (i = 0; i != v59; i = i + 1)
      {
        if (*v75 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v74 + 1) + 8 * i);
        v9 = [(NSDictionary *)self->_targetResourceURLsBySourceResource objectForKeyedSubscript:v8];
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v63 = v9;
        v67 = [v9 countByEnumeratingWithState:&v70 objects:v84 count:16];
        if (!v67)
        {
LABEL_33:
          [(NSMutableSet *)self->_resolvableResourceObjects addObject:v8];
          goto LABEL_39;
        }

        v60 = v8;
        v61 = i;
        v66 = *v71;
        v64 = 1;
        do
        {
          for (j = 0; j != v67; j = j + 1)
          {
            if (*v71 != v66)
            {
              objc_enumerationMutation(v63);
            }

            v11 = *(*(&v70 + 1) + 8 * j);
            v12 = v6[503];
            v13 = [(HDClinicalIngestionTaskResourceSchemaOperation *)self->_schemaOperation accountContext];
            v14 = [v13 task];
            v15 = [v14 profile];
            v69 = 0;
            v16 = [v12 resourceDataForOriginalFHIRResourceWithSourceURL:v11 profile:v15 error:&v69];
            v17 = v69;

            if (v16)
            {
              [(NSMutableArray *)self->_existingResourceData addObject:v16];
              _HKInitializeLogging();
              v18 = HKLogHealthRecords;
              if (!os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
              {
                goto LABEL_30;
              }

              schemaOperation = self->_schemaOperation;
              v20 = v18;
              v21 = [(HDClinicalIngestionTaskResourceSchemaOperation *)schemaOperation accountContext];
              v22 = [v21 account];
              v23 = [v22 identifier];
              v24 = HKSensitiveLogItem();
              *buf = 138543874;
              v79 = self;
              v80 = 2114;
              v81 = v23;
              v82 = 2114;
              v83 = v24;
              _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "%{public}@ Account %{public}@: data for URL %{public}@ is already in db, will use it and not re-download", buf, 0x20u);

              v6 = &BiomeLibrary_ptr;
            }

            else
            {
              if (v17)
              {
                if (([v17 hk_isObjectNotFoundError] & 1) == 0)
                {
                  _HKInitializeLogging();
                  v25 = HKLogHealthRecords;
                  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
                  {
                    v38 = self->_schemaOperation;
                    v39 = v25;
                    v40 = [(HDClinicalIngestionTaskResourceSchemaOperation *)v38 accountContext];
                    v41 = [v40 account];
                    v42 = [v41 identifier];
                    *buf = 138543874;
                    v79 = self;
                    v80 = 2114;
                    v81 = v42;
                    v82 = 2114;
                    v83 = v17;
                    _os_log_error_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "%{public}@ Account %{public}@: failed to retrieve resource data from db, will try to download. Error: %{public}@", buf, 0x20u);

                    v6 = &BiomeLibrary_ptr;
                  }
                }
              }

              _HKInitializeLogging();
              v26 = HKLogHealthRecords;
              if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
              {
                v28 = self->_schemaOperation;
                v29 = v26;
                v62 = [(HDClinicalIngestionTaskResourceSchemaOperation *)v28 accountContext];
                v30 = [v62 account];
                v31 = [v30 identifier];
                v32 = HKSensitiveLogItem();
                *buf = 138543874;
                v79 = self;
                v80 = 2114;
                v81 = v31;
                v82 = 2114;
                v83 = v32;
                _os_log_debug_impl(&dword_0, v29, OS_LOG_TYPE_DEBUG, "%{public}@ Account %{public}@: data for URL %{public}@ needs to be downloaded", buf, 0x20u);

                v6 = &BiomeLibrary_ptr;
              }

              v20 = [(HDClinicalIngestionTaskResourceSchemaOperation *)self->_schemaOperation runResourceFetchOperationForURL:v11];
              if (v20)
              {
                v64 &= [(HDClinicalIngestionTaskWorkItem *)self getDataFromResourceFetchOperation:v20];
              }

              else
              {
                _HKInitializeLogging();
                v27 = HKLogHealthRecords;
                if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
                {
                  v33 = self->_schemaOperation;
                  v34 = v27;
                  v65 = [(HDClinicalIngestionTaskResourceSchemaOperation *)v33 accountContext];
                  v35 = [v65 account];
                  v36 = [v35 identifier];
                  v37 = HKSensitiveLogItem();
                  *buf = 138543874;
                  v79 = self;
                  v80 = 2114;
                  v81 = v36;
                  v82 = 2114;
                  v83 = v37;
                  _os_log_error_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%{public}@ Account %{public}@: unable to run resource fetch operation for URL %{public}@", buf, 0x20u);

                  v6 = &BiomeLibrary_ptr;
                }

                v64 = 0;
              }
            }

LABEL_30:
          }

          v67 = [v63 countByEnumeratingWithState:&v70 objects:v84 count:16];
        }

        while (v67);
        v8 = v60;
        i = v61;
        if (v64)
        {
          goto LABEL_33;
        }

        v43 = [v60 JSONObject];
        v44 = [v60 sourceURL];
        v45 = [v60 FHIRVersion];
        v46 = [v60 receivedDate];
        v68 = 0;
        v47 = [HDFHIRResourceObject resourceObjectWithJSONObject:v43 sourceURL:v44 FHIRVersion:v45 receivedDate:v46 extractionHints:1 error:&v68];
        v48 = v68;

        v6 = &BiomeLibrary_ptr;
        v49 = v47;
        if (!v47)
        {
          _HKInitializeLogging();
          v50 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            v51 = self->_schemaOperation;
            v52 = v50;
            v53 = [(HDClinicalIngestionTaskResourceSchemaOperation *)v51 accountContext];
            v54 = [v53 account];
            v55 = [v54 identifier];
            v56 = [v48 hrs_safelyLoggableDescription];
            *buf = 138543874;
            v79 = self;
            v80 = 2114;
            v81 = v55;
            v82 = 2112;
            v83 = v56;
            _os_log_error_impl(&dword_0, v52, OS_LOG_TYPE_ERROR, "%{public}@ Account %{public}@: failed to add extraction hint to unresolvable resource: %@", buf, 0x20u);

            v6 = &BiomeLibrary_ptr;
          }

          v49 = v60;
        }

        [(NSMutableArray *)self->_unresolvableResourceObjects addObject:v49];

        i = v61;
LABEL_39:
      }

      v59 = [(NSDictionary *)obj countByEnumeratingWithState:&v74 objects:v85 count:16];
      if (!v59)
      {
LABEL_41:

        return [(NSMutableSet *)self->_resolvableResourceObjects count]!= 0;
      }
    }
  }

  [(HDFHIRIngestionResourceFetchOperation *)resourceFetchOperation start];
  v4 = self->_resourceFetchOperation;

  return [(HDClinicalIngestionTaskWorkItem *)self getDataFromResourceFetchOperation:v4];
}

- (id)_extractReferencesAfterFetchSuccess:(BOOL)a3
{
  v69 = a3;
  v3 = self;
  v4 = [(HDClinicalIngestionTaskWorkItem *)self _newExtractReferencesOperation];
  [v4 start];
  v5 = [v4 resolutionError];

  if (v5)
  {
    v6 = [(HDClinicalIngestionTaskResourceSchemaOperation *)v3->_schemaOperation accountContext];
    v7 = [v4 resolutionError];
    [v6 didEncounterError:v7];
  }

  v8 = [(HDClinicalIngestionTaskResourceSchemaOperation *)v3->_schemaOperation accountContext];
  v9 = [v8 account];
  v10 = [v9 gateway];
  v11 = [v10 baseURL];

  v71 = +[NSMutableDictionary dictionary];
  v70 = v4;
  v12 = [v4 extractionResult];
  v13 = [v12 incompleteResources];

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = v13;
  v74 = [obj countByEnumeratingWithState:&v84 objects:v98 count:16];
  v75 = v3;
  if (v74)
  {
    v73 = *v85;
    do
    {
      for (i = 0; i != v74; i = i + 1)
      {
        if (*v85 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v84 + 1) + 8 * i);
        v16 = [v15 resource];
        if ([(NSMutableSet *)v3->_resolvableResourceObjects containsObject:v16])
        {
          _HKInitializeLogging();
          v17 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
          {
            schemaOperation = v3->_schemaOperation;
            v19 = v17;
            v20 = [(HDClinicalIngestionTaskResourceSchemaOperation *)schemaOperation accountContext];
            v21 = [v20 account];
            v22 = [v21 identifier];
            v23 = [v16 identifier];
            v24 = HKSensitiveLogItem();
            v25 = [v15 references];
            v26 = [v25 count];
            *buf = 138544130;
            v91 = v75;
            v92 = 2114;
            v93 = v22;
            v94 = 2112;
            v95 = v24;
            v96 = 2048;
            v97 = v26;
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: reference extraction for resource %@ still returned %lu unresolved references, unable to resolve", buf, 0x2Au);

            v3 = v75;
          }

          v27 = 0;
          v16 = 0;
        }

        else
        {
          if (v16)
          {
            v28 = +[NSMutableSet set];
            [v71 setObject:v28 forKey:v16];
            v27 = [v15 references];
            goto LABEL_16;
          }

          v27 = 0;
        }

        v28 = 0;
LABEL_16:
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v29 = v27;
        v30 = [v29 countByEnumeratingWithState:&v80 objects:v89 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v81;
          do
          {
            for (j = 0; j != v31; j = j + 1)
            {
              if (*v81 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = [v11 hrs_URLByExpandingReference:*(*(&v80 + 1) + 8 * j)];
              if (v34)
              {
                [v28 addObject:v34];
              }
            }

            v31 = [v29 countByEnumeratingWithState:&v80 objects:v89 count:16];
          }

          while (v31);
        }
      }

      v74 = [obj countByEnumeratingWithState:&v84 objects:v98 count:16];
    }

    while (v74);
  }

  v35 = objc_alloc_init(NSMutableArray);
  v36 = v71;
  if ([v71 count])
  {
    v37 = [[HDClinicalIngestionTaskWorkItem alloc] initWithTargetResourceURLsBySourceResource:v71 schemaContext:v75->_schemaOperation];
    [v35 addObject:v37];
  }

  v38 = v70;
  v39 = [v70 extractionResult];
  v40 = [v39 unresolvableReferences];

  if (v40)
  {
    v41 = [v70 extractionResult];
    v42 = [v41 unresolvableReferences];

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v43 = v42;
    v44 = [v43 countByEnumeratingWithState:&v76 objects:v88 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v77;
      do
      {
        for (k = 0; k != v45; k = k + 1)
        {
          if (*v77 != v46)
          {
            objc_enumerationMutation(v43);
          }

          unresolvableResourceObjects = v75->_unresolvableResourceObjects;
          v49 = [*(*(&v76 + 1) + 8 * k) resource];
          [(NSMutableArray *)unresolvableResourceObjects hk_addNonNilObject:v49];
        }

        v45 = [v43 countByEnumeratingWithState:&v76 objects:v88 count:16];
      }

      while (v45);
    }

    v38 = v70;
  }

  v50 = [v38 extractionResult];
  v51 = [v50 nextSearchResultURL];

  if (v51)
  {
    _HKInitializeLogging();
    v52 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
    {
      v53 = v75->_schemaOperation;
      v54 = v52;
      v55 = [(HDClinicalIngestionTaskResourceSchemaOperation *)v53 accountContext];
      v56 = [v55 account];
      v57 = [v56 identifier];
      v58 = HKSensitiveLogItem();
      *buf = 138543874;
      v91 = v75;
      v36 = v71;
      v92 = 2114;
      v93 = v57;
      v94 = 2114;
      v95 = v58;
      _os_log_impl(&dword_0, v54, OS_LOG_TYPE_INFO, "%{public}@ Account %{public}@: reference extraction found next page URL %{public}@", buf, 0x20u);
    }

    v59 = [(HDClinicalIngestionTaskResourceSchemaOperation *)v75->_schemaOperation newResourceFetchOperationWithPredefinedURL:v51];
    v60 = [[HDClinicalIngestionTaskWorkItem alloc] initWithResourceFetchOperation:v59 schemaContext:v75->_schemaOperation];
    [v35 addObject:v60];
  }

  v61 = [v70 extractionResult];
  v62 = [v61 completeResources];

  if ([(NSMutableArray *)v75->_unresolvableResourceObjects count])
  {
    v63 = v69;
    if ([v62 count])
    {
      v64 = [v62 arrayByAddingObjectsFromArray:v75->_unresolvableResourceObjects];
    }

    else
    {
      v64 = [(NSMutableArray *)v75->_unresolvableResourceObjects copy];
    }

    v66 = v64;
    v65 = v70;

    v62 = v66;
  }

  else
  {
    v65 = v70;
    v63 = v69;
  }

  v67 = [[HDClinicalIngestionTaskWorkItemOutcome alloc] initWithFetchSuccess:v63 saveableResources:v62 followUpWorkItems:v35];

  return v67;
}

- (id)_newExtractReferencesOperation
{
  v3 = [(NSMutableArray *)self->_fetchedResourceData arrayByAddingObjectsFromArray:self->_existingResourceData];
  v4 = [HDClinicalIngestionExtractReferencesOperation alloc];
  v5 = [(HDClinicalIngestionTaskResourceSchemaOperation *)self->_schemaOperation accountContext];
  v6 = [v5 task];
  v7 = [(HDClinicalIngestionTaskResourceSchemaOperation *)self->_schemaOperation accountContext];
  v8 = [v7 account];
  v9 = [(NSMutableSet *)self->_resolvableResourceObjects allObjects];
  v10 = [(HDClinicalIngestionExtractReferencesOperation *)v4 initWithTask:v6 account:v8 resourceData:v3 sourceResourceObjects:v9 nextOperation:0];

  return v10;
}

@end