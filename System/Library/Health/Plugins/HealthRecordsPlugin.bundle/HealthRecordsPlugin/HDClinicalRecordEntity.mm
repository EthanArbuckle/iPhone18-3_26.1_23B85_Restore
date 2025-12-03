@interface HDClinicalRecordEntity
+ (BOOL)_clinicalRecord:(id)record equivalentTo:(id)to;
+ (BOOL)_enumerateEntitiesWithOriginalFHIRResourceROWID:(id)d database:(id)database error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)_insertClinicalRecords:(id)records clinicalExternalID:(id)d profile:(id)profile error:(id *)error;
+ (BOOL)_insertOrReplaceClinicalRecord:(id)record existingEntity:(id)entity clinicalExternalID:(id)d profile:(id)profile error:(id *)error;
+ (id)_clinicalRecordsWithPredicate:(id)predicate profile:(id)profile error:(id *)error;
+ (id)_existingClinicalRecord:(id)record originalFHIRResourceRowID:(id)d profile:(id)profile error:(id *)error;
+ (id)clinicalRecordWithResourceIdentifier:(id)identifier source:(id)source profile:(id)profile error:(id *)error;
+ (id)processClinicalRecordsInExtractionResult:(id)result clinicalExternalID:(id)d profile:(id)profile error:(id *)error;
+ (id)processClinicalRecordsInExtractionResultItem:(id)item clinicalExternalID:(id)d database:(id)database profile:(id)profile error:(id *)error;
- (BOOL)_updateOriginalFHIRResourceROWID:(id)d database:(id)database error:(id *)error;
- (id)_fetchIdentifierFromDatabase:(id)database error:(id *)error;
@end

@implementation HDClinicalRecordEntity

+ (id)processClinicalRecordsInExtractionResult:(id)result clinicalExternalID:(id)d profile:(id)profile error:(id *)error
{
  resultCopy = result;
  dCopy = d;
  profileCopy = profile;
  _HKInitializeLogging();
  v13 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = NSStringFromClass(self);
    *buf = 138543618;
    *&buf[4] = v15;
    *&buf[12] = 2114;
    *&buf[14] = resultCopy;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ processing extraction result %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v37 = 0;
  database = [profileCopy database];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_6EA4C;
  v30[3] = &unk_106390;
  selfCopy = self;
  v31 = resultCopy;
  v32 = dCopy;
  v33 = profileCopy;
  v34 = buf;
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_6EBB4;
  v26 = &unk_1063B8;
  v17 = v31;
  v27 = v17;
  v18 = v32;
  v28 = v18;
  v19 = v33;
  v29 = v19;
  v20 = [self performWriteTransactionWithHealthDatabase:database error:error block:v30 inaccessibilityHandler:&v23];

  if (v20)
  {
    v21 = [NSNumber numberWithUnsignedInteger:*(*&buf[8] + 24), v23, v24, v25, v26, v27, v28];
  }

  else
  {
    v21 = 0;
  }

  _Block_object_dispose(buf, 8);

  return v21;
}

+ (id)processClinicalRecordsInExtractionResultItem:(id)item clinicalExternalID:(id)d database:(id)database profile:(id)profile error:(id *)error
{
  itemCopy = item;
  dCopy = d;
  databaseCopy = database;
  profileCopy = profile;
  originalFHIRResource = [itemCopy originalFHIRResource];
  existingRowID = [originalFHIRResource existingRowID];

  if (!existingRowID)
  {
    originalFHIRResource2 = [itemCopy originalFHIRResource];
    [NSError hk_assignError:error code:3 format:@"cannot process extraction result item for a resource that doesn't know its ROWID. Resource: %@", originalFHIRResource2];

    v42 = 0;
    goto LABEL_28;
  }

  v16 = objc_alloc_init(NSMutableDictionary);
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_6F164;
  v62[3] = &unk_1082D0;
  v63 = databaseCopy;
  v17 = v16;
  v64 = v17;
  if ([self _enumerateEntitiesWithOriginalFHIRResourceROWID:existingRowID database:v63 error:error enumerationHandler:v62])
  {
    errorCopy = error;
    v45 = databaseCopy;
    v46 = itemCopy;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = [itemCopy units];
    v55 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
    v18 = 0;
    if (v55)
    {
      v54 = *v59;
      v48 = _HKPrivateMetadataKeyOriginalFHIRResourceROWID;
      selfCopy = self;
      v50 = v17;
      while (2)
      {
        for (i = 0; i != v55; i = i + 1)
        {
          if (*v59 != v54)
          {
            objc_enumerationMutation(obj);
          }

          clinicalRecord = [*(*(&v58 + 1) + 8 * i) clinicalRecord];
          if (clinicalRecord)
          {
            v21 = clinicalRecord;
            metadata = [clinicalRecord metadata];
            v23 = [metadata mutableCopy];
            v24 = v23;
            v56 = v18;
            if (v23)
            {
              v25 = v23;
            }

            else
            {
              v25 = objc_alloc_init(NSMutableDictionary);
            }

            v26 = v25;

            v27 = existingRowID;
            [v26 setObject:existingRowID forKeyedSubscript:v48];
            [v21 _setMetadata:v26];
            v28 = [HKFHIRIdentifier alloc];
            fHIRResource = [v21 FHIRResource];
            resourceType = [fHIRResource resourceType];
            fHIRResource2 = [v21 FHIRResource];
            identifier = [fHIRResource2 identifier];
            v33 = [v28 initWithResourceType:resourceType identifier:identifier];

            v17 = v50;
            v34 = [v50 objectForKeyedSubscript:v33];
            self = selfCopy;
            LODWORD(v28) = [selfCopy _insertOrReplaceClinicalRecord:v21 existingEntity:v34 clinicalExternalID:dCopy profile:profileCopy error:errorCopy];

            if (!v28)
            {

              v42 = 0;
              databaseCopy = v45;
              itemCopy = v46;
              existingRowID = v27;
              goto LABEL_27;
            }

            v18 = v56 + 1;
            [v50 removeObjectForKey:v33];

            existingRowID = v27;
          }
        }

        v55 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
        if (v55)
        {
          continue;
        }

        break;
      }
    }

    databaseCopy = v45;
    if ([v17 count])
    {
      v35 = v18;
      allValues = [v17 allValues];
      v37 = [allValues hk_mapToSet:&stru_108310];

      v38 = [HDSQLiteContainsPredicate containsPredicateWithProperty:HDSQLEntityPropertyPersistentID values:v37];
      v57 = 0;
      dataManager = [profileCopy dataManager];
      v40 = [dataManager deleteDataObjectsOfClass:self predicate:v38 limit:kHDSQLiteQueryNoLimit deletedSampleCount:&v57 notifyObservers:1 generateDeletedObjects:1 recursiveDeleteAuthorizationBlock:0 error:errorCopy];

      if (!v40)
      {

        v42 = 0;
        goto LABEL_26;
      }

      _HKInitializeLogging();
      v41 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v67 = 2048;
        v68 = v57;
        _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "%{public}@ deleted %lu obsolete clinical record entities", buf, 0x16u);
      }

      v18 = v35;
    }

    v42 = [NSNumber numberWithUnsignedInteger:v18];
LABEL_26:
    itemCopy = v46;
    goto LABEL_27;
  }

  v42 = 0;
LABEL_27:

LABEL_28:

  return v42;
}

+ (id)clinicalRecordWithResourceIdentifier:(id)identifier source:(id)source profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  profileCopy = profile;
  bundleIdentifier = [source bundleIdentifier];
  v13 = [self predicateForObjectsFromLocalSourceWithBundleIdentifier:bundleIdentifier profile:profileCopy error:error];

  if (v13)
  {
    v14 = [self existingClinicalRecordCreatedFromResourceWithIdentifier:identifierCopy basePredicate:v13 profile:profileCopy error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (BOOL)_insertOrReplaceClinicalRecord:(id)record existingEntity:(id)entity clinicalExternalID:(id)d profile:(id)profile error:(id *)error
{
  recordCopy = record;
  entityCopy = entity;
  dCopy = d;
  profileCopy = profile;
  metadata = [recordCopy metadata];
  v18 = [metadata objectForKeyedSubscript:_HKPrivateMetadataKeyOriginalFHIRResourceROWID];

  if (!v18)
  {
    sub_A6050(a2, self);
  }

  fHIRResource = [recordCopy FHIRResource];

  if (fHIRResource)
  {
    if (entityCopy)
    {
      v20 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [entityCopy persistentID]);
      v59 = 0;
      v21 = [self objectWithID:v20 encodingOptions:0 profile:profileCopy error:&v59];
      attachmentManager = v59;

      if (!v21)
      {
        attachmentManager = attachmentManager;
        if (attachmentManager)
        {
          if (error)
          {
            v25 = attachmentManager;
            *error = attachmentManager;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v23 = 0;
        v24 = 0;
        goto LABEL_33;
      }

      if ([self _clinicalRecord:v21 equivalentTo:recordCopy])
      {
        v23 = 0;
        v24 = 1;
LABEL_33:

        goto LABEL_34;
      }

      selfCopy2 = self;
      obj = attachmentManager;
      v58 = 0;
      v23 = [HDMedicalDownloadableAttachmentEntity _attachmentsAfterRelinkingFromClinicalRecord:v21 toClinicalRecord:recordCopy profile:profileCopy error:&v58];
      v26 = v58;
      v27 = v21;
      if (!v23)
      {
        _HKInitializeLogging();
        v28 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          sub_A60C4(selfCopy2, v26, v28);
        }
      }

      v48 = profileCopy;
      dataManager = [profileCopy dataManager];
      v66 = v21;
      [NSArray arrayWithObjects:&v66 count:1];
      v31 = v30 = v26;
      v32 = [dataManager deleteDataObjects:v31 restrictedSourceEntities:0 failIfNotFound:1 recursiveDeleteAuthorizationBlock:0 error:error];

      if (!v32)
      {
        v24 = 0;
        profileCopy = v48;
LABEL_34:

        goto LABEL_35;
      }

      profileCopy = v48;
    }

    else
    {
      selfCopy2 = self;
      v23 = 0;
    }

    v65 = recordCopy;
    v33 = [NSArray arrayWithObjects:&v65 count:1];
    v24 = [selfCopy2 _insertClinicalRecords:v33 clinicalExternalID:dCopy profile:profileCopy error:error];

    attachmentManager = [profileCopy attachmentManager];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v21 = v23;
    v34 = [v21 countByEnumeratingWithState:&v54 objects:v64 count:16];
    if (v34)
    {
      v35 = v34;
      v45 = v24;
      obja = v21;
      v47 = entityCopy;
      v49 = profileCopy;
      v46 = dCopy;
      v36 = *v55;
      do
      {
        v37 = 0;
        do
        {
          if (*v55 != v36)
          {
            objc_enumerationMutation(obja);
          }

          hkAttachment = [*(*(&v54 + 1) + 8 * v37) hkAttachment];
          attachmentObjectIdentifier = [recordCopy attachmentObjectIdentifier];
          attachmentSchemaIdentifier = [recordCopy attachmentSchemaIdentifier];
          v53 = 0;
          v41 = [attachmentManager addReferenceWithAttachment:hkAttachment toObjectWithIdentifier:attachmentObjectIdentifier schemaIdentifier:attachmentSchemaIdentifier metadata:0 error:&v53];
          v42 = v53;

          if (!v41)
          {
            _HKInitializeLogging();
            v43 = HKLogHealthRecords;
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v61 = selfCopy2;
              v62 = 2114;
              v63 = v42;
              _os_log_error_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "%{public}@ Failed to recreate HKAttachmentReference for clinical records being re-inserted, ignoring and continuing. Error: %{public}@", buf, 0x16u);
            }
          }

          v37 = v37 + 1;
        }

        while (v35 != v37);
        v35 = [obja countByEnumeratingWithState:&v54 objects:v64 count:16];
      }

      while (v35);
      v21 = obja;
      v23 = obja;
      dCopy = v46;
      entityCopy = v47;
      profileCopy = v49;
      v24 = v45;
    }

    else
    {
      v23 = v21;
    }

    goto LABEL_33;
  }

  [NSError hk_assignError:error code:3 format:@"Clinical records with a nil FHIR resource are invalid, not inserting %@", recordCopy];
  v24 = 0;
LABEL_35:

  return v24;
}

- (id)_fetchIdentifierFromDatabase:(id)database error:(id *)error
{
  databaseCopy = database;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_6FA04;
  v24 = sub_6FA14;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_6FA04;
  v18 = sub_6FA14;
  v19 = 0;
  v26[0] = HDClinicalRecordEntityPropertyFHIRResourceResourceType;
  v26[1] = HDClinicalRecordEntityPropertyFHIRResourceIdentifier;
  v7 = [NSArray arrayWithObjects:v26 count:2];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_6FA1C;
  v13[3] = &unk_108338;
  v13[4] = &v20;
  v13[5] = &v14;
  LOBYTE(self) = [(HDClinicalRecordEntity *)self getValuesForProperties:v7 database:databaseCopy handler:v13];

  if (self)
  {
    v8 = v21[5];
  }

  else
  {
    v9 = v15[5];
    v10 = v9;
    if (v9)
    {
      if (error)
      {
        v11 = v9;
        *error = v10;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v8 = 0;
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v8;
}

+ (BOOL)_clinicalRecord:(id)record equivalentTo:(id)to
{
  recordCopy = record;
  toCopy = to;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  displayName = [recordCopy displayName];
  displayName2 = [toCopy displayName];
  fHIRResource = displayName2;
  if (displayName == displayName2)
  {

    goto LABEL_7;
  }

  displayName3 = [toCopy displayName];
  if (!displayName3)
  {
LABEL_29:

    goto LABEL_30;
  }

  displayName4 = [recordCopy displayName];
  displayName5 = [toCopy displayName];
  v13 = [displayName4 isEqualToString:displayName5];

  if (v13)
  {
LABEL_7:
    displayName = [recordCopy FHIRResource];
    fHIRResource = [toCopy FHIRResource];
    if ((displayName == 0) == (fHIRResource != 0))
    {
      goto LABEL_28;
    }

    resourceType = [displayName resourceType];
    resourceType2 = [fHIRResource resourceType];
    v16 = resourceType2;
    if (resourceType == resourceType2)
    {
    }

    else
    {
      resourceType3 = [fHIRResource resourceType];
      if (!resourceType3)
      {
        goto LABEL_27;
      }

      v18 = resourceType3;
      resourceType4 = [displayName resourceType];
      resourceType5 = [fHIRResource resourceType];
      v21 = [resourceType4 isEqualToString:resourceType5];

      if (!v21)
      {
        goto LABEL_28;
      }
    }

    resourceType = [displayName identifier];
    identifier = [fHIRResource identifier];
    v16 = identifier;
    if (resourceType == identifier)
    {
    }

    else
    {
      identifier2 = [fHIRResource identifier];
      if (!identifier2)
      {
        goto LABEL_27;
      }

      v24 = identifier2;
      identifier3 = [displayName identifier];
      identifier4 = [fHIRResource identifier];
      v27 = [identifier3 isEqualToString:identifier4];

      if (!v27)
      {
        goto LABEL_28;
      }
    }

    resourceType = [displayName sourceURL];
    sourceURL = [fHIRResource sourceURL];
    v16 = sourceURL;
    if (resourceType == sourceURL)
    {
    }

    else
    {
      sourceURL2 = [fHIRResource sourceURL];
      if (!sourceURL2)
      {
        goto LABEL_27;
      }

      v30 = sourceURL2;
      sourceURL3 = [displayName sourceURL];
      sourceURL4 = [fHIRResource sourceURL];
      v33 = [sourceURL3 isEqual:sourceURL4];

      if (!v33)
      {
        goto LABEL_28;
      }
    }

    resourceType = [displayName data];
    data = [fHIRResource data];
    v16 = data;
    if (resourceType == data)
    {

LABEL_32:
      LOBYTE(displayName3) = 1;
      goto LABEL_29;
    }

    data2 = [fHIRResource data];
    if (data2)
    {
      v36 = data2;
      data3 = [displayName data];
      data4 = [fHIRResource data];
      v39 = [data3 isEqual:data4];

      if (v39)
      {
        goto LABEL_32;
      }

LABEL_28:
      LOBYTE(displayName3) = 0;
      goto LABEL_29;
    }

LABEL_27:

    goto LABEL_28;
  }

LABEL_5:
  LOBYTE(displayName3) = 0;
LABEL_30:

  return displayName3;
}

+ (BOOL)_insertClinicalRecords:(id)records clinicalExternalID:(id)d profile:(id)profile error:(id *)error
{
  recordsCopy = records;
  dCopy = d;
  profileCopy = profile;
  if ([recordsCopy count])
  {
    sourceManager = [profileCopy sourceManager];
    v22 = 0;
    v13 = [sourceManager publicSourceForClinicalExternalIdentifier:dCopy provenance:0 createOrUpdateIfNecessary:0 nameOnCreateOrUpdate:0 error:&v22];
    v14 = v22;

    if (v13)
    {
      dataProvenanceManager = [profileCopy dataProvenanceManager];
      v16 = [dataProvenanceManager localDataProvenanceForSourceEntity:v13 version:0 deviceEntity:0];

      if (v16)
      {
        dataManager = [profileCopy dataManager];
        firstObject = [recordsCopy firstObject];
        [firstObject _creationTimestamp];
        v19 = [dataManager insertDataObjects:recordsCopy withProvenance:v16 creationDate:error error:?];
      }

      else
      {
        [NSError hk_assignError:error code:100 description:@"Failed to get provenance for clinical source entity"];
        v19 = 0;
      }

      goto LABEL_14;
    }

    if (v14)
    {
      if (error)
      {
        v20 = v14;
        v19 = 0;
        *error = v14;
LABEL_14:

        goto LABEL_15;
      }

      _HKLogDroppedError();
    }

    else
    {
      [NSError hk_assignError:error code:100 format:@"unable to insert records for account with clinicalExternalID %@: no matching source entity is present", dCopy];
    }

    v19 = 0;
    goto LABEL_14;
  }

  [NSError hk_assignError:error code:3 description:@"No records given"];
  v19 = 0;
LABEL_15:

  return v19;
}

+ (id)_clinicalRecordsWithPredicate:(id)predicate profile:(id)profile error:(id *)error
{
  predicateCopy = predicate;
  profileCopy = profile;
  v10 = +[HKClinicalType allTypes];
  v11 = [NSSet setWithArray:v10];
  v12 = [self entityEnumeratorWithTypes:v11 profile:profileCopy error:error];

  if (v12)
  {
    [v12 setPredicate:predicateCopy];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_70218;
    v16[3] = &unk_106490;
    v13 = objc_alloc_init(NSMutableArray);
    v17 = v13;
    if ([v12 enumerateWithError:error handler:v16])
    {
      v14 = [v13 copy];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_updateOriginalFHIRResourceROWID:(id)d database:(id)database error:(id *)error
{
  dCopy = d;
  v15 = HDClinicalRecordEntityPropertyOriginalFHIRResourceROWID;
  databaseCopy = database;
  v10 = [NSArray arrayWithObjects:&v15 count:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_7036C;
  v13[3] = &unk_105B80;
  v14 = dCopy;
  v11 = dCopy;
  LOBYTE(error) = [(HDClinicalRecordEntity *)self updateProperties:v10 database:databaseCopy error:error bindingHandler:v13];

  return error;
}

+ (BOOL)_enumerateEntitiesWithOriginalFHIRResourceROWID:(id)d database:(id)database error:(id *)error enumerationHandler:(id)handler
{
  handlerCopy = handler;
  databaseCopy = database;
  v12 = [self _predicateForRecordsWithOriginalFHIRResourceROWID:d];
  v13 = [self queryWithDatabase:databaseCopy predicate:v12];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_7049C;
  v16[3] = &unk_106420;
  v17 = handlerCopy;
  v14 = handlerCopy;
  LOBYTE(error) = [v13 enumeratePersistentIDsAndProperties:0 error:error enumerationHandler:v16];

  return error;
}

+ (id)_existingClinicalRecord:(id)record originalFHIRResourceRowID:(id)d profile:(id)profile error:(id *)error
{
  recordCopy = record;
  dCopy = d;
  profileCopy = profile;
  selfCopy = self;
  v57 = dCopy;
  v12 = [self _predicateForRecordsWithOriginalFHIRResourceROWID:dCopy];
  v69[0] = v12;
  v13 = HDClinicalRecordEntityPropertyFHIRResourceIdentifier;
  fHIRResource = [recordCopy FHIRResource];
  identifier = [fHIRResource identifier];
  v16 = [HDSQLiteComparisonPredicate predicateWithProperty:v13 equalToValue:identifier];
  v69[1] = v16;
  v17 = HDClinicalRecordEntityPropertyFHIRResourceResourceType;
  v56 = recordCopy;
  fHIRResource2 = [recordCopy FHIRResource];
  resourceType = [fHIRResource2 resourceType];
  v20 = [HDSQLiteComparisonPredicate predicateWithProperty:v17 equalToValue:resourceType];
  v69[2] = v20;
  v21 = [NSArray arrayWithObjects:v69 count:3];
  v22 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v21];

  v58 = 0;
  v23 = [HDClinicalRecordEntity _clinicalRecordsWithPredicate:v22 profile:profileCopy error:&v58];

  v24 = v58;
  if (!v23)
  {
    _HKInitializeLogging();
    v29 = HKLogHealthRecords;
    v28 = v57;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v41 = v29;
      v42 = [selfCopy debugDescription];
      fHIRResource3 = [v56 FHIRResource];
      identifier2 = [fHIRResource3 identifier];
      fHIRResource4 = [v56 FHIRResource];
      resourceType2 = [fHIRResource4 resourceType];
      *buf = 138544387;
      v60 = v42;
      v61 = 2113;
      v62 = identifier2;
      v63 = 2113;
      v64 = resourceType2;
      v65 = 2114;
      v66 = v57;
      v67 = 2114;
      v68 = v24;
      _os_log_error_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "%{public}@ Error quering for clinical record with identifier: %{private}@, resourceType: %{private}@, originalFHIRResourceRowID: %{public}@. Error: %{public}@ ", buf, 0x34u);
    }

    v25 = v56;
    if (!v24)
    {
      v30 = [selfCopy debugDescription];
      fHIRResource5 = [v56 FHIRResource];
      identifier3 = [fHIRResource5 identifier];
      fHIRResource6 = [v56 FHIRResource];
      resourceType3 = [fHIRResource6 resourceType];
      [NSError hk_assignError:error code:2000 format:@"%@ Error quering for clinical record with identifier: %@, resourceType: %@, originalFHIRResourceRowID: %@", v30, identifier3, resourceType3, v57];

      v28 = v57;
    }

    goto LABEL_12;
  }

  if (![v23 count])
  {
    [selfCopy debugDescription];
    v35 = v55 = v24;
    v25 = v56;
    fHIRResource7 = [v56 FHIRResource];
    identifier4 = [fHIRResource7 identifier];
    fHIRResource8 = [v56 FHIRResource];
    resourceType4 = [fHIRResource8 resourceType];
    v28 = v57;
    [NSError hk_assignError:error code:118 format:@"%@ No found for clinical record with identifier: %@, resourceType: %@, originalFHIRResourceRowID: %@", v35, identifier4, resourceType4, v57];

    v24 = v55;
LABEL_12:
    firstObject = 0;
    goto LABEL_13;
  }

  v25 = v56;
  if ([v23 count] >= 2)
  {
    _HKInitializeLogging();
    v26 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      v47 = v26;
      v48 = [selfCopy debugDescription];
      fHIRResource9 = [v56 FHIRResource];
      identifier5 = [fHIRResource9 identifier];
      fHIRResource10 = [v56 FHIRResource];
      resourceType5 = [fHIRResource10 resourceType];
      *buf = 138544131;
      v60 = v48;
      v61 = 2113;
      v62 = identifier5;
      v63 = 2113;
      v64 = resourceType5;
      v65 = 2114;
      v66 = v57;
      _os_log_fault_impl(&dword_0, v47, OS_LOG_TYPE_FAULT, "%{public}@ More than one clinical record found with identifier: %{private}@, resourceType: %{private}@, originalFHIRResourceRowID: %{public}@ found in the database.", buf, 0x2Au);
    }
  }

  firstObject = [v23 firstObject];
  v28 = v57;
LABEL_13:

  return firstObject;
}

@end