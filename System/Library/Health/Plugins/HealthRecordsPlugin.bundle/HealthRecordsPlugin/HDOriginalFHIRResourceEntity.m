@interface HDOriginalFHIRResourceEntity
+ (BOOL)_ensureForeignKeysAreDeferredInDatabase:(id)a3 error:(id *)a4;
+ (BOOL)_insertCodableFHIRResources:(id)a3 syncProvenance:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)_recordResourceLastSeen:(id)a3 resourcePersistentID:(id)a4 database:(id)a5 error:(id *)a6;
+ (BOOL)_validateCodableFHIRResource:(id)a3 error:(id *)a4;
+ (BOOL)_validateCodableFHIRResourceFromSync:(id)a3 error:(id *)a4;
+ (BOOL)enumerateFHIRResourceObjectsWithLocalProvenanceForAccountEntity:(id)a3 startAnchor:(int64_t)a4 endAnchor:(int64_t)a5 database:(id)a6 error:(id *)a7 enumerationHandler:(id)a8;
+ (BOOL)insertNewResourceObjects:(id)a3 account:(id)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)insertOrUpdateResourceObjects:(id)a3 upsertedResourceObjectPairs:(id *)a4 account:(id)a5 syncProvenance:(int64_t)a6 syncIdentity:(int64_t)a7 profile:(id)a8 error:(id *)a9 inaccessibilityHandler:(id)a10;
+ (id)_insertResourceObjectWithIdentifier:(id)a3 accountID:(int64_t)a4 syncProvenance:(int64_t)a5 syncIdentity:(int64_t)a6 rawContent:(id)a7 uniquenessChecksum:(id)a8 sourceURL:(id)a9 FHIRVersion:(id)a10 receivedDate:(id)a11 receivedDateTimeZoneName:(id)a12 firstSeenDate:(id)a13 firstSeenDateOut:(id *)a14 firstSeenDateTimeZoneName:(id)a15 extractionHints:(int64_t)a16 originVersion:(id *)a17 originBuild:(id)a18 database:(id)a19 error:(id *)a20;
+ (id)_predicateForLegacyResourceTypes;
+ (id)_predicateForPatientResourcesForAccountWithIdentifier:(id)a3;
+ (id)_predicateForResourceWithIdentifier:(id)a3;
+ (id)_predicateForResourceWithSourceURL:(id)a3;
+ (id)_propertiesForEntity;
+ (id)_propertiesForResourceData;
+ (id)_rawInsertResourceObjectWithIdentifier:(id)a3 accountID:(int64_t)a4 syncProvenance:(int64_t)a5 syncIdentity:(int64_t)a6 rawContent:(id)a7 uniquenessChecksum:(id)a8 sourceURL:(id)a9 FHIRVersion:(id)a10 receivedDate:(id)a11 receivedDateTimeZoneName:(id)a12 firstSeenDate:(id)a13 firstSeenDateTimeZoneName:(id)a14 extractionHints:(int64_t)a15 originVersion:(id *)a16 originBuild:(id)a17 database:(id)a18 error:(id *)a19;
+ (id)_resourceDataWithROWID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
+ (id)_resourceDocumentWithResourceObjects:(id)a3;
+ (id)_resourceObjectWithRow:(HDSQLiteRow *)a3 rowID:(int64_t)a4 assignCountry:(id)a5 error:(id *)a6;
+ (id)_resourceObjectsInDatabase:(id)a3 withPredicate:(id)a4 limitCount:(int64_t)a5 highestPersistentID:(int64_t *)a6 assignCountry:(id)a7 error:(id *)a8;
+ (id)_resourceObjectsWithIdentifiers:(id)a3 accountIdentifier:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)_wrapRawInsertResourceObjectWithIdentifier:(id)a3 accountID:(int64_t)a4 syncProvenance:(int64_t)a5 syncIdentity:(int64_t)a6 rawContent:(id)a7 uniquenessChecksum:(id)a8 sourceURL:(id)a9 FHIRVersion:(id)a10 receivedDate:(id)a11 receivedDateTimeZoneName:(id)a12 firstSeenDate:(id)a13 firstSeenDateTimeZoneName:(id)a14 extractionHints:(int64_t)a15 originVersion:(id *)a16 originBuild:(id)a17 database:(id)a18 existingRowID:(id)a19 error:(id *)a20;
+ (id)addExtractionHints:(unint64_t)a3 toResourceEntities:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)fullResourceDocumentForAccountIdentifier:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)predicateForResourcesForLegacySync;
+ (id)resourceDataForOriginalFHIRResourceWithSourceURL:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)resourceDataForPatientResourceForAccountWithIdentifier:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)resourceDocumentWithIdentifiers:(id)a3 accountIdentifier:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)resourceExtractionBatchForAccountIdentifier:(id)a3 extractionRulesVersion:(id)a4 batchSize:(int64_t)a5 profile:(id)a6 error:(id *)a7;
+ (id)resourceObjectWithIdentifier:(id)a3 accountIdentifier:(id)a4 profile:(id)a5 error:(id *)a6;
- (id)_codableWithRow:(HDSQLiteRow *)a3 gatewayExternalID:(id)a4 accountUUID:(id)a5 error:(id *)a6;
- (id)entityByAddingExtractionHints:(unint64_t)a3 database:(id)a4 error:(id *)a5;
@end

@implementation HDOriginalFHIRResourceEntity

+ (id)_propertiesForEntity
{
  if (qword_128840 != -1)
  {
    sub_A9414();
  }

  v3 = qword_128838;

  return v3;
}

+ (id)_propertiesForResourceData
{
  if (qword_128850 != -1)
  {
    sub_A9428();
  }

  v3 = qword_128848;

  return v3;
}

+ (id)resourceObjectWithIdentifier:(id)a3 accountIdentifier:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v17 = v10;
  v11 = a5;
  v12 = a4;
  v13 = [NSArray arrayWithObjects:&v17 count:1];
  v14 = [a1 _resourceObjectsWithIdentifiers:v13 accountIdentifier:v12 profile:v11 error:{a6, v17}];

  if (v14)
  {
    if (![v14 count])
    {
      [NSError hk_assignError:a6 code:118 description:@"FHIR resource not found"];
    }

    v15 = [v14 lastObject];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)resourceExtractionBatchForAccountIdentifier:(id)a3 extractionRulesVersion:(id)a4 batchSize:(int64_t)a5 profile:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = [v14 database];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v16 = +[NSMutableArray array];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_8EE84;
  v27[3] = &unk_1089C8;
  v34 = a1;
  v17 = v12;
  v28 = v17;
  v18 = v13;
  v29 = v18;
  v31 = &v44;
  v32 = &v36;
  v35 = a5;
  v33 = &v40;
  v19 = v16;
  v30 = v19;
  v20 = v14;
  if ([a1 performReadTransactionWithHealthDatabase:v15 error:a7 block:v27] && (*(v45 + 24) != 1 || +[HDClinicalAccountEntity resetAccountRowIDsForRulesVersion:identifier:profile:healthDatabase:error:](HDClinicalAccountEntity, "resetAccountRowIDsForRulesVersion:identifier:profile:healthDatabase:error:", v18, v17, v14, v15, a7)))
  {
    v21 = [a1 _resourceDocumentWithResourceObjects:v19];
    v22 = [HDFHIRResourceExtractionBatch alloc];
    if (v41[3] <= v37[3])
    {
      v23 = v37[3];
    }

    else
    {
      v23 = v41[3];
    }

    v24 = [NSNumber numberWithLongLong:v23];
    v25 = [(HDFHIRResourceExtractionBatch *)v22 initWithDocument:v21 rulesVersion:v18 highestRowID:v24];
  }

  else
  {
    v25 = 0;
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);

  return v25;
}

+ (id)_resourceObjectsWithIdentifiers:(id)a3 accountIdentifier:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [a5 database];
  +[NSMutableArray array];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_8F280;
  v19[3] = &unk_106EF8;
  v20 = v11;
  v22 = v21 = v10;
  v23 = a1;
  v13 = v22;
  v14 = v10;
  v15 = v11;
  if ([a1 performReadTransactionWithHealthDatabase:v12 error:a6 block:v19])
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  return v16;
}

+ (id)_resourceObjectsInDatabase:(id)a3 withPredicate:(id)a4 limitCount:(int64_t)a5 highestPersistentID:(int64_t *)a6 assignCountry:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = [a1 queryWithDatabase:v14 predicate:v15];
  v18 = v17;
  if (kHDSQLiteQueryNoLimit != a5)
  {
    v19 = [v17 queryDescriptor];
    [v19 setLimitCount:a5];
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v20 = +[NSMutableArray array];
  v37[0] = HDOriginalFHIRResourceEntityPropertyRawContent;
  v37[1] = HDOriginalFHIRResourceEntityPropertyUniquenessChecksum;
  v37[2] = HDOriginalFHIRResourceEntityPropertyReceivedDate;
  v37[3] = HDOriginalFHIRResourceEntityPropertyFirstSeenDate;
  v37[4] = HDOriginalFHIRResourceEntityPropertyFHIRVersion;
  v37[5] = HDOriginalFHIRResourceEntityPropertySourceURL;
  v37[6] = HDOriginalFHIRResourceEntityPropertyExtractionHints;
  v37[7] = HDOriginalFHIRResourceEntityPropertyOriginMajorVersion;
  v37[8] = HDOriginalFHIRResourceEntityPropertyOriginMinorVersion;
  v37[9] = HDOriginalFHIRResourceEntityPropertyOriginPatchVersion;
  v37[10] = HDOriginalFHIRResourceEntityPropertyOriginBuild;
  v37[11] = HDOriginalFHIRResourceEntityPropertySyncProvenance;
  v21 = [NSArray arrayWithObjects:v37 count:12];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_8F878;
  v28[3] = &unk_1089F0;
  v31 = &v33;
  v32 = a1;
  v22 = v16;
  v29 = v22;
  v23 = v20;
  v30 = v23;
  v24 = [v18 enumeratePersistentIDsAndProperties:v21 error:a8 enumerationHandler:v28];
  if (a6)
  {
    *a6 = v34[3];
  }

  if (v24)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  _Block_object_dispose(&v33, 8);

  return v26;
}

+ (id)_resourceObjectWithRow:(HDSQLiteRow *)a3 rowID:(int64_t)a4 assignCountry:(id)a5 error:(id *)a6
{
  v25 = a5;
  v24 = HDSQLiteColumnWithNameAsData();
  v23 = HDSQLiteColumnWithNameAsData();
  v22 = HDSQLiteColumnWithNameAsDate();
  v21 = HDSQLiteColumnWithNameAsDate();
  v19 = HDSQLiteColumnWithNameAsString();
  v8 = HDSQLiteColumnWithNameAsURL();
  v20 = HDSQLiteColumnWithNameAsInt64();
  v9 = HDSQLiteColumnWithNameAsInt64();
  v10 = HDSQLiteColumnWithNameAsInt64();
  v11 = HDSQLiteColumnWithNameAsInt64();
  v12 = HDSQLiteColumnWithNameAsString();
  v13 = HDSQLiteColumnWithNameAsInt64();
  v14 = [HKFHIRVersion versionFromVersionString:v19];
  v15 = [NSNumber numberWithLongLong:a4];
  v26[0] = v9;
  v26[1] = v10;
  v26[2] = v11;
  LOBYTE(v18) = v13 == 0;
  v16 = [HDOriginalFHIRResourceObject resourceObjectWithData:v24 uniquenessChecksum:v23 sourceURL:v8 FHIRVersion:v14 receivedDate:v22 firstSeenDate:v21 extractionHints:v20 originVersion:v26 originBuild:v12 country:v25 existingROWID:v15 ingestedOnLocalDevice:v18 error:a6];

  return v16;
}

+ (BOOL)enumerateFHIRResourceObjectsWithLocalProvenanceForAccountEntity:(id)a3 startAnchor:(int64_t)a4 endAnchor:(int64_t)a5 database:(id)a6 error:(id *)a7 enumerationHandler:(id)a8
{
  v14 = a3;
  v15 = a8;
  v16 = a6;
  [v14 accountInDatabase:v16 error:a7];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_8FF98;
  v25[3] = &unk_108A38;
  v26 = v14;
  v27 = a4;
  v28 = a5;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_90010;
  v21[3] = &unk_108A60;
  v23 = v15;
  v22 = v24 = a1;
  v17 = v15;
  v18 = v22;
  v19 = v14;
  LOBYTE(a7) = [v16 executeCachedStatementForKey:&unk_E4188 error:a7 SQLGenerator:&stru_108A10 bindingHandler:v25 enumerationHandler:v21];

  return a7;
}

+ (id)resourceDataForOriginalFHIRResourceWithSourceURL:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 _predicateForResourceWithSourceURL:v8];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_90454;
  v33 = sub_90464;
  v34 = 0;
  v11 = [v9 database];
  v27 = a1;
  v28 = 0;
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_9046C;
  v24 = &unk_1078F0;
  v12 = v10;
  v25 = v12;
  v26 = &v29;
  v13 = [a1 performReadTransactionWithHealthDatabase:v11 error:&v28 block:&v21];
  v14 = v28;

  if (v13)
  {
    v15 = v30[5];
    if (!v15)
    {
      [NSError hk_assignError:a5 code:118 format:@"there is no resource with the given source URL", v21, v22, v23, v24];
      v15 = v30[5];
    }

    v16 = v15;
  }

  else
  {
    v17 = v14;
    v18 = v17;
    if (v17)
    {
      if (a5)
      {
        v19 = v17;
        *a5 = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v16 = 0;
  }

  _Block_object_dispose(&v29, 8);

  return v16;
}

+ (id)resourceDataForPatientResourceForAccountWithIdentifier:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 _predicateForPatientResourcesForAccountWithIdentifier:v8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_90454;
  v30 = sub_90464;
  v31 = 0;
  v11 = [v9 database];
  v24 = a1;
  v25 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_907B8;
  v21[3] = &unk_1078F0;
  v12 = v10;
  v22 = v12;
  v23 = &v26;
  v13 = [a1 performReadTransactionWithHealthDatabase:v11 error:&v25 block:v21];
  v14 = v25;

  if (v13)
  {
    v15 = v27[5];
    if (!v15)
    {
      [NSError hk_assignError:a5 code:118 format:@"there is no Patient resource for account %@", v8];
      v15 = v27[5];
    }

    v16 = v15;
  }

  else
  {
    v17 = v14;
    v18 = v17;
    if (v17)
    {
      if (a5)
      {
        v19 = v17;
        *a5 = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v16 = 0;
  }

  _Block_object_dispose(&v26, 8);

  return v16;
}

+ (id)_resourceDataWithROWID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v8 = HDSQLiteColumnWithNameAsData();
  if (!v8)
  {
    v9 = NSStringFromClass(a1);
    [NSError hk_assignError:a5 code:100 format:@"%@ nil FHIR resource data for ROWID %lld, cannot return FHIRResourceData", v9, a3];
    v12 = 0;
    goto LABEL_9;
  }

  v9 = HDSQLiteColumnWithNameAsString();
  if (!v9)
  {
    v10 = NSStringFromClass(a1);
    [NSError hk_assignError:a5 code:100 format:@"%@ nil FHIR version string for ROWID %lld, cannot return FHIRResourceData", v10, a3];
    goto LABEL_7;
  }

  v10 = [HKFHIRVersion versionFromVersionString:v9 error:a5];
  if (!v10)
  {
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v11 = HDSQLiteColumnWithNameAsURL();
  v12 = [[HDFHIRResourceData alloc] initWithData:v8 sourceURL:v11 FHIRVersion:v10];

LABEL_8:
LABEL_9:

  return v12;
}

+ (id)_predicateForResourceWithIdentifier:(id)a3
{
  v3 = HDOriginalFHIRResourceEntityPropertyType;
  v4 = a3;
  v5 = [v4 resourceType];
  v6 = [HDSQLiteComparisonPredicate predicateWithProperty:v3 equalToValue:v5];

  v7 = HDOriginalFHIRResourceEntityPropertyResourceID;
  v8 = [v4 identifier];

  v9 = [HDSQLiteComparisonPredicate predicateWithProperty:v7 equalToValue:v8];

  v10 = [HDSQLitePredicate compoundPredicateWithPredicate:v6 otherPredicate:v9];

  return v10;
}

+ (id)_predicateForResourceWithSourceURL:(id)a3
{
  v3 = HDOriginalFHIRResourceEntityPropertySourceURL;
  v4 = [a3 absoluteString];
  v5 = [HDSQLiteComparisonPredicate predicateWithProperty:v3 equalToValue:v4];

  return v5;
}

+ (id)_predicateForPatientResourcesForAccountWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[HDOriginalFHIRResourceEntity disambiguatedDatabaseTable];
  v5 = [HDSQLiteJoinClause innerJoinClauseFromTable:v4 toTargetEntity:objc_opt_class() as:0 localReference:HDOriginalFHIRResourceEntityPropertyAccountID targetKey:HDSQLEntityPropertyPersistentID];

  v6 = [NSSet setWithObject:v5];
  v7 = [HDSQLiteJoinPredicate predicateWithJoinClauses:v6];

  v8 = [HDClinicalAccountEntity _predicateForAccountWithIdentifier:v3];
  v9 = [v8 SQLForEntityClass:objc_opt_class()];
  v17 = v3;
  v10 = [NSArray arrayWithObjects:&v17 count:1];
  v11 = [HDSQLiteRawPredicate predicateWithSQL:v9 overProperties:&__NSArray0__struct values:v10];

  v12 = [HDSQLiteComparisonPredicate predicateWithProperty:HDOriginalFHIRResourceEntityPropertyType equalToValue:@"Patient"];
  v16[0] = v7;
  v16[1] = v11;
  v16[2] = v12;
  v13 = [NSArray arrayWithObjects:v16 count:3];
  v14 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v13];

  return v14;
}

+ (id)_predicateForLegacyResourceTypes
{
  v2 = +[HRSSupportedFHIRConfiguration emetConfiguration];
  v3 = [v2 supportedReleaseForFHIRRelease:HKFHIRReleaseDSTU2];
  v4 = HDOriginalFHIRResourceEntityPropertyType;
  v5 = [v3 resourceTypes];
  v6 = [HDSQLiteContainsPredicate containsPredicateWithProperty:v4 values:v5];

  return v6;
}

+ (id)predicateForResourcesForLegacySync
{
  v2 = +[HDOriginalFHIRResourceEntity disambiguatedDatabaseTable];
  v3 = [HDSQLiteJoinClause innerJoinClauseFromTable:v2 toTargetEntity:objc_opt_class() as:0 localReference:HDOriginalFHIRResourceEntityPropertyAccountID targetKey:HDSQLEntityPropertyPersistentID];

  v4 = [NSSet setWithObject:v3];
  v5 = [HDSQLiteJoinPredicate predicateWithJoinClauses:v4];

  v6 = +[HDClinicalAccountEntity predicateForAccountsForLegacySync];
  v7 = +[HDOriginalFHIRResourceEntity _predicateForLegacyResourceTypes];
  v11[0] = v5;
  v11[1] = v6;
  v11[2] = v7;
  v8 = [NSArray arrayWithObjects:v11 count:3];
  v9 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

  return v9;
}

+ (id)fullResourceDocumentForAccountIdentifier:(id)a3 profile:(id)a4 error:(id *)a5
{
  v6 = [a1 _resourceObjectsWithIdentifiers:0 accountIdentifier:a3 profile:a4 error:a5];
  if (v6)
  {
    v7 = [a1 _resourceDocumentWithResourceObjects:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)resourceDocumentWithIdentifiers:(id)a3 accountIdentifier:(id)a4 profile:(id)a5 error:(id *)a6
{
  v7 = [a1 _resourceObjectsWithIdentifiers:a3 accountIdentifier:a4 profile:a5 error:a6];
  if (v7)
  {
    v8 = [a1 _resourceDocumentWithResourceObjects:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_resourceDocumentWithResourceObjects:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_A943C(a2, a1);
  }

  v6 = objc_alloc_init(HDFHIRResourceDocument);
  [(HDFHIRResourceDocument *)v6 addResourceObjects:v5];

  return v6;
}

+ (BOOL)_insertCodableFHIRResources:(id)a3 syncProvenance:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a5;
  _HKInitializeLogging();
  v13 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = NSStringFromSelector(a2);
    *buf = 138543618;
    v31 = a1;
    v32 = 2114;
    v33 = v15;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ begin insert for CodableFHIRResources", buf, 0x16u);
  }

  if ([v11 count])
  {
    v16 = [v12 database];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_913F8;
    v24[3] = &unk_108AB0;
    v27 = a1;
    v25 = v11;
    v26 = v12;
    v28 = a4;
    v29 = a2;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_9215C;
    v20[3] = &unk_106800;
    v21 = v25;
    v23 = a4;
    v22 = v26;
    v17 = [a1 performWriteTransactionWithHealthDatabase:v16 error:a6 block:v24 inaccessibilityHandler:v20];
  }

  else
  {
    _HKInitializeLogging();
    v18 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_A94B8(a1, v18, a2);
    }

    v17 = 1;
  }

  return v17;
}

+ (BOOL)insertNewResourceObjects:(id)a3 account:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  v13 = [v12 gateway];
  v14 = [v13 externalID];

  v15 = [v12 identifier];
  v16 = [v15 UUIDString];

  v17 = [v11 currentSyncIdentityPersistentID];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_92350;
  v23[3] = &unk_107690;
  v24 = v11;
  v25 = v10;
  v26 = v14;
  v27 = v16;
  v18 = v16;
  v19 = v14;
  v20 = v10;
  v21 = v11;
  LOBYTE(a6) = [a1 insertOrUpdateResourceObjects:v20 upsertedResourceObjectPairs:0 account:v12 syncProvenance:0 syncIdentity:v17 profile:v21 error:a6 inaccessibilityHandler:v23];

  return a6;
}

+ (BOOL)insertOrUpdateResourceObjects:(id)a3 upsertedResourceObjectPairs:(id *)a4 account:(id)a5 syncProvenance:(int64_t)a6 syncIdentity:(int64_t)a7 profile:(id)a8 error:(id *)a9 inaccessibilityHandler:(id)a10
{
  v16 = a3;
  v17 = a5;
  v18 = a8;
  v19 = a10;
  if ([v16 count])
  {
    v49 = a6;
    v50 = v16;
    v52 = v19;
    v20 = [v17 gateway];
    v48 = [v20 externalID];

    v21 = [v17 gateway];
    v47 = [v21 country];

    v22 = [v18 daemon];
    v23 = [v22 behavior];
    v45 = [v23 localTimeZone];

    v24 = [HDHRSOriginInformation alloc];
    v25 = [v18 daemon];
    v26 = [v25 behavior];
    v27 = v26;
    v51 = v17;
    v28 = a7;
    v29 = a1;
    if (v26)
    {
      [v26 currentOSVersionStruct];
    }

    else
    {
      memset(v63, 0, 24);
    }

    v31 = [v18 daemon];
    v32 = [v31 behavior];
    v33 = [v32 currentOSBuild];
    v34 = [v24 initWithOperatingSystemVersion:v63 build:v33];

    if (a4)
    {
      v35 = objc_alloc_init(NSMutableArray);
    }

    else
    {
      v35 = 0;
    }

    v36 = v29;
    v37 = [v18 database];
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_9287C;
    v53[3] = &unk_108B00;
    v60 = v29;
    v54 = v48;
    v16 = v50;
    v62 = v28;
    v55 = v50;
    v56 = v46;
    v61 = v49;
    v57 = v34;
    v38 = v35;
    v58 = v38;
    v59 = v47;
    v39 = v47;
    v40 = v34;
    v41 = v46;
    v42 = v48;
    v30 = [v36 performWriteTransactionWithHealthDatabase:v37 error:a9 block:v53 inaccessibilityHandler:v52];

    if (a4 && v30)
    {
      v43 = v38;
      *a4 = v38;
    }

    v17 = v51;
    v19 = v52;
  }

  else
  {
    if (a4)
    {
      *a4 = &__NSArray0__struct;
    }

    LOBYTE(v30) = 1;
  }

  return v30;
}

+ (id)_insertResourceObjectWithIdentifier:(id)a3 accountID:(int64_t)a4 syncProvenance:(int64_t)a5 syncIdentity:(int64_t)a6 rawContent:(id)a7 uniquenessChecksum:(id)a8 sourceURL:(id)a9 FHIRVersion:(id)a10 receivedDate:(id)a11 receivedDateTimeZoneName:(id)a12 firstSeenDate:(id)a13 firstSeenDateOut:(id *)a14 firstSeenDateTimeZoneName:(id)a15 extractionHints:(int64_t)a16 originVersion:(id *)a17 originBuild:(id)a18 database:(id)a19 error:(id *)a20
{
  v22 = a3;
  v78 = a7;
  v76 = a8;
  v79 = a9;
  v84 = a10;
  v23 = a11;
  v81 = a12;
  v83 = a13;
  v75 = a15;
  v80 = a18;
  v24 = a19;
  v86 = v22;
  v25 = [v22 resourceType];
  v26 = [v22 identifier];
  v27 = [v84 stringRepresentation];
  v129 = 0;
  v130 = &v129;
  v131 = 0x3032000000;
  v132 = sub_90454;
  v133 = sub_90464;
  v134 = 0;
  v123 = 0;
  v124 = &v123;
  v125 = 0x3032000000;
  v126 = sub_90454;
  v127 = sub_90464;
  v128 = 0;
  v117 = 0;
  v118 = &v117;
  v119 = 0x3032000000;
  v120 = sub_90454;
  v121 = sub_90464;
  v122 = 0;
  v111 = 0;
  v112 = &v111;
  v113 = 0x3032000000;
  v114 = sub_90454;
  v115 = sub_90464;
  v116 = 0;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v110 = 0;
  v106 = 0;
  v105[0] = _NSConcreteStackBlock;
  v105[1] = 3221225472;
  v105[2] = sub_93808;
  v105[3] = &unk_106590;
  v105[4] = a1;
  v98[0] = _NSConcreteStackBlock;
  v98[1] = 3221225472;
  v98[2] = sub_93920;
  v98[3] = &unk_108B28;
  v73 = v25;
  v99 = v73;
  v74 = v26;
  v100 = v74;
  v104 = a4;
  v28 = v27;
  v101 = v28;
  v77 = v76;
  v102 = v77;
  v29 = v23;
  v103 = v29;
  v97[0] = _NSConcreteStackBlock;
  v97[1] = 3221225472;
  v97[2] = sub_939B0;
  v97[3] = &unk_108B50;
  v97[4] = &v129;
  v97[5] = &v123;
  v97[6] = &v117;
  v97[7] = &v107;
  v97[8] = &v111;
  v30 = v24;
  LOBYTE(a8) = [v24 executeCachedStatementForKey:&unk_E4189 error:&v106 SQLGenerator:v105 bindingHandler:v98 enumerationHandler:v97];
  v31 = v106;
  v32 = v31;
  if (a8)
  {
    if (v130[5])
    {
      if (v83)
      {
        v33 = [v124[5] hk_isBeforeOrEqualToDate:?];
      }

      else
      {
        v33 = 1;
      }

      v38 = v108[3];
      v40 = v38 == a16;
      v39 = v38 & 0xFFFFFFFFFFFFFFEFLL;
      v40 = v40 || v39 == a16;
      v41 = v40;
      if (v40)
      {
        v42 = 1;
      }

      else
      {
        v42 = [v112[5] hk_isAfterOrEqualToDate:v29];
      }

      if ((v33 & v42) == 1)
      {
        if (a5)
        {
          v36 = v32;
        }

        else
        {
          v52 = v130[5];
          v96 = 0;
          v53 = [a1 _recordResourceLastSeen:v29 resourcePersistentID:v52 database:v24 error:&v96];
          v36 = v96;

          if ((v53 & 1) == 0)
          {
            _HKInitializeLogging();
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
            {
              sub_A9650();
            }
          }
        }

        if (a14)
        {
          *a14 = v124[5];
        }

        v54 = v130[5];
        goto LABEL_76;
      }

      _HKInitializeLogging();
      v43 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
      {
        v44 = v43;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          v69 = HKSensitiveLogItem();
          v70 = v130[5];
          LODWORD(buf.var0) = 138544642;
          *(&buf.var0 + 4) = a1;
          WORD2(buf.var1) = 2114;
          *(&buf.var1 + 6) = v69;
          HIWORD(buf.var2) = 2114;
          v137 = v70;
          v138 = 1024;
          v139 = v33;
          v140 = 1024;
          v141 = v41;
          v142 = 1024;
          v143 = v42;
          _os_log_debug_impl(&dword_0, v44, OS_LOG_TYPE_DEBUG, "%{public}@ Found the same resource (%{public}@, ROWID %{public}@) in the database but will replace. existingWasSeenEarlier = %d, extractionHintsAreEquivalent = %d, existingHasSameHintsOrWasReceivedLater = %d", &buf, 0x32u);
        }
      }
    }
  }

  else
  {
    if ([v31 hk_isTransactionInterruptedError])
    {
      _HKInitializeLogging();
      v34 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_A95D8(a1, v34);
      }

      v35 = v32;
      v36 = v35;
      if (v35)
      {
        if (a20)
        {
          v37 = v35;
          *a20 = v36;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      goto LABEL_47;
    }

    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A956C();
    }
  }

  v45 = v130[5];
  v130[5] = 0;

  v46 = v124[5];
  if (!v46)
  {
    v94[0] = _NSConcreteStackBlock;
    v94[1] = 3221225472;
    v94[2] = sub_93AA8;
    v94[3] = &unk_106590;
    v94[4] = a1;
    v95 = v32;
    v90[0] = _NSConcreteStackBlock;
    v90[1] = 3221225472;
    v90[2] = sub_93B7C;
    v90[3] = &unk_108B78;
    v91 = v73;
    v92 = v74;
    v93 = a4;
    v89[0] = _NSConcreteStackBlock;
    v89[1] = 3221225472;
    v89[2] = sub_93BDC;
    v89[3] = &unk_108BA0;
    v89[4] = &v129;
    v89[5] = &v123;
    v89[6] = &v117;
    v48 = [v30 executeCachedStatementForKey:&unk_E418A error:&v95 SQLGenerator:v94 bindingHandler:v90 enumerationHandler:v89];
    v47 = v95;

    if ((v48 & 1) == 0)
    {
      if ([v47 hk_isTransactionInterruptedError])
      {
        _HKInitializeLogging();
        v49 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          sub_A9724(a1, v49);
        }

        v50 = v47;
        v36 = v50;
        if (v50)
        {
          if (a20)
          {
            v51 = v50;
            *a20 = v36;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

LABEL_47:
        v54 = 0;
        goto LABEL_76;
      }

      _HKInitializeLogging();
      v55 = HKLogHealthRecords;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
      {
        v56 = HKSensitiveLogItem();
        sub_A96BC(a1, v56, v135, v55);
      }
    }

    v46 = v124[5];
    goto LABEL_52;
  }

  v47 = v32;
LABEL_52:
  v57 = v46;
  v58 = v118[5];
  if (v83 && (!v124[5] || [v83 hk_isBeforeDate:?]))
  {
    v59 = v83;

    v60 = v75;
    v57 = v59;
LABEL_58:
    v61 = v60;

    v58 = v61;
    goto LABEL_59;
  }

  if (!v57)
  {
    v57 = v29;
    v60 = v81;
    goto LABEL_58;
  }

LABEL_59:
  v62 = v130[5];
  v88 = v47;
  buf = *a17;
  v54 = [a1 _wrapRawInsertResourceObjectWithIdentifier:v86 accountID:a4 syncProvenance:a5 syncIdentity:a6 rawContent:v78 uniquenessChecksum:v77 sourceURL:v79 FHIRVersion:v28 receivedDate:v29 receivedDateTimeZoneName:v81 firstSeenDate:v57 firstSeenDateTimeZoneName:v58 extractionHints:a16 originVersion:&buf originBuild:v80 database:v30 existingRowID:v62 error:&v88];
  v63 = v88;

  if (v54)
  {
    if (a5)
    {
      v36 = v63;
    }

    else
    {
      v87 = 0;
      v66 = [a1 _recordResourceLastSeen:v29 resourcePersistentID:v54 database:v30 error:&v87];
      v36 = v87;

      if ((v66 & 1) == 0)
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          sub_A979C();
        }
      }
    }

    if (a14)
    {
      *a14 = v124[5];
    }

    v67 = v54;
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A9808();
    }

    v64 = v63;
    v36 = v64;
    if (v64)
    {
      if (a20)
      {
        v65 = v64;
        *a20 = v36;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

LABEL_76:
  _Block_object_dispose(&v107, 8);
  _Block_object_dispose(&v111, 8);

  _Block_object_dispose(&v117, 8);
  _Block_object_dispose(&v123, 8);

  _Block_object_dispose(&v129, 8);

  return v54;
}

+ (id)_wrapRawInsertResourceObjectWithIdentifier:(id)a3 accountID:(int64_t)a4 syncProvenance:(int64_t)a5 syncIdentity:(int64_t)a6 rawContent:(id)a7 uniquenessChecksum:(id)a8 sourceURL:(id)a9 FHIRVersion:(id)a10 receivedDate:(id)a11 receivedDateTimeZoneName:(id)a12 firstSeenDate:(id)a13 firstSeenDateTimeZoneName:(id)a14 extractionHints:(int64_t)a15 originVersion:(id *)a16 originBuild:(id)a17 database:(id)a18 existingRowID:(id)a19 error:(id *)a20
{
  v93 = a3;
  v23 = a7;
  v92 = a8;
  v91 = a9;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v90 = a13;
  v27 = a14;
  v28 = a17;
  v29 = a18;
  v30 = a19;
  v82 = a1;
  v83 = v30;
  v86 = v28;
  v87 = v23;
  v84 = v26;
  v85 = v24;
  v89 = v27;
  if (v30)
  {
    v31 = a1;
    v115 = 0;
    v110[0] = _NSConcreteStackBlock;
    v110[1] = 3221225472;
    v110[2] = sub_94528;
    v110[3] = &unk_108BC8;
    v32 = objc_alloc_init(NSMutableArray);
    v111 = v32;
    v33 = v29;
    v112 = v33;
    v114 = a1;
    v34 = v30;
    v113 = v34;
    v35 = [HDClinicalRecordEntity _enumerateEntitiesWithOriginalFHIRResourceROWID:v34 database:v33 error:&v115 enumerationHandler:v110];
    v36 = v115;
    if (v35)
    {
      v77 = v25;
      v37 = [v32 copy];
      v109 = v36;
      v104[0] = _NSConcreteStackBlock;
      v104[1] = 3221225472;
      v104[2] = sub_9467C;
      v104[3] = &unk_108BF0;
      v38 = objc_alloc_init(NSMutableArray);
      v105 = v38;
      v106 = v33;
      v108 = v31;
      v39 = v34;
      v107 = v39;
      v40 = [HDMedicalRecordEntity _enumerateEntitiesWithOriginalFHIRResourceROWID:v39 database:v106 error:&v109 enumerationHandler:v104];
      v30 = v109;

      if (v40)
      {
        v88 = [v38 copy];
        v41 = v32;
        v42 = v77;
        v28 = v86;
      }

      else
      {
        _HKInitializeLogging();
        v47 = HKLogHealthRecords;
        v28 = v86;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.var0) = 138543874;
          *(&buf.var0 + 4) = v82;
          WORD2(buf.var1) = 2114;
          *(&buf.var1 + 6) = v39;
          HIWORD(buf.var2) = 2114;
          v118 = v30;
          _os_log_error_impl(&dword_0, v47, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve HDMedicalRecordEntity for associated HDOriginalFHIRResourceEntity with ROWID %{public}@: %{public}@", &buf, 0x20u);
        }

        v48 = v30;
        v49 = v48;
        v41 = v32;
        v42 = v77;
        if (v48)
        {
          if (a20)
          {
            v50 = v48;
            *a20 = v49;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v88 = 0;
      }

      v27 = v89;
    }

    else
    {
      _HKInitializeLogging();
      v44 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.var0) = 138543874;
        *(&buf.var0 + 4) = v82;
        WORD2(buf.var1) = 2114;
        *(&buf.var1 + 6) = v34;
        HIWORD(buf.var2) = 2114;
        v118 = v36;
        _os_log_error_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve HDClinicalRecordEntity for associated HDOriginalFHIRResourceEntity with ROWID %{public}@: %{public}@", &buf, 0x20u);
      }

      v45 = v36;
      v38 = v45;
      v42 = v25;
      if (v45)
      {
        v27 = v89;
        v28 = v86;
        v41 = v32;
        if (a20)
        {
          v46 = v45;
          v40 = 0;
          v88 = 0;
          v37 = 0;
          *a20 = v38;
        }

        else
        {
          _HKLogDroppedError();
          v40 = 0;
          v88 = 0;
          v37 = 0;
        }

        v30 = v38;
      }

      else
      {
        v40 = 0;
        v88 = 0;
        v37 = 0;
        v30 = 0;
        v27 = v89;
        v28 = v86;
        v41 = v32;
      }
    }

    if (!v40)
    {
      v67 = 0;
      v23 = v87;
      v26 = v84;
      v24 = v85;
      goto LABEL_57;
    }

    v23 = v87;
    v43 = a20;
    v26 = v84;
    v24 = v85;
  }

  else
  {
    v88 = 0;
    v37 = 0;
    v43 = a20;
    v42 = v25;
  }

  buf = *a16;
  v51 = [v82 _rawInsertResourceObjectWithIdentifier:v93 accountID:a4 syncProvenance:a5 syncIdentity:a6 rawContent:v23 uniquenessChecksum:v92 sourceURL:v91 FHIRVersion:v24 receivedDate:v42 receivedDateTimeZoneName:v26 firstSeenDate:v90 firstSeenDateTimeZoneName:v27 extractionHints:a15 originVersion:&buf originBuild:v28 database:v29 error:v43];
  if (v51)
  {
    v76 = v37;
    v78 = v42;
    if (v37)
    {
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v52 = v37;
      v53 = [v52 countByEnumeratingWithState:&v100 objects:v121 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v101;
LABEL_28:
        v56 = 0;
        v57 = v30;
        while (1)
        {
          if (*v101 != v55)
          {
            objc_enumerationMutation(v52);
          }

          v58 = *(*(&v100 + 1) + 8 * v56);
          v99 = v57;
          v59 = [v58 _updateOriginalFHIRResourceROWID:v51 database:v29 error:&v99];
          v30 = v99;

          if ((v59 & 1) == 0)
          {
            break;
          }

          v56 = v56 + 1;
          v57 = v30;
          if (v54 == v56)
          {
            v54 = [v52 countByEnumeratingWithState:&v100 objects:v121 count:16];
            v28 = v86;
            v23 = v87;
            if (v54)
            {
              goto LABEL_28;
            }

            goto LABEL_34;
          }
        }

        _HKInitializeLogging();
        v68 = HKLogHealthRecords;
        if (!os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_51;
        }

        v69 = v68;
        v70 = [v29 lastInsertRowID];
        LODWORD(buf.var0) = 138544130;
        *(&buf.var0 + 4) = v82;
        WORD2(buf.var1) = 2114;
        *(&buf.var1 + 6) = v58;
        HIWORD(buf.var2) = 2114;
        v118 = v70;
        v119 = 2114;
        v120 = v30;
        v71 = "%{public}@ Failed to re-associate clinical record %{public}@ with new originalFHIRResourceROWID %{public}@: %{public}@";
        goto LABEL_61;
      }

LABEL_34:

      v26 = v84;
      v24 = v85;
      v37 = v76;
      v42 = v78;
    }

    if (v88)
    {
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v52 = v88;
      v60 = [v52 countByEnumeratingWithState:&v95 objects:v116 count:16];
      if (v60)
      {
        v61 = v60;
        v62 = *v96;
LABEL_38:
        v63 = 0;
        v64 = v30;
        while (1)
        {
          if (*v96 != v62)
          {
            objc_enumerationMutation(v52);
          }

          v65 = *(*(&v95 + 1) + 8 * v63);
          v94 = v64;
          v66 = [v65 _updateOriginalFHIRResourceROWID:v51 database:v29 error:&v94];
          v30 = v94;

          if ((v66 & 1) == 0)
          {
            break;
          }

          v63 = v63 + 1;
          v64 = v30;
          if (v61 == v63)
          {
            v61 = [v52 countByEnumeratingWithState:&v95 objects:v116 count:16];
            if (v61)
            {
              goto LABEL_38;
            }

            goto LABEL_44;
          }
        }

        _HKInitializeLogging();
        v72 = HKLogHealthRecords;
        if (!os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_51;
        }

        v69 = v72;
        v70 = [v29 lastInsertRowID];
        LODWORD(buf.var0) = 138544130;
        *(&buf.var0 + 4) = v82;
        WORD2(buf.var1) = 2114;
        *(&buf.var1 + 6) = v65;
        HIWORD(buf.var2) = 2114;
        v118 = v70;
        v119 = 2114;
        v120 = v30;
        v71 = "%{public}@ Failed to re-associate medical record %{public}@ with new originalFHIRResourceROWID %{public}@: %{public}@";
LABEL_61:
        _os_log_error_impl(&dword_0, v69, OS_LOG_TYPE_ERROR, v71, &buf, 0x2Au);

LABEL_51:
        v73 = v30;
        v30 = v73;
        v28 = v86;
        v23 = v87;
        v24 = v85;
        v37 = v76;
        v42 = v78;
        if (v73)
        {
          if (a20)
          {
            v74 = v73;
            *a20 = v30;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v67 = 0;
        v26 = v84;
        goto LABEL_56;
      }

LABEL_44:

      v28 = v86;
      v23 = v87;
      v26 = v84;
      v24 = v85;
      v37 = v76;
      v42 = v78;
    }

    v67 = v51;
  }

  else
  {
    v67 = 0;
  }

LABEL_56:

  v27 = v89;
LABEL_57:

  return v67;
}

+ (id)_rawInsertResourceObjectWithIdentifier:(id)a3 accountID:(int64_t)a4 syncProvenance:(int64_t)a5 syncIdentity:(int64_t)a6 rawContent:(id)a7 uniquenessChecksum:(id)a8 sourceURL:(id)a9 FHIRVersion:(id)a10 receivedDate:(id)a11 receivedDateTimeZoneName:(id)a12 firstSeenDate:(id)a13 firstSeenDateTimeZoneName:(id)a14 extractionHints:(int64_t)a15 originVersion:(id *)a16 originBuild:(id)a17 database:(id)a18 error:(id *)a19
{
  v40 = a7;
  v39 = a8;
  v21 = a9;
  v22 = a10;
  v38 = a11;
  v36 = a12;
  v23 = a13;
  v24 = a14;
  v25 = a17;
  v41 = a18;
  v26 = a3;
  v37 = [v26 resourceType];
  v27 = [v26 identifier];

  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_94AFC;
  v70[3] = &unk_106590;
  v70[4] = a1;
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_94B5C;
  v52[3] = &unk_108C18;
  v53 = v37;
  v54 = v27;
  v55 = v40;
  v56 = v39;
  v57 = v38;
  v58 = v36;
  v59 = v23;
  v60 = v24;
  v61 = v22;
  v62 = v21;
  v65 = a5;
  v66 = a15;
  var2 = a16->var2;
  v67 = *&a16->var0;
  v63 = v25;
  v64 = a4;
  v68 = var2;
  v69 = a6;
  v51 = v25;
  v49 = v21;
  v47 = v22;
  v45 = v24;
  v44 = v23;
  v43 = v36;
  v29 = v38;
  v30 = v39;
  v31 = v40;
  v32 = v27;
  v33 = v37;
  if ([v41 executeCachedStatementForKey:&unk_E418B error:a19 SQLGenerator:v70 bindingHandler:v52 enumerationHandler:0] && objc_msgSend(v41, "getChangesCount") >= 1)
  {
    v34 = [v41 lastInsertRowID];
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

+ (BOOL)_recordResourceLastSeen:(id)a3 resourcePersistentID:(id)a4 database:(id)a5 error:(id *)a6
{
  v6 = [HDOriginalFHIRResourceLastSeenEntity insertOrUpdateLastSeenDate:a3 resourcePersistentID:a4 database:a5 error:a6];
  v7 = v6 != 0;

  return v7;
}

+ (id)addExtractionHints:(unint64_t)a3 toResourceEntities:(id)a4 profile:(id)a5 error:(id *)a6
{
  v11 = a4;
  v12 = a5;
  if ([v11 count])
  {
    v13 = objc_alloc_init(NSMutableArray);
    v14 = [v12 database];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_94E70;
    v21[3] = &unk_1067D8;
    v24 = a1;
    v25 = a3;
    v22 = v11;
    v23 = v13;
    v15 = v13;
    v16 = v11;
    v17 = [a1 performWriteTransactionWithHealthDatabase:v14 error:a6 block:v21];

    if (v17)
    {
      v18 = v15;
    }

    else
    {
      v18 = 0;
    }

    v11 = v18;
  }

  else
  {
    _HKInitializeLogging();
    v19 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_A94B8(a1, v19, a2);
    }
  }

  return v11;
}

- (id)entityByAddingExtractionHints:(unint64_t)a3 database:(id)a4 error:(id *)a5
{
  v8 = a4;
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = sub_90454;
  v80 = sub_90464;
  v81 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = -1;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = sub_90454;
  v66 = sub_90464;
  v67 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_90454;
  v60 = sub_90464;
  v61 = 0;
  v9 = [objc_opt_class() _propertiesForEntity];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_95840;
  v55[3] = &unk_108C40;
  v55[6] = &v72;
  v55[7] = &v68;
  v55[4] = self;
  v55[5] = &v76;
  v55[8] = &v62;
  v55[9] = &v56;
  v10 = [(HDOriginalFHIRResourceEntity *)self getValuesForProperties:v9 database:v8 error:a5 handler:v55];

  if ((v10 & 1) == 0)
  {
    goto LABEL_23;
  }

  if (!v77[5])
  {
    [NSError hk_assignError:a5 code:100 format:@"Missing account ID on existing original FHIR resource with ROWID %lu", [(HDOriginalFHIRResourceEntity *)self persistentID]];
LABEL_23:
    v16 = 0;
    goto LABEL_24;
  }

  v11 = v63[5];
  if (!v11)
  {
    v17 = v57[5];
    v18 = v17;
    if (v17)
    {
      if (a5)
      {
        v19 = v17;
        *a5 = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_23;
  }

  v12 = [v11 extractionHints];
  v13 = v12 | a3;
  if (v12 == (v12 | a3))
  {
    _HKInitializeLogging();
    v14 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      v15 = v14;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v35 = objc_opt_class();
        v36 = [(HDOriginalFHIRResourceEntity *)self persistentID];
        *buf = 138543874;
        *&buf[4] = v35;
        *&buf[12] = 2050;
        *&buf[14] = v36;
        *&buf[22] = 2048;
        v83 = a3;
        _os_log_debug_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%{public}@ Existing resource with ROWID %{public}lu already has extraction hints %lu, not replacing", buf, 0x20u);
      }
    }

    v16 = self;
  }

  else
  {
    v20 = [NSNumber numberWithLongLong:[(HDOriginalFHIRResourceEntity *)self persistentID]];
    v54 = 0;
    v53 = [HDOriginalFHIRResourceLastSeenEntity lastSeenDateForResourceWithPersistentID:v20 database:v8 error:&v54];
    v52 = v54;

    if (v53 || !v52)
    {
      v21 = [HKFHIRIdentifier alloc];
      v22 = [v63[5] resourceType];
      v23 = [v63[5] resourceID];
      v51 = [v21 initWithResourceType:v22 identifier:v23];

      if ([v63[5] hasOriginVersionMajor])
      {
        v24 = [v63[5] originVersionMajor];
      }

      else
      {
        v24 = &dword_8 + 3;
      }

      if ([v63[5] hasOriginVersionMinor])
      {
        v26 = [v63[5] originVersionMinor];
      }

      else
      {
        v26 = &dword_0 + 3;
      }

      v44 = v26;
      v45 = v24;
      if ([v63[5] hasOriginVersionPatch])
      {
        v42 = [v63[5] originVersionPatch];
      }

      else
      {
        v42 = 0;
      }

      v43 = objc_opt_class();
      v41 = [v77[5] unsignedLongValue];
      v39 = v69[3];
      v40 = v73[3];
      v50 = [v63[5] rawContent];
      v49 = [v63[5] uniquenessChecksum];
      v48 = [v63[5] sourceURL];
      v47 = [v63[5] fhirVersion];
      [v63[5] receivedDate];
      v46 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      v27 = [v63[5] receivedDateTimeZoneName];
      [v63[5] firstSeenDate];
      v28 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      v29 = [v63[5] firstSeenDateTimeZoneName];
      v30 = [v63[5] originVersionBuild];
      v31 = [NSNumber numberWithLongLong:[(HDOriginalFHIRResourceEntity *)self persistentID]];
      *buf = v45;
      *&buf[8] = v44;
      *&buf[16] = v42;
      v32 = [v43 _wrapRawInsertResourceObjectWithIdentifier:v51 accountID:v41 syncProvenance:v40 syncIdentity:v39 rawContent:v50 uniquenessChecksum:v49 sourceURL:v48 FHIRVersion:v47 receivedDate:v46 receivedDateTimeZoneName:v27 firstSeenDate:v28 firstSeenDateTimeZoneName:v29 extractionHints:v13 originVersion:buf originBuild:v30 database:v8 existingRowID:v31 error:a5];

      if (!v32 || v53 && ([HDOriginalFHIRResourceLastSeenEntity insertOrUpdateLastSeenDate:v53 resourcePersistentID:v32 database:v8 error:a5], v33 = objc_claimAutoreleasedReturnValue(), v34 = v33 == 0, v33, v34) || ([(HDOriginalFHIRResourceEntity *)self deleteFromDatabase:v8 error:a5]& 1) == 0)
      {
        v16 = 0;
      }

      else
      {
        v16 = [objc_opt_class() entityWithPersistentID:v32];
      }
    }

    else
    {
      _HKInitializeLogging();
      v51 = HKLogHealthRecords;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v37 = objc_opt_class();
        v38 = [(HDOriginalFHIRResourceEntity *)self persistentID];
        *buf = 138543874;
        *&buf[4] = v37;
        *&buf[12] = 2050;
        *&buf[14] = v38;
        *&buf[22] = 2112;
        v83 = v52;
        _os_log_error_impl(&dword_0, v51, OS_LOG_TYPE_ERROR, "%{public}@ Error finding current last seen date for resource with ROWID %{public}lu: %@", buf, 0x20u);
      }

      v16 = 0;
    }
  }

LABEL_24:
  _Block_object_dispose(&v56, 8);

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v76, 8);

  return v16;
}

+ (BOOL)_validateCodableFHIRResourceFromSync:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([v5 hasMessageVersion])
  {
    v6 = [v5 messageVersion];
    v7 = [v6 compatibilityVersion];

    if (v7 > 1)
    {
      v8 = @"Codable FHIR resource compatibilty version is higher than what we support";
LABEL_24:
      [NSError hk_assignError:a4 code:3 description:v8];
      v21 = 0;
      goto LABEL_25;
    }

    v10 = [v5 messageVersion];
    v9 = [v10 entityVersion] > 0;
  }

  else
  {
    v9 = 0;
  }

  v11 = [v5 gatewayExternalID];
  v12 = [v11 length];

  if (!v12)
  {
    v8 = @"Missing gateway external ID";
    goto LABEL_24;
  }

  v13 = [v5 resourceID];
  v14 = [v13 length];

  if (!v14)
  {
    v8 = @"Missing FHIR resource ID";
    goto LABEL_24;
  }

  v15 = [v5 resourceType];
  v16 = [v15 length];

  if (!v16)
  {
    v8 = @"Missing FHIR resource type";
    goto LABEL_24;
  }

  v17 = [v5 rawContent];
  v18 = [v17 length];

  if (!v18)
  {
    v8 = @"Missing FHIR resource raw content";
    goto LABEL_24;
  }

  if (v9 && ![v5 hasUniquenessChecksum])
  {
    v8 = @"Missing FHIR resource uniqueness checksum";
    goto LABEL_24;
  }

  v19 = [v5 fhirVersion];
  v20 = [v19 length];

  if (!v20)
  {
    v8 = @"Missing FHIR version for resource";
    goto LABEL_24;
  }

  if (![v5 hasReceivedDate])
  {
    v8 = @"Missing FHIR resource received date";
    goto LABEL_24;
  }

  if (([v5 hasReceivedDateTimeZoneName] & 1) == 0)
  {
    v8 = @"Missing FHIR resource received date time zone";
    goto LABEL_24;
  }

  v21 = 1;
LABEL_25:

  return v21;
}

+ (BOOL)_validateCodableFHIRResource:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![a1 _validateCodableFHIRResourceFromSync:v6 error:a4])
  {
    goto LABEL_16;
  }

  if (![v6 hasOriginVersionMajor])
  {
    v8 = @"Missing FHIR resource origin version major";
LABEL_15:
    [NSError hk_assignError:a4 code:3 description:v8];
LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  if (![v6 hasOriginVersionMinor])
  {
    v8 = @"Missing FHIR resource origin version minor";
    goto LABEL_15;
  }

  if (![v6 hasOriginVersionPatch])
  {
    v8 = @"Missing FHIR resource origin version patch";
    goto LABEL_15;
  }

  if (![v6 hasOriginVersionBuild])
  {
    v8 = @"Missing FHIR resource origin version build";
    goto LABEL_15;
  }

  if (![v6 hasFirstSeenDate])
  {
    v8 = @"Missing FHIR resource first seen date";
    goto LABEL_15;
  }

  if (([v6 hasFirstSeenDateTimeZoneName] & 1) == 0)
  {
    v8 = @"Missing FHIR resource first seen date time zone";
    goto LABEL_15;
  }

  v7 = 1;
LABEL_17:

  return v7;
}

- (id)_codableWithRow:(HDSQLiteRow *)a3 gatewayExternalID:(id)a4 accountUUID:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = objc_opt_class();
  v13 = [(HDOriginalFHIRResourceEntity *)self persistentID];
  v14 = [v12 _resourceObjectWithRow:a3 rowID:v13 assignCountry:HKCountryCodeUnknownCountry error:a6];
  if (v14)
  {
    v15 = HDSQLiteColumnWithNameAsString();
    v16 = HDSQLiteColumnWithNameAsString();
    v17 = [v14 codableFHIRResourceWithGatewayExternalID:v10 accountID:v11 receivedDateTimeZoneName:v15 firstSeenDateTimeZoneName:v16];
    if ([objc_opt_class() _validateCodableFHIRResource:v17 error:a6])
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (BOOL)_ensureForeignKeysAreDeferredInDatabase:(id)a3 error:(id *)a4
{
  v11 = 0;
  v5 = [a3 executeUncachedSQL:@"PRAGMA defer_foreign_keys = ON" error:&v11];
  v6 = v11;
  if ((v5 & 1) == 0)
  {
    _HKInitializeLogging();
    v7 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A9874(v7);
    }

    v8 = v6;
    if (v8)
    {
      if (a4)
      {
        v9 = v8;
        *a4 = v8;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v5;
}

@end