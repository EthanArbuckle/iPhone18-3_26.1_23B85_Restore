@interface HDSignedClinicalDataIssuerEntity
+ (BOOL)insertCodableIssuers:(id)issuers syncProvenance:(int64_t)provenance profile:(id)profile error:(id *)error;
+ (BOOL)updateIssuerTitlesUsingRegistry:(id)registry profile:(id)profile error:(id *)error;
+ (BOOL)validateCodable:(id)codable error:(id *)error;
+ (HDSignedClinicalDataIssuerEntity)issuerEntityWithIdentifier:(id)identifier database:(id)database error:(id *)error;
+ (id)_issuerWithRow:(HDSQLiteRow *)row;
+ (id)codableWithRow:(HDSQLiteRow *)row error:(id *)error;
+ (id)insertCodableIssuer:(id)issuer syncProvenance:(int64_t)provenance profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (id)insertIssuer:(id)issuer syncProvenance:(int64_t)provenance syncIdentity:(id)identity profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (id)insertOrIgnoreCodableIssuer:(id)issuer syncProvenance:(int64_t)provenance profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (id)issuerWithIdentifier:(id)identifier database:(id)database error:(id *)error;
+ (id)issuerWithIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (id)newCompatibleCodableSignedClinicalDataIssuerWithIdentifier:(id)identifier;
- (BOOL)updateTitleUsingRegistry:(id)registry database:(id)database profile:(id)profile error:(id *)error;
- (id)issuerInDatabase:(id)database error:(id *)error;
@end

@implementation HDSignedClinicalDataIssuerEntity

+ (id)newCompatibleCodableSignedClinicalDataIssuerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_alloc_init(HDCodableSignedClinicalDataIssuer);
  v5 = objc_alloc_init(HDCodableMessageVersion);
  [v4 setMessageVersion:v5];

  messageVersion = [v4 messageVersion];
  [messageVersion setEntityVersion:1];

  messageVersion2 = [v4 messageVersion];
  [messageVersion2 setCompatibilityVersion:0];

  if ([identifierCopy hasPrefix:HKSignedClinicalDataEUDCCIssuerPrefix])
  {
    messageVersion3 = [v4 messageVersion];
    [messageVersion3 setCompatibilityVersion:1];
  }

  [v4 setIdentifier:identifierCopy];

  return v4;
}

+ (BOOL)validateCodable:(id)codable error:(id *)error
{
  codableCopy = codable;
  v6 = objc_alloc_init(NSMutableArray);
  if ([codableCopy hasMessageVersion])
  {
    messageVersion = [codableCopy messageVersion];
    compatibilityVersion = [messageVersion compatibilityVersion];

    if (compatibilityVersion >= 2)
    {
      messageVersion2 = [codableCopy messageVersion];
      v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"compatibility version is higher (%lu) than what we support (%lu)", [messageVersion2 compatibilityVersion], 1);
      [v6 addObject:v10];
    }
  }

  else
  {
    [v6 addObject:@"no compatibility version"];
  }

  if (([codableCopy hasTitle] & 1) == 0)
  {
    [v6 addObject:@"no title"];
  }

  if (([codableCopy hasIdentifier] & 1) == 0)
  {
    [v6 addObject:@"no issuer identifier"];
  }

  v11 = [v6 count];
  if (v11)
  {
    v12 = [v6 componentsJoinedByString:@" "];;
    [NSError hk_assignError:error code:3 format:@"codable signed clinical data issuer is invalid: %@", v12];
  }

  return v11 == 0;
}

- (id)issuerInDatabase:(id)database error:(id *)error
{
  databaseCopy = database;
  _propertiesForModel = [objc_opt_class() _propertiesForModel];
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
  if (([(HDSignedClinicalDataIssuerEntity *)self getValuesForProperties:_propertiesForModel database:databaseCopy handler:v14]& 1) != 0)
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
        persistentID = [(HDSignedClinicalDataIssuerEntity *)self persistentID];
        *buf = 138543618;
        selfCopy = self;
        v23 = 2048;
        v24 = persistentID;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%{public}@ Failed to instantiate SCD Issuer for entity with ID %lld", buf, 0x16u);
      }
    }

    [NSError hk_assignError:error code:100 format:@"Failed to populate SCD Issuer object from issuer entity %lld", [(HDSignedClinicalDataIssuerEntity *)self persistentID]];
    v8 = 0;
  }

  v12 = v8;
  _Block_object_dispose(&v15, 8);

  return v12;
}

+ (id)issuerWithIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  profileCopy = profile;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1FB0C;
  v23 = sub_1FB1C;
  v24 = 0;
  database = [profileCopy database];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1FCF4;
  v15[3] = &unk_1067B0;
  v17 = &v19;
  selfCopy = self;
  v11 = identifierCopy;
  v16 = v11;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database context:0 error:error block:v15];

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

+ (HDSignedClinicalDataIssuerEntity)issuerEntityWithIdentifier:(id)identifier database:(id)database error:(id *)error
{
  databaseCopy = database;
  v9 = [self predicateForIssuerWithIdentifier:identifier];
  v10 = [self anyInDatabase:databaseCopy predicate:v9 error:error];

  return v10;
}

+ (id)issuerWithIdentifier:(id)identifier database:(id)database error:(id *)error
{
  databaseCopy = database;
  v9 = [self issuerEntityWithIdentifier:identifier database:databaseCopy error:error];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 issuerInDatabase:databaseCopy error:error];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_issuerWithRow:(HDSQLiteRow *)row
{
  if (!row)
  {
    sub_9E970(a2, self);
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

+ (id)codableWithRow:(HDSQLiteRow *)row error:(id *)error
{
  if (!row)
  {
    sub_9E9EC(a2, self);
  }

  v6 = HDSQLiteColumnWithNameAsString();
  v7 = [HDSignedClinicalDataIssuerEntity newCompatibleCodableSignedClinicalDataIssuerWithIdentifier:v6];
  v8 = HDSQLiteColumnWithNameAsString();
  [v7 setTitle:v8];

  v9 = HDSQLiteColumnWithNameAsString();
  [v7 setSubtitle:v9];

  v10 = HDSQLiteColumnWithNameAsString();
  [v7 setWellKnownURL:v10];

  if ([self validateCodable:v7 error:error])
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)insertCodableIssuers:(id)issuers syncProvenance:(int64_t)provenance profile:(id)profile error:(id *)error
{
  issuersCopy = issuers;
  profileCopy = profile;
  database = [profileCopy database];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_202DC;
  v20[3] = &unk_1067D8;
  v21 = issuersCopy;
  selfCopy = self;
  provenanceCopy = provenance;
  v22 = profileCopy;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_20568;
  v16[3] = &unk_106800;
  v18 = v22;
  provenanceCopy2 = provenance;
  v17 = v21;
  v13 = v22;
  v14 = v21;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v20 inaccessibilityHandler:v16];

  return error;
}

+ (id)insertOrIgnoreCodableIssuer:(id)issuer syncProvenance:(int64_t)provenance profile:(id)profile transaction:(id)transaction error:(id *)error
{
  issuerCopy = issuer;
  profileCopy = profile;
  transactionCopy = transaction;
  identifier = [issuerCopy identifier];
  protectedDatabase = [transactionCopy protectedDatabase];
  v23 = 0;
  v17 = [self issuerEntityWithIdentifier:identifier database:protectedDatabase error:&v23];
  v18 = v23;

  if (v17 || !v18)
  {
    if (v17)
    {
      v21 = v17;
    }

    else
    {
      v21 = [self insertCodableIssuer:issuerCopy syncProvenance:provenance profile:profileCopy transaction:transactionCopy error:error];
    }

    v20 = v21;
  }

  else if (error)
  {
    v19 = v18;
    v20 = 0;
    *error = v18;
  }

  else
  {
    _HKLogDroppedError();
    v20 = 0;
  }

  return v20;
}

+ (id)insertCodableIssuer:(id)issuer syncProvenance:(int64_t)provenance profile:(id)profile transaction:(id)transaction error:(id *)error
{
  issuerCopy = issuer;
  profileCopy = profile;
  transactionCopy = transaction;
  v56 = 0;
  LOBYTE(transaction) = [self validateCodable:issuerCopy error:&v56];
  v15 = v56;
  if (transaction)
  {
    v49 = profileCopy;
    syncIdentityManager = [profileCopy syncIdentityManager];
    legacySyncIdentity = [syncIdentityManager legacySyncIdentity];

    if (![issuerCopy hasSyncIdentity])
    {
LABEL_6:
      errorCopy = error;
      _HKInitializeLogging();
      v25 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
        identifier = [issuerCopy identifier];
        v28 = HKSensitiveLogItem();
        *buf = 138543618;
        selfCopy2 = self;
        v59 = 2114;
        v60 = v28;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ inserting signed clinical data issuer %{public}@", buf, 0x16u);
      }

      protectedDatabase = [transactionCopy protectedDatabase];
      propertiesForCodable = [self propertiesForCodable];
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_20BF0;
      v50[3] = &unk_106828;
      provenanceCopy = provenance;
      v51 = issuerCopy;
      legacySyncIdentity = legacySyncIdentity;
      v52 = legacySyncIdentity;
      v31 = [self insertOrReplaceEntity:0 database:protectedDatabase properties:propertiesForCodable error:errorCopy bindingHandler:v50];

      v32 = v51;
      goto LABEL_32;
    }

    errorCopy2 = error;
    v48 = transactionCopy;
    syncIdentity = [issuerCopy syncIdentity];
    v55 = 0;
    v19 = [HDSyncIdentity syncIdentityWithCodable:syncIdentity error:&v55];
    v20 = v55;

    if (v19)
    {
      syncIdentityManager2 = [profileCopy syncIdentityManager];
      v54 = v20;
      v22 = [syncIdentityManager2 concreteIdentityForIdentity:v19 shouldCreate:1 transaction:v48 error:&v54];
      v23 = v54;

      if (v22)
      {

        legacySyncIdentity = v22;
        error = errorCopy2;
        transactionCopy = v48;
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
      transactionCopy = v48;
      if (v44)
      {
        v41 = errorCopy2;
        if (errorCopy2)
        {
          v45 = v44;
          legacySyncIdentity = 0;
          goto LABEL_26;
        }

        _HKLogDroppedError();
      }

      legacySyncIdentity = 0;
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
      transactionCopy = v48;
      goto LABEL_31;
    }

    v41 = errorCopy2;
    transactionCopy = v48;
    if (!errorCopy2)
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
    profileCopy = v49;

    goto LABEL_33;
  }

  _HKInitializeLogging();
  v33 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v34 = v33;
    identifier2 = [issuerCopy identifier];
    v36 = HKSensitiveLogItem();
    localizedDescription = [v15 localizedDescription];
    *buf = 138543874;
    selfCopy2 = self;
    v59 = 2114;
    v60 = v36;
    v61 = 2114;
    v62 = localizedDescription;
    _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ validation failed, not inserting signed clinical data issuer %{public}@: %{public}@", buf, 0x20u);
  }

  legacySyncIdentity = v15;
  if (legacySyncIdentity)
  {
    if (error)
    {
      v38 = legacySyncIdentity;
      v31 = 0;
      *error = legacySyncIdentity;
      goto LABEL_33;
    }

    _HKLogDroppedError();
  }

  v31 = 0;
LABEL_33:

  return v31;
}

+ (id)insertIssuer:(id)issuer syncProvenance:(int64_t)provenance syncIdentity:(id)identity profile:(id)profile transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  profileCopy = profile;
  issuerCopy = issuer;
  codableSyncIdentity = [identity codableSyncIdentity];
  v18 = [issuerCopy asCodableIssuerWithSyncIdentity:codableSyncIdentity];

  v19 = [self insertCodableIssuer:v18 syncProvenance:provenance profile:profileCopy transaction:transactionCopy error:error];

  return v19;
}

+ (BOOL)updateIssuerTitlesUsingRegistry:(id)registry profile:(id)profile error:(id *)error
{
  registryCopy = registry;
  profileCopy = profile;
  database = [profileCopy database];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_20F60;
  v16[3] = &unk_106500;
  selfCopy = self;
  v17 = registryCopy;
  v18 = profileCopy;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_210E8;
  v14[3] = &unk_106878;
  v15 = v18;
  v11 = v18;
  v12 = registryCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v16 inaccessibilityHandler:v14];

  return error;
}

- (BOOL)updateTitleUsingRegistry:(id)registry database:(id)database profile:(id)profile error:(id *)error
{
  databaseCopy = database;
  profileCopy = profile;
  v12 = HDSignedClinicalDataIssuerEntityPropertyIdentifier;
  registryCopy = registry;
  v14 = [(HDSignedClinicalDataIssuerEntity *)self stringForProperty:v12 database:databaseCopy];
  v15 = [registryCopy titleForIssuerWithIdentifier:v14];

  v16 = [HKSignedClinicalDataIssuer titleForTitle:v15 identifier:v14];
  v35 = HDSignedClinicalDataIssuerEntityPropertyTitle;
  v17 = [NSArray arrayWithObjects:&v35 count:1];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_21408;
  v33[3] = &unk_105B80;
  v18 = v16;
  v34 = v18;
  v19 = [(HDSignedClinicalDataIssuerEntity *)self updateProperties:v17 database:databaseCopy error:error bindingHandler:v33];

  if (v19)
  {
    v20 = [NSNumber numberWithLongLong:[(HDSignedClinicalDataIssuerEntity *)self persistentID]];
    v21 = [HDClinicalAccountEntity _predicateForAccountWithSignedClinicalDataIssuerID:v20];

    v32 = 0;
    v22 = [HDClinicalAccountEntity anyInDatabase:databaseCopy predicate:v21 error:&v32];
    v23 = v32;
    v24 = v23;
    if (v22)
    {
      v25 = [v22 UUIDForProperty:HDClinicalAccountEntityPropertyIdentifier database:databaseCopy];
      errorCopy = error;
      v27 = profileCopy;
      v28 = v25;
      v29 = [HDClinicalAccountEntity updateSourcesForAccountWithIdentifier:v25 wasAccountInsert:0 clinicalExternalID:v14 externalTitle:v18 profile:v27 error:errorCopy];

      profileCopy = v27;
    }

    else if (v23)
    {
      if (error)
      {
        v31 = v23;
        v29 = 0;
        *error = v24;
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