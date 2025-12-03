@interface HDMedicalRecordEntity
+ (BOOL)_enumerateEntitiesWithOriginalFHIRResourceROWID:(id)d database:(id)database error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)_insertMedicalRecords:(id)records accountIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (BOOL)_insertOrReplaceMedicalRecord:(id)record existingRecord:(id)existingRecord accountIdentifier:(id)identifier profile:(id)profile didInsert:(BOOL *)insert didUpdate:(BOOL *)update error:(id *)error;
+ (Class)medicalRecordEntityForDataTypeCode:(id)code;
+ (id)_existingMedicalRecord:(id)record originalFHIRResourceRowID:(id)d database:(id)database profile:(id)profile error:(id *)error;
+ (id)_medicalRecordProvenanceForAccountIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (id)_medicalRecordsWithPredicate:(id)predicate withoutConceptIndex:(BOOL)index excludeSignedClinicalDataRecords:(BOOL)records database:(id)database profile:(id)profile error:(id *)error;
+ (id)medicalRecordWithSourceBundleIdentifier:(id)identifier FHIRIdentifier:(id)rIdentifier profile:(id)profile error:(id *)error;
+ (id)processMedicalRecordsInExtractionResult:(id)result accountIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (id)processMedicalRecordsInExtractionResultItem:(id)item accountIdentifier:(id)identifier database:(id)database profile:(id)profile error:(id *)error;
- (BOOL)_updateOriginalFHIRResourceROWID:(id)d database:(id)database error:(id *)error;
@end

@implementation HDMedicalRecordEntity

+ (id)medicalRecordWithSourceBundleIdentifier:(id)identifier FHIRIdentifier:(id)rIdentifier profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  rIdentifierCopy = rIdentifier;
  profileCopy = profile;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_17E74;
  v30 = sub_17E84;
  v31 = 0;
  database = [profileCopy database];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_17E8C;
  v20[3] = &unk_106390;
  selfCopy = self;
  v14 = identifierCopy;
  v21 = v14;
  v15 = profileCopy;
  v22 = v15;
  v16 = rIdentifierCopy;
  v23 = v16;
  v24 = &v26;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v20];

  if (error)
  {
    v17 = v27[5];
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  _Block_object_dispose(&v26, 8);

  return v18;
}

+ (id)processMedicalRecordsInExtractionResult:(id)result accountIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  resultCopy = result;
  identifierCopy = identifier;
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
  v30[2] = sub_18284;
  v30[3] = &unk_106390;
  selfCopy = self;
  v31 = resultCopy;
  v32 = identifierCopy;
  v33 = profileCopy;
  v34 = buf;
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_183EC;
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

+ (id)processMedicalRecordsInExtractionResultItem:(id)item accountIdentifier:(id)identifier database:(id)database profile:(id)profile error:(id *)error
{
  itemCopy = item;
  identifierCopy = identifier;
  databaseCopy = database;
  profileCopy = profile;
  originalFHIRResource = [itemCopy originalFHIRResource];
  existingRowID = [originalFHIRResource existingRowID];

  if (!existingRowID)
  {
    originalFHIRResource2 = [itemCopy originalFHIRResource];
    [NSError hk_assignError:error code:3 format:@"cannot process extraction result item for a resource that doesn't know its ROWID. Resource: %@", originalFHIRResource2];

    v39 = 0;
    goto LABEL_32;
  }

  v17 = [self _predicateForRecordsWithOriginalFHIRResourceROWID:existingRowID];
  v18 = [self _medicalRecordsWithPredicate:v17 withoutConceptIndex:1 excludeSignedClinicalDataRecords:0 database:databaseCopy profile:profileCopy error:error];
  if (v18)
  {
    selfCopy = self;
    errorCopy = error;
    v48 = v17;
    v49 = databaseCopy;
    v55 = profileCopy;
    v56 = existingRowID;
    v47 = v18;
    v19 = [v18 hk_mapToDictionary:&stru_1063F8];
    v20 = [v19 mutableCopy];

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v50 = itemCopy;
    obj = [itemCopy units];
    v21 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = 0;
      v24 = *v59;
      v52 = _HKPrivateMetadataKeyOriginalFHIRResourceROWID;
      while (2)
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v59 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v58 + 1) + 8 * i);
          medicalRecord = [v26 medicalRecord];
          if (medicalRecord)
          {
            v28 = medicalRecord;
            metadata = [medicalRecord metadata];
            v30 = [metadata mutableCopy];
            v31 = v30;
            if (v30)
            {
              v32 = v30;
            }

            else
            {
              v32 = objc_alloc_init(NSMutableDictionary);
            }

            v34 = v32;

            [v34 setObject:v56 forKeyedSubscript:v52];
            [v28 _setMetadata:v34];
            fHIRIdentifier = [v28 FHIRIdentifier];
            if (!fHIRIdentifier)
            {
              [NSError hk_assignError:errorCopy code:3 format:@"nil FHIR identifier on %@", v28];
LABEL_29:

              v39 = 0;
              databaseCopy = v49;
              itemCopy = v50;
              profileCopy = v55;
              goto LABEL_30;
            }

            v36 = [v20 objectForKeyedSubscript:fHIRIdentifier];
            v37 = [selfCopy _insertOrReplaceMedicalRecord:v28 existingRecord:v36 accountIdentifier:identifierCopy profile:v55 didInsert:0 didUpdate:0 error:errorCopy];

            if (!v37)
            {
              goto LABEL_29;
            }

            ++v23;
            [v20 removeObjectForKey:fHIRIdentifier];
          }

          else
          {
            _HKInitializeLogging();
            v33 = HKLogHealthRecords;
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
            {
              *buf = 138543362;
              v63 = v26;
              _os_log_fault_impl(&dword_0, v33, OS_LOG_TYPE_FAULT, "HDMedicalRecordEntity unexpectedly found nil medicalRecord on HDExtractionResultItemUnit: %{public}@", buf, 0xCu);
            }
          }
        }

        v22 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v23 = 0;
    }

    databaseCopy = v49;
    itemCopy = v50;
    profileCopy = v55;
    if ([v20 count])
    {
      dataManager = [v55 dataManager];
      allValues = [v20 allValues];
      v42 = [dataManager deleteDataObjects:allValues restrictedSourceEntities:0 failIfNotFound:1 recursiveDeleteAuthorizationBlock:0 error:errorCopy];

      v39 = 0;
      if (!v42)
      {
LABEL_30:

        existingRowID = v56;
        v18 = v47;
        v17 = v48;
        goto LABEL_31;
      }

      _HKInitializeLogging();
      v43 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
      {
        v44 = v43;
        v45 = [v20 count];
        *buf = 138543618;
        v63 = selfCopy;
        v64 = 2048;
        v65 = v45;
        _os_log_impl(&dword_0, v44, OS_LOG_TYPE_INFO, "%{public}@ deleted %lu obsolete medical records", buf, 0x16u);
      }
    }

    v39 = [NSNumber numberWithUnsignedInteger:v23];
    goto LABEL_30;
  }

  v39 = 0;
LABEL_31:

LABEL_32:

  return v39;
}

+ (BOOL)_insertOrReplaceMedicalRecord:(id)record existingRecord:(id)existingRecord accountIdentifier:(id)identifier profile:(id)profile didInsert:(BOOL *)insert didUpdate:(BOOL *)update error:(id *)error
{
  recordCopy = record;
  existingRecordCopy = existingRecord;
  identifierCopy = identifier;
  profileCopy = profile;
  v18 = existingRecordCopy != 0;
  v53 = existingRecordCopy != 0;
  if (existingRecordCopy)
  {
    enteredInError = [recordCopy enteredInError];
    if (enteredInError)
    {
      insertCopy2 = insert;
      uUID = [existingRecordCopy UUID];
      v63 = 0;
      v21 = [HDMedicalDownloadableAttachmentEntity _deleteAttachmentsWithMedicalRecordIdentifier:uUID profile:profileCopy error:&v63];
      v22 = v63;

      if ((v21 & 1) == 0)
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          sub_9DC18();
        }
      }

      obj = 0;
    }

    else
    {
      if ([existingRecordCopy isEquivalent:recordCopy])
      {
        extractionVersion = [recordCopy extractionVersion];
        if (extractionVersion <= [existingRecordCopy extractionVersion])
        {
          [recordCopy enteredInError];
          v29 = 0;
          v18 = 0;
          obj = 0;
          if (!insert)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }
      }

      v62 = 0;
      v24 = [HDMedicalDownloadableAttachmentEntity _attachmentsAfterRelinkingFromMedicalRecord:existingRecordCopy toMedicalRecord:recordCopy profile:profileCopy error:&v62];
      v22 = v62;
      obj = v24;
      insertCopy2 = insert;
      if (!v24)
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          sub_9DBB0();
        }
      }
    }

    dataManager = [profileCopy dataManager];
    v70 = existingRecordCopy;
    v26 = [NSArray arrayWithObjects:&v70 count:1];
    v27 = [dataManager deleteDataObjects:v26 restrictedSourceEntities:0 failIfNotFound:1 recursiveDeleteAuthorizationBlock:0 error:error];

    if (!v27)
    {
      goto LABEL_36;
    }

    insert = insertCopy2;
    v18 = existingRecordCopy != 0;
  }

  else
  {
    obj = 0;
    enteredInError = 0;
  }

  enteredInError2 = [recordCopy enteredInError];
  v29 = 0;
  if (enteredInError & 1) != 0 || (enteredInError2)
  {
    goto LABEL_31;
  }

  metadata = [recordCopy metadata];
  v31 = [metadata objectForKeyedSubscript:_HKPrivateMetadataKeyOriginalFHIRResourceROWID];

  if (!v31)
  {
    sub_9DC80(a2, self);
  }

  v69 = recordCopy;
  v32 = [NSArray arrayWithObjects:&v69 count:1];
  v33 = [self _insertMedicalRecords:v32 accountIdentifier:identifierCopy profile:profileCopy error:error];

  if (!v33)
  {
LABEL_36:
    v45 = 0;
    goto LABEL_37;
  }

  v50 = existingRecordCopy;
  insertCopy3 = insert;
  updateCopy = update;
  v49 = identifierCopy;
  v47 = profileCopy;
  attachmentManager = [profileCopy attachmentManager];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = obj;
  v35 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v59;
    do
    {
      for (i = 0; i != v36; i = i + 1)
      {
        if (*v59 != v37)
        {
          objc_enumerationMutation(obj);
        }

        hkAttachment = [*(*(&v58 + 1) + 8 * i) hkAttachment];
        attachmentObjectIdentifier = [recordCopy attachmentObjectIdentifier];
        attachmentSchemaIdentifier = [recordCopy attachmentSchemaIdentifier];
        v57 = 0;
        v42 = [attachmentManager addReferenceWithAttachment:hkAttachment toObjectWithIdentifier:attachmentObjectIdentifier schemaIdentifier:attachmentSchemaIdentifier metadata:0 error:&v57];
        v43 = v57;

        if (!v42)
        {
          _HKInitializeLogging();
          v44 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543619;
            selfCopy = self;
            v66 = 2113;
            v67 = v43;
            _os_log_error_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "%{public}@ Failed to recreate HKAttachmentReference for medical records being re-inserted with error: %{private}@", buf, 0x16u);
          }
        }
      }

      v36 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
    }

    while (v36);
  }

  v29 = 1;
  identifierCopy = v49;
  existingRecordCopy = v50;
  profileCopy = v47;
  update = updateCopy;
  insert = insertCopy3;
  v18 = v53;
LABEL_31:
  if (insert)
  {
LABEL_32:
    *insert = v29 & !v18;
  }

LABEL_33:
  if (update)
  {
    *update = v18 & v29;
  }

  v45 = 1;
LABEL_37:

  return v45;
}

+ (BOOL)_insertMedicalRecords:(id)records accountIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  recordsCopy = records;
  identifierCopy = identifier;
  profileCopy = profile;
  if ([recordsCopy count])
  {
    v13 = [self _medicalRecordProvenanceForAccountIdentifier:identifierCopy profile:profileCopy error:error];
    if (v13)
    {
      dataManager = [profileCopy dataManager];
      firstObject = [recordsCopy firstObject];
      [firstObject _creationTimestamp];
      v16 = [dataManager insertDataObjects:recordsCopy withProvenance:v13 creationDate:error error:?];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    [NSError hk_assignError:error code:3 description:@"No records given"];
    v16 = 0;
  }

  return v16;
}

+ (BOOL)_enumerateEntitiesWithOriginalFHIRResourceROWID:(id)d database:(id)database error:(id *)error enumerationHandler:(id)handler
{
  handlerCopy = handler;
  databaseCopy = database;
  v12 = [self _predicateForRecordsWithOriginalFHIRResourceROWID:d];
  v13 = [self queryWithDatabase:databaseCopy predicate:v12];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_190E0;
  v16[3] = &unk_106420;
  v17 = handlerCopy;
  v14 = handlerCopy;
  LOBYTE(error) = [v13 enumeratePersistentIDsAndProperties:0 error:error enumerationHandler:v16];

  return error;
}

- (BOOL)_updateOriginalFHIRResourceROWID:(id)d database:(id)database error:(id *)error
{
  dCopy = d;
  v15 = HDMedicalRecordEntityPropertyOriginalFHIRResourceROWID;
  databaseCopy = database;
  v10 = [NSArray arrayWithObjects:&v15 count:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_192F4;
  v13[3] = &unk_105B80;
  v14 = dCopy;
  v11 = dCopy;
  LOBYTE(error) = [(HDMedicalRecordEntity *)self updateProperties:v10 database:databaseCopy error:error bindingHandler:v13];

  return error;
}

+ (Class)medicalRecordEntityForDataTypeCode:(id)code
{
  v3 = qword_128820;
  codeCopy = code;
  if (v3 != -1)
  {
    sub_9DCE4();
  }

  v5 = [qword_128818 objectForKeyedSubscript:codeCopy];

  return v5;
}

+ (id)_medicalRecordsWithPredicate:(id)predicate withoutConceptIndex:(BOOL)index excludeSignedClinicalDataRecords:(BOOL)records database:(id)database profile:(id)profile error:(id *)error
{
  indexCopy = index;
  predicateCopy = predicate;
  databaseCopy = database;
  profileCopy = profile;
  v17 = objc_alloc_init(NSMutableDictionary);
  selfCopy = self;
  v18 = [self queryWithDatabase:databaseCopy predicate:predicateCopy];
  v42 = HDDataEntityPropertyDataID;
  v58[0] = HDDataEntityPropertyDataID;
  v58[1] = HDDataEntityPropertyType;
  v58[2] = HDSampleEntityPropertyDataType;
  v19 = [NSArray arrayWithObjects:v58 count:3];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_199A0;
  v52[3] = &unk_106468;
  recordsCopy = records;
  v20 = v17;
  v53 = v20;
  errorCopy = error;
  v21 = [v18 enumeratePersistentIDsAndProperties:v19 error:error enumerationHandler:v52];

  if (v21)
  {
    v39 = databaseCopy;
    v40 = predicateCopy;
    v41 = objc_alloc_init(NSMutableArray);
    v38 = v18;
    if (indexCopy)
    {
      v56 = HDMedicalRecordEntityEncodingOptionSkipApplyingConceptIndex;
      v57 = &__kCFBooleanTrue;
      v22 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    }

    else
    {
      v22 = 0;
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v37 = v20;
    v24 = v20;
    v25 = [v24 countByEnumeratingWithState:&v48 objects:v55 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v49;
      while (2)
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v49 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v48 + 1) + 8 * i);
          v30 = [selfCopy medicalRecordEntityForDataTypeCode:v29];
          if (!v30)
          {
            sub_9DCF8(a2, selfCopy, v29);
          }

          v31 = [v24 objectForKeyedSubscript:v29];
          if (![v31 count])
          {
            sub_9DD6C(a2, selfCopy, v29);
          }

          v32 = [HDSQLiteContainsPredicate containsPredicateWithProperty:v42 values:v31];
          v33 = [v30 entityEnumeratorWithProfile:profileCopy];
          [v33 setPredicate:v32];
          if (v22)
          {
            [v33 addEncodingOptionsFromDictionary:v22];
          }

          v46[0] = _NSConcreteStackBlock;
          v46[1] = 3221225472;
          v46[2] = sub_19AE4;
          v46[3] = &unk_106490;
          v47 = v41;
          v34 = [v33 enumerateWithError:errorCopy handler:v46];

          if (!v34)
          {

            v23 = 0;
            v35 = v41;
            goto LABEL_22;
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v48 objects:v55 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    v35 = v41;
    v23 = [v41 copy];
LABEL_22:

    databaseCopy = v39;
    predicateCopy = v40;
    v20 = v37;
    v18 = v38;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)_medicalRecordProvenanceForAccountIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  profileCopy = profile;
  sourceManager = [profileCopy sourceManager];
  v17 = 0;
  v10 = [sourceManager privateSourceForClinicalAccountIdentifier:identifierCopy provenance:0 createOrUpdateIfNecessary:0 nameOnCreateOrUpdate:0 error:&v17];
  v11 = v17;

  if (v10)
  {
    dataProvenanceManager = [profileCopy dataProvenanceManager];
    v13 = [dataProvenanceManager localDataProvenanceForSourceEntity:v10 version:0 deviceEntity:0];

    if (v13)
    {
      v14 = v13;
    }

    else
    {
      [NSError hk_assignError:error code:100 description:@"Failed to get provenance for medical record source entity"];
    }

    goto LABEL_12;
  }

  if (v11)
  {
    if (error)
    {
      v15 = v11;
      v13 = 0;
      *error = v11;
      goto LABEL_12;
    }

    _HKLogDroppedError();
  }

  else
  {
    [NSError hk_assignError:error code:100 format:@"no matching medical record source entity is present for account with identifier %@", identifierCopy];
  }

  v13 = 0;
LABEL_12:

  return v13;
}

+ (id)_existingMedicalRecord:(id)record originalFHIRResourceRowID:(id)d database:(id)database profile:(id)profile error:(id *)error
{
  recordCopy = record;
  dCopy = d;
  v12 = HDMedicalRecordEntityPropertyOriginalFHIRResourceROWID;
  profileCopy = profile;
  databaseCopy = database;
  v15 = [HDSQLiteComparisonPredicate predicateWithProperty:v12 equalToValue:dCopy];
  v60[0] = v15;
  fHIRIdentifier = [recordCopy FHIRIdentifier];
  v17 = HDMedicalRecordEntityPredicateForFHIRIdentifier();
  v60[1] = v17;
  v18 = [NSArray arrayWithObjects:v60 count:2];
  v19 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v18];

  v49 = 0;
  v20 = [HDMedicalRecordEntity _medicalRecordsWithPredicate:v19 withoutConceptIndex:1 excludeSignedClinicalDataRecords:0 database:databaseCopy profile:profileCopy error:&v49];

  v21 = v49;
  if (!v20)
  {
    _HKInitializeLogging();
    v24 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      log = v24;
      v44 = [self debugDescription];
      fHIRIdentifier2 = [recordCopy FHIRIdentifier];
      identifier = [fHIRIdentifier2 identifier];
      fHIRIdentifier3 = [recordCopy FHIRIdentifier];
      resourceType = [fHIRIdentifier3 resourceType];
      *buf = 138544387;
      v51 = v44;
      v52 = 2113;
      v53 = identifier;
      v54 = 2113;
      v55 = resourceType;
      v56 = 2114;
      v57 = dCopy;
      v58 = 2114;
      v59 = v21;
      _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@ Error quering for medicalRecord record with identifier: %{private}@, resourceType: %{private}@, originalFHIRResourceRowID: %{public}@. Error: %{public}@ ", buf, 0x34u);

      if (v21)
      {
        goto LABEL_12;
      }
    }

    else if (v21)
    {
LABEL_12:
      firstObject = 0;
      goto LABEL_13;
    }

    v25 = [self debugDescription];
    fHIRIdentifier4 = [recordCopy FHIRIdentifier];
    identifier2 = [fHIRIdentifier4 identifier];
    fHIRIdentifier5 = [recordCopy FHIRIdentifier];
    resourceType2 = [fHIRIdentifier5 resourceType];
    [NSError hk_assignError:error code:2000 format:@"%@ Error quering for medicalRecord record with identifier: %@, resourceType: %@, originalFHIRResourceRowID: %@", v25, identifier2, resourceType2, dCopy];

LABEL_11:
    goto LABEL_12;
  }

  if (![v20 count])
  {
    v25 = [self debugDescription];
    fHIRIdentifier4 = [recordCopy FHIRIdentifier];
    identifier2 = [fHIRIdentifier4 identifier];
    fHIRIdentifier5 = [recordCopy FHIRIdentifier];
    [fHIRIdentifier5 resourceType];
    v30 = v19;
    v32 = v31 = v21;
    [NSError hk_assignError:error code:118 format:@"%@ No found for medicalRecord record with identifier: %@, resourceType: %@, originalFHIRResourceRowID: %@", v25, identifier2, v32, dCopy];

    v21 = v31;
    v19 = v30;
    goto LABEL_11;
  }

  if ([v20 count] >= 2)
  {
    _HKInitializeLogging();
    v22 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      v38 = v22;
      v39 = [self debugDescription];
      fHIRIdentifier6 = [recordCopy FHIRIdentifier];
      [fHIRIdentifier6 identifier];
      v41 = v48 = v21;
      fHIRIdentifier7 = [recordCopy FHIRIdentifier];
      resourceType3 = [fHIRIdentifier7 resourceType];
      *buf = 138544131;
      v51 = v39;
      v52 = 2113;
      v53 = v41;
      v54 = 2113;
      v55 = resourceType3;
      v56 = 2114;
      v57 = dCopy;
      _os_log_fault_impl(&dword_0, v38, OS_LOG_TYPE_FAULT, "%{public}@ More than one medicalRecord record found with identifier: %{private}@, resourceType: %{private}@, originalFHIRResourceRowID: %{public}@ found in the database.", buf, 0x2Au);

      v21 = v48;
    }
  }

  firstObject = [v20 firstObject];
LABEL_13:

  return firstObject;
}

@end