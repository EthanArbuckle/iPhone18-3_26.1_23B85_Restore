@interface HDClinicalDeletedAccountEntity
+ (BOOL)_insertOrUpdateTombstoneWithSyncIdentifier:(id)identifier deletionDate:(id)date deletionReason:(int64_t)reason syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity database:(id)database error:(id *)error;
+ (BOOL)_insertTombstoneWithSyncIdentifier:(id)identifier deletionDate:(id)date deletionReason:(int64_t)reason syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity database:(id)database error:(id *)error;
+ (BOOL)_validateCodableDeletedAccount:(id)account error:(id *)error;
+ (BOOL)insertTombstoneWithSyncIdentifierIfNotExists:(id)exists deletionDate:(id)date deletionReason:(int64_t)reason profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (id)_codableDeletedAccountWithSyncIdentifier:(id)identifier deletionDate:(id)date deletionReason:(int64_t)reason error:(id *)error;
+ (id)_codableWithRow:(HDSQLiteRow *)row error:(id *)error;
+ (id)_entityWithSyncIdentifier:(id)identifier database:(id)database error:(id *)error;
+ (id)_insertCodableDeletedAccounts:(id)accounts syncProvenance:(int64_t)provenance profile:(id)profile error:(id *)error;
+ (id)_predicateForSyncIdentifier:(id)identifier;
+ (id)_propertiesForEntity;
+ (id)tombstoneExistsWithSyncIdentifier:(id)identifier database:(id)database error:(id *)error;
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

+ (id)_predicateForSyncIdentifier:(id)identifier
{
  v3 = HDClinicalDeletedAccountEntityPropertySyncIdentifier;
  v4 = _HDSQLiteValueForUUID();
  v5 = [HDSQLiteComparisonPredicate predicateWithProperty:v3 equalToValue:v4];

  return v5;
}

+ (id)_codableWithRow:(HDSQLiteRow *)row error:(id *)error
{
  v6 = HDSQLiteColumnWithNameAsUUID();
  v7 = HDSQLiteColumnWithNameAsDate();
  v8 = [self _codableDeletedAccountWithSyncIdentifier:v6 deletionDate:v7 deletionReason:HDSQLiteColumnWithNameAsInt64() error:error];

  return v8;
}

+ (id)_entityWithSyncIdentifier:(id)identifier database:(id)database error:(id *)error
{
  databaseCopy = database;
  v9 = [self _predicateForSyncIdentifier:identifier];
  v10 = [self anyInDatabase:databaseCopy predicate:v9 error:error];

  return v10;
}

+ (id)tombstoneExistsWithSyncIdentifier:(id)identifier database:(id)database error:(id *)error
{
  v11 = 0;
  v6 = [self _entityWithSyncIdentifier:identifier database:database error:&v11];
  v7 = v11;
  if (v7)
  {
    if (error)
    {
      v8 = v7;
      v9 = 0;
      *error = v7;
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

+ (BOOL)insertTombstoneWithSyncIdentifierIfNotExists:(id)exists deletionDate:(id)date deletionReason:(int64_t)reason profile:(id)profile transaction:(id)transaction error:(id *)error
{
  existsCopy = exists;
  dateCopy = date;
  profileCopy = profile;
  transactionCopy = transaction;
  protectedDatabase = [transactionCopy protectedDatabase];
  v26 = 0;
  v19 = [self _entityWithSyncIdentifier:existsCopy database:protectedDatabase error:&v26];
  v20 = v26;

  if (v19)
  {
    v21 = 1;
  }

  else if (v20)
  {
    if (error)
    {
      v23 = v20;
      v21 = 0;
      *error = v20;
    }

    else
    {
      _HKLogDroppedError();
      v21 = 0;
    }
  }

  else
  {
    currentSyncIdentityPersistentID = [profileCopy currentSyncIdentityPersistentID];
    protectedDatabase2 = [transactionCopy protectedDatabase];
    v21 = [self _insertTombstoneWithSyncIdentifier:existsCopy deletionDate:dateCopy deletionReason:reason syncProvenance:0 syncIdentity:currentSyncIdentityPersistentID database:protectedDatabase2 error:error];
  }

  return v21;
}

+ (BOOL)_insertTombstoneWithSyncIdentifier:(id)identifier deletionDate:(id)date deletionReason:(int64_t)reason syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity database:(id)database error:(id *)error
{
  identifierCopy = identifier;
  dateCopy = date;
  databaseCopy = database;
  _propertiesForEntity = [self _propertiesForEntity];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_4B334;
  v23[3] = &unk_1077C0;
  v24 = identifierCopy;
  v25 = dateCopy;
  reasonCopy = reason;
  provenanceCopy = provenance;
  identityCopy = identity;
  v19 = dateCopy;
  v20 = identifierCopy;
  v21 = [self insertOrReplaceEntity:0 database:databaseCopy properties:_propertiesForEntity error:error bindingHandler:v23];

  return v21 != 0;
}

+ (BOOL)_insertOrUpdateTombstoneWithSyncIdentifier:(id)identifier deletionDate:(id)date deletionReason:(int64_t)reason syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity database:(id)database error:(id *)error
{
  identifierCopy = identifier;
  dateCopy = date;
  databaseCopy = database;
  v26 = 0;
  v18 = [self _entityWithSyncIdentifier:identifierCopy database:databaseCopy error:&v26];
  v19 = v26;
  if (!v19)
  {
    if (!v18)
    {
      goto LABEL_10;
    }

    identityCopy = identity;
    v22 = [v18 dateForProperty:HDClinicalDeletedAccountEntityPropertyDeletionDate database:databaseCopy];
    if ([v22 hk_isBeforeDate:dateCopy])
    {

      v21 = 1;
      goto LABEL_11;
    }

    v24 = [v18 deleteFromDatabase:databaseCopy error:error];

    identity = identityCopy;
    if (v24)
    {
LABEL_10:
      v21 = [self _insertTombstoneWithSyncIdentifier:identifierCopy deletionDate:dateCopy deletionReason:reason syncProvenance:provenance syncIdentity:identity database:databaseCopy error:error];
      goto LABEL_11;
    }

LABEL_8:
    v21 = 0;
    goto LABEL_11;
  }

  if (!error)
  {
    _HKLogDroppedError();
    goto LABEL_8;
  }

  v20 = v19;
  v21 = 0;
  *error = v19;
LABEL_11:

  return v21;
}

+ (id)_insertCodableDeletedAccounts:(id)accounts syncProvenance:(int64_t)provenance profile:(id)profile error:(id *)error
{
  accountsCopy = accounts;
  profileCopy = profile;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_4B738;
  v27[3] = &unk_1077E0;
  v27[4] = self;
  v12 = [accountsCopy hk_filter:v27];
  if ([v12 count])
  {
    database = [profileCopy database];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_4B7CC;
    v22[3] = &unk_1067D8;
    selfCopy = self;
    v23 = v12;
    v24 = profileCopy;
    provenanceCopy = provenance;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_4BB84;
    v18[3] = &unk_106800;
    v20 = database;
    provenanceCopy2 = provenance;
    v19 = accountsCopy;
    v14 = database;
    v15 = v12;
    if ([self performWriteTransactionWithHealthDatabase:v14 error:error block:v22 inaccessibilityHandler:v18])
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

+ (id)_codableDeletedAccountWithSyncIdentifier:(id)identifier deletionDate:(id)date deletionReason:(int64_t)reason error:(id *)error
{
  identifierCopy = identifier;
  dateCopy = date;
  v12 = objc_alloc_init(HDCodableClinicalDeletedAccount);
  _currentCodableMessageVersion = [self _currentCodableMessageVersion];
  [v12 setMessageVersion:_currentCodableMessageVersion];

  if (reason == 3)
  {
    messageVersion = [v12 messageVersion];
    compatibilityVersion = [messageVersion compatibilityVersion];

    if (compatibilityVersion <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = compatibilityVersion;
    }

    messageVersion2 = [v12 messageVersion];
    [messageVersion2 setCompatibilityVersion:v16];
  }

  hk_dataForUUIDBytes = [identifierCopy hk_dataForUUIDBytes];
  [v12 setSyncIdentifier:hk_dataForUUIDBytes];

  [dateCopy timeIntervalSinceReferenceDate];
  v20 = v19;

  [v12 setDeletionDate:v20];
  [v12 setDeletionReason:reason];
  if ([self _validateCodableDeletedAccount:v12 error:error])
  {
    v21 = v12;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (BOOL)_validateCodableDeletedAccount:(id)account error:(id *)error
{
  accountCopy = account;
  if (![accountCopy hasMessageVersion] || (objc_msgSend(accountCopy, "messageVersion"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "compatibilityVersion"), v6, v7 < 3))
  {
    syncIdentifier = [accountCopy syncIdentifier];
    v9 = [NSUUID hk_UUIDWithData:syncIdentifier];

    if (!v9)
    {
      [NSError hk_assignError:error code:3 format:@"%@: invalid sync identifier", objc_opt_class()];
      goto LABEL_11;
    }

    if (([accountCopy hasDeletionDate] & 1) == 0)
    {
      [NSError hk_assignError:error code:3 format:@"%@: missing deletion date", objc_opt_class()];
      goto LABEL_11;
    }

    messageVersion = [accountCopy messageVersion];
    if ([messageVersion entityVersion] < 2)
    {
    }

    else
    {
      hasDeletionReason = [accountCopy hasDeletionReason];

      if ((hasDeletionReason & 1) == 0)
      {
        [NSError hk_assignError:error code:3 format:@"%@: missing deletion reason", objc_opt_class()];
        goto LABEL_11;
      }
    }

    v12 = 1;
    goto LABEL_12;
  }

  [NSError hk_assignError:error code:3 description:@"Codable deleted account compatibilty version is higher than what we support"];
LABEL_11:
  v12 = 0;
LABEL_12:

  return v12;
}

@end