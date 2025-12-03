@interface HDOriginalFHIRResourceEntity
+ (BOOL)_ensureForeignKeysAreDeferredInDatabase:(id)database error:(id *)error;
+ (BOOL)_insertCodableFHIRResources:(id)resources syncProvenance:(int64_t)provenance profile:(id)profile error:(id *)error;
+ (BOOL)_recordResourceLastSeen:(id)seen resourcePersistentID:(id)d database:(id)database error:(id *)error;
+ (BOOL)_validateCodableFHIRResource:(id)resource error:(id *)error;
+ (BOOL)_validateCodableFHIRResourceFromSync:(id)sync error:(id *)error;
+ (BOOL)enumerateFHIRResourceObjectsWithLocalProvenanceForAccountEntity:(id)entity startAnchor:(int64_t)anchor endAnchor:(int64_t)endAnchor database:(id)database error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)insertNewResourceObjects:(id)objects account:(id)account profile:(id)profile error:(id *)error;
+ (BOOL)insertOrUpdateResourceObjects:(id)objects upsertedResourceObjectPairs:(id *)pairs account:(id)account syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity profile:(id)profile error:(id *)error inaccessibilityHandler:(id)self0;
+ (id)_insertResourceObjectWithIdentifier:(id)identifier accountID:(int64_t)d syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity rawContent:(id)content uniquenessChecksum:(id)checksum sourceURL:(id)l FHIRVersion:(id)self0 receivedDate:(id)self1 receivedDateTimeZoneName:(id)self2 firstSeenDate:(id)self3 firstSeenDateOut:(id *)self4 firstSeenDateTimeZoneName:(id)self5 extractionHints:(int64_t)self6 originVersion:(id *)self7 originBuild:(id)self8 database:(id)self9 error:(id *)error;
+ (id)_predicateForLegacyResourceTypes;
+ (id)_predicateForPatientResourcesForAccountWithIdentifier:(id)identifier;
+ (id)_predicateForResourceWithIdentifier:(id)identifier;
+ (id)_predicateForResourceWithSourceURL:(id)l;
+ (id)_propertiesForEntity;
+ (id)_propertiesForResourceData;
+ (id)_rawInsertResourceObjectWithIdentifier:(id)identifier accountID:(int64_t)d syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity rawContent:(id)content uniquenessChecksum:(id)checksum sourceURL:(id)l FHIRVersion:(id)self0 receivedDate:(id)self1 receivedDateTimeZoneName:(id)self2 firstSeenDate:(id)self3 firstSeenDateTimeZoneName:(id)self4 extractionHints:(int64_t)self5 originVersion:(id *)self6 originBuild:(id)self7 database:(id)self8 error:(id *)self9;
+ (id)_resourceDataWithROWID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
+ (id)_resourceDocumentWithResourceObjects:(id)objects;
+ (id)_resourceObjectWithRow:(HDSQLiteRow *)row rowID:(int64_t)d assignCountry:(id)country error:(id *)error;
+ (id)_resourceObjectsInDatabase:(id)database withPredicate:(id)predicate limitCount:(int64_t)count highestPersistentID:(int64_t *)d assignCountry:(id)country error:(id *)error;
+ (id)_resourceObjectsWithIdentifiers:(id)identifiers accountIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (id)_wrapRawInsertResourceObjectWithIdentifier:(id)identifier accountID:(int64_t)d syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity rawContent:(id)content uniquenessChecksum:(id)checksum sourceURL:(id)l FHIRVersion:(id)self0 receivedDate:(id)self1 receivedDateTimeZoneName:(id)self2 firstSeenDate:(id)self3 firstSeenDateTimeZoneName:(id)self4 extractionHints:(int64_t)self5 originVersion:(id *)self6 originBuild:(id)self7 database:(id)self8 existingRowID:(id)self9 error:(id *)error;
+ (id)addExtractionHints:(unint64_t)hints toResourceEntities:(id)entities profile:(id)profile error:(id *)error;
+ (id)fullResourceDocumentForAccountIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (id)predicateForResourcesForLegacySync;
+ (id)resourceDataForOriginalFHIRResourceWithSourceURL:(id)l profile:(id)profile error:(id *)error;
+ (id)resourceDataForPatientResourceForAccountWithIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (id)resourceDocumentWithIdentifiers:(id)identifiers accountIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (id)resourceExtractionBatchForAccountIdentifier:(id)identifier extractionRulesVersion:(id)version batchSize:(int64_t)size profile:(id)profile error:(id *)error;
+ (id)resourceObjectWithIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier profile:(id)profile error:(id *)error;
- (id)_codableWithRow:(HDSQLiteRow *)row gatewayExternalID:(id)d accountUUID:(id)iD error:(id *)error;
- (id)entityByAddingExtractionHints:(unint64_t)hints database:(id)database error:(id *)error;
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

+ (id)resourceObjectWithIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  v17 = identifierCopy;
  profileCopy = profile;
  accountIdentifierCopy = accountIdentifier;
  v13 = [NSArray arrayWithObjects:&v17 count:1];
  v14 = [self _resourceObjectsWithIdentifiers:v13 accountIdentifier:accountIdentifierCopy profile:profileCopy error:{error, v17}];

  if (v14)
  {
    if (![v14 count])
    {
      [NSError hk_assignError:error code:118 description:@"FHIR resource not found"];
    }

    lastObject = [v14 lastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

+ (id)resourceExtractionBatchForAccountIdentifier:(id)identifier extractionRulesVersion:(id)version batchSize:(int64_t)size profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  versionCopy = version;
  profileCopy = profile;
  database = [profileCopy database];
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
  selfCopy = self;
  v17 = identifierCopy;
  v28 = v17;
  v18 = versionCopy;
  v29 = v18;
  v31 = &v44;
  v32 = &v36;
  sizeCopy = size;
  v33 = &v40;
  v19 = v16;
  v30 = v19;
  v20 = profileCopy;
  if ([self performReadTransactionWithHealthDatabase:database error:error block:v27] && (*(v45 + 24) != 1 || +[HDClinicalAccountEntity resetAccountRowIDsForRulesVersion:identifier:profile:healthDatabase:error:](HDClinicalAccountEntity, "resetAccountRowIDsForRulesVersion:identifier:profile:healthDatabase:error:", v18, v17, profileCopy, database, error)))
  {
    v21 = [self _resourceDocumentWithResourceObjects:v19];
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

+ (id)_resourceObjectsWithIdentifiers:(id)identifiers accountIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  database = [profile database];
  +[NSMutableArray array];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_8F280;
  v19[3] = &unk_106EF8;
  v20 = identifierCopy;
  v22 = v21 = identifiersCopy;
  selfCopy = self;
  v13 = v22;
  v14 = identifiersCopy;
  v15 = identifierCopy;
  if ([self performReadTransactionWithHealthDatabase:database error:error block:v19])
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

+ (id)_resourceObjectsInDatabase:(id)database withPredicate:(id)predicate limitCount:(int64_t)count highestPersistentID:(int64_t *)d assignCountry:(id)country error:(id *)error
{
  databaseCopy = database;
  predicateCopy = predicate;
  countryCopy = country;
  v17 = [self queryWithDatabase:databaseCopy predicate:predicateCopy];
  v18 = v17;
  if (kHDSQLiteQueryNoLimit != count)
  {
    queryDescriptor = [v17 queryDescriptor];
    [queryDescriptor setLimitCount:count];
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
  selfCopy = self;
  v22 = countryCopy;
  v29 = v22;
  v23 = v20;
  v30 = v23;
  v24 = [v18 enumeratePersistentIDsAndProperties:v21 error:error enumerationHandler:v28];
  if (d)
  {
    *d = v34[3];
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

+ (id)_resourceObjectWithRow:(HDSQLiteRow *)row rowID:(int64_t)d assignCountry:(id)country error:(id *)error
{
  countryCopy = country;
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
  v15 = [NSNumber numberWithLongLong:d];
  v26[0] = v9;
  v26[1] = v10;
  v26[2] = v11;
  LOBYTE(v18) = v13 == 0;
  v16 = [HDOriginalFHIRResourceObject resourceObjectWithData:v24 uniquenessChecksum:v23 sourceURL:v8 FHIRVersion:v14 receivedDate:v22 firstSeenDate:v21 extractionHints:v20 originVersion:v26 originBuild:v12 country:countryCopy existingROWID:v15 ingestedOnLocalDevice:v18 error:error];

  return v16;
}

+ (BOOL)enumerateFHIRResourceObjectsWithLocalProvenanceForAccountEntity:(id)entity startAnchor:(int64_t)anchor endAnchor:(int64_t)endAnchor database:(id)database error:(id *)error enumerationHandler:(id)handler
{
  entityCopy = entity;
  handlerCopy = handler;
  databaseCopy = database;
  [entityCopy accountInDatabase:databaseCopy error:error];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_8FF98;
  v25[3] = &unk_108A38;
  v26 = entityCopy;
  anchorCopy = anchor;
  endAnchorCopy = endAnchor;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_90010;
  v21[3] = &unk_108A60;
  v23 = handlerCopy;
  v22 = v24 = self;
  v17 = handlerCopy;
  v18 = v22;
  v19 = entityCopy;
  LOBYTE(error) = [databaseCopy executeCachedStatementForKey:&unk_E4188 error:error SQLGenerator:&stru_108A10 bindingHandler:v25 enumerationHandler:v21];

  return error;
}

+ (id)resourceDataForOriginalFHIRResourceWithSourceURL:(id)l profile:(id)profile error:(id *)error
{
  lCopy = l;
  profileCopy = profile;
  v10 = [self _predicateForResourceWithSourceURL:lCopy];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_90454;
  v33 = sub_90464;
  v34 = 0;
  database = [profileCopy database];
  selfCopy = self;
  v28 = 0;
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_9046C;
  v24 = &unk_1078F0;
  v12 = v10;
  v25 = v12;
  v26 = &v29;
  v13 = [self performReadTransactionWithHealthDatabase:database error:&v28 block:&v21];
  v14 = v28;

  if (v13)
  {
    v15 = v30[5];
    if (!v15)
    {
      [NSError hk_assignError:error code:118 format:@"there is no resource with the given source URL", v21, v22, v23, v24];
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
      if (error)
      {
        v19 = v17;
        *error = v18;
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

+ (id)resourceDataForPatientResourceForAccountWithIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  profileCopy = profile;
  v10 = [self _predicateForPatientResourcesForAccountWithIdentifier:identifierCopy];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_90454;
  v30 = sub_90464;
  v31 = 0;
  database = [profileCopy database];
  selfCopy = self;
  v25 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_907B8;
  v21[3] = &unk_1078F0;
  v12 = v10;
  v22 = v12;
  v23 = &v26;
  v13 = [self performReadTransactionWithHealthDatabase:database error:&v25 block:v21];
  v14 = v25;

  if (v13)
  {
    v15 = v27[5];
    if (!v15)
    {
      [NSError hk_assignError:error code:118 format:@"there is no Patient resource for account %@", identifierCopy];
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
      if (error)
      {
        v19 = v17;
        *error = v18;
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

+ (id)_resourceDataWithROWID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v8 = HDSQLiteColumnWithNameAsData();
  if (!v8)
  {
    v9 = NSStringFromClass(self);
    [NSError hk_assignError:error code:100 format:@"%@ nil FHIR resource data for ROWID %lld, cannot return FHIRResourceData", v9, d];
    v12 = 0;
    goto LABEL_9;
  }

  v9 = HDSQLiteColumnWithNameAsString();
  if (!v9)
  {
    v10 = NSStringFromClass(self);
    [NSError hk_assignError:error code:100 format:@"%@ nil FHIR version string for ROWID %lld, cannot return FHIRResourceData", v10, d];
    goto LABEL_7;
  }

  v10 = [HKFHIRVersion versionFromVersionString:v9 error:error];
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

+ (id)_predicateForResourceWithIdentifier:(id)identifier
{
  v3 = HDOriginalFHIRResourceEntityPropertyType;
  identifierCopy = identifier;
  resourceType = [identifierCopy resourceType];
  v6 = [HDSQLiteComparisonPredicate predicateWithProperty:v3 equalToValue:resourceType];

  v7 = HDOriginalFHIRResourceEntityPropertyResourceID;
  identifier = [identifierCopy identifier];

  v9 = [HDSQLiteComparisonPredicate predicateWithProperty:v7 equalToValue:identifier];

  v10 = [HDSQLitePredicate compoundPredicateWithPredicate:v6 otherPredicate:v9];

  return v10;
}

+ (id)_predicateForResourceWithSourceURL:(id)l
{
  v3 = HDOriginalFHIRResourceEntityPropertySourceURL;
  absoluteString = [l absoluteString];
  v5 = [HDSQLiteComparisonPredicate predicateWithProperty:v3 equalToValue:absoluteString];

  return v5;
}

+ (id)_predicateForPatientResourcesForAccountWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[HDOriginalFHIRResourceEntity disambiguatedDatabaseTable];
  v5 = [HDSQLiteJoinClause innerJoinClauseFromTable:v4 toTargetEntity:objc_opt_class() as:0 localReference:HDOriginalFHIRResourceEntityPropertyAccountID targetKey:HDSQLEntityPropertyPersistentID];

  v6 = [NSSet setWithObject:v5];
  v7 = [HDSQLiteJoinPredicate predicateWithJoinClauses:v6];

  v8 = [HDClinicalAccountEntity _predicateForAccountWithIdentifier:identifierCopy];
  v9 = [v8 SQLForEntityClass:objc_opt_class()];
  v17 = identifierCopy;
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
  resourceTypes = [v3 resourceTypes];
  v6 = [HDSQLiteContainsPredicate containsPredicateWithProperty:v4 values:resourceTypes];

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

+ (id)fullResourceDocumentForAccountIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  v6 = [self _resourceObjectsWithIdentifiers:0 accountIdentifier:identifier profile:profile error:error];
  if (v6)
  {
    v7 = [self _resourceDocumentWithResourceObjects:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)resourceDocumentWithIdentifiers:(id)identifiers accountIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  v7 = [self _resourceObjectsWithIdentifiers:identifiers accountIdentifier:identifier profile:profile error:error];
  if (v7)
  {
    v8 = [self _resourceDocumentWithResourceObjects:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_resourceDocumentWithResourceObjects:(id)objects
{
  objectsCopy = objects;
  if (!objectsCopy)
  {
    sub_A943C(a2, self);
  }

  v6 = objc_alloc_init(HDFHIRResourceDocument);
  [(HDFHIRResourceDocument *)v6 addResourceObjects:objectsCopy];

  return v6;
}

+ (BOOL)_insertCodableFHIRResources:(id)resources syncProvenance:(int64_t)provenance profile:(id)profile error:(id *)error
{
  resourcesCopy = resources;
  profileCopy = profile;
  _HKInitializeLogging();
  v13 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = NSStringFromSelector(a2);
    *buf = 138543618;
    selfCopy = self;
    v32 = 2114;
    v33 = v15;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ begin insert for CodableFHIRResources", buf, 0x16u);
  }

  if ([resourcesCopy count])
  {
    database = [profileCopy database];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_913F8;
    v24[3] = &unk_108AB0;
    selfCopy2 = self;
    v25 = resourcesCopy;
    v26 = profileCopy;
    provenanceCopy = provenance;
    v29 = a2;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_9215C;
    v20[3] = &unk_106800;
    v21 = v25;
    provenanceCopy2 = provenance;
    v22 = v26;
    v17 = [self performWriteTransactionWithHealthDatabase:database error:error block:v24 inaccessibilityHandler:v20];
  }

  else
  {
    _HKInitializeLogging();
    v18 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_A94B8(self, v18, a2);
    }

    v17 = 1;
  }

  return v17;
}

+ (BOOL)insertNewResourceObjects:(id)objects account:(id)account profile:(id)profile error:(id *)error
{
  objectsCopy = objects;
  profileCopy = profile;
  accountCopy = account;
  gateway = [accountCopy gateway];
  externalID = [gateway externalID];

  identifier = [accountCopy identifier];
  uUIDString = [identifier UUIDString];

  currentSyncIdentityPersistentID = [profileCopy currentSyncIdentityPersistentID];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_92350;
  v23[3] = &unk_107690;
  v24 = profileCopy;
  v25 = objectsCopy;
  v26 = externalID;
  v27 = uUIDString;
  v18 = uUIDString;
  v19 = externalID;
  v20 = objectsCopy;
  v21 = profileCopy;
  LOBYTE(error) = [self insertOrUpdateResourceObjects:v20 upsertedResourceObjectPairs:0 account:accountCopy syncProvenance:0 syncIdentity:currentSyncIdentityPersistentID profile:v21 error:error inaccessibilityHandler:v23];

  return error;
}

+ (BOOL)insertOrUpdateResourceObjects:(id)objects upsertedResourceObjectPairs:(id *)pairs account:(id)account syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity profile:(id)profile error:(id *)error inaccessibilityHandler:(id)self0
{
  objectsCopy = objects;
  accountCopy = account;
  profileCopy = profile;
  handlerCopy = handler;
  if ([objectsCopy count])
  {
    provenanceCopy = provenance;
    v50 = objectsCopy;
    v52 = handlerCopy;
    gateway = [accountCopy gateway];
    externalID = [gateway externalID];

    gateway2 = [accountCopy gateway];
    country = [gateway2 country];

    daemon = [profileCopy daemon];
    behavior = [daemon behavior];
    localTimeZone = [behavior localTimeZone];

    v24 = [HDHRSOriginInformation alloc];
    daemon2 = [profileCopy daemon];
    behavior2 = [daemon2 behavior];
    v27 = behavior2;
    v51 = accountCopy;
    identityCopy = identity;
    selfCopy = self;
    if (behavior2)
    {
      [behavior2 currentOSVersionStruct];
    }

    else
    {
      memset(v63, 0, 24);
    }

    daemon3 = [profileCopy daemon];
    behavior3 = [daemon3 behavior];
    currentOSBuild = [behavior3 currentOSBuild];
    v34 = [v24 initWithOperatingSystemVersion:v63 build:currentOSBuild];

    if (pairs)
    {
      v35 = objc_alloc_init(NSMutableArray);
    }

    else
    {
      v35 = 0;
    }

    v36 = selfCopy;
    database = [profileCopy database];
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_9287C;
    v53[3] = &unk_108B00;
    v60 = selfCopy;
    v54 = externalID;
    objectsCopy = v50;
    v62 = identityCopy;
    v55 = v50;
    v56 = v46;
    v61 = provenanceCopy;
    v57 = v34;
    v38 = v35;
    v58 = v38;
    v59 = country;
    v39 = country;
    v40 = v34;
    v41 = v46;
    v42 = externalID;
    v30 = [v36 performWriteTransactionWithHealthDatabase:database error:error block:v53 inaccessibilityHandler:v52];

    if (pairs && v30)
    {
      v43 = v38;
      *pairs = v38;
    }

    accountCopy = v51;
    handlerCopy = v52;
  }

  else
  {
    if (pairs)
    {
      *pairs = &__NSArray0__struct;
    }

    LOBYTE(v30) = 1;
  }

  return v30;
}

+ (id)_insertResourceObjectWithIdentifier:(id)identifier accountID:(int64_t)d syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity rawContent:(id)content uniquenessChecksum:(id)checksum sourceURL:(id)l FHIRVersion:(id)self0 receivedDate:(id)self1 receivedDateTimeZoneName:(id)self2 firstSeenDate:(id)self3 firstSeenDateOut:(id *)self4 firstSeenDateTimeZoneName:(id)self5 extractionHints:(int64_t)self6 originVersion:(id *)self7 originBuild:(id)self8 database:(id)self9 error:(id *)error
{
  identifierCopy = identifier;
  contentCopy = content;
  checksumCopy = checksum;
  lCopy = l;
  versionCopy = version;
  dateCopy = date;
  nameCopy = name;
  seenDateCopy = seenDate;
  zoneNameCopy = zoneName;
  buildCopy = build;
  databaseCopy = database;
  v86 = identifierCopy;
  resourceType = [identifierCopy resourceType];
  identifier = [identifierCopy identifier];
  stringRepresentation = [versionCopy stringRepresentation];
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
  v105[4] = self;
  v98[0] = _NSConcreteStackBlock;
  v98[1] = 3221225472;
  v98[2] = sub_93920;
  v98[3] = &unk_108B28;
  v73 = resourceType;
  v99 = v73;
  v74 = identifier;
  v100 = v74;
  dCopy = d;
  v28 = stringRepresentation;
  v101 = v28;
  v77 = checksumCopy;
  v102 = v77;
  v29 = dateCopy;
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
  v30 = databaseCopy;
  LOBYTE(checksum) = [databaseCopy executeCachedStatementForKey:&unk_E4189 error:&v106 SQLGenerator:v105 bindingHandler:v98 enumerationHandler:v97];
  v31 = v106;
  v32 = v31;
  if (checksum)
  {
    if (v130[5])
    {
      if (seenDateCopy)
      {
        v33 = [v124[5] hk_isBeforeOrEqualToDate:?];
      }

      else
      {
        v33 = 1;
      }

      v38 = v108[3];
      v40 = v38 == hints;
      v39 = v38 & 0xFFFFFFFFFFFFFFEFLL;
      v40 = v40 || v39 == hints;
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
        if (provenance)
        {
          v36 = v32;
        }

        else
        {
          v52 = v130[5];
          v96 = 0;
          v53 = [self _recordResourceLastSeen:v29 resourcePersistentID:v52 database:databaseCopy error:&v96];
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

        if (out)
        {
          *out = v124[5];
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
          *(&buf.var0 + 4) = self;
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
        sub_A95D8(self, v34);
      }

      v35 = v32;
      v36 = v35;
      if (v35)
      {
        if (error)
        {
          v37 = v35;
          *error = v36;
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
    v94[4] = self;
    v95 = v32;
    v90[0] = _NSConcreteStackBlock;
    v90[1] = 3221225472;
    v90[2] = sub_93B7C;
    v90[3] = &unk_108B78;
    v91 = v73;
    v92 = v74;
    dCopy2 = d;
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
          sub_A9724(self, v49);
        }

        v50 = v47;
        v36 = v50;
        if (v50)
        {
          if (error)
          {
            v51 = v50;
            *error = v36;
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
        sub_A96BC(self, v56, v135, v55);
      }
    }

    v46 = v124[5];
    goto LABEL_52;
  }

  v47 = v32;
LABEL_52:
  v57 = v46;
  v58 = v118[5];
  if (seenDateCopy && (!v124[5] || [seenDateCopy hk_isBeforeDate:?]))
  {
    v59 = seenDateCopy;

    v60 = zoneNameCopy;
    v57 = v59;
LABEL_58:
    v61 = v60;

    v58 = v61;
    goto LABEL_59;
  }

  if (!v57)
  {
    v57 = v29;
    v60 = nameCopy;
    goto LABEL_58;
  }

LABEL_59:
  v62 = v130[5];
  v88 = v47;
  buf = *originVersion;
  v54 = [self _wrapRawInsertResourceObjectWithIdentifier:v86 accountID:d syncProvenance:provenance syncIdentity:identity rawContent:contentCopy uniquenessChecksum:v77 sourceURL:lCopy FHIRVersion:v28 receivedDate:v29 receivedDateTimeZoneName:nameCopy firstSeenDate:v57 firstSeenDateTimeZoneName:v58 extractionHints:hints originVersion:&buf originBuild:buildCopy database:v30 existingRowID:v62 error:&v88];
  v63 = v88;

  if (v54)
  {
    if (provenance)
    {
      v36 = v63;
    }

    else
    {
      v87 = 0;
      v66 = [self _recordResourceLastSeen:v29 resourcePersistentID:v54 database:v30 error:&v87];
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

    if (out)
    {
      *out = v124[5];
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
      if (error)
      {
        v65 = v64;
        *error = v36;
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

+ (id)_wrapRawInsertResourceObjectWithIdentifier:(id)identifier accountID:(int64_t)d syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity rawContent:(id)content uniquenessChecksum:(id)checksum sourceURL:(id)l FHIRVersion:(id)self0 receivedDate:(id)self1 receivedDateTimeZoneName:(id)self2 firstSeenDate:(id)self3 firstSeenDateTimeZoneName:(id)self4 extractionHints:(int64_t)self5 originVersion:(id *)self6 originBuild:(id)self7 database:(id)self8 existingRowID:(id)self9 error:(id *)error
{
  identifierCopy = identifier;
  contentCopy = content;
  checksumCopy = checksum;
  lCopy = l;
  versionCopy = version;
  dateCopy = date;
  nameCopy = name;
  seenDateCopy = seenDate;
  zoneNameCopy = zoneName;
  buildCopy = build;
  databaseCopy = database;
  iDCopy = iD;
  selfCopy = self;
  v83 = iDCopy;
  v86 = buildCopy;
  v87 = contentCopy;
  v84 = nameCopy;
  v85 = versionCopy;
  v89 = zoneNameCopy;
  if (iDCopy)
  {
    selfCopy2 = self;
    v115 = 0;
    v110[0] = _NSConcreteStackBlock;
    v110[1] = 3221225472;
    v110[2] = sub_94528;
    v110[3] = &unk_108BC8;
    v32 = objc_alloc_init(NSMutableArray);
    v111 = v32;
    v33 = databaseCopy;
    v112 = v33;
    selfCopy3 = self;
    v34 = iDCopy;
    v113 = v34;
    v35 = [HDClinicalRecordEntity _enumerateEntitiesWithOriginalFHIRResourceROWID:v34 database:v33 error:&v115 enumerationHandler:v110];
    v36 = v115;
    if (v35)
    {
      v77 = dateCopy;
      v37 = [v32 copy];
      v109 = v36;
      v104[0] = _NSConcreteStackBlock;
      v104[1] = 3221225472;
      v104[2] = sub_9467C;
      v104[3] = &unk_108BF0;
      v38 = objc_alloc_init(NSMutableArray);
      v105 = v38;
      v106 = v33;
      v108 = selfCopy2;
      v39 = v34;
      v107 = v39;
      v40 = [HDMedicalRecordEntity _enumerateEntitiesWithOriginalFHIRResourceROWID:v39 database:v106 error:&v109 enumerationHandler:v104];
      iDCopy = v109;

      if (v40)
      {
        v88 = [v38 copy];
        v41 = v32;
        v42 = v77;
        buildCopy = v86;
      }

      else
      {
        _HKInitializeLogging();
        v47 = HKLogHealthRecords;
        buildCopy = v86;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.var0) = 138543874;
          *(&buf.var0 + 4) = selfCopy;
          WORD2(buf.var1) = 2114;
          *(&buf.var1 + 6) = v39;
          HIWORD(buf.var2) = 2114;
          v118 = iDCopy;
          _os_log_error_impl(&dword_0, v47, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve HDMedicalRecordEntity for associated HDOriginalFHIRResourceEntity with ROWID %{public}@: %{public}@", &buf, 0x20u);
        }

        v48 = iDCopy;
        v49 = v48;
        v41 = v32;
        v42 = v77;
        if (v48)
        {
          if (error)
          {
            v50 = v48;
            *error = v49;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v88 = 0;
      }

      zoneNameCopy = v89;
    }

    else
    {
      _HKInitializeLogging();
      v44 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.var0) = 138543874;
        *(&buf.var0 + 4) = selfCopy;
        WORD2(buf.var1) = 2114;
        *(&buf.var1 + 6) = v34;
        HIWORD(buf.var2) = 2114;
        v118 = v36;
        _os_log_error_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve HDClinicalRecordEntity for associated HDOriginalFHIRResourceEntity with ROWID %{public}@: %{public}@", &buf, 0x20u);
      }

      v45 = v36;
      v38 = v45;
      v42 = dateCopy;
      if (v45)
      {
        zoneNameCopy = v89;
        buildCopy = v86;
        v41 = v32;
        if (error)
        {
          v46 = v45;
          v40 = 0;
          v88 = 0;
          v37 = 0;
          *error = v38;
        }

        else
        {
          _HKLogDroppedError();
          v40 = 0;
          v88 = 0;
          v37 = 0;
        }

        iDCopy = v38;
      }

      else
      {
        v40 = 0;
        v88 = 0;
        v37 = 0;
        iDCopy = 0;
        zoneNameCopy = v89;
        buildCopy = v86;
        v41 = v32;
      }
    }

    if (!v40)
    {
      v67 = 0;
      contentCopy = v87;
      nameCopy = v84;
      versionCopy = v85;
      goto LABEL_57;
    }

    contentCopy = v87;
    errorCopy2 = error;
    nameCopy = v84;
    versionCopy = v85;
  }

  else
  {
    v88 = 0;
    v37 = 0;
    errorCopy2 = error;
    v42 = dateCopy;
  }

  buf = *originVersion;
  v51 = [selfCopy _rawInsertResourceObjectWithIdentifier:identifierCopy accountID:d syncProvenance:provenance syncIdentity:identity rawContent:contentCopy uniquenessChecksum:checksumCopy sourceURL:lCopy FHIRVersion:versionCopy receivedDate:v42 receivedDateTimeZoneName:nameCopy firstSeenDate:seenDateCopy firstSeenDateTimeZoneName:zoneNameCopy extractionHints:hints originVersion:&buf originBuild:buildCopy database:databaseCopy error:errorCopy2];
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
        v57 = iDCopy;
        while (1)
        {
          if (*v101 != v55)
          {
            objc_enumerationMutation(v52);
          }

          v58 = *(*(&v100 + 1) + 8 * v56);
          v99 = v57;
          v59 = [v58 _updateOriginalFHIRResourceROWID:v51 database:databaseCopy error:&v99];
          iDCopy = v99;

          if ((v59 & 1) == 0)
          {
            break;
          }

          v56 = v56 + 1;
          v57 = iDCopy;
          if (v54 == v56)
          {
            v54 = [v52 countByEnumeratingWithState:&v100 objects:v121 count:16];
            buildCopy = v86;
            contentCopy = v87;
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
        lastInsertRowID = [databaseCopy lastInsertRowID];
        LODWORD(buf.var0) = 138544130;
        *(&buf.var0 + 4) = selfCopy;
        WORD2(buf.var1) = 2114;
        *(&buf.var1 + 6) = v58;
        HIWORD(buf.var2) = 2114;
        v118 = lastInsertRowID;
        v119 = 2114;
        v120 = iDCopy;
        v71 = "%{public}@ Failed to re-associate clinical record %{public}@ with new originalFHIRResourceROWID %{public}@: %{public}@";
        goto LABEL_61;
      }

LABEL_34:

      nameCopy = v84;
      versionCopy = v85;
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
        v64 = iDCopy;
        while (1)
        {
          if (*v96 != v62)
          {
            objc_enumerationMutation(v52);
          }

          v65 = *(*(&v95 + 1) + 8 * v63);
          v94 = v64;
          v66 = [v65 _updateOriginalFHIRResourceROWID:v51 database:databaseCopy error:&v94];
          iDCopy = v94;

          if ((v66 & 1) == 0)
          {
            break;
          }

          v63 = v63 + 1;
          v64 = iDCopy;
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
        lastInsertRowID = [databaseCopy lastInsertRowID];
        LODWORD(buf.var0) = 138544130;
        *(&buf.var0 + 4) = selfCopy;
        WORD2(buf.var1) = 2114;
        *(&buf.var1 + 6) = v65;
        HIWORD(buf.var2) = 2114;
        v118 = lastInsertRowID;
        v119 = 2114;
        v120 = iDCopy;
        v71 = "%{public}@ Failed to re-associate medical record %{public}@ with new originalFHIRResourceROWID %{public}@: %{public}@";
LABEL_61:
        _os_log_error_impl(&dword_0, v69, OS_LOG_TYPE_ERROR, v71, &buf, 0x2Au);

LABEL_51:
        v73 = iDCopy;
        iDCopy = v73;
        buildCopy = v86;
        contentCopy = v87;
        versionCopy = v85;
        v37 = v76;
        v42 = v78;
        if (v73)
        {
          if (error)
          {
            v74 = v73;
            *error = iDCopy;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v67 = 0;
        nameCopy = v84;
        goto LABEL_56;
      }

LABEL_44:

      buildCopy = v86;
      contentCopy = v87;
      nameCopy = v84;
      versionCopy = v85;
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

  zoneNameCopy = v89;
LABEL_57:

  return v67;
}

+ (id)_rawInsertResourceObjectWithIdentifier:(id)identifier accountID:(int64_t)d syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity rawContent:(id)content uniquenessChecksum:(id)checksum sourceURL:(id)l FHIRVersion:(id)self0 receivedDate:(id)self1 receivedDateTimeZoneName:(id)self2 firstSeenDate:(id)self3 firstSeenDateTimeZoneName:(id)self4 extractionHints:(int64_t)self5 originVersion:(id *)self6 originBuild:(id)self7 database:(id)self8 error:(id *)self9
{
  contentCopy = content;
  checksumCopy = checksum;
  lCopy = l;
  versionCopy = version;
  dateCopy = date;
  nameCopy = name;
  seenDateCopy = seenDate;
  zoneNameCopy = zoneName;
  buildCopy = build;
  databaseCopy = database;
  identifierCopy = identifier;
  resourceType = [identifierCopy resourceType];
  identifier = [identifierCopy identifier];

  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_94AFC;
  v70[3] = &unk_106590;
  v70[4] = self;
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_94B5C;
  v52[3] = &unk_108C18;
  v53 = resourceType;
  v54 = identifier;
  v55 = contentCopy;
  v56 = checksumCopy;
  v57 = dateCopy;
  v58 = nameCopy;
  v59 = seenDateCopy;
  v60 = zoneNameCopy;
  v61 = versionCopy;
  v62 = lCopy;
  provenanceCopy = provenance;
  hintsCopy = hints;
  var2 = originVersion->var2;
  v67 = *&originVersion->var0;
  v63 = buildCopy;
  dCopy = d;
  v68 = var2;
  identityCopy = identity;
  v51 = buildCopy;
  v49 = lCopy;
  v47 = versionCopy;
  v45 = zoneNameCopy;
  v44 = seenDateCopy;
  v43 = nameCopy;
  v29 = dateCopy;
  v30 = checksumCopy;
  v31 = contentCopy;
  v32 = identifier;
  v33 = resourceType;
  if ([databaseCopy executeCachedStatementForKey:&unk_E418B error:error SQLGenerator:v70 bindingHandler:v52 enumerationHandler:0] && objc_msgSend(databaseCopy, "getChangesCount") >= 1)
  {
    lastInsertRowID = [databaseCopy lastInsertRowID];
  }

  else
  {
    lastInsertRowID = 0;
  }

  return lastInsertRowID;
}

+ (BOOL)_recordResourceLastSeen:(id)seen resourcePersistentID:(id)d database:(id)database error:(id *)error
{
  v6 = [HDOriginalFHIRResourceLastSeenEntity insertOrUpdateLastSeenDate:seen resourcePersistentID:d database:database error:error];
  v7 = v6 != 0;

  return v7;
}

+ (id)addExtractionHints:(unint64_t)hints toResourceEntities:(id)entities profile:(id)profile error:(id *)error
{
  entitiesCopy = entities;
  profileCopy = profile;
  if ([entitiesCopy count])
  {
    v13 = objc_alloc_init(NSMutableArray);
    database = [profileCopy database];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_94E70;
    v21[3] = &unk_1067D8;
    selfCopy = self;
    hintsCopy = hints;
    v22 = entitiesCopy;
    v23 = v13;
    v15 = v13;
    v16 = entitiesCopy;
    v17 = [self performWriteTransactionWithHealthDatabase:database error:error block:v21];

    if (v17)
    {
      v18 = v15;
    }

    else
    {
      v18 = 0;
    }

    entitiesCopy = v18;
  }

  else
  {
    _HKInitializeLogging();
    v19 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_A94B8(self, v19, a2);
    }
  }

  return entitiesCopy;
}

- (id)entityByAddingExtractionHints:(unint64_t)hints database:(id)database error:(id *)error
{
  databaseCopy = database;
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
  _propertiesForEntity = [objc_opt_class() _propertiesForEntity];
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
  v10 = [(HDOriginalFHIRResourceEntity *)self getValuesForProperties:_propertiesForEntity database:databaseCopy error:error handler:v55];

  if ((v10 & 1) == 0)
  {
    goto LABEL_23;
  }

  if (!v77[5])
  {
    [NSError hk_assignError:error code:100 format:@"Missing account ID on existing original FHIR resource with ROWID %lu", [(HDOriginalFHIRResourceEntity *)self persistentID]];
LABEL_23:
    selfCopy = 0;
    goto LABEL_24;
  }

  v11 = v63[5];
  if (!v11)
  {
    v17 = v57[5];
    v18 = v17;
    if (v17)
    {
      if (error)
      {
        v19 = v17;
        *error = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_23;
  }

  extractionHints = [v11 extractionHints];
  v13 = extractionHints | hints;
  if (extractionHints == (extractionHints | hints))
  {
    _HKInitializeLogging();
    v14 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      v15 = v14;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v35 = objc_opt_class();
        persistentID = [(HDOriginalFHIRResourceEntity *)self persistentID];
        *buf = 138543874;
        *&buf[4] = v35;
        *&buf[12] = 2050;
        *&buf[14] = persistentID;
        *&buf[22] = 2048;
        hintsCopy = hints;
        _os_log_debug_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%{public}@ Existing resource with ROWID %{public}lu already has extraction hints %lu, not replacing", buf, 0x20u);
      }
    }

    selfCopy = self;
  }

  else
  {
    v20 = [NSNumber numberWithLongLong:[(HDOriginalFHIRResourceEntity *)self persistentID]];
    v54 = 0;
    v53 = [HDOriginalFHIRResourceLastSeenEntity lastSeenDateForResourceWithPersistentID:v20 database:databaseCopy error:&v54];
    v52 = v54;

    if (v53 || !v52)
    {
      v21 = [HKFHIRIdentifier alloc];
      resourceType = [v63[5] resourceType];
      resourceID = [v63[5] resourceID];
      v51 = [v21 initWithResourceType:resourceType identifier:resourceID];

      if ([v63[5] hasOriginVersionMajor])
      {
        originVersionMajor = [v63[5] originVersionMajor];
      }

      else
      {
        originVersionMajor = &dword_8 + 3;
      }

      if ([v63[5] hasOriginVersionMinor])
      {
        originVersionMinor = [v63[5] originVersionMinor];
      }

      else
      {
        originVersionMinor = &dword_0 + 3;
      }

      v44 = originVersionMinor;
      v45 = originVersionMajor;
      if ([v63[5] hasOriginVersionPatch])
      {
        originVersionPatch = [v63[5] originVersionPatch];
      }

      else
      {
        originVersionPatch = 0;
      }

      v43 = objc_opt_class();
      unsignedLongValue = [v77[5] unsignedLongValue];
      v39 = v69[3];
      v40 = v73[3];
      rawContent = [v63[5] rawContent];
      uniquenessChecksum = [v63[5] uniquenessChecksum];
      sourceURL = [v63[5] sourceURL];
      fhirVersion = [v63[5] fhirVersion];
      [v63[5] receivedDate];
      v46 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      receivedDateTimeZoneName = [v63[5] receivedDateTimeZoneName];
      [v63[5] firstSeenDate];
      v28 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      firstSeenDateTimeZoneName = [v63[5] firstSeenDateTimeZoneName];
      originVersionBuild = [v63[5] originVersionBuild];
      v31 = [NSNumber numberWithLongLong:[(HDOriginalFHIRResourceEntity *)self persistentID]];
      *buf = v45;
      *&buf[8] = v44;
      *&buf[16] = originVersionPatch;
      v32 = [v43 _wrapRawInsertResourceObjectWithIdentifier:v51 accountID:unsignedLongValue syncProvenance:v40 syncIdentity:v39 rawContent:rawContent uniquenessChecksum:uniquenessChecksum sourceURL:sourceURL FHIRVersion:fhirVersion receivedDate:v46 receivedDateTimeZoneName:receivedDateTimeZoneName firstSeenDate:v28 firstSeenDateTimeZoneName:firstSeenDateTimeZoneName extractionHints:v13 originVersion:buf originBuild:originVersionBuild database:databaseCopy existingRowID:v31 error:error];

      if (!v32 || v53 && ([HDOriginalFHIRResourceLastSeenEntity insertOrUpdateLastSeenDate:v53 resourcePersistentID:v32 database:databaseCopy error:error], v33 = objc_claimAutoreleasedReturnValue(), v34 = v33 == 0, v33, v34) || ([(HDOriginalFHIRResourceEntity *)self deleteFromDatabase:databaseCopy error:error]& 1) == 0)
      {
        selfCopy = 0;
      }

      else
      {
        selfCopy = [objc_opt_class() entityWithPersistentID:v32];
      }
    }

    else
    {
      _HKInitializeLogging();
      v51 = HKLogHealthRecords;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v37 = objc_opt_class();
        persistentID2 = [(HDOriginalFHIRResourceEntity *)self persistentID];
        *buf = 138543874;
        *&buf[4] = v37;
        *&buf[12] = 2050;
        *&buf[14] = persistentID2;
        *&buf[22] = 2112;
        hintsCopy = v52;
        _os_log_error_impl(&dword_0, v51, OS_LOG_TYPE_ERROR, "%{public}@ Error finding current last seen date for resource with ROWID %{public}lu: %@", buf, 0x20u);
      }

      selfCopy = 0;
    }
  }

LABEL_24:
  _Block_object_dispose(&v56, 8);

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v76, 8);

  return selfCopy;
}

+ (BOOL)_validateCodableFHIRResourceFromSync:(id)sync error:(id *)error
{
  syncCopy = sync;
  if ([syncCopy hasMessageVersion])
  {
    messageVersion = [syncCopy messageVersion];
    compatibilityVersion = [messageVersion compatibilityVersion];

    if (compatibilityVersion > 1)
    {
      v8 = @"Codable FHIR resource compatibilty version is higher than what we support";
LABEL_24:
      [NSError hk_assignError:error code:3 description:v8];
      v21 = 0;
      goto LABEL_25;
    }

    messageVersion2 = [syncCopy messageVersion];
    v9 = [messageVersion2 entityVersion] > 0;
  }

  else
  {
    v9 = 0;
  }

  gatewayExternalID = [syncCopy gatewayExternalID];
  v12 = [gatewayExternalID length];

  if (!v12)
  {
    v8 = @"Missing gateway external ID";
    goto LABEL_24;
  }

  resourceID = [syncCopy resourceID];
  v14 = [resourceID length];

  if (!v14)
  {
    v8 = @"Missing FHIR resource ID";
    goto LABEL_24;
  }

  resourceType = [syncCopy resourceType];
  v16 = [resourceType length];

  if (!v16)
  {
    v8 = @"Missing FHIR resource type";
    goto LABEL_24;
  }

  rawContent = [syncCopy rawContent];
  v18 = [rawContent length];

  if (!v18)
  {
    v8 = @"Missing FHIR resource raw content";
    goto LABEL_24;
  }

  if (v9 && ![syncCopy hasUniquenessChecksum])
  {
    v8 = @"Missing FHIR resource uniqueness checksum";
    goto LABEL_24;
  }

  fhirVersion = [syncCopy fhirVersion];
  v20 = [fhirVersion length];

  if (!v20)
  {
    v8 = @"Missing FHIR version for resource";
    goto LABEL_24;
  }

  if (![syncCopy hasReceivedDate])
  {
    v8 = @"Missing FHIR resource received date";
    goto LABEL_24;
  }

  if (([syncCopy hasReceivedDateTimeZoneName] & 1) == 0)
  {
    v8 = @"Missing FHIR resource received date time zone";
    goto LABEL_24;
  }

  v21 = 1;
LABEL_25:

  return v21;
}

+ (BOOL)_validateCodableFHIRResource:(id)resource error:(id *)error
{
  resourceCopy = resource;
  if (![self _validateCodableFHIRResourceFromSync:resourceCopy error:error])
  {
    goto LABEL_16;
  }

  if (![resourceCopy hasOriginVersionMajor])
  {
    v8 = @"Missing FHIR resource origin version major";
LABEL_15:
    [NSError hk_assignError:error code:3 description:v8];
LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  if (![resourceCopy hasOriginVersionMinor])
  {
    v8 = @"Missing FHIR resource origin version minor";
    goto LABEL_15;
  }

  if (![resourceCopy hasOriginVersionPatch])
  {
    v8 = @"Missing FHIR resource origin version patch";
    goto LABEL_15;
  }

  if (![resourceCopy hasOriginVersionBuild])
  {
    v8 = @"Missing FHIR resource origin version build";
    goto LABEL_15;
  }

  if (![resourceCopy hasFirstSeenDate])
  {
    v8 = @"Missing FHIR resource first seen date";
    goto LABEL_15;
  }

  if (([resourceCopy hasFirstSeenDateTimeZoneName] & 1) == 0)
  {
    v8 = @"Missing FHIR resource first seen date time zone";
    goto LABEL_15;
  }

  v7 = 1;
LABEL_17:

  return v7;
}

- (id)_codableWithRow:(HDSQLiteRow *)row gatewayExternalID:(id)d accountUUID:(id)iD error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  v12 = objc_opt_class();
  persistentID = [(HDOriginalFHIRResourceEntity *)self persistentID];
  v14 = [v12 _resourceObjectWithRow:row rowID:persistentID assignCountry:HKCountryCodeUnknownCountry error:error];
  if (v14)
  {
    v15 = HDSQLiteColumnWithNameAsString();
    v16 = HDSQLiteColumnWithNameAsString();
    v17 = [v14 codableFHIRResourceWithGatewayExternalID:dCopy accountID:iDCopy receivedDateTimeZoneName:v15 firstSeenDateTimeZoneName:v16];
    if ([objc_opt_class() _validateCodableFHIRResource:v17 error:error])
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

+ (BOOL)_ensureForeignKeysAreDeferredInDatabase:(id)database error:(id *)error
{
  v11 = 0;
  v5 = [database executeUncachedSQL:@"PRAGMA defer_foreign_keys = ON" error:&v11];
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
      if (error)
      {
        v9 = v8;
        *error = v8;
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