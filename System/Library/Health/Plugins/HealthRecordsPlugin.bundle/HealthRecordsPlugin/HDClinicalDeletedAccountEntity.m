@interface HDClinicalDeletedAccountEntity
+ (BOOL)_insertOrUpdateTombstoneWithSyncIdentifier:(id)a3 deletionDate:(id)a4 deletionReason:(int64_t)a5 syncProvenance:(int64_t)a6 syncIdentity:(int64_t)a7 database:(id)a8 error:(id *)a9;
+ (BOOL)_insertTombstoneWithSyncIdentifier:(id)a3 deletionDate:(id)a4 deletionReason:(int64_t)a5 syncProvenance:(int64_t)a6 syncIdentity:(int64_t)a7 database:(id)a8 error:(id *)a9;
+ (BOOL)_validateCodableDeletedAccount:(id)a3 error:(id *)a4;
+ (BOOL)insertTombstoneWithSyncIdentifierIfNotExists:(id)a3 deletionDate:(id)a4 deletionReason:(int64_t)a5 profile:(id)a6 transaction:(id)a7 error:(id *)a8;
+ (id)_codableDeletedAccountWithSyncIdentifier:(id)a3 deletionDate:(id)a4 deletionReason:(int64_t)a5 error:(id *)a6;
+ (id)_codableWithRow:(HDSQLiteRow *)a3 error:(id *)a4;
+ (id)_entityWithSyncIdentifier:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)_insertCodableDeletedAccounts:(id)a3 syncProvenance:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (id)_predicateForSyncIdentifier:(id)a3;
+ (id)_propertiesForEntity;
+ (id)tombstoneExistsWithSyncIdentifier:(id)a3 database:(id)a4 error:(id *)a5;
@end

@implementation HDClinicalDeletedAccountEntity

+ (id)_propertiesForEntity
{
  v4[0] = HDClinicalDeletedAccountEntityPropertySyncIdentifier;
  v4[1] = HDClinicalDeletedAccountEntityPropertyDeletionDate;
  v4[2] = HDClinicalDeletedAccountEntityPropertyDeletionReason;
  v4[3] = HDClinicalDeletedAccountEntityPropertySyncProvenance;
  v4[4] = HDClinicalDeletedAccountEntityPropertySyncIdentity;
  v2 = [NSArray arrayWithObjects:v4 count:5];

  return v2;
}

+ (id)_predicateForSyncIdentifier:(id)a3
{
  v3 = HDClinicalDeletedAccountEntityPropertySyncIdentifier;
  v4 = _HDSQLiteValueForUUID();
  v5 = [HDSQLiteComparisonPredicate predicateWithProperty:v3 equalToValue:v4];

  return v5;
}

+ (id)_codableWithRow:(HDSQLiteRow *)a3 error:(id *)a4
{
  v6 = HDSQLiteColumnWithNameAsUUID();
  v7 = HDSQLiteColumnWithNameAsDate();
  v8 = [a1 _codableDeletedAccountWithSyncIdentifier:v6 deletionDate:v7 deletionReason:HDSQLiteColumnWithNameAsInt64() error:a4];

  return v8;
}

+ (id)_entityWithSyncIdentifier:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a1 _predicateForSyncIdentifier:a3];
  v10 = [a1 anyInDatabase:v8 predicate:v9 error:a5];

  return v10;
}

+ (id)tombstoneExistsWithSyncIdentifier:(id)a3 database:(id)a4 error:(id *)a5
{
  v11 = 0;
  v6 = [a1 _entityWithSyncIdentifier:a3 database:a4 error:&v11];
  v7 = v11;
  if (v7)
  {
    if (a5)
    {
      v8 = v7;
      v9 = 0;
      *a5 = v7;
    }

    else
    {
      _HKLogDroppedError();
      v9 = 0;
    }
  }

  else
  {
    v9 = [NSNumber numberWithInt:v6 != 0];
  }

  return v9;
}

+ (BOOL)insertTombstoneWithSyncIdentifierIfNotExists:(id)a3 deletionDate:(id)a4 deletionReason:(int64_t)a5 profile:(id)a6 transaction:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = [v17 protectedDatabase];
  v26 = 0;
  v19 = [a1 _entityWithSyncIdentifier:v14 database:v18 error:&v26];
  v20 = v26;

  if (v19)
  {
    v21 = 1;
  }

  else if (v20)
  {
    if (a8)
    {
      v23 = v20;
      v21 = 0;
      *a8 = v20;
    }

    else
    {
      _HKLogDroppedError();
      v21 = 0;
    }
  }

  else
  {
    v25 = [v16 currentSyncIdentityPersistentID];
    v24 = [v17 protectedDatabase];
    v21 = [a1 _insertTombstoneWithSyncIdentifier:v14 deletionDate:v15 deletionReason:a5 syncProvenance:0 syncIdentity:v25 database:v24 error:a8];
  }

  return v21;
}

+ (BOOL)_insertTombstoneWithSyncIdentifier:(id)a3 deletionDate:(id)a4 deletionReason:(int64_t)a5 syncProvenance:(int64_t)a6 syncIdentity:(int64_t)a7 database:(id)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a8;
  v18 = [a1 _propertiesForEntity];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_4B334;
  v23[3] = &unk_1077C0;
  v24 = v15;
  v25 = v16;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v19 = v16;
  v20 = v15;
  v21 = [a1 insertOrReplaceEntity:0 database:v17 properties:v18 error:a9 bindingHandler:v23];

  return v21 != 0;
}

+ (BOOL)_insertOrUpdateTombstoneWithSyncIdentifier:(id)a3 deletionDate:(id)a4 deletionReason:(int64_t)a5 syncProvenance:(int64_t)a6 syncIdentity:(int64_t)a7 database:(id)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a8;
  v26 = 0;
  v18 = [a1 _entityWithSyncIdentifier:v15 database:v17 error:&v26];
  v19 = v26;
  if (!v19)
  {
    if (!v18)
    {
      goto LABEL_10;
    }

    v25 = a7;
    v22 = [v18 dateForProperty:HDClinicalDeletedAccountEntityPropertyDeletionDate database:v17];
    if ([v22 hk_isBeforeDate:v16])
    {

      v21 = 1;
      goto LABEL_11;
    }

    v24 = [v18 deleteFromDatabase:v17 error:a9];

    a7 = v25;
    if (v24)
    {
LABEL_10:
      v21 = [a1 _insertTombstoneWithSyncIdentifier:v15 deletionDate:v16 deletionReason:a5 syncProvenance:a6 syncIdentity:a7 database:v17 error:a9];
      goto LABEL_11;
    }

LABEL_8:
    v21 = 0;
    goto LABEL_11;
  }

  if (!a9)
  {
    _HKLogDroppedError();
    goto LABEL_8;
  }

  v20 = v19;
  v21 = 0;
  *a9 = v19;
LABEL_11:

  return v21;
}

+ (id)_insertCodableDeletedAccounts:(id)a3 syncProvenance:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_4B738;
  v27[3] = &unk_1077E0;
  v27[4] = a1;
  v12 = [v10 hk_filter:v27];
  if ([v12 count])
  {
    v13 = [v11 database];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_4B7CC;
    v22[3] = &unk_1067D8;
    v25 = a1;
    v23 = v12;
    v24 = v11;
    v26 = a4;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_4BB84;
    v18[3] = &unk_106800;
    v20 = v13;
    v21 = a4;
    v19 = v10;
    v14 = v13;
    v15 = v12;
    if ([a1 performWriteTransactionWithHealthDatabase:v14 error:a6 block:v22 inaccessibilityHandler:v18])
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v12 = v16;
  }

  return v12;
}

+ (id)_codableDeletedAccountWithSyncIdentifier:(id)a3 deletionDate:(id)a4 deletionReason:(int64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = objc_alloc_init(HDCodableClinicalDeletedAccount);
  v13 = [a1 _currentCodableMessageVersion];
  [v12 setMessageVersion:v13];

  if (a5 == 3)
  {
    v14 = [v12 messageVersion];
    v15 = [v14 compatibilityVersion];

    if (v15 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15;
    }

    v17 = [v12 messageVersion];
    [v17 setCompatibilityVersion:v16];
  }

  v18 = [v10 hk_dataForUUIDBytes];
  [v12 setSyncIdentifier:v18];

  [v11 timeIntervalSinceReferenceDate];
  v20 = v19;

  [v12 setDeletionDate:v20];
  [v12 setDeletionReason:a5];
  if ([a1 _validateCodableDeletedAccount:v12 error:a6])
  {
    v21 = v12;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (BOOL)_validateCodableDeletedAccount:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (![v5 hasMessageVersion] || (objc_msgSend(v5, "messageVersion"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "compatibilityVersion"), v6, v7 < 3))
  {
    v8 = [v5 syncIdentifier];
    v9 = [NSUUID hk_UUIDWithData:v8];

    if (!v9)
    {
      [NSError hk_assignError:a4 code:3 format:@"%@: invalid sync identifier", objc_opt_class()];
      goto LABEL_11;
    }

    if (([v5 hasDeletionDate] & 1) == 0)
    {
      [NSError hk_assignError:a4 code:3 format:@"%@: missing deletion date", objc_opt_class()];
      goto LABEL_11;
    }

    v10 = [v5 messageVersion];
    if ([v10 entityVersion] < 2)
    {
    }

    else
    {
      v11 = [v5 hasDeletionReason];

      if ((v11 & 1) == 0)
      {
        [NSError hk_assignError:a4 code:3 format:@"%@: missing deletion reason", objc_opt_class()];
        goto LABEL_11;
      }
    }

    v12 = 1;
    goto LABEL_12;
  }

  [NSError hk_assignError:a4 code:3 description:@"Codable deleted account compatibilty version is higher than what we support"];
LABEL_11:
  v12 = 0;
LABEL_12:

  return v12;
}

@end