@interface HDClinicalRecordEntity
+ (BOOL)_clinicalRecord:(id)a3 equivalentTo:(id)a4;
+ (BOOL)_enumerateEntitiesWithOriginalFHIRResourceROWID:(id)a3 database:(id)a4 error:(id *)a5 enumerationHandler:(id)a6;
+ (BOOL)_insertClinicalRecords:(id)a3 clinicalExternalID:(id)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)_insertOrReplaceClinicalRecord:(id)a3 existingEntity:(id)a4 clinicalExternalID:(id)a5 profile:(id)a6 error:(id *)a7;
+ (id)_clinicalRecordsWithPredicate:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)_existingClinicalRecord:(id)a3 originalFHIRResourceRowID:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)clinicalRecordWithResourceIdentifier:(id)a3 source:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)processClinicalRecordsInExtractionResult:(id)a3 clinicalExternalID:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)processClinicalRecordsInExtractionResultItem:(id)a3 clinicalExternalID:(id)a4 database:(id)a5 profile:(id)a6 error:(id *)a7;
- (BOOL)_updateOriginalFHIRResourceROWID:(id)a3 database:(id)a4 error:(id *)a5;
- (id)_fetchIdentifierFromDatabase:(id)a3 error:(id *)a4;
@end

@implementation HDClinicalRecordEntity

+ (id)processClinicalRecordsInExtractionResult:(id)a3 clinicalExternalID:(id)a4 profile:(id)a5 error:(id *)a6
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
  v30[2] = sub_6EA4C;
  v30[3] = &unk_106390;
  v35 = a1;
  v31 = v10;
  v32 = v11;
  v33 = v12;
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

+ (id)processClinicalRecordsInExtractionResultItem:(id)a3 clinicalExternalID:(id)a4 database:(id)a5 profile:(id)a6 error:(id *)a7
{
  v12 = a3;
  v52 = a4;
  v13 = a5;
  v53 = a6;
  v14 = [v12 originalFHIRResource];
  v15 = [v14 existingRowID];

  if (!v15)
  {
    v43 = [v12 originalFHIRResource];
    [NSError hk_assignError:a7 code:3 format:@"cannot process extraction result item for a resource that doesn't know its ROWID. Resource: %@", v43];

    v42 = 0;
    goto LABEL_28;
  }

  v16 = objc_alloc_init(NSMutableDictionary);
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_6F164;
  v62[3] = &unk_1082D0;
  v63 = v13;
  v17 = v16;
  v64 = v17;
  if ([a1 _enumerateEntitiesWithOriginalFHIRResourceROWID:v15 database:v63 error:a7 enumerationHandler:v62])
  {
    v51 = a7;
    v45 = v13;
    v46 = v12;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = [v12 units];
    v55 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
    v18 = 0;
    if (v55)
    {
      v54 = *v59;
      v48 = _HKPrivateMetadataKeyOriginalFHIRResourceROWID;
      v49 = a1;
      v50 = v17;
      while (2)
      {
        for (i = 0; i != v55; i = i + 1)
        {
          if (*v59 != v54)
          {
            objc_enumerationMutation(obj);
          }

          v20 = [*(*(&v58 + 1) + 8 * i) clinicalRecord];
          if (v20)
          {
            v21 = v20;
            v22 = [v20 metadata];
            v23 = [v22 mutableCopy];
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

            v27 = v15;
            [v26 setObject:v15 forKeyedSubscript:v48];
            [v21 _setMetadata:v26];
            v28 = [HKFHIRIdentifier alloc];
            v29 = [v21 FHIRResource];
            v30 = [v29 resourceType];
            v31 = [v21 FHIRResource];
            v32 = [v31 identifier];
            v33 = [v28 initWithResourceType:v30 identifier:v32];

            v17 = v50;
            v34 = [v50 objectForKeyedSubscript:v33];
            a1 = v49;
            LODWORD(v28) = [v49 _insertOrReplaceClinicalRecord:v21 existingEntity:v34 clinicalExternalID:v52 profile:v53 error:v51];

            if (!v28)
            {

              v42 = 0;
              v13 = v45;
              v12 = v46;
              v15 = v27;
              goto LABEL_27;
            }

            v18 = v56 + 1;
            [v50 removeObjectForKey:v33];

            v15 = v27;
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

    v13 = v45;
    if ([v17 count])
    {
      v35 = v18;
      v36 = [v17 allValues];
      v37 = [v36 hk_mapToSet:&stru_108310];

      v38 = [HDSQLiteContainsPredicate containsPredicateWithProperty:HDSQLEntityPropertyPersistentID values:v37];
      v57 = 0;
      v39 = [v53 dataManager];
      v40 = [v39 deleteDataObjectsOfClass:a1 predicate:v38 limit:kHDSQLiteQueryNoLimit deletedSampleCount:&v57 notifyObservers:1 generateDeletedObjects:1 recursiveDeleteAuthorizationBlock:0 error:v51];

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
        v66 = a1;
        v67 = 2048;
        v68 = v57;
        _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "%{public}@ deleted %lu obsolete clinical record entities", buf, 0x16u);
      }

      v18 = v35;
    }

    v42 = [NSNumber numberWithUnsignedInteger:v18];
LABEL_26:
    v12 = v46;
    goto LABEL_27;
  }

  v42 = 0;
LABEL_27:

LABEL_28:

  return v42;
}

+ (id)clinicalRecordWithResourceIdentifier:(id)a3 source:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [a4 bundleIdentifier];
  v13 = [a1 predicateForObjectsFromLocalSourceWithBundleIdentifier:v12 profile:v11 error:a6];

  if (v13)
  {
    v14 = [a1 existingClinicalRecordCreatedFromResourceWithIdentifier:v10 basePredicate:v13 profile:v11 error:a6];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (BOOL)_insertOrReplaceClinicalRecord:(id)a3 existingEntity:(id)a4 clinicalExternalID:(id)a5 profile:(id)a6 error:(id *)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = [v13 metadata];
  v18 = [v17 objectForKeyedSubscript:_HKPrivateMetadataKeyOriginalFHIRResourceROWID];

  if (!v18)
  {
    sub_A6050(a2, a1);
  }

  v19 = [v13 FHIRResource];

  if (v19)
  {
    if (v14)
    {
      v20 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v14 persistentID]);
      v59 = 0;
      v21 = [a1 objectWithID:v20 encodingOptions:0 profile:v16 error:&v59];
      v22 = v59;

      if (!v21)
      {
        v22 = v22;
        if (v22)
        {
          if (a7)
          {
            v25 = v22;
            *a7 = v22;
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

      if ([a1 _clinicalRecord:v21 equivalentTo:v13])
      {
        v23 = 0;
        v24 = 1;
LABEL_33:

        goto LABEL_34;
      }

      v50 = a1;
      obj = v22;
      v58 = 0;
      v23 = [HDMedicalDownloadableAttachmentEntity _attachmentsAfterRelinkingFromClinicalRecord:v21 toClinicalRecord:v13 profile:v16 error:&v58];
      v26 = v58;
      v27 = v21;
      if (!v23)
      {
        _HKInitializeLogging();
        v28 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          sub_A60C4(v50, v26, v28);
        }
      }

      v48 = v16;
      v29 = [v16 dataManager];
      v66 = v21;
      [NSArray arrayWithObjects:&v66 count:1];
      v31 = v30 = v26;
      v32 = [v29 deleteDataObjects:v31 restrictedSourceEntities:0 failIfNotFound:1 recursiveDeleteAuthorizationBlock:0 error:a7];

      if (!v32)
      {
        v24 = 0;
        v16 = v48;
LABEL_34:

        goto LABEL_35;
      }

      v16 = v48;
    }

    else
    {
      v50 = a1;
      v23 = 0;
    }

    v65 = v13;
    v33 = [NSArray arrayWithObjects:&v65 count:1];
    v24 = [v50 _insertClinicalRecords:v33 clinicalExternalID:v15 profile:v16 error:a7];

    v22 = [v16 attachmentManager];
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
      v47 = v14;
      v49 = v16;
      v46 = v15;
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

          v38 = [*(*(&v54 + 1) + 8 * v37) hkAttachment];
          v39 = [v13 attachmentObjectIdentifier];
          v40 = [v13 attachmentSchemaIdentifier];
          v53 = 0;
          v41 = [v22 addReferenceWithAttachment:v38 toObjectWithIdentifier:v39 schemaIdentifier:v40 metadata:0 error:&v53];
          v42 = v53;

          if (!v41)
          {
            _HKInitializeLogging();
            v43 = HKLogHealthRecords;
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v61 = v50;
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
      v15 = v46;
      v14 = v47;
      v16 = v49;
      v24 = v45;
    }

    else
    {
      v23 = v21;
    }

    goto LABEL_33;
  }

  [NSError hk_assignError:a7 code:3 format:@"Clinical records with a nil FHIR resource are invalid, not inserting %@", v13];
  v24 = 0;
LABEL_35:

  return v24;
}

- (id)_fetchIdentifierFromDatabase:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  LOBYTE(self) = [(HDClinicalRecordEntity *)self getValuesForProperties:v7 database:v6 handler:v13];

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
      if (a4)
      {
        v11 = v9;
        *a4 = v10;
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

+ (BOOL)_clinicalRecord:(id)a3 equivalentTo:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  v7 = [v5 displayName];
  v8 = [v6 displayName];
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_7;
  }

  v10 = [v6 displayName];
  if (!v10)
  {
LABEL_29:

    goto LABEL_30;
  }

  v11 = [v5 displayName];
  v12 = [v6 displayName];
  v13 = [v11 isEqualToString:v12];

  if (v13)
  {
LABEL_7:
    v7 = [v5 FHIRResource];
    v9 = [v6 FHIRResource];
    if ((v7 == 0) == (v9 != 0))
    {
      goto LABEL_28;
    }

    v14 = [v7 resourceType];
    v15 = [v9 resourceType];
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      v17 = [v9 resourceType];
      if (!v17)
      {
        goto LABEL_27;
      }

      v18 = v17;
      v19 = [v7 resourceType];
      v20 = [v9 resourceType];
      v21 = [v19 isEqualToString:v20];

      if (!v21)
      {
        goto LABEL_28;
      }
    }

    v14 = [v7 identifier];
    v22 = [v9 identifier];
    v16 = v22;
    if (v14 == v22)
    {
    }

    else
    {
      v23 = [v9 identifier];
      if (!v23)
      {
        goto LABEL_27;
      }

      v24 = v23;
      v25 = [v7 identifier];
      v26 = [v9 identifier];
      v27 = [v25 isEqualToString:v26];

      if (!v27)
      {
        goto LABEL_28;
      }
    }

    v14 = [v7 sourceURL];
    v28 = [v9 sourceURL];
    v16 = v28;
    if (v14 == v28)
    {
    }

    else
    {
      v29 = [v9 sourceURL];
      if (!v29)
      {
        goto LABEL_27;
      }

      v30 = v29;
      v31 = [v7 sourceURL];
      v32 = [v9 sourceURL];
      v33 = [v31 isEqual:v32];

      if (!v33)
      {
        goto LABEL_28;
      }
    }

    v14 = [v7 data];
    v34 = [v9 data];
    v16 = v34;
    if (v14 == v34)
    {

LABEL_32:
      LOBYTE(v10) = 1;
      goto LABEL_29;
    }

    v35 = [v9 data];
    if (v35)
    {
      v36 = v35;
      v37 = [v7 data];
      v38 = [v9 data];
      v39 = [v37 isEqual:v38];

      if (v39)
      {
        goto LABEL_32;
      }

LABEL_28:
      LOBYTE(v10) = 0;
      goto LABEL_29;
    }

LABEL_27:

    goto LABEL_28;
  }

LABEL_5:
  LOBYTE(v10) = 0;
LABEL_30:

  return v10;
}

+ (BOOL)_insertClinicalRecords:(id)a3 clinicalExternalID:(id)a4 profile:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 count])
  {
    v12 = [v11 sourceManager];
    v22 = 0;
    v13 = [v12 publicSourceForClinicalExternalIdentifier:v10 provenance:0 createOrUpdateIfNecessary:0 nameOnCreateOrUpdate:0 error:&v22];
    v14 = v22;

    if (v13)
    {
      v15 = [v11 dataProvenanceManager];
      v16 = [v15 localDataProvenanceForSourceEntity:v13 version:0 deviceEntity:0];

      if (v16)
      {
        v17 = [v11 dataManager];
        v18 = [v9 firstObject];
        [v18 _creationTimestamp];
        v19 = [v17 insertDataObjects:v9 withProvenance:v16 creationDate:a6 error:?];
      }

      else
      {
        [NSError hk_assignError:a6 code:100 description:@"Failed to get provenance for clinical source entity"];
        v19 = 0;
      }

      goto LABEL_14;
    }

    if (v14)
    {
      if (a6)
      {
        v20 = v14;
        v19 = 0;
        *a6 = v14;
LABEL_14:

        goto LABEL_15;
      }

      _HKLogDroppedError();
    }

    else
    {
      [NSError hk_assignError:a6 code:100 format:@"unable to insert records for account with clinicalExternalID %@: no matching source entity is present", v10];
    }

    v19 = 0;
    goto LABEL_14;
  }

  [NSError hk_assignError:a6 code:3 description:@"No records given"];
  v19 = 0;
LABEL_15:

  return v19;
}

+ (id)_clinicalRecordsWithPredicate:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[HKClinicalType allTypes];
  v11 = [NSSet setWithArray:v10];
  v12 = [a1 entityEnumeratorWithTypes:v11 profile:v9 error:a5];

  if (v12)
  {
    [v12 setPredicate:v8];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_70218;
    v16[3] = &unk_106490;
    v13 = objc_alloc_init(NSMutableArray);
    v17 = v13;
    if ([v12 enumerateWithError:a5 handler:v16])
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

- (BOOL)_updateOriginalFHIRResourceROWID:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = a3;
  v15 = HDClinicalRecordEntityPropertyOriginalFHIRResourceROWID;
  v9 = a4;
  v10 = [NSArray arrayWithObjects:&v15 count:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_7036C;
  v13[3] = &unk_105B80;
  v14 = v8;
  v11 = v8;
  LOBYTE(a5) = [(HDClinicalRecordEntity *)self updateProperties:v10 database:v9 error:a5 bindingHandler:v13];

  return a5;
}

+ (BOOL)_enumerateEntitiesWithOriginalFHIRResourceROWID:(id)a3 database:(id)a4 error:(id *)a5 enumerationHandler:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = [a1 _predicateForRecordsWithOriginalFHIRResourceROWID:a3];
  v13 = [a1 queryWithDatabase:v11 predicate:v12];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_7049C;
  v16[3] = &unk_106420;
  v17 = v10;
  v14 = v10;
  LOBYTE(a5) = [v13 enumeratePersistentIDsAndProperties:0 error:a5 enumerationHandler:v16];

  return a5;
}

+ (id)_existingClinicalRecord:(id)a3 originalFHIRResourceRowID:(id)a4 profile:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v54 = a1;
  v57 = v10;
  v12 = [a1 _predicateForRecordsWithOriginalFHIRResourceROWID:v10];
  v69[0] = v12;
  v13 = HDClinicalRecordEntityPropertyFHIRResourceIdentifier;
  v14 = [v9 FHIRResource];
  v15 = [v14 identifier];
  v16 = [HDSQLiteComparisonPredicate predicateWithProperty:v13 equalToValue:v15];
  v69[1] = v16;
  v17 = HDClinicalRecordEntityPropertyFHIRResourceResourceType;
  v56 = v9;
  v18 = [v9 FHIRResource];
  v19 = [v18 resourceType];
  v20 = [HDSQLiteComparisonPredicate predicateWithProperty:v17 equalToValue:v19];
  v69[2] = v20;
  v21 = [NSArray arrayWithObjects:v69 count:3];
  v22 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v21];

  v58 = 0;
  v23 = [HDClinicalRecordEntity _clinicalRecordsWithPredicate:v22 profile:v11 error:&v58];

  v24 = v58;
  if (!v23)
  {
    _HKInitializeLogging();
    v29 = HKLogHealthRecords;
    v28 = v57;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v41 = v29;
      v42 = [v54 debugDescription];
      v43 = [v56 FHIRResource];
      v44 = [v43 identifier];
      v45 = [v56 FHIRResource];
      v46 = [v45 resourceType];
      *buf = 138544387;
      v60 = v42;
      v61 = 2113;
      v62 = v44;
      v63 = 2113;
      v64 = v46;
      v65 = 2114;
      v66 = v57;
      v67 = 2114;
      v68 = v24;
      _os_log_error_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "%{public}@ Error quering for clinical record with identifier: %{private}@, resourceType: %{private}@, originalFHIRResourceRowID: %{public}@. Error: %{public}@ ", buf, 0x34u);
    }

    v25 = v56;
    if (!v24)
    {
      v30 = [v54 debugDescription];
      v31 = [v56 FHIRResource];
      v32 = [v31 identifier];
      v33 = [v56 FHIRResource];
      v34 = [v33 resourceType];
      [NSError hk_assignError:a6 code:2000 format:@"%@ Error quering for clinical record with identifier: %@, resourceType: %@, originalFHIRResourceRowID: %@", v30, v32, v34, v57];

      v28 = v57;
    }

    goto LABEL_12;
  }

  if (![v23 count])
  {
    [v54 debugDescription];
    v35 = v55 = v24;
    v25 = v56;
    v36 = [v56 FHIRResource];
    v37 = [v36 identifier];
    v38 = [v56 FHIRResource];
    v39 = [v38 resourceType];
    v28 = v57;
    [NSError hk_assignError:a6 code:118 format:@"%@ No found for clinical record with identifier: %@, resourceType: %@, originalFHIRResourceRowID: %@", v35, v37, v39, v57];

    v24 = v55;
LABEL_12:
    v27 = 0;
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
      v48 = [v54 debugDescription];
      v49 = [v56 FHIRResource];
      v50 = [v49 identifier];
      v51 = [v56 FHIRResource];
      v52 = [v51 resourceType];
      *buf = 138544131;
      v60 = v48;
      v61 = 2113;
      v62 = v50;
      v63 = 2113;
      v64 = v52;
      v65 = 2114;
      v66 = v57;
      _os_log_fault_impl(&dword_0, v47, OS_LOG_TYPE_FAULT, "%{public}@ More than one clinical record found with identifier: %{private}@, resourceType: %{private}@, originalFHIRResourceRowID: %{public}@ found in the database.", buf, 0x2Au);
    }
  }

  v27 = [v23 firstObject];
  v28 = v57;
LABEL_13:

  return v27;
}

@end