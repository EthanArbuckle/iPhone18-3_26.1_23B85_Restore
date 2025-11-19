@interface HDSignedClinicalDataIssuerEntity
+ (BOOL)insertCodableIssuers:(id)a3 syncProvenance:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)updateIssuerTitlesUsingRegistry:(id)a3 profile:(id)a4 error:(id *)a5;
+ (BOOL)validateCodable:(id)a3 error:(id *)a4;
+ (HDSignedClinicalDataIssuerEntity)issuerEntityWithIdentifier:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)_issuerWithRow:(HDSQLiteRow *)a3;
+ (id)codableWithRow:(HDSQLiteRow *)a3 error:(id *)a4;
+ (id)insertCodableIssuer:(id)a3 syncProvenance:(int64_t)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7;
+ (id)insertIssuer:(id)a3 syncProvenance:(int64_t)a4 syncIdentity:(id)a5 profile:(id)a6 transaction:(id)a7 error:(id *)a8;
+ (id)insertOrIgnoreCodableIssuer:(id)a3 syncProvenance:(int64_t)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7;
+ (id)issuerWithIdentifier:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)issuerWithIdentifier:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)newCompatibleCodableSignedClinicalDataIssuerWithIdentifier:(id)a3;
- (BOOL)updateTitleUsingRegistry:(id)a3 database:(id)a4 profile:(id)a5 error:(id *)a6;
- (id)issuerInDatabase:(id)a3 error:(id *)a4;
@end

@implementation HDSignedClinicalDataIssuerEntity

+ (id)newCompatibleCodableSignedClinicalDataIssuerWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(HDCodableSignedClinicalDataIssuer);
  v5 = objc_alloc_init(HDCodableMessageVersion);
  [v4 setMessageVersion:v5];

  v6 = [v4 messageVersion];
  [v6 setEntityVersion:1];

  v7 = [v4 messageVersion];
  [v7 setCompatibilityVersion:0];

  if ([v3 hasPrefix:HKSignedClinicalDataEUDCCIssuerPrefix])
  {
    v8 = [v4 messageVersion];
    [v8 setCompatibilityVersion:1];
  }

  [v4 setIdentifier:v3];

  return v4;
}

+ (BOOL)validateCodable:(id)a3 error:(id *)a4
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

  if (([v5 hasTitle] & 1) == 0)
  {
    [v6 addObject:@"no title"];
  }

  if (([v5 hasIdentifier] & 1) == 0)
  {
    [v6 addObject:@"no issuer identifier"];
  }

  v11 = [v6 count];
  if (v11)
  {
    v12 = [v6 componentsJoinedByString:@" "];;
    [NSError hk_assignError:a4 code:3 format:@"codable signed clinical data issuer is invalid: %@", v12];
  }

  return v11 == 0;
}

- (id)issuerInDatabase:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() _propertiesForModel];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1FB0C;
  v19 = sub_1FB1C;
  v20 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1FB24;
  v14[3] = &unk_106788;
  v14[4] = self;
  v14[5] = &v15;
  if (([(HDSignedClinicalDataIssuerEntity *)self getValuesForProperties:v7 database:v6 handler:v14]& 1) != 0)
  {
    v8 = v16[5];
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [(HDSignedClinicalDataIssuerEntity *)self persistentID];
        *buf = 138543618;
        v22 = self;
        v23 = 2048;
        v24 = v11;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%{public}@ Failed to instantiate SCD Issuer for entity with ID %lld", buf, 0x16u);
      }
    }

    [NSError hk_assignError:a4 code:100 format:@"Failed to populate SCD Issuer object from issuer entity %lld", [(HDSignedClinicalDataIssuerEntity *)self persistentID]];
    v8 = 0;
  }

  v12 = v8;
  _Block_object_dispose(&v15, 8);

  return v12;
}

+ (id)issuerWithIdentifier:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1FB0C;
  v23 = sub_1FB1C;
  v24 = 0;
  v10 = [v9 database];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1FCF4;
  v15[3] = &unk_1067B0;
  v17 = &v19;
  v18 = a1;
  v11 = v8;
  v16 = v11;
  LODWORD(a5) = [a1 performReadTransactionWithHealthDatabase:v10 context:0 error:a5 block:v15];

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

+ (HDSignedClinicalDataIssuerEntity)issuerEntityWithIdentifier:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a1 predicateForIssuerWithIdentifier:a3];
  v10 = [a1 anyInDatabase:v8 predicate:v9 error:a5];

  return v10;
}

+ (id)issuerWithIdentifier:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a1 issuerEntityWithIdentifier:a3 database:v8 error:a5];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 issuerInDatabase:v8 error:a5];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_issuerWithRow:(HDSQLiteRow *)a3
{
  if (!a3)
  {
    sub_9E970(a2, a1);
  }

  v3 = HDSQLiteColumnWithNameAsString();
  if (v3)
  {
    v4 = [NSURL URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = [HKSignedClinicalDataIssuer alloc];
  v6 = HDSQLiteColumnWithNameAsString();
  v7 = HDSQLiteColumnWithNameAsString();
  v8 = HDSQLiteColumnWithNameAsString();
  v9 = [v5 initWithIdentifier:v6 title:v7 subtitle:v8 wellKnownURL:v4];

  return v9;
}

+ (id)codableWithRow:(HDSQLiteRow *)a3 error:(id *)a4
{
  if (!a3)
  {
    sub_9E9EC(a2, a1);
  }

  v6 = HDSQLiteColumnWithNameAsString();
  v7 = [HDSignedClinicalDataIssuerEntity newCompatibleCodableSignedClinicalDataIssuerWithIdentifier:v6];
  v8 = HDSQLiteColumnWithNameAsString();
  [v7 setTitle:v8];

  v9 = HDSQLiteColumnWithNameAsString();
  [v7 setSubtitle:v9];

  v10 = HDSQLiteColumnWithNameAsString();
  [v7 setWellKnownURL:v10];

  if ([a1 validateCodable:v7 error:a4])
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)insertCodableIssuers:(id)a3 syncProvenance:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [v11 database];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_202DC;
  v20[3] = &unk_1067D8;
  v21 = v10;
  v23 = a1;
  v24 = a4;
  v22 = v11;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_20568;
  v16[3] = &unk_106800;
  v18 = v22;
  v19 = a4;
  v17 = v21;
  v13 = v22;
  v14 = v21;
  LOBYTE(a6) = [a1 performWriteTransactionWithHealthDatabase:v12 error:a6 block:v20 inaccessibilityHandler:v16];

  return a6;
}

+ (id)insertOrIgnoreCodableIssuer:(id)a3 syncProvenance:(int64_t)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = [v12 identifier];
  v16 = [v14 protectedDatabase];
  v23 = 0;
  v17 = [a1 issuerEntityWithIdentifier:v15 database:v16 error:&v23];
  v18 = v23;

  if (v17 || !v18)
  {
    if (v17)
    {
      v21 = v17;
    }

    else
    {
      v21 = [a1 insertCodableIssuer:v12 syncProvenance:a4 profile:v13 transaction:v14 error:a7];
    }

    v20 = v21;
  }

  else if (a7)
  {
    v19 = v18;
    v20 = 0;
    *a7 = v18;
  }

  else
  {
    _HKLogDroppedError();
    v20 = 0;
  }

  return v20;
}

+ (id)insertCodableIssuer:(id)a3 syncProvenance:(int64_t)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v56 = 0;
  LOBYTE(a6) = [a1 validateCodable:v12 error:&v56];
  v15 = v56;
  if (a6)
  {
    v49 = v13;
    v16 = [v13 syncIdentityManager];
    v17 = [v16 legacySyncIdentity];

    if (![v12 hasSyncIdentity])
    {
LABEL_6:
      v24 = a7;
      _HKInitializeLogging();
      v25 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
        v27 = [v12 identifier];
        v28 = HKSensitiveLogItem();
        *buf = 138543618;
        v58 = a1;
        v59 = 2114;
        v60 = v28;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ inserting signed clinical data issuer %{public}@", buf, 0x16u);
      }

      v29 = [v14 protectedDatabase];
      v30 = [a1 propertiesForCodable];
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_20BF0;
      v50[3] = &unk_106828;
      v53 = a4;
      v51 = v12;
      v17 = v17;
      v52 = v17;
      v31 = [a1 insertOrReplaceEntity:0 database:v29 properties:v30 error:v24 bindingHandler:v50];

      v32 = v51;
      goto LABEL_32;
    }

    v47 = a7;
    v48 = v14;
    v18 = [v12 syncIdentity];
    v55 = 0;
    v19 = [HDSyncIdentity syncIdentityWithCodable:v18 error:&v55];
    v20 = v55;

    if (v19)
    {
      v21 = [v13 syncIdentityManager];
      v54 = v20;
      v22 = [v21 concreteIdentityForIdentity:v19 shouldCreate:1 transaction:v48 error:&v54];
      v23 = v54;

      if (v22)
      {

        v17 = v22;
        a7 = v47;
        v14 = v48;
        goto LABEL_6;
      }

      _HKInitializeLogging();
      v43 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
      {
        sub_9EA68(v23, v43);
      }

      v44 = v23;
      v32 = v44;
      v14 = v48;
      if (v44)
      {
        v41 = v47;
        if (v47)
        {
          v45 = v44;
          v17 = 0;
          goto LABEL_26;
        }

        _HKLogDroppedError();
      }

      v17 = 0;
      goto LABEL_31;
    }

    _HKInitializeLogging();
    v39 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_9EAE0(v20, v39);
    }

    v40 = v20;
    v32 = v40;
    if (!v40)
    {
      v14 = v48;
      goto LABEL_31;
    }

    v41 = v47;
    v14 = v48;
    if (!v47)
    {
      _HKLogDroppedError();
      goto LABEL_31;
    }

    v42 = v40;
LABEL_26:
    *v41 = v32;
LABEL_31:

    v31 = 0;
LABEL_32:
    v13 = v49;

    goto LABEL_33;
  }

  _HKInitializeLogging();
  v33 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v34 = v33;
    v35 = [v12 identifier];
    v36 = HKSensitiveLogItem();
    v37 = [v15 localizedDescription];
    *buf = 138543874;
    v58 = a1;
    v59 = 2114;
    v60 = v36;
    v61 = 2114;
    v62 = v37;
    _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ validation failed, not inserting signed clinical data issuer %{public}@: %{public}@", buf, 0x20u);
  }

  v17 = v15;
  if (v17)
  {
    if (a7)
    {
      v38 = v17;
      v31 = 0;
      *a7 = v17;
      goto LABEL_33;
    }

    _HKLogDroppedError();
  }

  v31 = 0;
LABEL_33:

  return v31;
}

+ (id)insertIssuer:(id)a3 syncProvenance:(int64_t)a4 syncIdentity:(id)a5 profile:(id)a6 transaction:(id)a7 error:(id *)a8
{
  v14 = a7;
  v15 = a6;
  v16 = a3;
  v17 = [a5 codableSyncIdentity];
  v18 = [v16 asCodableIssuerWithSyncIdentity:v17];

  v19 = [a1 insertCodableIssuer:v18 syncProvenance:a4 profile:v15 transaction:v14 error:a8];

  return v19;
}

+ (BOOL)updateIssuerTitlesUsingRegistry:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 database];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_20F60;
  v16[3] = &unk_106500;
  v19 = a1;
  v17 = v8;
  v18 = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_210E8;
  v14[3] = &unk_106878;
  v15 = v18;
  v11 = v18;
  v12 = v8;
  LOBYTE(a5) = [a1 performWriteTransactionWithHealthDatabase:v10 error:a5 block:v16 inaccessibilityHandler:v14];

  return a5;
}

- (BOOL)updateTitleUsingRegistry:(id)a3 database:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = HDSignedClinicalDataIssuerEntityPropertyIdentifier;
  v13 = a3;
  v14 = [(HDSignedClinicalDataIssuerEntity *)self stringForProperty:v12 database:v10];
  v15 = [v13 titleForIssuerWithIdentifier:v14];

  v16 = [HKSignedClinicalDataIssuer titleForTitle:v15 identifier:v14];
  v35 = HDSignedClinicalDataIssuerEntityPropertyTitle;
  v17 = [NSArray arrayWithObjects:&v35 count:1];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_21408;
  v33[3] = &unk_105B80;
  v18 = v16;
  v34 = v18;
  v19 = [(HDSignedClinicalDataIssuerEntity *)self updateProperties:v17 database:v10 error:a6 bindingHandler:v33];

  if (v19)
  {
    v20 = [NSNumber numberWithLongLong:[(HDSignedClinicalDataIssuerEntity *)self persistentID]];
    v21 = [HDClinicalAccountEntity _predicateForAccountWithSignedClinicalDataIssuerID:v20];

    v32 = 0;
    v22 = [HDClinicalAccountEntity anyInDatabase:v10 predicate:v21 error:&v32];
    v23 = v32;
    v24 = v23;
    if (v22)
    {
      v25 = [v22 UUIDForProperty:HDClinicalAccountEntityPropertyIdentifier database:v10];
      v26 = a6;
      v27 = v11;
      v28 = v25;
      v29 = [HDClinicalAccountEntity updateSourcesForAccountWithIdentifier:v25 wasAccountInsert:0 clinicalExternalID:v14 externalTitle:v18 profile:v27 error:v26];

      v11 = v27;
    }

    else if (v23)
    {
      if (a6)
      {
        v31 = v23;
        v29 = 0;
        *a6 = v24;
      }

      else
      {
        _HKLogDroppedError();
        v29 = 0;
      }
    }

    else
    {
      v29 = 1;
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

@end