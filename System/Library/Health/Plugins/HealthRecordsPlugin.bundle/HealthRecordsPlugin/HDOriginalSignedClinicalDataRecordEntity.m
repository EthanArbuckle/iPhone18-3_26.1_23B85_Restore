@interface HDOriginalSignedClinicalDataRecordEntity
+ (BOOL)enumerateActiveCodableRecordsForAccountIdentifier:(id)a3 profile:(id)a4 error:(id *)a5 block:(id)a6;
+ (BOOL)enumerateActiveEntitiesForAccountIdentifier:(id)a3 profile:(id)a4 error:(id *)a5 block:(id)a6;
+ (BOOL)enumerateActiveRecordsForAccountIdentifier:(id)a3 profile:(id)a4 error:(id *)a5 block:(id)a6;
+ (BOOL)insertCodableOriginalRecords:(id)a3 shouldReplace:(BOOL)a4 syncProvenance:(int64_t)a5 profile:(id)a6 error:(id *)a7;
+ (BOOL)insertCodableOriginalRecordsFromSync:(id)a3 syncProvenance:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)replaceOriginalRecordWithSyncIdentifier:(id)a3 newSignatureStatus:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)validateCodableRecord:(id)a3 error:(id *)a4;
+ (HDOriginalSignedClinicalDataRecordEntity)entityWithSyncIdentifier:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)_lookUpAccountByGatewayExternalID:(id)a3 gatewayExternalIDToAccountMap:(id)a4 database:(id)a5 error:(id *)a6;
+ (id)_lookUpAccountByIssuerIdentifier:(id)a3 issuerIdentifierToAccountMap:(id)a4 database:(id)a5 error:(id *)a6;
+ (id)_predicateForUndeletedRecordsOnAccountEntity:(id)a3;
+ (id)_predicateForUnextractedOriginalRecordsWithExtractionVersion:(int64_t)a3 ignoreExtractionVersion:(BOOL)a4;
+ (id)accountEntityForCodableRecord:(id)a3 issuerIdentifierToAccountMap:(id)a4 gatewayExternalIDToAccountMap:(id)a5 database:(id)a6 error:(id *)a7;
+ (id)codableOriginalRecordForHKRecord:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)codableWithRow:(HDSQLiteRow *)a3 error:(id *)a4;
+ (id)existingDerivedVerifiableClinicalRecordsForRecordWithSyncIdentifier:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)existingEntityBackingMedicalRecord:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)existingEntityWithSyncIdentifier:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)existingEntityWithUniquenessChecksum:(id)a3 account:(id)a4 database:(id)a5 error:(id *)a6;
+ (id)insertCodableRecord:(id)a3 shouldReplace:(BOOL)a4 accountPersistentID:(int64_t)a5 syncProvenance:(int64_t)a6 profile:(id)a7 transaction:(id)a8 error:(id *)a9;
+ (id)newCompatibleCodableSignedClinicalDataRecord;
+ (id)unextractedOriginalRecordsOnProfile:(id)a3 extractionVersion:(int64_t)a4 ignoreExtractionVersion:(BOOL)a5 error:(id *)a6;
- (BOOL)_deleteDerivedRecordsWithTransaction:(id)a3 profile:(id)a4 error:(id *)a5;
- (BOOL)deleteDerivedRecordsOnProfile:(id)a3 error:(id *)a4;
- (BOOL)deleteOriginalAndDerivedRecordsOnProfile:(id)a3 error:(id *)a4;
- (BOOL)storeSignedClinicalDataItem:(id)a3 account:(id)a4 profile:(id)a5 error:(id *)a6;
- (id)codableInDatabase:(id)a3 error:(id *)a4;
- (id)existingDerivedClinicalRecordsOnProfile:(id)a3 error:(id *)a4;
- (id)existingDerivedMedicalRecordsOnProfile:(id)a3 excludeMainRecord:(BOOL)a4 error:(id *)a5;
- (id)existingDerivedVerifiableClinicalRecordsOnProfile:(id)a3 error:(id *)a4;
- (id)rawContentOnProfile:(id)a3 error:(id *)a4;
- (id)signedClinicalDataRecordWithProfile:(id)a3 error:(id *)a4;
- (id)syncIdentifierWithProfile:(id)a3 error:(id *)a4;
- (int64_t)updateUniquenessChecksumIfNecessaryWithItem:(id)a3 database:(id)a4 error:(id *)a5;
@end

@implementation HDOriginalSignedClinicalDataRecordEntity

+ (id)newCompatibleCodableSignedClinicalDataRecord
{
  v2 = objc_alloc_init(HDCodableOriginalSignedClinicalDataRecord);
  v3 = objc_alloc_init(HDCodableMessageVersion);
  [v2 setMessageVersion:v3];

  v4 = [v2 messageVersion];
  [v4 setCompatibilityVersion:0];

  v5 = [v2 messageVersion];
  [v5 setEntityVersion:1];

  return v2;
}

+ (id)codableWithRow:(HDSQLiteRow *)a3 error:(id *)a4
{
  if (!a3)
  {
    sub_A5504(a2, a1);
  }

  v6 = +[HDOriginalSignedClinicalDataRecordEntity newCompatibleCodableSignedClinicalDataRecord];
  v7 = HDSQLiteColumnWithNameAsInt64();
  if (v7 == 2)
  {
    v8 = [v6 messageVersion];
    [v8 setCompatibilityVersion:1];
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
  if ([a1 validateCodableRecord:v6 error:a4])
  {
    v22 = v6;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (BOOL)validateCodableRecord:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(NSMutableArray);
  if ([v5 hasMessageVersion])
  {
    v7 = [v5 messageVersion];
    v8 = [v7 compatibilityVersion];

    if (v8 >= 2)
    {
      v9 = [v5 messageVersion];
      v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"compatibility version is higher (%lu) than what we support (%lu)", [v9 compatibilityVersion], 1);
      [v6 addObject:v10];
    }
  }

  else
  {
    [v6 addObject:@"no compatibility version"];
  }

  v11 = [v5 syncIdentifier];
  v12 = [v11 length];

  if (v12)
  {
    v13 = [v5 syncIdentifier];
    v14 = [NSUUID hk_UUIDWithData:v13];

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
  if (([v5 hasSourceType] & 1) == 0)
  {
    [v6 addObject:@"no source type"];
  }

  v16 = [v5 gatewayExternalID];
  v17 = [v16 length];
  v18 = [v5 issuerIdentifier];
  v19 = [v18 length];

  if (!&v19[v17])
  {
    [v6 addObject:@"neither gateway external ID nor issuer ID are present"];
  }

  if (([v5 hasRawContent] & 1) == 0 && !objc_msgSend(v5, "deleted") || objc_msgSend(v5, "hasRawContent") && objc_msgSend(v5, "deleted"))
  {
    [v6 addObject:@"raw content and deleted should be mutually exclusive"];
  }

  v20 = [v5 uniquenessChecksum];
  v21 = [v20 length];

  if (!v21)
  {
    [v6 addObject:@"no uniqueness checksum"];
  }

  v22 = [v5 types];
  v23 = [v22 count];

  if (!v23)
  {
    [v6 addObject:@"no types"];
  }

  if (([v5 hasFirstSeenDate] & 1) == 0)
  {
    [v6 addObject:@"no first seen date"];
  }

  v24 = [v5 firstSeenDateTimeZoneName];
  v25 = [v24 length];

  if (!v25)
  {
    [v6 addObject:@"no first seen date timezone name"];
  }

  if (([v5 hasReceivedDate] & 1) == 0)
  {
    [v6 addObject:@"no received date"];
  }

  v26 = [v5 receivedDateTimeZoneName];
  v27 = [v26 length];

  if (!v27)
  {
    [v6 addObject:@"no received date timezone name"];
  }

  if (([v5 hasSignatureStatus] & 1) == 0)
  {
    [v6 addObject:@"no signature status"];
  }

  if (([v5 hasLastModifiedDate] & 1) == 0)
  {
    [v6 addObject:@"no last modified date"];
  }

  v28 = [v6 count];
  if (v28)
  {
    v29 = [v6 componentsJoinedByString:@" "];;
    [NSError hk_assignError:a4 code:3 format:@"codable signed clinical data record is invalid: %@", v29];
  }

  return v28 == 0;
}

+ (id)insertCodableRecord:(id)a3 shouldReplace:(BOOL)a4 accountPersistentID:(int64_t)a5 syncProvenance:(int64_t)a6 profile:(id)a7 transaction:(id)a8 error:(id *)a9
{
  v58 = a4;
  v14 = a3;
  v15 = a7;
  v16 = a8;
  v71 = 0;
  LOBYTE(a8) = [a1 validateCodableRecord:v14 error:&v71];
  v17 = v71;
  v18 = v17;
  if (a8)
  {
    v56 = v17;
    v59 = v16;
    v19 = [v15 syncIdentityManager];
    v20 = [v19 legacySyncIdentity];

    v57 = v15;
    if (![v14 hasSyncIdentity])
    {
      v54 = a9;
      goto LABEL_12;
    }

    v21 = [v14 syncIdentity];
    v70 = 0;
    v22 = [HDSyncIdentity syncIdentityWithCodable:v21 error:&v70];
    v23 = v70;

    if (v22)
    {
      v54 = a9;
      v24 = [v15 syncIdentityManager];
      v69 = v23;
      v25 = [v24 concreteIdentityForIdentity:v22 shouldCreate:1 transaction:v59 error:&v69];
      v26 = v69;

      if (v25)
      {

        v20 = v25;
LABEL_12:
        v32 = [NSUUID alloc];
        v33 = [v14 syncIdentifier];
        v34 = [v32 initWithUUIDBytes:{objc_msgSend(v33, "bytes")}];

        v35 = [v14 types];
        v36 = [v35 componentsJoinedByString:@" "];

        if ([v14 hasDeleted])
        {
          v37 = [v14 deleted];
        }

        else
        {
          v37 = 0;
        }

        v38 = [v59 protectedDatabase];
        v39 = [a1 allColumns];
        v68 = 0;
        v60[0] = _NSConcreteStackBlock;
        v60[1] = 3221225472;
        v60[2] = sub_62E9C;
        v60[3] = &unk_107E48;
        v22 = v34;
        v61 = v22;
        v62 = v14;
        v40 = v36;
        v63 = v40;
        v65 = a6;
        v66 = a5;
        v67 = v37;
        v20 = v20;
        v64 = v20;
        v31 = [a1 insertOrReplaceEntity:v58 database:v38 properties:v39 error:&v68 bindingHandler:v60];
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
            v53 = [v41 localizedDescription];
            *buf = 138543874;
            v73 = a1;
            v74 = 2114;
            v75 = v52;
            v76 = 2114;
            v77 = v53;
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
        if (a9)
        {
          v49 = v48;
          v20 = 0;
          v31 = 0;
          *a9 = v40;
          goto LABEL_43;
        }

        _HKLogDroppedError();
      }

      v20 = 0;
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
        if (a9)
        {
          v44 = v40;
          v31 = 0;
          *a9 = v40;
LABEL_43:
          v41 = v40;
LABEL_44:

          v18 = v56;
          v15 = v57;
          v16 = v59;
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
    v29 = [v18 localizedDescription];
    *buf = 138543618;
    v73 = a1;
    v74 = 2114;
    v75 = v29;
    _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ validation failed, not inserting codable SCD record: %{public}@", buf, 0x16u);
  }

  v20 = v18;
  if (v20)
  {
    if (a9)
    {
      v30 = v20;
      v31 = 0;
      *a9 = v20;
      goto LABEL_45;
    }

    _HKLogDroppedError();
  }

  v31 = 0;
LABEL_45:

  return v31;
}

+ (BOOL)insertCodableOriginalRecordsFromSync:(id)a3 syncProvenance:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  if ([v10 count])
  {
    v12 = [v11 database];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_6332C;
    v19[3] = &unk_1067D8;
    v20 = v10;
    v21 = v11;
    v22 = a1;
    v23 = a4;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_63824;
    v15[3] = &unk_106800;
    v16 = v20;
    v18 = a4;
    v17 = v21;
    v13 = [a1 performWriteTransactionWithHealthDatabase:v12 error:a6 block:v19 inaccessibilityHandler:v15];
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

+ (BOOL)insertCodableOriginalRecords:(id)a3 shouldReplace:(BOOL)a4 syncProvenance:(int64_t)a5 profile:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a6;
  if ([v12 count])
  {
    _HKInitializeLogging();
    v14 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [v12 count];
      v19 = HKStringFromBool();
      *buf = 138543874;
      v35 = v17;
      v36 = 2048;
      v37 = v18;
      v38 = 2114;
      v39 = v19;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ starting to insert %lu codable original signed clinical data records, shouldReplace: %{public}@", buf, 0x20u);
    }

    v20 = [v13 database];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_63B14;
    v28[3] = &unk_107E70;
    v31 = a1;
    v33 = a4;
    v29 = v12;
    v32 = a5;
    v30 = v13;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_63FF4;
    v23[3] = &unk_107E98;
    v27 = a4;
    v24 = v29;
    v26 = a5;
    v25 = v30;
    v21 = [a1 performWriteTransactionWithHealthDatabase:v20 error:a7 block:v28 inaccessibilityHandler:v23];
  }

  else
  {
    v21 = 1;
  }

  return v21;
}

+ (id)accountEntityForCodableRecord:(id)a3 issuerIdentifierToAccountMap:(id)a4 gatewayExternalIDToAccountMap:(id)a5 database:(id)a6 error:(id *)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a3;
  v16 = [v15 gatewayExternalID];

  if (v16)
  {
    v17 = [v15 gatewayExternalID];

    [a1 _lookUpAccountByGatewayExternalID:v17 gatewayExternalIDToAccountMap:v13 database:v14 error:a7];
  }

  else
  {
    v17 = [v15 issuerIdentifier];

    [a1 _lookUpAccountByIssuerIdentifier:v17 issuerIdentifierToAccountMap:v12 database:v14 error:a7];
  }
  v18 = ;

  return v18;
}

+ (id)_lookUpAccountByIssuerIdentifier:(id)a3 issuerIdentifierToAccountMap:(id)a4 database:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 objectForKeyedSubscript:v10];
  if (!v13)
  {
    v25 = 0;
    v13 = [HDClinicalAccountEntity existingAccountEntityForSignedClinicalDataIssuerWithIdentifier:v10 database:v12 error:&v25];
    v14 = v25;
    if (v13)
    {
      [v11 setObject:v13 forKeyedSubscript:v10];
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
        if (a6)
        {
          v17 = v16;
          *a6 = v16;
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

+ (id)_lookUpAccountByGatewayExternalID:(id)a3 gatewayExternalIDToAccountMap:(id)a4 database:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 objectForKeyedSubscript:v10];
  if (!v13)
  {
    v25 = 0;
    v13 = [HDClinicalAccountEntity existingAccountEntityForGatewayWithExternalID:v10 database:v12 error:&v25];
    v14 = v25;
    if (v13)
    {
      [v11 setObject:v13 forKeyedSubscript:v10];
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
        if (a6)
        {
          v17 = v16;
          *a6 = v16;
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

- (BOOL)storeSignedClinicalDataItem:(id)a3 account:(id)a4 profile:(id)a5 error:(id *)a6
{
  v115 = a3;
  v112 = a4;
  v106 = self;
  v113 = a5;
  v111 = a6;
  v117 = [HDOriginalSignedClinicalDataRecordEntity syncIdentifierWithProfile:"syncIdentifierWithProfile:error:" error:?];
  if (!v117)
  {
    goto LABEL_28;
  }

  v10 = [v115 originalRecord];
  v11 = [v10 syncIdentifier];
  v12 = [v117 isEqual:v11];

  if ((v12 & 1) == 0)
  {
    v46 = @"original signed clinical data record's sync identifier does not match the entity's sync identifier";
LABEL_27:
    [NSError hk_assignError:v111 code:3 description:v46];
LABEL_28:
    v47 = 0;
    goto LABEL_29;
  }

  v13 = [v115 mainRecord];
  v14 = [v13 originIdentifier];
  v15 = [v14 signedClinicalDataRecordIdentifier];
  v16 = [v117 isEqual:v15];

  if ((v16 & 1) == 0)
  {
    v46 = @"signed clinical data record's origin does not match original record's sync identifier";
    goto LABEL_27;
  }

  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v17 = [v115 medicalRecords];
  v18 = [v17 countByEnumeratingWithState:&v149 objects:v159 count:16];
  if (v18)
  {
    v19 = *v150;
    while (2)
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v150 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = [*(*(&v149 + 1) + 8 * i) originIdentifier];
        v22 = [v21 signedClinicalDataRecordIdentifier];
        v23 = [v117 isEqual:v22];

        if ((v23 & 1) == 0)
        {
          [NSError hk_assignError:v111 code:3 description:@"medical record's origin does not match original record's sync identifier"];

          goto LABEL_28;
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v149 objects:v159 count:16];
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
  v24 = [v115 clinicalRecords];
  v25 = [v24 countByEnumeratingWithState:&v145 objects:v158 count:16];
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
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v145 + 1) + 8 * j);
        v30 = [v117 UUIDString];
        v31 = [v29 metadata];
        v32 = [v31 objectForKeyedSubscript:v27];
        v33 = [v30 isEqualToString:v32];

        if ((v33 & 1) == 0)
        {
          [NSError hk_assignError:v111 code:3 description:@"clinical record's origin metadata entry does not match original record's sync identifier"];

          goto LABEL_28;
        }
      }

      v25 = [v24 countByEnumeratingWithState:&v145 objects:v158 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  v34 = [v115 verifiableClinicalRecord];
  v35 = [v34 originIdentifier];
  v36 = [v117 isEqual:v35];

  if ((v36 & 1) == 0)
  {
    [NSError hk_assignError:v111 code:3 description:@"verifiable record's origin does not match original record's sync identifier"];
    goto LABEL_28;
  }

  v37 = [v115 mainRecord];
  v157 = v37;
  v38 = [NSArray arrayWithObjects:&v157 count:1];
  v39 = [v115 medicalRecords];
  v103 = [v38 arrayByAddingObjectsFromArray:v39];

  v104 = [(HDOriginalSignedClinicalDataRecordEntity *)v106 existingDerivedMedicalRecordsOnProfile:v113 error:v111];
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

      v50 = [v49 items];
      v138[0] = _NSConcreteStackBlock;
      v138[1] = 3221225472;
      v138[2] = sub_65610;
      v138[3] = &unk_107F70;
      v139 = v114;
      v51 = [v50 hk_map:v138];
      [v49 _setItems:v51];
    }

    v52 = [v115 clinicalRecords];
    v116 = [v52 mutableCopy];

    v100 = [(HDOriginalSignedClinicalDataRecordEntity *)v106 existingDerivedClinicalRecordsOnProfile:v113 error:v111];
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
              v59 = [v58 hrplug_medicalRecordUUIDFromPrivateMetadata];
              if (v59)
              {
                v60 = [v114 objectForKeyedSubscript:v59];
                v61 = v60;
                if (v60)
                {
                  v62 = v60;
                }

                else
                {
                  v62 = v59;
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
      v65 = [v64 countByEnumeratingWithState:&v129 objects:v155 count:16];
      if (v65)
      {
        v66 = *v130;
        do
        {
          for (m = 0; m != v65; m = m + 1)
          {
            if (*v130 != v66)
            {
              objc_enumerationMutation(v64);
            }

            v68 = *(*(&v129 + 1) + 8 * m);
            v69 = [v68 hrplug_medicalRecordUUIDFromPrivateMetadata];
            if (v69)
            {
              v70 = [v114 objectForKeyedSubscript:v69];
              v71 = v70;
              if (v70 && ([v70 isEqual:v69] & 1) == 0)
              {
                [v68 hrplug_updateMedicalRecordUUIDInPrivateMetadataToUUID:v71];
              }
            }
          }

          v65 = [v64 countByEnumeratingWithState:&v129 objects:v155 count:16];
        }

        while (v65);
      }

      v98 = [v64 copy];
      obja = [v101 arrayByAddingObjectsFromArray:v108];

      v72 = [(HDOriginalSignedClinicalDataRecordEntity *)v106 existingDerivedVerifiableClinicalRecordsOnProfile:v113 error:v111];
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
        v97 = v115;
        v123 = v97;
        v124 = &v125;
        v102 = [v72 hk_filter:v122];
        v74 = [obja arrayByAddingObjectsFromArray:v102];
        v107 = v74;
        if ([v74 count])
        {
          v75 = [v113 dataManager];
          v76 = [v75 deleteDataObjects:v74 restrictedSourceEntities:0 failIfNotFound:1 recursiveDeleteAuthorizationBlock:0 error:v111];

          if ((v76 & 1) == 0)
          {
            goto LABEL_89;
          }
        }

        if ([v99 count])
        {
          v77 = [v112 identifier];
          v78 = [HDMedicalRecordEntity _insertMedicalRecords:v99 accountIdentifier:v77 profile:v113 error:v111];

          if ((v78 & 1) == 0)
          {
            goto LABEL_89;
          }
        }

        if ([v98 count])
        {
          v79 = [v112 gateway];
          v80 = [v79 externalID];
          v81 = v80;
          if (!v80)
          {
            v65 = [v112 signedClinicalDataIssuer];
            v81 = [v65 identifier];
          }

          v82 = [HDClinicalRecordEntity _insertClinicalRecords:v98 clinicalExternalID:v81 profile:v113 error:v111];
          if (!v80)
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
          v83 = [v105 keyEnumerator];
          v84 = [v83 countByEnumeratingWithState:&v118 objects:v154 count:16];
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
                  objc_enumerationMutation(v83);
                }

                v88 = *(*(&v118 + 1) + 8 * n);
                v89 = [v105 objectForKeyedSubscript:v88];
                v90 = [v113 metadataManager];
                v91 = [v89 UUIDString];
                LOBYTE(v88) = [v90 updateMetadataValue:v91 forKey:v86 object:v88 error:v111];

                if ((v88 & 1) == 0)
                {

                  v47 = 0;
                  v74 = v107;
                  goto LABEL_90;
                }
              }

              v84 = [v83 countByEnumeratingWithState:&v118 objects:v154 count:16];
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

        v92 = [v97 verifiableClinicalRecord];
        v153 = v92;
        v93 = [NSArray arrayWithObjects:&v153 count:1];
        v94 = [v112 gateway];
        v95 = [v94 externalID];
        v96 = [HDVerifiableClinicalRecordEntity insertRecords:v93 gatewayExternalID:v95 profile:v113 error:v111];

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

- (id)syncIdentifierWithProfile:(id)a3 error:(id *)a4
{
  v6 = HDOriginalSignedClinicalDataRecordEntityPropertySyncIdentifier;
  v7 = [a3 database];
  v15 = 0;
  v8 = [(HDOriginalSignedClinicalDataRecordEntity *)self valueForProperty:v6 healthDatabase:v7 error:&v15];
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
      [NSError hk_assignError:a4 code:100 format:@"unable to construct UUID from data %@", v8];
    }

    goto LABEL_12;
  }

  if (v9)
  {
    if (a4)
    {
      v13 = v9;
      v11 = 0;
      *a4 = v9;
      goto LABEL_12;
    }

    _HKLogDroppedError();
  }

  else
  {
    [NSError hk_assignError:a4 code:118 format:@"sync identifier for %@ not found", self];
  }

  v11 = 0;
LABEL_12:

  return v11;
}

+ (HDOriginalSignedClinicalDataRecordEntity)entityWithSyncIdentifier:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_659CC;
  v23 = sub_659DC;
  v24 = 0;
  v10 = [v9 database];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_659E4;
  v15[3] = &unk_1067B0;
  v17 = &v19;
  v18 = a1;
  v11 = v8;
  v16 = v11;
  LODWORD(a5) = [a1 performReadTransactionWithHealthDatabase:v10 error:a5 block:v15];

  if (a5)
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

+ (id)existingEntityWithSyncIdentifier:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v15 = 0;
  v9 = [a1 entityWithSyncIdentifier:v8 profile:a4 error:&v15];
  v10 = v15;
  v11 = v10;
  if (v9)
  {
    v12 = v9;
  }

  else if (v10)
  {
    if (a5)
    {
      v14 = v10;
      *a5 = v11;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  else
  {
    [NSError hk_assignError:a5 code:118 format:@"original signed clinical data record with sync identifier %@ not found", v8];
  }

  return v9;
}

+ (id)existingEntityWithUniquenessChecksum:(id)a3 account:(id)a4 database:(id)a5 error:(id *)a6
{
  v9 = HDOriginalSignedClinicalDataRecordEntityPropertyAccountROWID;
  v10 = a5;
  v11 = a3;
  v12 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [a4 persistentID]);
  v13 = [HDSQLiteComparisonPredicate predicateWithProperty:v9 equalToValue:v12];

  v14 = [HDSQLiteComparisonPredicate predicateWithProperty:HDOriginalSignedClinicalDataRecordEntityPropertyUniquenessChecksum equalToValue:v11];

  v20[0] = v13;
  v20[1] = v14;
  v15 = [NSArray arrayWithObjects:v20 count:2];
  v16 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v15];

  v17 = [HDOriginalSignedClinicalDataRecordEntity anyInDatabase:v10 predicate:v16 error:a6];

  if (v17)
  {
    v18 = v17;
  }

  else
  {
    [NSError hk_assignError:a6 code:118 description:@"No entity with the given uniqueness checksum found"];
  }

  return v17;
}

+ (id)existingEntityBackingMedicalRecord:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 originIdentifier];
  v11 = [v10 signedClinicalDataRecordIdentifier];

  if (v11)
  {
    v12 = [HDOriginalSignedClinicalDataRecordEntity existingEntityWithSyncIdentifier:v11 profile:v9 error:a5];
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
    v13 = NSStringFromClass(a1);
    v15 = [v8 UUID];
    v16 = [v8 originIdentifier];
    [NSError hk_assignError:a5 code:3 format:@"%@.existingEntityBackingMedicalRecord can only accept medical records backed by an SCD record, %@ however is backed by %@", v13, v15, v16];

    v14 = 0;
  }

  return v14;
}

- (id)signedClinicalDataRecordWithProfile:(id)a3 error:(id *)a4
{
  v6 = HDMedicalRecordEntityPropertyOriginalSignedClinicalDataRecordROWID;
  v7 = a3;
  v8 = [NSNumber numberWithLongLong:[(HDOriginalSignedClinicalDataRecordEntity *)self persistentID]];
  v9 = [HDSQLiteComparisonPredicate predicateWithProperty:v6 equalToValue:v8];

  v10 = +[HKSignedClinicalDataRecordType signedClinicalDataRecordType];
  v11 = [HDSignedClinicalDataRecordEntity samplesWithType:v10 profile:v7 encodingOptions:0 predicate:v9 limit:kHDSQLiteQueryNoLimit anchor:0 error:a4];

  if (v11)
  {
    v12 = [v11 firstObject];
    if (v12)
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

      v14 = v12;
    }

    else
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      [NSError hk_assignError:a4 code:118 format:@"%@ was unable to find any HKSignedClinicalDataRecord associated with persistent ID %lu", v16, [(HDOriginalSignedClinicalDataRecordEntity *)self persistentID]];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_predicateForUnextractedOriginalRecordsWithExtractionVersion:(int64_t)a3 ignoreExtractionVersion:(BOOL)a4
{
  v4 = a4;
  v6 = [NSNumber numberWithInteger:a3];
  v7 = [a1 disambiguatedDatabaseTable];
  v8 = objc_opt_class();
  v9 = HDMedicalRecordEntityPropertyOriginalSignedClinicalDataRecordROWID;
  v10 = [HDSQLiteJoinClause leftJoinClauseFromTable:v7 toTargetEntity:v8 as:0 localReference:HDSQLEntityPropertyPersistentID targetKey:HDMedicalRecordEntityPropertyOriginalSignedClinicalDataRecordROWID];

  v11 = +[HDMedicalRecordEntity disambiguatedDatabaseTable];
  v12 = [HDSQLiteJoinClause leftJoinClauseFromTable:v11 toTargetEntity:objc_opt_class() as:0 localReference:HDDataEntityPropertyDataID targetKey:HDDataEntityPropertyDataID];

  v36 = v12;
  v37 = v10;
  v13 = [NSSet setWithObjects:v10, v12, 0];
  v35 = [HDSQLiteJoinPredicate predicateWithJoinClauses:v13];

  v14 = [HDSQLiteNullPredicate isNullPredicateWithProperty:v9];
  v15 = +[HDSignedClinicalDataRecordEntity disambiguatedDatabaseTable];
  v16 = [NSString stringWithFormat:@"%@.%@", v15, HDSignedClinicalDataRecordEntityPropertyIssuerIdentifier];

  v34 = v16;
  v17 = [HDSQLiteNullPredicate isNotNullPredicateWithProperty:v16];
  v18 = v17;
  v19 = HDSourceEntity_ptr;
  v20 = v6;
  if (v4)
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
  if (v4)
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

+ (id)unextractedOriginalRecordsOnProfile:(id)a3 extractionVersion:(int64_t)a4 ignoreExtractionVersion:(BOOL)a5 error:(id *)a6
{
  v10 = a3;
  v11 = objc_alloc_init(NSMutableArray);
  v12 = [v10 database];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_6655C;
  v17[3] = &unk_107FE8;
  v19 = a1;
  v20 = a4;
  v21 = a5;
  v18 = v11;
  v13 = v11;
  LODWORD(a6) = [a1 performReadTransactionWithHealthDatabase:v12 error:a6 block:v17];

  if (a6)
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

- (id)rawContentOnProfile:(id)a3 error:(id *)a4
{
  v6 = HDOriginalSignedClinicalDataRecordEntityPropertyRawContent;
  v7 = [a3 database];
  v15 = 0;
  v8 = [(HDOriginalSignedClinicalDataRecordEntity *)self valueForProperty:v6 healthDatabase:v7 error:&v15];
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
    [NSError hk_assignError:a4 code:100 format:@"raw content for %@ is not NSData but %@", self, v13];
  }

  else if (v9)
  {
    if (a4)
    {
      v11 = v9;
      v10 = 0;
      *a4 = v9;
      goto LABEL_11;
    }

    _HKLogDroppedError();
  }

  else
  {
    [NSError hk_assignError:a4 code:118 format:@"no raw content found for %@", self];
  }

  v10 = 0;
LABEL_11:

  return v10;
}

+ (id)codableOriginalRecordForHKRecord:(id)a3 profile:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_659CC;
  v23 = sub_659DC;
  v24 = 0;
  v9 = [v8 database];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_669B8;
  v15[3] = &unk_106DB0;
  v10 = v7;
  v16 = v10;
  v11 = v8;
  v17 = v11;
  v18 = &v19;
  LODWORD(a5) = [HDOriginalSignedClinicalDataRecordEntity performReadTransactionWithHealthDatabase:v9 error:a5 block:v15];

  if (a5)
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

- (id)codableInDatabase:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() propertiesForCodable];
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
  v8 = [(HDOriginalSignedClinicalDataRecordEntity *)self getValuesForProperties:v7 database:v6 handler:v16];
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
      if (a4)
      {
        v12 = v10;
        *a4 = v11;
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

+ (id)_predicateForUndeletedRecordsOnAccountEntity:(id)a3
{
  v3 = HDOriginalSignedClinicalDataRecordEntityPropertyAccountROWID;
  v4 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [a3 persistentID]);
  v5 = [HDSQLiteComparisonPredicate predicateWithProperty:v3 equalToValue:v4];

  v6 = [HDSQLiteComparisonPredicate predicateWithProperty:HDOriginalSignedClinicalDataRecordEntityPropertyDeleted equalToValue:&__kCFBooleanFalse];
  v10[0] = v5;
  v10[1] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:2];
  v8 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

  return v8;
}

+ (BOOL)enumerateActiveEntitiesForAccountIdentifier:(id)a3 profile:(id)a4 error:(id *)a5 block:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [a4 database];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_66F94;
  v16[3] = &unk_108038;
  v18 = v11;
  v19 = a1;
  v17 = v10;
  v13 = v11;
  v14 = v10;
  LOBYTE(a5) = [a1 performReadTransactionWithHealthDatabase:v12 error:a5 block:v16];

  return a5;
}

+ (BOOL)enumerateActiveRecordsForAccountIdentifier:(id)a3 profile:(id)a4 error:(id *)a5 block:(id)a6
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_67310;
  v13[3] = &unk_108060;
  v14 = a4;
  v15 = a6;
  v10 = v15;
  v11 = v14;
  LOBYTE(a5) = [a1 enumerateActiveEntitiesForAccountIdentifier:a3 profile:v11 error:a5 block:v13];

  return a5;
}

+ (BOOL)enumerateActiveCodableRecordsForAccountIdentifier:(id)a3 profile:(id)a4 error:(id *)a5 block:(id)a6
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_67430;
  v12[3] = &unk_108088;
  v13 = a6;
  v10 = v13;
  LOBYTE(a5) = [a1 enumerateActiveEntitiesForAccountIdentifier:a3 profile:a4 error:a5 block:v12];

  return a5;
}

+ (BOOL)replaceOriginalRecordWithSyncIdentifier:(id)a3 newSignatureStatus:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [v11 database];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_675FC;
  v20[3] = &unk_1067D8;
  v21 = v10;
  v22 = v11;
  v23 = a4;
  v24 = a1;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_67830;
  v16[3] = &unk_106800;
  v18 = v22;
  v19 = a4;
  v17 = v21;
  v13 = v22;
  v14 = v21;
  LOBYTE(a6) = [HDOriginalSignedClinicalDataRecordEntity performWriteTransactionWithHealthDatabase:v12 error:a6 block:v20 inaccessibilityHandler:v16];

  return a6;
}

- (int64_t)updateUniquenessChecksumIfNecessaryWithItem:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = HDOriginalSignedClinicalDataRecordEntityPropertyUniquenessChecksum;
  v11 = [(HDOriginalSignedClinicalDataRecordEntity *)self valueForProperty:HDOriginalSignedClinicalDataRecordEntityPropertyUniquenessChecksum database:v9];
  if (v11)
  {
    objc_opt_class();
    v12 = HKSafeObject();
    if (v12)
    {
      v13 = [v8 uniquenessChecksum];
      v14 = [v12 isEqual:v13];

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
        v19 = v8;
        LODWORD(v15) = [(HDOriginalSignedClinicalDataRecordEntity *)self updateProperties:v16 database:v9 error:a5 bindingHandler:v18];

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
    [NSError hk_assignError:a5 code:118 format:@"there is no uniqueness checksum on original record with ROWID %llu", [(HDOriginalSignedClinicalDataRecordEntity *)self persistentID]];
    v15 = 0;
  }

  return v15;
}

- (BOOL)_deleteDerivedRecordsWithTransaction:(id)a3 profile:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [(HDOriginalSignedClinicalDataRecordEntity *)self existingDerivedMedicalRecordsOnProfile:v7 error:a5];
  if (v8 && ([v7 dataManager], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "deleteDataObjects:restrictedSourceEntities:failIfNotFound:recursiveDeleteAuthorizationBlock:error:", v8, 0, 1, 0, a5), v9, v10))
  {
    v11 = [(HDOriginalSignedClinicalDataRecordEntity *)self existingDerivedClinicalRecordsOnProfile:v7 error:a5];
    if (v11 && ([v7 dataManager], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "deleteDataObjects:restrictedSourceEntities:failIfNotFound:recursiveDeleteAuthorizationBlock:error:", v11, 0, 1, 0, a5), v12, v13))
    {
      v14 = [(HDOriginalSignedClinicalDataRecordEntity *)self existingDerivedVerifiableClinicalRecordsOnProfile:v7 error:a5];
      if (v14)
      {
        v15 = [v7 dataManager];
        v16 = [v15 deleteDataObjects:v14 restrictedSourceEntities:0 failIfNotFound:1 recursiveDeleteAuthorizationBlock:0 error:a5];
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

- (BOOL)deleteDerivedRecordsOnProfile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 database];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_67D38;
  v10[3] = &unk_1080B0;
  v10[4] = self;
  v11 = v6;
  v8 = v6;
  LOBYTE(a4) = [HDOriginalSignedClinicalDataRecordEntity performWriteTransactionWithHealthDatabase:v7 error:a4 block:v10];

  return a4;
}

- (BOOL)deleteOriginalAndDerivedRecordsOnProfile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 database];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_67E20;
  v10[3] = &unk_1080B0;
  v10[4] = self;
  v11 = v6;
  v8 = v6;
  LOBYTE(a4) = [HDOriginalSignedClinicalDataRecordEntity performWriteTransactionWithHealthDatabase:v7 error:a4 block:v10];

  return a4;
}

- (id)existingDerivedMedicalRecordsOnProfile:(id)a3 excludeMainRecord:(BOOL)a4 error:(id *)a5
{
  v8 = a3;
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
  v13 = [v8 database];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_681CC;
  v18[3] = &unk_1080D8;
  v22 = &v24;
  v14 = v11;
  v23 = a4;
  v19 = v14;
  v20 = self;
  v15 = v8;
  v21 = v15;
  LOBYTE(a5) = [v12 performReadTransactionWithHealthDatabase:v13 error:a5 block:v18];

  if (a5)
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

- (id)existingDerivedClinicalRecordsOnProfile:(id)a3 error:(id *)a4
{
  v6 = HDClinicalRecordEntityPropertyOriginalSignedClinicalDataRecordROWID;
  v7 = a3;
  v8 = [NSNumber numberWithLongLong:[(HDOriginalSignedClinicalDataRecordEntity *)self persistentID]];
  v9 = [HDSQLiteComparisonPredicate predicateWithProperty:v6 equalToValue:v8];

  v10 = [HDClinicalRecordEntity _clinicalRecordsWithPredicate:v9 profile:v7 error:a4];

  return v10;
}

- (id)existingDerivedVerifiableClinicalRecordsOnProfile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDOriginalSignedClinicalDataRecordEntity *)self syncIdentifierWithProfile:v6 error:a4];
  if (v7)
  {
    v8 = [objc_opt_class() existingDerivedVerifiableClinicalRecordsForRecordWithSyncIdentifier:v7 profile:v6 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)existingDerivedVerifiableClinicalRecordsForRecordWithSyncIdentifier:(id)a3 profile:(id)a4 error:(id *)a5
{
  v7 = HDVerifiableClinicalRecordEntityPropertyOriginIdentifier;
  v8 = a4;
  v9 = [HDSQLiteComparisonPredicate predicateWithProperty:v7 equalToValue:a3];
  v10 = +[HKVerifiableClinicalRecordType verifiableClinicalRecordType];
  v11 = [HDVerifiableClinicalRecordEntity samplesWithType:v10 profile:v8 encodingOptions:0 predicate:v9 limit:kHDSQLiteQueryNoLimit anchor:0 error:a5];

  return v11;
}

@end