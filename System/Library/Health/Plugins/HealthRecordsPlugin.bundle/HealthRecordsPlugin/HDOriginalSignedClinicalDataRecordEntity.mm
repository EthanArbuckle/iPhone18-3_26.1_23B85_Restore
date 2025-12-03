@interface HDOriginalSignedClinicalDataRecordEntity
+ (BOOL)enumerateActiveCodableRecordsForAccountIdentifier:(id)identifier profile:(id)profile error:(id *)error block:(id)block;
+ (BOOL)enumerateActiveEntitiesForAccountIdentifier:(id)identifier profile:(id)profile error:(id *)error block:(id)block;
+ (BOOL)enumerateActiveRecordsForAccountIdentifier:(id)identifier profile:(id)profile error:(id *)error block:(id)block;
+ (BOOL)insertCodableOriginalRecords:(id)records shouldReplace:(BOOL)replace syncProvenance:(int64_t)provenance profile:(id)profile error:(id *)error;
+ (BOOL)insertCodableOriginalRecordsFromSync:(id)sync syncProvenance:(int64_t)provenance profile:(id)profile error:(id *)error;
+ (BOOL)replaceOriginalRecordWithSyncIdentifier:(id)identifier newSignatureStatus:(int64_t)status profile:(id)profile error:(id *)error;
+ (BOOL)validateCodableRecord:(id)record error:(id *)error;
+ (HDOriginalSignedClinicalDataRecordEntity)entityWithSyncIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (id)_lookUpAccountByGatewayExternalID:(id)d gatewayExternalIDToAccountMap:(id)map database:(id)database error:(id *)error;
+ (id)_lookUpAccountByIssuerIdentifier:(id)identifier issuerIdentifierToAccountMap:(id)map database:(id)database error:(id *)error;
+ (id)_predicateForUndeletedRecordsOnAccountEntity:(id)entity;
+ (id)_predicateForUnextractedOriginalRecordsWithExtractionVersion:(int64_t)version ignoreExtractionVersion:(BOOL)extractionVersion;
+ (id)accountEntityForCodableRecord:(id)record issuerIdentifierToAccountMap:(id)map gatewayExternalIDToAccountMap:(id)accountMap database:(id)database error:(id *)error;
+ (id)codableOriginalRecordForHKRecord:(id)record profile:(id)profile error:(id *)error;
+ (id)codableWithRow:(HDSQLiteRow *)row error:(id *)error;
+ (id)existingDerivedVerifiableClinicalRecordsForRecordWithSyncIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (id)existingEntityBackingMedicalRecord:(id)record profile:(id)profile error:(id *)error;
+ (id)existingEntityWithSyncIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (id)existingEntityWithUniquenessChecksum:(id)checksum account:(id)account database:(id)database error:(id *)error;
+ (id)insertCodableRecord:(id)record shouldReplace:(BOOL)replace accountPersistentID:(int64_t)d syncProvenance:(int64_t)provenance profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (id)newCompatibleCodableSignedClinicalDataRecord;
+ (id)unextractedOriginalRecordsOnProfile:(id)profile extractionVersion:(int64_t)version ignoreExtractionVersion:(BOOL)extractionVersion error:(id *)error;
- (BOOL)_deleteDerivedRecordsWithTransaction:(id)transaction profile:(id)profile error:(id *)error;
- (BOOL)deleteDerivedRecordsOnProfile:(id)profile error:(id *)error;
- (BOOL)deleteOriginalAndDerivedRecordsOnProfile:(id)profile error:(id *)error;
- (BOOL)storeSignedClinicalDataItem:(id)item account:(id)account profile:(id)profile error:(id *)error;
- (id)codableInDatabase:(id)database error:(id *)error;
- (id)existingDerivedClinicalRecordsOnProfile:(id)profile error:(id *)error;
- (id)existingDerivedMedicalRecordsOnProfile:(id)profile excludeMainRecord:(BOOL)record error:(id *)error;
- (id)existingDerivedVerifiableClinicalRecordsOnProfile:(id)profile error:(id *)error;
- (id)rawContentOnProfile:(id)profile error:(id *)error;
- (id)signedClinicalDataRecordWithProfile:(id)profile error:(id *)error;
- (id)syncIdentifierWithProfile:(id)profile error:(id *)error;
- (int64_t)updateUniquenessChecksumIfNecessaryWithItem:(id)item database:(id)database error:(id *)error;
@end

@implementation HDOriginalSignedClinicalDataRecordEntity

+ (id)newCompatibleCodableSignedClinicalDataRecord
{
  v2 = objc_alloc_init(HDCodableOriginalSignedClinicalDataRecord);
  v3 = objc_alloc_init(HDCodableMessageVersion);
  [v2 setMessageVersion:v3];

  messageVersion = [v2 messageVersion];
  [messageVersion setCompatibilityVersion:0];

  messageVersion2 = [v2 messageVersion];
  [messageVersion2 setEntityVersion:1];

  return v2;
}

+ (id)codableWithRow:(HDSQLiteRow *)row error:(id *)error
{
  if (!row)
  {
    sub_A5504(a2, self);
  }

  v6 = +[HDOriginalSignedClinicalDataRecordEntity newCompatibleCodableSignedClinicalDataRecord];
  v7 = HDSQLiteColumnWithNameAsInt64();
  if (v7 == 2)
  {
    messageVersion = [v6 messageVersion];
    [messageVersion setCompatibilityVersion:1];
  }

  v9 = HDSQLiteColumnWithNameAsData();
  [v6 setSyncIdentifier:v9];

  v10 = HDSQLiteColumnWithNameAsString();
  [v6 setGatewayExternalID:v10];

  v11 = HDSQLiteColumnWithNameAsString();
  [v6 setIssuerIdentifier:v11];

  v12 = HDSQLiteColumnWithNameAsString();
  [v6 setSourceURL:v12];

  [v6 setSourceType:v7];
  v13 = HDSQLiteColumnWithNameAsData();
  [v6 setRawContent:v13];

  v14 = HDSQLiteColumnWithNameAsData();
  [v6 setUniquenessChecksum:v14];

  [v6 setSignatureStatus:HDSQLiteColumnWithNameAsInt64()];
  v15 = HDSQLiteColumnWithNameAsString();
  v16 = [v15 componentsSeparatedByString:@" "];
  v17 = [NSMutableArray arrayWithArray:v16];
  [v6 setTypes:v17];

  v18 = HDSQLiteColumnWithNameAsData();
  v19 = [[HDCodableMetadataDictionary alloc] initWithData:v18];
  [v6 setMetadata:v19];

  HDSQLiteColumnWithNameAsDouble();
  [v6 setReceivedDate:?];
  v20 = HDSQLiteColumnWithNameAsString();
  [v6 setReceivedDateTimeZoneName:v20];

  HDSQLiteColumnWithNameAsDouble();
  [v6 setFirstSeenDate:?];
  v21 = HDSQLiteColumnWithNameAsString();
  [v6 setFirstSeenDateTimeZoneName:v21];

  HDSQLiteColumnWithNameAsDouble();
  [v6 setLastModifiedDate:?];
  [v6 setDeleted:HDSQLiteColumnWithNameAsBoolean()];
  if ([self validateCodableRecord:v6 error:error])
  {
    v22 = v6;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (BOOL)validateCodableRecord:(id)record error:(id *)error
{
  recordCopy = record;
  v6 = objc_alloc_init(NSMutableArray);
  if ([recordCopy hasMessageVersion])
  {
    messageVersion = [recordCopy messageVersion];
    compatibilityVersion = [messageVersion compatibilityVersion];

    if (compatibilityVersion >= 2)
    {
      messageVersion2 = [recordCopy messageVersion];
      v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"compatibility version is higher (%lu) than what we support (%lu)", [messageVersion2 compatibilityVersion], 1);
      [v6 addObject:v10];
    }
  }

  else
  {
    [v6 addObject:@"no compatibility version"];
  }

  syncIdentifier = [recordCopy syncIdentifier];
  v12 = [syncIdentifier length];

  if (v12)
  {
    syncIdentifier2 = [recordCopy syncIdentifier];
    v14 = [NSUUID hk_UUIDWithData:syncIdentifier2];

    if (v14)
    {
      goto LABEL_10;
    }

    v15 = @"invalid sync identifier bytes (not a UUID)";
  }

  else
  {
    v15 = @"no sync identifier";
  }

  [v6 addObject:v15];
LABEL_10:
  if (([recordCopy hasSourceType] & 1) == 0)
  {
    [v6 addObject:@"no source type"];
  }

  gatewayExternalID = [recordCopy gatewayExternalID];
  v17 = [gatewayExternalID length];
  issuerIdentifier = [recordCopy issuerIdentifier];
  v19 = [issuerIdentifier length];

  if (!&v19[v17])
  {
    [v6 addObject:@"neither gateway external ID nor issuer ID are present"];
  }

  if (([recordCopy hasRawContent] & 1) == 0 && !objc_msgSend(recordCopy, "deleted") || objc_msgSend(recordCopy, "hasRawContent") && objc_msgSend(recordCopy, "deleted"))
  {
    [v6 addObject:@"raw content and deleted should be mutually exclusive"];
  }

  uniquenessChecksum = [recordCopy uniquenessChecksum];
  v21 = [uniquenessChecksum length];

  if (!v21)
  {
    [v6 addObject:@"no uniqueness checksum"];
  }

  types = [recordCopy types];
  v23 = [types count];

  if (!v23)
  {
    [v6 addObject:@"no types"];
  }

  if (([recordCopy hasFirstSeenDate] & 1) == 0)
  {
    [v6 addObject:@"no first seen date"];
  }

  firstSeenDateTimeZoneName = [recordCopy firstSeenDateTimeZoneName];
  v25 = [firstSeenDateTimeZoneName length];

  if (!v25)
  {
    [v6 addObject:@"no first seen date timezone name"];
  }

  if (([recordCopy hasReceivedDate] & 1) == 0)
  {
    [v6 addObject:@"no received date"];
  }

  receivedDateTimeZoneName = [recordCopy receivedDateTimeZoneName];
  v27 = [receivedDateTimeZoneName length];

  if (!v27)
  {
    [v6 addObject:@"no received date timezone name"];
  }

  if (([recordCopy hasSignatureStatus] & 1) == 0)
  {
    [v6 addObject:@"no signature status"];
  }

  if (([recordCopy hasLastModifiedDate] & 1) == 0)
  {
    [v6 addObject:@"no last modified date"];
  }

  v28 = [v6 count];
  if (v28)
  {
    v29 = [v6 componentsJoinedByString:@" "];;
    [NSError hk_assignError:error code:3 format:@"codable signed clinical data record is invalid: %@", v29];
  }

  return v28 == 0;
}

+ (id)insertCodableRecord:(id)record shouldReplace:(BOOL)replace accountPersistentID:(int64_t)d syncProvenance:(int64_t)provenance profile:(id)profile transaction:(id)transaction error:(id *)error
{
  replaceCopy = replace;
  recordCopy = record;
  profileCopy = profile;
  transactionCopy = transaction;
  v71 = 0;
  LOBYTE(transaction) = [self validateCodableRecord:recordCopy error:&v71];
  v17 = v71;
  v18 = v17;
  if (transaction)
  {
    v56 = v17;
    v59 = transactionCopy;
    syncIdentityManager = [profileCopy syncIdentityManager];
    legacySyncIdentity = [syncIdentityManager legacySyncIdentity];

    v57 = profileCopy;
    if (![recordCopy hasSyncIdentity])
    {
      errorCopy2 = error;
      goto LABEL_12;
    }

    syncIdentity = [recordCopy syncIdentity];
    v70 = 0;
    v22 = [HDSyncIdentity syncIdentityWithCodable:syncIdentity error:&v70];
    v23 = v70;

    if (v22)
    {
      errorCopy2 = error;
      syncIdentityManager2 = [profileCopy syncIdentityManager];
      v69 = v23;
      v25 = [syncIdentityManager2 concreteIdentityForIdentity:v22 shouldCreate:1 transaction:v59 error:&v69];
      v26 = v69;

      if (v25)
      {

        legacySyncIdentity = v25;
LABEL_12:
        v32 = [NSUUID alloc];
        syncIdentifier = [recordCopy syncIdentifier];
        v34 = [v32 initWithUUIDBytes:{objc_msgSend(syncIdentifier, "bytes")}];

        types = [recordCopy types];
        v36 = [types componentsJoinedByString:@" "];

        if ([recordCopy hasDeleted])
        {
          deleted = [recordCopy deleted];
        }

        else
        {
          deleted = 0;
        }

        protectedDatabase = [v59 protectedDatabase];
        allColumns = [self allColumns];
        v68 = 0;
        v60[0] = _NSConcreteStackBlock;
        v60[1] = 3221225472;
        v60[2] = sub_62E9C;
        v60[3] = &unk_107E48;
        v22 = v34;
        v61 = v22;
        v62 = recordCopy;
        v40 = v36;
        v63 = v40;
        provenanceCopy = provenance;
        dCopy = d;
        v67 = deleted;
        legacySyncIdentity = legacySyncIdentity;
        v64 = legacySyncIdentity;
        v31 = [self insertOrReplaceEntity:replaceCopy database:protectedDatabase properties:allColumns error:&v68 bindingHandler:v60];
        v41 = v68;

        if (v31)
        {
          v42 = v31;
        }

        else
        {
          _HKInitializeLogging();
          v43 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            v51 = v43;
            v52 = HKStringFromBool();
            localizedDescription = [v41 localizedDescription];
            *buf = 138543874;
            selfCopy2 = self;
            v74 = 2114;
            v75 = v52;
            v76 = 2114;
            v77 = localizedDescription;
            _os_log_error_impl(&dword_0, v51, OS_LOG_TYPE_ERROR, "%{public}@ failed to insert (or replace: %{public}@) SCD record: %{public}@", buf, 0x20u);
          }

          if ([v41 hd_sqliteExtendedErrorCode] == 2067)
          {
            [NSError hk_assignError:v55 code:115 description:@"this original signed clinical data record is already present for this account" underlyingError:v41];
          }

          else
          {
            v45 = v41;
            v46 = v45;
            if (v45)
            {
              if (v55)
              {
                v47 = v45;
                *v55 = v46;
              }

              else
              {
                _HKLogDroppedError();
              }
            }
          }
        }

        goto LABEL_44;
      }

      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
      {
        sub_A5580();
      }

      v48 = v26;
      v40 = v48;
      if (v48)
      {
        if (error)
        {
          v49 = v48;
          legacySyncIdentity = 0;
          v31 = 0;
          *error = v40;
          goto LABEL_43;
        }

        _HKLogDroppedError();
      }

      legacySyncIdentity = 0;
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
      {
        sub_A55F4();
      }

      v40 = v23;
      if (v40)
      {
        if (error)
        {
          v44 = v40;
          v31 = 0;
          *error = v40;
LABEL_43:
          v41 = v40;
LABEL_44:

          v18 = v56;
          profileCopy = v57;
          transactionCopy = v59;
          goto LABEL_45;
        }

        _HKLogDroppedError();
      }
    }

    v31 = 0;
    goto LABEL_43;
  }

  _HKInitializeLogging();
  v27 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v28 = v27;
    localizedDescription2 = [v18 localizedDescription];
    *buf = 138543618;
    selfCopy2 = self;
    v74 = 2114;
    v75 = localizedDescription2;
    _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ validation failed, not inserting codable SCD record: %{public}@", buf, 0x16u);
  }

  legacySyncIdentity = v18;
  if (legacySyncIdentity)
  {
    if (error)
    {
      v30 = legacySyncIdentity;
      v31 = 0;
      *error = legacySyncIdentity;
      goto LABEL_45;
    }

    _HKLogDroppedError();
  }

  v31 = 0;
LABEL_45:

  return v31;
}

+ (BOOL)insertCodableOriginalRecordsFromSync:(id)sync syncProvenance:(int64_t)provenance profile:(id)profile error:(id *)error
{
  syncCopy = sync;
  profileCopy = profile;
  if ([syncCopy count])
  {
    database = [profileCopy database];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_6332C;
    v19[3] = &unk_1067D8;
    v20 = syncCopy;
    v21 = profileCopy;
    selfCopy = self;
    provenanceCopy = provenance;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_63824;
    v15[3] = &unk_106800;
    v16 = v20;
    provenanceCopy2 = provenance;
    v17 = v21;
    v13 = [self performWriteTransactionWithHealthDatabase:database error:error block:v19 inaccessibilityHandler:v15];
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

+ (BOOL)insertCodableOriginalRecords:(id)records shouldReplace:(BOOL)replace syncProvenance:(int64_t)provenance profile:(id)profile error:(id *)error
{
  recordsCopy = records;
  profileCopy = profile;
  if ([recordsCopy count])
  {
    _HKInitializeLogging();
    v14 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [recordsCopy count];
      v19 = HKStringFromBool();
      *buf = 138543874;
      v35 = v17;
      v36 = 2048;
      v37 = v18;
      v38 = 2114;
      v39 = v19;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ starting to insert %lu codable original signed clinical data records, shouldReplace: %{public}@", buf, 0x20u);
    }

    database = [profileCopy database];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_63B14;
    v28[3] = &unk_107E70;
    selfCopy = self;
    replaceCopy = replace;
    v29 = recordsCopy;
    provenanceCopy = provenance;
    v30 = profileCopy;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_63FF4;
    v23[3] = &unk_107E98;
    replaceCopy2 = replace;
    v24 = v29;
    provenanceCopy2 = provenance;
    v25 = v30;
    v21 = [self performWriteTransactionWithHealthDatabase:database error:error block:v28 inaccessibilityHandler:v23];
  }

  else
  {
    v21 = 1;
  }

  return v21;
}

+ (id)accountEntityForCodableRecord:(id)record issuerIdentifierToAccountMap:(id)map gatewayExternalIDToAccountMap:(id)accountMap database:(id)database error:(id *)error
{
  mapCopy = map;
  accountMapCopy = accountMap;
  databaseCopy = database;
  recordCopy = record;
  gatewayExternalID = [recordCopy gatewayExternalID];

  if (gatewayExternalID)
  {
    gatewayExternalID2 = [recordCopy gatewayExternalID];

    [self _lookUpAccountByGatewayExternalID:gatewayExternalID2 gatewayExternalIDToAccountMap:accountMapCopy database:databaseCopy error:error];
  }

  else
  {
    gatewayExternalID2 = [recordCopy issuerIdentifier];

    [self _lookUpAccountByIssuerIdentifier:gatewayExternalID2 issuerIdentifierToAccountMap:mapCopy database:databaseCopy error:error];
  }
  v18 = ;

  return v18;
}

+ (id)_lookUpAccountByIssuerIdentifier:(id)identifier issuerIdentifierToAccountMap:(id)map database:(id)database error:(id *)error
{
  identifierCopy = identifier;
  mapCopy = map;
  databaseCopy = database;
  v13 = [mapCopy objectForKeyedSubscript:identifierCopy];
  if (!v13)
  {
    v25 = 0;
    v13 = [HDClinicalAccountEntity existingAccountEntityForSignedClinicalDataIssuerWithIdentifier:identifierCopy database:databaseCopy error:&v25];
    v14 = v25;
    if (v13)
    {
      [mapCopy setObject:v13 forKeyedSubscript:identifierCopy];
    }

    else
    {
      _HKInitializeLogging();
      v15 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        v19 = v15;
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = NSStringFromSelector(a2);
        v23 = HKSensitiveLogItem();
        v24 = HKSensitiveLogItem();
        *buf = 138544130;
        v27 = v21;
        v28 = 2114;
        v29 = v22;
        v30 = 2114;
        v31 = v23;
        v32 = 2114;
        v33 = v24;
        _os_log_error_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ failed to retrieve account for issuer %{public}@ with error: %{public}@", buf, 0x2Au);
      }

      v16 = v14;
      if (v16)
      {
        if (error)
        {
          v17 = v16;
          *error = v16;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v13 = 0;
    }
  }

  return v13;
}

+ (id)_lookUpAccountByGatewayExternalID:(id)d gatewayExternalIDToAccountMap:(id)map database:(id)database error:(id *)error
{
  dCopy = d;
  mapCopy = map;
  databaseCopy = database;
  v13 = [mapCopy objectForKeyedSubscript:dCopy];
  if (!v13)
  {
    v25 = 0;
    v13 = [HDClinicalAccountEntity existingAccountEntityForGatewayWithExternalID:dCopy database:databaseCopy error:&v25];
    v14 = v25;
    if (v13)
    {
      [mapCopy setObject:v13 forKeyedSubscript:dCopy];
    }

    else
    {
      _HKInitializeLogging();
      v15 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        v19 = v15;
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = NSStringFromSelector(a2);
        v23 = HKSensitiveLogItem();
        v24 = HKSensitiveLogItem();
        *buf = 138544130;
        v27 = v21;
        v28 = 2114;
        v29 = v22;
        v30 = 2114;
        v31 = v23;
        v32 = 2114;
        v33 = v24;
        _os_log_error_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ failed to retrieve account for gateway %{public}@ with error: %{public}@", buf, 0x2Au);
      }

      v16 = v14;
      if (v16)
      {
        if (error)
        {
          v17 = v16;
          *error = v16;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v13 = 0;
    }
  }

  return v13;
}

- (BOOL)storeSignedClinicalDataItem:(id)item account:(id)account profile:(id)profile error:(id *)error
{
  itemCopy = item;
  accountCopy = account;
  selfCopy = self;
  profileCopy = profile;
  errorCopy = error;
  v117 = [HDOriginalSignedClinicalDataRecordEntity syncIdentifierWithProfile:"syncIdentifierWithProfile:error:" error:?];
  if (!v117)
  {
    goto LABEL_28;
  }

  originalRecord = [itemCopy originalRecord];
  syncIdentifier = [originalRecord syncIdentifier];
  v12 = [v117 isEqual:syncIdentifier];

  if ((v12 & 1) == 0)
  {
    v46 = @"original signed clinical data record's sync identifier does not match the entity's sync identifier";
LABEL_27:
    [NSError hk_assignError:errorCopy code:3 description:v46];
LABEL_28:
    v47 = 0;
    goto LABEL_29;
  }

  mainRecord = [itemCopy mainRecord];
  originIdentifier = [mainRecord originIdentifier];
  signedClinicalDataRecordIdentifier = [originIdentifier signedClinicalDataRecordIdentifier];
  v16 = [v117 isEqual:signedClinicalDataRecordIdentifier];

  if ((v16 & 1) == 0)
  {
    v46 = @"signed clinical data record's origin does not match original record's sync identifier";
    goto LABEL_27;
  }

  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  medicalRecords = [itemCopy medicalRecords];
  v18 = [medicalRecords countByEnumeratingWithState:&v149 objects:v159 count:16];
  if (v18)
  {
    v19 = *v150;
    while (2)
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v150 != v19)
        {
          objc_enumerationMutation(medicalRecords);
        }

        originIdentifier2 = [*(*(&v149 + 1) + 8 * i) originIdentifier];
        signedClinicalDataRecordIdentifier2 = [originIdentifier2 signedClinicalDataRecordIdentifier];
        v23 = [v117 isEqual:signedClinicalDataRecordIdentifier2];

        if ((v23 & 1) == 0)
        {
          [NSError hk_assignError:errorCopy code:3 description:@"medical record's origin does not match original record's sync identifier"];

          goto LABEL_28;
        }
      }

      v18 = [medicalRecords countByEnumeratingWithState:&v149 objects:v159 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  clinicalRecords = [itemCopy clinicalRecords];
  v25 = [clinicalRecords countByEnumeratingWithState:&v145 objects:v158 count:16];
  if (v25)
  {
    v26 = *v146;
    v27 = _HKPrivateMetadataKeyOriginalSignedClinicalDataRecordSyncIdentifier;
    while (2)
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v146 != v26)
        {
          objc_enumerationMutation(clinicalRecords);
        }

        v29 = *(*(&v145 + 1) + 8 * j);
        uUIDString = [v117 UUIDString];
        metadata = [v29 metadata];
        v32 = [metadata objectForKeyedSubscript:v27];
        v33 = [uUIDString isEqualToString:v32];

        if ((v33 & 1) == 0)
        {
          [NSError hk_assignError:errorCopy code:3 description:@"clinical record's origin metadata entry does not match original record's sync identifier"];

          goto LABEL_28;
        }
      }

      v25 = [clinicalRecords countByEnumeratingWithState:&v145 objects:v158 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  verifiableClinicalRecord = [itemCopy verifiableClinicalRecord];
  originIdentifier3 = [verifiableClinicalRecord originIdentifier];
  v36 = [v117 isEqual:originIdentifier3];

  if ((v36 & 1) == 0)
  {
    [NSError hk_assignError:errorCopy code:3 description:@"verifiable record's origin does not match original record's sync identifier"];
    goto LABEL_28;
  }

  mainRecord2 = [itemCopy mainRecord];
  v157 = mainRecord2;
  v38 = [NSArray arrayWithObjects:&v157 count:1];
  medicalRecords2 = [itemCopy medicalRecords];
  v103 = [v38 arrayByAddingObjectsFromArray:medicalRecords2];

  v104 = [(HDOriginalSignedClinicalDataRecordEntity *)selfCopy existingDerivedMedicalRecordsOnProfile:profileCopy error:errorCopy];
  if (v104)
  {
    v40 = objc_alloc_init(NSMutableDictionary);
    v142[0] = _NSConcreteStackBlock;
    v142[1] = 3221225472;
    v142[2] = sub_65330;
    v142[3] = &unk_107EC0;
    v41 = v103;
    v143 = v41;
    v114 = v40;
    v144 = v114;
    v101 = [v104 hk_filter:v142];
    v140[0] = _NSConcreteStackBlock;
    v140[1] = 3221225472;
    v140[2] = sub_654C0;
    v140[3] = &unk_107EE8;
    v42 = v104;
    v141 = v42;
    v99 = [v41 hk_filter:v140];
    if ([v114 count])
    {
      v43 = [v99 hk_firstObjectPassingTest:&stru_107F28];
      v44 = v43;
      if (v43)
      {
        v45 = v43;
      }

      else
      {
        v45 = [v42 hk_firstObjectPassingTest:&stru_107F48];
      }

      v49 = v45;

      items = [v49 items];
      v138[0] = _NSConcreteStackBlock;
      v138[1] = 3221225472;
      v138[2] = sub_65610;
      v138[3] = &unk_107F70;
      v139 = v114;
      v51 = [items hk_map:v138];
      [v49 _setItems:v51];
    }

    clinicalRecords2 = [itemCopy clinicalRecords];
    v116 = [clinicalRecords2 mutableCopy];

    v100 = [(HDOriginalSignedClinicalDataRecordEntity *)selfCopy existingDerivedClinicalRecordsOnProfile:profileCopy error:errorCopy];
    if (v100)
    {
      v108 = objc_alloc_init(NSMutableArray);
      v105 = objc_alloc_init(NSMutableDictionary);
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      obj = v100;
      v53 = [obj countByEnumeratingWithState:&v134 objects:v156 count:16];
      if (v53)
      {
        v54 = *v135;
        do
        {
          for (k = 0; k != v53; k = k + 1)
          {
            if (*v135 != v54)
            {
              objc_enumerationMutation(obj);
            }

            v56 = *(*(&v134 + 1) + 8 * k);
            v133[0] = _NSConcreteStackBlock;
            v133[1] = 3221225472;
            v133[2] = sub_656A0;
            v133[3] = &unk_107F98;
            v133[4] = v56;
            v57 = [v116 indexOfObjectPassingTest:v133];
            if (v57 == 0x7FFFFFFFFFFFFFFFLL)
            {
              [v108 addObject:v56];
            }

            else
            {
              v58 = [v116 objectAtIndex:v57];
              [v116 removeObjectAtIndex:v57];
              hrplug_medicalRecordUUIDFromPrivateMetadata = [v58 hrplug_medicalRecordUUIDFromPrivateMetadata];
              if (hrplug_medicalRecordUUIDFromPrivateMetadata)
              {
                v60 = [v114 objectForKeyedSubscript:hrplug_medicalRecordUUIDFromPrivateMetadata];
                v61 = v60;
                if (v60)
                {
                  v62 = v60;
                }

                else
                {
                  v62 = hrplug_medicalRecordUUIDFromPrivateMetadata;
                }

                v63 = v62;

                [v105 setObject:v63 forKeyedSubscript:v56];
              }
            }
          }

          v53 = [obj countByEnumeratingWithState:&v134 objects:v156 count:16];
        }

        while (v53);
      }

      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v64 = v116;
      signedClinicalDataIssuer = [v64 countByEnumeratingWithState:&v129 objects:v155 count:16];
      if (signedClinicalDataIssuer)
      {
        v66 = *v130;
        do
        {
          for (m = 0; m != signedClinicalDataIssuer; m = m + 1)
          {
            if (*v130 != v66)
            {
              objc_enumerationMutation(v64);
            }

            v68 = *(*(&v129 + 1) + 8 * m);
            hrplug_medicalRecordUUIDFromPrivateMetadata2 = [v68 hrplug_medicalRecordUUIDFromPrivateMetadata];
            if (hrplug_medicalRecordUUIDFromPrivateMetadata2)
            {
              v70 = [v114 objectForKeyedSubscript:hrplug_medicalRecordUUIDFromPrivateMetadata2];
              v71 = v70;
              if (v70 && ([v70 isEqual:hrplug_medicalRecordUUIDFromPrivateMetadata2] & 1) == 0)
              {
                [v68 hrplug_updateMedicalRecordUUIDInPrivateMetadataToUUID:v71];
              }
            }
          }

          signedClinicalDataIssuer = [v64 countByEnumeratingWithState:&v129 objects:v155 count:16];
        }

        while (signedClinicalDataIssuer);
      }

      v98 = [v64 copy];
      obja = [v101 arrayByAddingObjectsFromArray:v108];

      v72 = [(HDOriginalSignedClinicalDataRecordEntity *)selfCopy existingDerivedVerifiableClinicalRecordsOnProfile:profileCopy error:errorCopy];
      v73 = v72;
      if (v72)
      {
        v125 = 0;
        v126 = &v125;
        v127 = 0x2020000000;
        v128 = 1;
        v122[0] = _NSConcreteStackBlock;
        v122[1] = 3221225472;
        v122[2] = sub_656AC;
        v122[3] = &unk_107FC0;
        v97 = itemCopy;
        v123 = v97;
        v124 = &v125;
        v102 = [v72 hk_filter:v122];
        v74 = [obja arrayByAddingObjectsFromArray:v102];
        v107 = v74;
        if ([v74 count])
        {
          dataManager = [profileCopy dataManager];
          v76 = [dataManager deleteDataObjects:v74 restrictedSourceEntities:0 failIfNotFound:1 recursiveDeleteAuthorizationBlock:0 error:errorCopy];

          if ((v76 & 1) == 0)
          {
            goto LABEL_89;
          }
        }

        if ([v99 count])
        {
          identifier = [accountCopy identifier];
          v78 = [HDMedicalRecordEntity _insertMedicalRecords:v99 accountIdentifier:identifier profile:profileCopy error:errorCopy];

          if ((v78 & 1) == 0)
          {
            goto LABEL_89;
          }
        }

        if ([v98 count])
        {
          gateway = [accountCopy gateway];
          externalID = [gateway externalID];
          identifier2 = externalID;
          if (!externalID)
          {
            signedClinicalDataIssuer = [accountCopy signedClinicalDataIssuer];
            identifier2 = [signedClinicalDataIssuer identifier];
          }

          v82 = [HDClinicalRecordEntity _insertClinicalRecords:v98 clinicalExternalID:identifier2 profile:profileCopy error:errorCopy];
          if (!externalID)
          {
          }

          v74 = v107;
          if ((v82 & 1) == 0)
          {
            goto LABEL_89;
          }
        }

        if ([v105 count])
        {
          v120 = 0u;
          v121 = 0u;
          v118 = 0u;
          v119 = 0u;
          keyEnumerator = [v105 keyEnumerator];
          v84 = [keyEnumerator countByEnumeratingWithState:&v118 objects:v154 count:16];
          if (v84)
          {
            v85 = *v119;
            v86 = _HKPrivateMetadataKeyMedicalRecordUUID;
            while (2)
            {
              for (n = 0; n != v84; n = n + 1)
              {
                if (*v119 != v85)
                {
                  objc_enumerationMutation(keyEnumerator);
                }

                v88 = *(*(&v118 + 1) + 8 * n);
                v89 = [v105 objectForKeyedSubscript:v88];
                metadataManager = [profileCopy metadataManager];
                uUIDString2 = [v89 UUIDString];
                LOBYTE(v88) = [metadataManager updateMetadataValue:uUIDString2 forKey:v86 object:v88 error:errorCopy];

                if ((v88 & 1) == 0)
                {

                  v47 = 0;
                  v74 = v107;
                  goto LABEL_90;
                }
              }

              v84 = [keyEnumerator countByEnumeratingWithState:&v118 objects:v154 count:16];
              if (v84)
              {
                continue;
              }

              break;
            }
          }

          v74 = v107;
        }

        if (*(v126 + 24) != 1)
        {
          goto LABEL_87;
        }

        verifiableClinicalRecord2 = [v97 verifiableClinicalRecord];
        v153 = verifiableClinicalRecord2;
        v93 = [NSArray arrayWithObjects:&v153 count:1];
        gateway2 = [accountCopy gateway];
        externalID2 = [gateway2 externalID];
        v96 = [HDVerifiableClinicalRecordEntity insertRecords:v93 gatewayExternalID:externalID2 profile:profileCopy error:errorCopy];

        v74 = v107;
        if ((v96 & 1) == 0)
        {
LABEL_89:
          v47 = 0;
        }

        else
        {
LABEL_87:
          v47 = 1;
        }

LABEL_90:

        _Block_object_dispose(&v125, 8);
        v73 = v72;
      }

      else
      {
        v47 = 0;
      }

      v101 = obja;
    }

    else
    {
      v47 = 0;
    }
  }

  else
  {
    v47 = 0;
  }

LABEL_29:
  return v47;
}

- (id)syncIdentifierWithProfile:(id)profile error:(id *)error
{
  v6 = HDOriginalSignedClinicalDataRecordEntityPropertySyncIdentifier;
  database = [profile database];
  v15 = 0;
  v8 = [(HDOriginalSignedClinicalDataRecordEntity *)self valueForProperty:v6 healthDatabase:database error:&v15];
  v9 = v15;

  if (v8)
  {
    v10 = [NSUUID hk_UUIDWithData:v8];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      [NSError hk_assignError:error code:100 format:@"unable to construct UUID from data %@", v8];
    }

    goto LABEL_12;
  }

  if (v9)
  {
    if (error)
    {
      v13 = v9;
      v11 = 0;
      *error = v9;
      goto LABEL_12;
    }

    _HKLogDroppedError();
  }

  else
  {
    [NSError hk_assignError:error code:118 format:@"sync identifier for %@ not found", self];
  }

  v11 = 0;
LABEL_12:

  return v11;
}

+ (HDOriginalSignedClinicalDataRecordEntity)entityWithSyncIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  profileCopy = profile;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_659CC;
  v23 = sub_659DC;
  v24 = 0;
  database = [profileCopy database];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_659E4;
  v15[3] = &unk_1067B0;
  v17 = &v19;
  selfCopy = self;
  v11 = identifierCopy;
  v16 = v11;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v15];

  if (error)
  {
    v12 = v20[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(&v19, 8);

  return v13;
}

+ (id)existingEntityWithSyncIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  v15 = 0;
  v9 = [self entityWithSyncIdentifier:identifierCopy profile:profile error:&v15];
  v10 = v15;
  v11 = v10;
  if (v9)
  {
    v12 = v9;
  }

  else if (v10)
  {
    if (error)
    {
      v14 = v10;
      *error = v11;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  else
  {
    [NSError hk_assignError:error code:118 format:@"original signed clinical data record with sync identifier %@ not found", identifierCopy];
  }

  return v9;
}

+ (id)existingEntityWithUniquenessChecksum:(id)checksum account:(id)account database:(id)database error:(id *)error
{
  v9 = HDOriginalSignedClinicalDataRecordEntityPropertyAccountROWID;
  databaseCopy = database;
  checksumCopy = checksum;
  v12 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [account persistentID]);
  v13 = [HDSQLiteComparisonPredicate predicateWithProperty:v9 equalToValue:v12];

  v14 = [HDSQLiteComparisonPredicate predicateWithProperty:HDOriginalSignedClinicalDataRecordEntityPropertyUniquenessChecksum equalToValue:checksumCopy];

  v20[0] = v13;
  v20[1] = v14;
  v15 = [NSArray arrayWithObjects:v20 count:2];
  v16 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v15];

  v17 = [HDOriginalSignedClinicalDataRecordEntity anyInDatabase:databaseCopy predicate:v16 error:error];

  if (v17)
  {
    v18 = v17;
  }

  else
  {
    [NSError hk_assignError:error code:118 description:@"No entity with the given uniqueness checksum found"];
  }

  return v17;
}

+ (id)existingEntityBackingMedicalRecord:(id)record profile:(id)profile error:(id *)error
{
  recordCopy = record;
  profileCopy = profile;
  originIdentifier = [recordCopy originIdentifier];
  signedClinicalDataRecordIdentifier = [originIdentifier signedClinicalDataRecordIdentifier];

  if (signedClinicalDataRecordIdentifier)
  {
    v12 = [HDOriginalSignedClinicalDataRecordEntity existingEntityWithSyncIdentifier:signedClinicalDataRecordIdentifier profile:profileCopy error:error];
    v13 = v12;
    if (v12)
    {
      v13 = v12;
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v13 = NSStringFromClass(self);
    uUID = [recordCopy UUID];
    originIdentifier2 = [recordCopy originIdentifier];
    [NSError hk_assignError:error code:3 format:@"%@.existingEntityBackingMedicalRecord can only accept medical records backed by an SCD record, %@ however is backed by %@", v13, uUID, originIdentifier2];

    v14 = 0;
  }

  return v14;
}

- (id)signedClinicalDataRecordWithProfile:(id)profile error:(id *)error
{
  v6 = HDMedicalRecordEntityPropertyOriginalSignedClinicalDataRecordROWID;
  profileCopy = profile;
  v8 = [NSNumber numberWithLongLong:[(HDOriginalSignedClinicalDataRecordEntity *)self persistentID]];
  v9 = [HDSQLiteComparisonPredicate predicateWithProperty:v6 equalToValue:v8];

  v10 = +[HKSignedClinicalDataRecordType signedClinicalDataRecordType];
  v11 = [HDSignedClinicalDataRecordEntity samplesWithType:v10 profile:profileCopy encodingOptions:0 predicate:v9 limit:kHDSQLiteQueryNoLimit anchor:0 error:error];

  if (v11)
  {
    firstObject = [v11 firstObject];
    if (firstObject)
    {
      if ([v11 count] >= 2)
      {
        _HKInitializeLogging();
        v13 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
        {
          sub_A5668(v13, self);
        }
      }

      v14 = firstObject;
    }

    else
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      [NSError hk_assignError:error code:118 format:@"%@ was unable to find any HKSignedClinicalDataRecord associated with persistent ID %lu", v16, [(HDOriginalSignedClinicalDataRecordEntity *)self persistentID]];
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)_predicateForUnextractedOriginalRecordsWithExtractionVersion:(int64_t)version ignoreExtractionVersion:(BOOL)extractionVersion
{
  extractionVersionCopy = extractionVersion;
  v6 = [NSNumber numberWithInteger:version];
  disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
  v8 = objc_opt_class();
  v9 = HDMedicalRecordEntityPropertyOriginalSignedClinicalDataRecordROWID;
  v10 = [HDSQLiteJoinClause leftJoinClauseFromTable:disambiguatedDatabaseTable toTargetEntity:v8 as:0 localReference:HDSQLEntityPropertyPersistentID targetKey:HDMedicalRecordEntityPropertyOriginalSignedClinicalDataRecordROWID];

  v11 = +[HDMedicalRecordEntity disambiguatedDatabaseTable];
  v12 = [HDSQLiteJoinClause leftJoinClauseFromTable:v11 toTargetEntity:objc_opt_class() as:0 localReference:HDDataEntityPropertyDataID targetKey:HDDataEntityPropertyDataID];

  v36 = v12;
  v37 = v10;
  v13 = [NSSet setWithObjects:v10, v12, 0];
  v35 = [HDSQLiteJoinPredicate predicateWithJoinClauses:v13];

  v14 = [HDSQLiteNullPredicate isNullPredicateWithProperty:v9];
  v15 = +[HDSignedClinicalDataRecordEntity disambiguatedDatabaseTable];
  hDSignedClinicalDataRecordEntityPropertyIssuerIdentifier = [NSString stringWithFormat:@"%@.%@", v15, HDSignedClinicalDataRecordEntityPropertyIssuerIdentifier];

  v34 = hDSignedClinicalDataRecordEntityPropertyIssuerIdentifier;
  v17 = [HDSQLiteNullPredicate isNotNullPredicateWithProperty:hDSignedClinicalDataRecordEntityPropertyIssuerIdentifier];
  v18 = v17;
  v19 = HDSourceEntity_ptr;
  v20 = v6;
  if (extractionVersionCopy)
  {
    v21 = v17;
  }

  else
  {
    v22 = [HDSQLiteComparisonPredicate predicateWithProperty:HDMedicalRecordEntityPropertyExtractionVersion value:v6 comparisonType:3];
    v41[0] = v22;
    v41[1] = v18;
    v23 = [NSArray arrayWithObjects:v41 count:2];
    v19 = HDSourceEntity_ptr;
    v21 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v23];
  }

  v24 = v19[12];
  v40[0] = v14;
  v40[1] = v21;
  v25 = [NSArray arrayWithObjects:v40 count:2];
  v26 = [v24 predicateMatchingAnyPredicates:v25];

  v27 = [v26 SQLForEntityClass:objc_opt_class()];
  if (extractionVersionCopy)
  {
    v28 = [HDSQLiteRawPredicate predicateWithSQL:v27 overProperties:&__NSArray0__struct values:&__NSArray0__struct];
  }

  else
  {
    v39 = v20;
    v29 = [NSArray arrayWithObjects:&v39 count:1];
    v28 = [HDSQLiteRawPredicate predicateWithSQL:v27 overProperties:&__NSArray0__struct values:v29];
  }

  v30 = [HDSQLiteComparisonPredicate predicateWithProperty:HDOriginalSignedClinicalDataRecordEntityPropertyDeleted notEqualToValue:&__kCFBooleanTrue];
  v38[0] = v30;
  v38[1] = v28;
  v38[2] = v35;
  v31 = [NSArray arrayWithObjects:v38 count:3];
  v32 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v31];

  return v32;
}

+ (id)unextractedOriginalRecordsOnProfile:(id)profile extractionVersion:(int64_t)version ignoreExtractionVersion:(BOOL)extractionVersion error:(id *)error
{
  profileCopy = profile;
  v11 = objc_alloc_init(NSMutableArray);
  database = [profileCopy database];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_6655C;
  v17[3] = &unk_107FE8;
  selfCopy = self;
  versionCopy = version;
  extractionVersionCopy = extractionVersion;
  v18 = v11;
  v13 = v11;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v17];

  if (error)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

- (id)rawContentOnProfile:(id)profile error:(id *)error
{
  v6 = HDOriginalSignedClinicalDataRecordEntityPropertyRawContent;
  database = [profile database];
  v15 = 0;
  v8 = [(HDOriginalSignedClinicalDataRecordEntity *)self valueForProperty:v6 healthDatabase:database error:&v15];
  v9 = v15;

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v8;
      goto LABEL_11;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [NSError hk_assignError:error code:100 format:@"raw content for %@ is not NSData but %@", self, v13];
  }

  else if (v9)
  {
    if (error)
    {
      v11 = v9;
      v10 = 0;
      *error = v9;
      goto LABEL_11;
    }

    _HKLogDroppedError();
  }

  else
  {
    [NSError hk_assignError:error code:118 format:@"no raw content found for %@", self];
  }

  v10 = 0;
LABEL_11:

  return v10;
}

+ (id)codableOriginalRecordForHKRecord:(id)record profile:(id)profile error:(id *)error
{
  recordCopy = record;
  profileCopy = profile;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_659CC;
  v23 = sub_659DC;
  v24 = 0;
  database = [profileCopy database];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_669B8;
  v15[3] = &unk_106DB0;
  v10 = recordCopy;
  v16 = v10;
  v11 = profileCopy;
  v17 = v11;
  v18 = &v19;
  LODWORD(error) = [HDOriginalSignedClinicalDataRecordEntity performReadTransactionWithHealthDatabase:database error:error block:v15];

  if (error)
  {
    v12 = v20[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(&v19, 8);

  return v13;
}

- (id)codableInDatabase:(id)database error:(id *)error
{
  databaseCopy = database;
  propertiesForCodable = [objc_opt_class() propertiesForCodable];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_659CC;
  v24 = sub_659DC;
  v25 = 0;
  v17 = 0;
  v18[0] = &v17;
  v18[1] = 0x3032000000;
  v18[2] = sub_659CC;
  v18[3] = sub_659DC;
  v19 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_66CF0;
  v16[3] = &unk_1072D0;
  v16[4] = self;
  v16[5] = &v20;
  v16[6] = &v17;
  v8 = [(HDOriginalSignedClinicalDataRecordEntity *)self getValuesForProperties:propertiesForCodable database:databaseCopy handler:v16];
  if (!v21[5])
  {
    _HKInitializeLogging();
    v9 = HKLogHealthRecords;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_A5700(v18, buf, [(HDOriginalSignedClinicalDataRecordEntity *)self persistentID], v9);
    }

    v10 = *(v18[0] + 40);
    v11 = v10;
    if (v10)
    {
      if (error)
      {
        v12 = v10;
        *error = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  if (v8)
  {
    v13 = v21[5];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v20, 8);

  return v14;
}

+ (id)_predicateForUndeletedRecordsOnAccountEntity:(id)entity
{
  v3 = HDOriginalSignedClinicalDataRecordEntityPropertyAccountROWID;
  v4 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [entity persistentID]);
  v5 = [HDSQLiteComparisonPredicate predicateWithProperty:v3 equalToValue:v4];

  v6 = [HDSQLiteComparisonPredicate predicateWithProperty:HDOriginalSignedClinicalDataRecordEntityPropertyDeleted equalToValue:&__kCFBooleanFalse];
  v10[0] = v5;
  v10[1] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:2];
  v8 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

  return v8;
}

+ (BOOL)enumerateActiveEntitiesForAccountIdentifier:(id)identifier profile:(id)profile error:(id *)error block:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  database = [profile database];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_66F94;
  v16[3] = &unk_108038;
  v18 = blockCopy;
  selfCopy = self;
  v17 = identifierCopy;
  v13 = blockCopy;
  v14 = identifierCopy;
  LOBYTE(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v16];

  return error;
}

+ (BOOL)enumerateActiveRecordsForAccountIdentifier:(id)identifier profile:(id)profile error:(id *)error block:(id)block
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_67310;
  v13[3] = &unk_108060;
  profileCopy = profile;
  blockCopy = block;
  v10 = blockCopy;
  v11 = profileCopy;
  LOBYTE(error) = [self enumerateActiveEntitiesForAccountIdentifier:identifier profile:v11 error:error block:v13];

  return error;
}

+ (BOOL)enumerateActiveCodableRecordsForAccountIdentifier:(id)identifier profile:(id)profile error:(id *)error block:(id)block
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_67430;
  v12[3] = &unk_108088;
  blockCopy = block;
  v10 = blockCopy;
  LOBYTE(error) = [self enumerateActiveEntitiesForAccountIdentifier:identifier profile:profile error:error block:v12];

  return error;
}

+ (BOOL)replaceOriginalRecordWithSyncIdentifier:(id)identifier newSignatureStatus:(int64_t)status profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  profileCopy = profile;
  database = [profileCopy database];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_675FC;
  v20[3] = &unk_1067D8;
  v21 = identifierCopy;
  v22 = profileCopy;
  statusCopy = status;
  selfCopy = self;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_67830;
  v16[3] = &unk_106800;
  v18 = v22;
  statusCopy2 = status;
  v17 = v21;
  v13 = v22;
  v14 = v21;
  LOBYTE(error) = [HDOriginalSignedClinicalDataRecordEntity performWriteTransactionWithHealthDatabase:database error:error block:v20 inaccessibilityHandler:v16];

  return error;
}

- (int64_t)updateUniquenessChecksumIfNecessaryWithItem:(id)item database:(id)database error:(id *)error
{
  itemCopy = item;
  databaseCopy = database;
  v10 = HDOriginalSignedClinicalDataRecordEntityPropertyUniquenessChecksum;
  v11 = [(HDOriginalSignedClinicalDataRecordEntity *)self valueForProperty:HDOriginalSignedClinicalDataRecordEntityPropertyUniquenessChecksum database:databaseCopy];
  if (v11)
  {
    objc_opt_class();
    v12 = HKSafeObject();
    if (v12)
    {
      uniquenessChecksum = [itemCopy uniquenessChecksum];
      v14 = [v12 isEqual:uniquenessChecksum];

      if (v14)
      {
        v15 = 2;
      }

      else
      {
        v20 = v10;
        v16 = [NSArray arrayWithObjects:&v20 count:1];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_67AA0;
        v18[3] = &unk_105B80;
        v19 = itemCopy;
        LODWORD(v15) = [(HDOriginalSignedClinicalDataRecordEntity *)self updateProperties:v16 database:databaseCopy error:error bindingHandler:v18];

        v15 = v15;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    [NSError hk_assignError:error code:118 format:@"there is no uniqueness checksum on original record with ROWID %llu", [(HDOriginalSignedClinicalDataRecordEntity *)self persistentID]];
    v15 = 0;
  }

  return v15;
}

- (BOOL)_deleteDerivedRecordsWithTransaction:(id)transaction profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v8 = [(HDOriginalSignedClinicalDataRecordEntity *)self existingDerivedMedicalRecordsOnProfile:profileCopy error:error];
  if (v8 && ([profileCopy dataManager], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "deleteDataObjects:restrictedSourceEntities:failIfNotFound:recursiveDeleteAuthorizationBlock:error:", v8, 0, 1, 0, error), v9, v10))
  {
    v11 = [(HDOriginalSignedClinicalDataRecordEntity *)self existingDerivedClinicalRecordsOnProfile:profileCopy error:error];
    if (v11 && ([profileCopy dataManager], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "deleteDataObjects:restrictedSourceEntities:failIfNotFound:recursiveDeleteAuthorizationBlock:error:", v11, 0, 1, 0, error), v12, v13))
    {
      v14 = [(HDOriginalSignedClinicalDataRecordEntity *)self existingDerivedVerifiableClinicalRecordsOnProfile:profileCopy error:error];
      if (v14)
      {
        dataManager = [profileCopy dataManager];
        v16 = [dataManager deleteDataObjects:v14 restrictedSourceEntities:0 failIfNotFound:1 recursiveDeleteAuthorizationBlock:0 error:error];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)deleteDerivedRecordsOnProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  database = [profileCopy database];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_67D38;
  v10[3] = &unk_1080B0;
  v10[4] = self;
  v11 = profileCopy;
  v8 = profileCopy;
  LOBYTE(error) = [HDOriginalSignedClinicalDataRecordEntity performWriteTransactionWithHealthDatabase:database error:error block:v10];

  return error;
}

- (BOOL)deleteOriginalAndDerivedRecordsOnProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  database = [profileCopy database];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_67E20;
  v10[3] = &unk_1080B0;
  v10[4] = self;
  v11 = profileCopy;
  v8 = profileCopy;
  LOBYTE(error) = [HDOriginalSignedClinicalDataRecordEntity performWriteTransactionWithHealthDatabase:database error:error block:v10];

  return error;
}

- (id)existingDerivedMedicalRecordsOnProfile:(id)profile excludeMainRecord:(BOOL)record error:(id *)error
{
  profileCopy = profile;
  v9 = HDMedicalRecordEntityPropertyOriginalSignedClinicalDataRecordROWID;
  v10 = [NSNumber numberWithLongLong:[(HDOriginalSignedClinicalDataRecordEntity *)self persistentID]];
  v11 = [HDSQLiteComparisonPredicate predicateWithProperty:v9 equalToValue:v10];

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_659CC;
  v28 = sub_659DC;
  v29 = 0;
  v12 = objc_opt_class();
  database = [profileCopy database];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_681CC;
  v18[3] = &unk_1080D8;
  v22 = &v24;
  v14 = v11;
  recordCopy = record;
  v19 = v14;
  selfCopy = self;
  v15 = profileCopy;
  v21 = v15;
  LOBYTE(error) = [v12 performReadTransactionWithHealthDatabase:database error:error block:v18];

  if (error)
  {
    v16 = v25[5];
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v24, 8);

  return v16;
}

- (id)existingDerivedClinicalRecordsOnProfile:(id)profile error:(id *)error
{
  v6 = HDClinicalRecordEntityPropertyOriginalSignedClinicalDataRecordROWID;
  profileCopy = profile;
  v8 = [NSNumber numberWithLongLong:[(HDOriginalSignedClinicalDataRecordEntity *)self persistentID]];
  v9 = [HDSQLiteComparisonPredicate predicateWithProperty:v6 equalToValue:v8];

  v10 = [HDClinicalRecordEntity _clinicalRecordsWithPredicate:v9 profile:profileCopy error:error];

  return v10;
}

- (id)existingDerivedVerifiableClinicalRecordsOnProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v7 = [(HDOriginalSignedClinicalDataRecordEntity *)self syncIdentifierWithProfile:profileCopy error:error];
  if (v7)
  {
    v8 = [objc_opt_class() existingDerivedVerifiableClinicalRecordsForRecordWithSyncIdentifier:v7 profile:profileCopy error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)existingDerivedVerifiableClinicalRecordsForRecordWithSyncIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  v7 = HDVerifiableClinicalRecordEntityPropertyOriginIdentifier;
  profileCopy = profile;
  v9 = [HDSQLiteComparisonPredicate predicateWithProperty:v7 equalToValue:identifier];
  v10 = +[HKVerifiableClinicalRecordType verifiableClinicalRecordType];
  v11 = [HDVerifiableClinicalRecordEntity samplesWithType:v10 profile:profileCopy encodingOptions:0 predicate:v9 limit:kHDSQLiteQueryNoLimit anchor:0 error:error];

  return v11;
}

@end