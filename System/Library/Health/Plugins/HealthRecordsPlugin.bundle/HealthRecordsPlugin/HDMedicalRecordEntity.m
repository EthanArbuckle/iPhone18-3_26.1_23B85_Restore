@interface HDMedicalRecordEntity
+ (BOOL)_enumerateEntitiesWithOriginalFHIRResourceROWID:(id)a3 database:(id)a4 error:(id *)a5 enumerationHandler:(id)a6;
+ (BOOL)_insertMedicalRecords:(id)a3 accountIdentifier:(id)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)_insertOrReplaceMedicalRecord:(id)a3 existingRecord:(id)a4 accountIdentifier:(id)a5 profile:(id)a6 didInsert:(BOOL *)a7 didUpdate:(BOOL *)a8 error:(id *)a9;
+ (Class)medicalRecordEntityForDataTypeCode:(id)a3;
+ (id)_existingMedicalRecord:(id)a3 originalFHIRResourceRowID:(id)a4 database:(id)a5 profile:(id)a6 error:(id *)a7;
+ (id)_medicalRecordProvenanceForAccountIdentifier:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)_medicalRecordsWithPredicate:(id)a3 withoutConceptIndex:(BOOL)a4 excludeSignedClinicalDataRecords:(BOOL)a5 database:(id)a6 profile:(id)a7 error:(id *)a8;
+ (id)medicalRecordWithSourceBundleIdentifier:(id)a3 FHIRIdentifier:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)processMedicalRecordsInExtractionResult:(id)a3 accountIdentifier:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)processMedicalRecordsInExtractionResultItem:(id)a3 accountIdentifier:(id)a4 database:(id)a5 profile:(id)a6 error:(id *)a7;
- (BOOL)_updateOriginalFHIRResourceROWID:(id)a3 database:(id)a4 error:(id *)a5;
@end

@implementation HDMedicalRecordEntity

+ (id)medicalRecordWithSourceBundleIdentifier:(id)a3 FHIRIdentifier:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_17E74;
  v30 = sub_17E84;
  v31 = 0;
  v13 = [v12 database];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_17E8C;
  v20[3] = &unk_106390;
  v25 = a1;
  v14 = v10;
  v21 = v14;
  v15 = v12;
  v22 = v15;
  v16 = v11;
  v23 = v16;
  v24 = &v26;
  LODWORD(a6) = [a1 performReadTransactionWithHealthDatabase:v13 error:a6 block:v20];

  if (a6)
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

+ (id)processMedicalRecordsInExtractionResult:(id)a3 accountIdentifier:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  _HKInitializeLogging();
  v13 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = NSStringFromClass(a1);
    *buf = 138543618;
    *&buf[4] = v15;
    *&buf[12] = 2114;
    *&buf[14] = v10;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ processing extraction result %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v37 = 0;
  v16 = [v12 database];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_18284;
  v30[3] = &unk_106390;
  v35 = a1;
  v31 = v10;
  v32 = v11;
  v33 = v12;
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
  v20 = [a1 performWriteTransactionWithHealthDatabase:v16 error:a6 block:v30 inaccessibilityHandler:&v23];

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

+ (id)processMedicalRecordsInExtractionResultItem:(id)a3 accountIdentifier:(id)a4 database:(id)a5 profile:(id)a6 error:(id *)a7
{
  v12 = a3;
  v57 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v12 originalFHIRResource];
  v16 = [v15 existingRowID];

  if (!v16)
  {
    v38 = [v12 originalFHIRResource];
    [NSError hk_assignError:a7 code:3 format:@"cannot process extraction result item for a resource that doesn't know its ROWID. Resource: %@", v38];

    v39 = 0;
    goto LABEL_32;
  }

  v17 = [a1 _predicateForRecordsWithOriginalFHIRResourceROWID:v16];
  v18 = [a1 _medicalRecordsWithPredicate:v17 withoutConceptIndex:1 excludeSignedClinicalDataRecords:0 database:v13 profile:v14 error:a7];
  if (v18)
  {
    v53 = a1;
    v54 = a7;
    v48 = v17;
    v49 = v13;
    v55 = v14;
    v56 = v16;
    v47 = v18;
    v19 = [v18 hk_mapToDictionary:&stru_1063F8];
    v20 = [v19 mutableCopy];

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v50 = v12;
    obj = [v12 units];
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
          v27 = [v26 medicalRecord];
          if (v27)
          {
            v28 = v27;
            v29 = [v27 metadata];
            v30 = [v29 mutableCopy];
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
            v35 = [v28 FHIRIdentifier];
            if (!v35)
            {
              [NSError hk_assignError:v54 code:3 format:@"nil FHIR identifier on %@", v28];
LABEL_29:

              v39 = 0;
              v13 = v49;
              v12 = v50;
              v14 = v55;
              goto LABEL_30;
            }

            v36 = [v20 objectForKeyedSubscript:v35];
            v37 = [v53 _insertOrReplaceMedicalRecord:v28 existingRecord:v36 accountIdentifier:v57 profile:v55 didInsert:0 didUpdate:0 error:v54];

            if (!v37)
            {
              goto LABEL_29;
            }

            ++v23;
            [v20 removeObjectForKey:v35];
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

    v13 = v49;
    v12 = v50;
    v14 = v55;
    if ([v20 count])
    {
      v40 = [v55 dataManager];
      v41 = [v20 allValues];
      v42 = [v40 deleteDataObjects:v41 restrictedSourceEntities:0 failIfNotFound:1 recursiveDeleteAuthorizationBlock:0 error:v54];

      v39 = 0;
      if (!v42)
      {
LABEL_30:

        v16 = v56;
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
        v63 = v53;
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

+ (BOOL)_insertOrReplaceMedicalRecord:(id)a3 existingRecord:(id)a4 accountIdentifier:(id)a5 profile:(id)a6 didInsert:(BOOL *)a7 didUpdate:(BOOL *)a8 error:(id *)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = v15 != 0;
  v53 = v15 != 0;
  if (v15)
  {
    v19 = [v14 enteredInError];
    if (v19)
    {
      v51 = a7;
      v20 = [v15 UUID];
      v63 = 0;
      v21 = [HDMedicalDownloadableAttachmentEntity _deleteAttachmentsWithMedicalRecordIdentifier:v20 profile:v17 error:&v63];
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
      if ([v15 isEquivalent:v14])
      {
        v23 = [v14 extractionVersion];
        if (v23 <= [v15 extractionVersion])
        {
          [v14 enteredInError];
          v29 = 0;
          v18 = 0;
          obj = 0;
          if (!a7)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }
      }

      v62 = 0;
      v24 = [HDMedicalDownloadableAttachmentEntity _attachmentsAfterRelinkingFromMedicalRecord:v15 toMedicalRecord:v14 profile:v17 error:&v62];
      v22 = v62;
      obj = v24;
      v51 = a7;
      if (!v24)
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          sub_9DBB0();
        }
      }
    }

    v25 = [v17 dataManager];
    v70 = v15;
    v26 = [NSArray arrayWithObjects:&v70 count:1];
    v27 = [v25 deleteDataObjects:v26 restrictedSourceEntities:0 failIfNotFound:1 recursiveDeleteAuthorizationBlock:0 error:a9];

    if (!v27)
    {
      goto LABEL_36;
    }

    a7 = v51;
    v18 = v15 != 0;
  }

  else
  {
    obj = 0;
    v19 = 0;
  }

  v28 = [v14 enteredInError];
  v29 = 0;
  if (v19 & 1) != 0 || (v28)
  {
    goto LABEL_31;
  }

  v30 = [v14 metadata];
  v31 = [v30 objectForKeyedSubscript:_HKPrivateMetadataKeyOriginalFHIRResourceROWID];

  if (!v31)
  {
    sub_9DC80(a2, a1);
  }

  v69 = v14;
  v32 = [NSArray arrayWithObjects:&v69 count:1];
  v33 = [a1 _insertMedicalRecords:v32 accountIdentifier:v16 profile:v17 error:a9];

  if (!v33)
  {
LABEL_36:
    v45 = 0;
    goto LABEL_37;
  }

  v50 = v15;
  v52 = a7;
  v48 = a8;
  v49 = v16;
  v47 = v17;
  v34 = [v17 attachmentManager];
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

        v39 = [*(*(&v58 + 1) + 8 * i) hkAttachment];
        v40 = [v14 attachmentObjectIdentifier];
        v41 = [v14 attachmentSchemaIdentifier];
        v57 = 0;
        v42 = [v34 addReferenceWithAttachment:v39 toObjectWithIdentifier:v40 schemaIdentifier:v41 metadata:0 error:&v57];
        v43 = v57;

        if (!v42)
        {
          _HKInitializeLogging();
          v44 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543619;
            v65 = a1;
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
  v16 = v49;
  v15 = v50;
  v17 = v47;
  a8 = v48;
  a7 = v52;
  v18 = v53;
LABEL_31:
  if (a7)
  {
LABEL_32:
    *a7 = v29 & !v18;
  }

LABEL_33:
  if (a8)
  {
    *a8 = v18 & v29;
  }

  v45 = 1;
LABEL_37:

  return v45;
}

+ (BOOL)_insertMedicalRecords:(id)a3 accountIdentifier:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 count])
  {
    v13 = [a1 _medicalRecordProvenanceForAccountIdentifier:v11 profile:v12 error:a6];
    if (v13)
    {
      v14 = [v12 dataManager];
      v15 = [v10 firstObject];
      [v15 _creationTimestamp];
      v16 = [v14 insertDataObjects:v10 withProvenance:v13 creationDate:a6 error:?];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    [NSError hk_assignError:a6 code:3 description:@"No records given"];
    v16 = 0;
  }

  return v16;
}

+ (BOOL)_enumerateEntitiesWithOriginalFHIRResourceROWID:(id)a3 database:(id)a4 error:(id *)a5 enumerationHandler:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = [a1 _predicateForRecordsWithOriginalFHIRResourceROWID:a3];
  v13 = [a1 queryWithDatabase:v11 predicate:v12];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_190E0;
  v16[3] = &unk_106420;
  v17 = v10;
  v14 = v10;
  LOBYTE(a5) = [v13 enumeratePersistentIDsAndProperties:0 error:a5 enumerationHandler:v16];

  return a5;
}

- (BOOL)_updateOriginalFHIRResourceROWID:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = a3;
  v15 = HDMedicalRecordEntityPropertyOriginalFHIRResourceROWID;
  v9 = a4;
  v10 = [NSArray arrayWithObjects:&v15 count:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_192F4;
  v13[3] = &unk_105B80;
  v14 = v8;
  v11 = v8;
  LOBYTE(a5) = [(HDMedicalRecordEntity *)self updateProperties:v10 database:v9 error:a5 bindingHandler:v13];

  return a5;
}

+ (Class)medicalRecordEntityForDataTypeCode:(id)a3
{
  v3 = qword_128820;
  v4 = a3;
  if (v3 != -1)
  {
    sub_9DCE4();
  }

  v5 = [qword_128818 objectForKeyedSubscript:v4];

  return v5;
}

+ (id)_medicalRecordsWithPredicate:(id)a3 withoutConceptIndex:(BOOL)a4 excludeSignedClinicalDataRecords:(BOOL)a5 database:(id)a6 profile:(id)a7 error:(id *)a8
{
  v12 = a4;
  v15 = a3;
  v16 = a6;
  v45 = a7;
  v17 = objc_alloc_init(NSMutableDictionary);
  v44 = a1;
  v18 = [a1 queryWithDatabase:v16 predicate:v15];
  v42 = HDDataEntityPropertyDataID;
  v58[0] = HDDataEntityPropertyDataID;
  v58[1] = HDDataEntityPropertyType;
  v58[2] = HDSampleEntityPropertyDataType;
  v19 = [NSArray arrayWithObjects:v58 count:3];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_199A0;
  v52[3] = &unk_106468;
  v54 = a5;
  v20 = v17;
  v53 = v20;
  v43 = a8;
  v21 = [v18 enumeratePersistentIDsAndProperties:v19 error:a8 enumerationHandler:v52];

  if (v21)
  {
    v39 = v16;
    v40 = v15;
    v41 = objc_alloc_init(NSMutableArray);
    v38 = v18;
    if (v12)
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
          v30 = [v44 medicalRecordEntityForDataTypeCode:v29];
          if (!v30)
          {
            sub_9DCF8(a2, v44, v29);
          }

          v31 = [v24 objectForKeyedSubscript:v29];
          if (![v31 count])
          {
            sub_9DD6C(a2, v44, v29);
          }

          v32 = [HDSQLiteContainsPredicate containsPredicateWithProperty:v42 values:v31];
          v33 = [v30 entityEnumeratorWithProfile:v45];
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
          v34 = [v33 enumerateWithError:v43 handler:v46];

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

    v16 = v39;
    v15 = v40;
    v20 = v37;
    v18 = v38;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)_medicalRecordProvenanceForAccountIdentifier:(id)a3 profile:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 sourceManager];
  v17 = 0;
  v10 = [v9 privateSourceForClinicalAccountIdentifier:v7 provenance:0 createOrUpdateIfNecessary:0 nameOnCreateOrUpdate:0 error:&v17];
  v11 = v17;

  if (v10)
  {
    v12 = [v8 dataProvenanceManager];
    v13 = [v12 localDataProvenanceForSourceEntity:v10 version:0 deviceEntity:0];

    if (v13)
    {
      v14 = v13;
    }

    else
    {
      [NSError hk_assignError:a5 code:100 description:@"Failed to get provenance for medical record source entity"];
    }

    goto LABEL_12;
  }

  if (v11)
  {
    if (a5)
    {
      v15 = v11;
      v13 = 0;
      *a5 = v11;
      goto LABEL_12;
    }

    _HKLogDroppedError();
  }

  else
  {
    [NSError hk_assignError:a5 code:100 format:@"no matching medical record source entity is present for account with identifier %@", v7];
  }

  v13 = 0;
LABEL_12:

  return v13;
}

+ (id)_existingMedicalRecord:(id)a3 originalFHIRResourceRowID:(id)a4 database:(id)a5 profile:(id)a6 error:(id *)a7
{
  v10 = a3;
  v11 = a4;
  v12 = HDMedicalRecordEntityPropertyOriginalFHIRResourceROWID;
  v13 = a6;
  v14 = a5;
  v15 = [HDSQLiteComparisonPredicate predicateWithProperty:v12 equalToValue:v11];
  v60[0] = v15;
  v16 = [v10 FHIRIdentifier];
  v17 = HDMedicalRecordEntityPredicateForFHIRIdentifier();
  v60[1] = v17;
  v18 = [NSArray arrayWithObjects:v60 count:2];
  v19 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v18];

  v49 = 0;
  v20 = [HDMedicalRecordEntity _medicalRecordsWithPredicate:v19 withoutConceptIndex:1 excludeSignedClinicalDataRecords:0 database:v14 profile:v13 error:&v49];

  v21 = v49;
  if (!v20)
  {
    _HKInitializeLogging();
    v24 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      log = v24;
      v44 = [a1 debugDescription];
      v34 = [v10 FHIRIdentifier];
      v35 = [v34 identifier];
      v36 = [v10 FHIRIdentifier];
      v37 = [v36 resourceType];
      *buf = 138544387;
      v51 = v44;
      v52 = 2113;
      v53 = v35;
      v54 = 2113;
      v55 = v37;
      v56 = 2114;
      v57 = v11;
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
      v23 = 0;
      goto LABEL_13;
    }

    v25 = [a1 debugDescription];
    v26 = [v10 FHIRIdentifier];
    v27 = [v26 identifier];
    v28 = [v10 FHIRIdentifier];
    v29 = [v28 resourceType];
    [NSError hk_assignError:a7 code:2000 format:@"%@ Error quering for medicalRecord record with identifier: %@, resourceType: %@, originalFHIRResourceRowID: %@", v25, v27, v29, v11];

LABEL_11:
    goto LABEL_12;
  }

  if (![v20 count])
  {
    v25 = [a1 debugDescription];
    v26 = [v10 FHIRIdentifier];
    v27 = [v26 identifier];
    v28 = [v10 FHIRIdentifier];
    [v28 resourceType];
    v30 = v19;
    v32 = v31 = v21;
    [NSError hk_assignError:a7 code:118 format:@"%@ No found for medicalRecord record with identifier: %@, resourceType: %@, originalFHIRResourceRowID: %@", v25, v27, v32, v11];

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
      v39 = [a1 debugDescription];
      v40 = [v10 FHIRIdentifier];
      [v40 identifier];
      v41 = v48 = v21;
      v42 = [v10 FHIRIdentifier];
      v43 = [v42 resourceType];
      *buf = 138544131;
      v51 = v39;
      v52 = 2113;
      v53 = v41;
      v54 = 2113;
      v55 = v43;
      v56 = 2114;
      v57 = v11;
      _os_log_fault_impl(&dword_0, v38, OS_LOG_TYPE_FAULT, "%{public}@ More than one medicalRecord record found with identifier: %{private}@, resourceType: %{private}@, originalFHIRResourceRowID: %{public}@ found in the database.", buf, 0x2Au);

      v21 = v48;
    }
  }

  v23 = [v20 firstObject];
LABEL_13:

  return v23;
}

@end