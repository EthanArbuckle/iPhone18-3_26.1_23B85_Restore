@interface HDSignedClinicalDataRegistry
+ (BOOL)_validateOrInitializeDatabase:(id)database error:(id *)error;
+ (id)_validateOrInitializeDatabaseAtURL:(id)l error:(id *)error;
- (BOOL)fetchTitleForIssuerWithIdentifier:(id)identifier titleOut:(id *)out error:(id *)error;
- (BOOL)insertOrReplaceIssuer:(id)issuer database:(id)database error:(id *)error;
- (BOOL)insertOrReplacePublicKeyWithKeyID:(id)d added:(id)added removed:(id)removed source:(id)source jwk:(id)jwk database:(id)database error:(id *)error;
- (BOOL)performTransactionWithError:(id *)error block:(id)block;
- (BOOL)removePublicKeyWithKeyID:(id)d removedDate:(id)date database:(id)database error:(id *)error;
- (BOOL)setNumericValue:(id)value forMetadataKey:(id)key error:(id *)error;
- (HDSignedClinicalDataRegistry)initWithDatabaseURL:(id)l;
- (HDSignedClinicalDataRegistry)initWithHealthDirectoryURL:(id)l;
- (id)currentDatabaseSchemaVersionWithError:(id *)error;
- (id)numericValueForMetadataKey:(id)key error:(id *)error;
- (id)openAndInitializeDatabaseIfNeededWithError:(id *)error;
- (id)publicKeyWithID:(id)d;
- (id)titleForIssuerWithIdentifier:(id)identifier;
- (int64_t)_currentDatabaseSchemaVersionWithError:(id *)error;
- (void)close;
- (void)dealloc;
@end

@implementation HDSignedClinicalDataRegistry

- (HDSignedClinicalDataRegistry)initWithDatabaseURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = HDSignedClinicalDataRegistry;
  v5 = [(HDSignedClinicalDataRegistry *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    databaseURL = v5->_databaseURL;
    v5->_databaseURL = v6;

    v5->_dbLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (HDSignedClinicalDataRegistry)initWithHealthDirectoryURL:(id)l
{
  v4 = [l URLByAppendingPathComponent:@"IssuerRegistry"];
  v5 = [v4 URLByAppendingPathComponent:@"Registry.db"];
  v6 = [(HDSignedClinicalDataRegistry *)self initWithDatabaseURL:v5];

  return v6;
}

- (void)dealloc
{
  [(HDSQLiteDatabase *)self->_database close];
  v3.receiver = self;
  v3.super_class = HDSignedClinicalDataRegistry;
  [(HDSignedClinicalDataRegistry *)&v3 dealloc];
}

- (id)titleForIssuerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15 = 0;
  v16 = 0;
  v5 = [(HDSignedClinicalDataRegistry *)self fetchTitleForIssuerWithIdentifier:identifierCopy titleOut:&v16 error:&v15];
  v6 = v16;
  v7 = v15;
  if (v5)
  {
    v8 = v6;
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v11 = v9;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = HKSensitiveLogItem();
      *buf = 138543874;
      v18 = v13;
      v19 = 2114;
      v20 = v14;
      v21 = 2114;
      v22 = v7;
      _os_log_error_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%{public}@ failed to look up title for issuer %{public}@: %{public}@", buf, 0x20u);
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)fetchTitleForIssuerWithIdentifier:(id)identifier titleOut:(id *)out error:(id *)error
{
  identifierCopy = identifier;
  v9 = [(HDSignedClinicalDataRegistry *)self openAndInitializeDatabaseIfNeededWithError:error];
  if (v9)
  {
    v18 = 0;
    v10 = [HDSignedClinicalDataRegistryIssuerEntity entityForIssuerWithIdentifier:identifierCopy database:v9 error:&v18];
    v11 = v18;
    v12 = v11;
    if (v10)
    {
      v13 = 1;
    }

    else
    {
      v13 = v11 == 0;
    }

    v14 = v13;
    if (v13)
    {
      v15 = [v10 titleInDatabase:v9];
      if (out)
      {
        v15 = v15;
        *out = v15;
      }
    }

    else if (error)
    {
      v16 = v11;
      *error = v12;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)insertOrReplaceIssuer:(id)issuer database:(id)database error:(id *)error
{
  issuerCopy = issuer;
  databaseCopy = database;
  title = [issuerCopy title];
  v10 = [title isEqualToString:&stru_1090E8];

  identifier = [issuerCopy identifier];
  if (v10)
  {
    v12 = [HDSignedClinicalDataRegistryIssuerEntity deleteIssuerWithIdentifier:identifier database:databaseCopy error:error];
  }

  else
  {
    title2 = [issuerCopy title];
    v14 = [HDSignedClinicalDataRegistryIssuerEntity insertOrReplaceIssuerWithIdentifier:identifier title:title2 logoURL:0 softwareLogoURL:0 database:databaseCopy error:error];

    v12 = v14 != 0;
    databaseCopy = title2;
  }

  return v12;
}

- (id)publicKeyWithID:(id)d
{
  dCopy = d;
  v11 = 0;
  v5 = [(HDSignedClinicalDataRegistry *)self openAndInitializeDatabaseIfNeededWithError:&v11];
  v6 = v11;
  if (v5)
  {
    v7 = [HDSignedClinicalDataRegistryPublicKeyEntity publicKeyWithKeyID:dCopy database:v5];
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_9F558(v8, self, v6);
    }

    v7 = [[HKSignedClinicalDataRegistryPublicKeyFetchResult alloc] initWithKeyID:dCopy outcome:4 jwkData:0];
  }

  v9 = v7;

  return v9;
}

- (BOOL)insertOrReplacePublicKeyWithKeyID:(id)d added:(id)added removed:(id)removed source:(id)source jwk:(id)jwk database:(id)database error:(id *)error
{
  v9 = [HDSignedClinicalDataRegistryPublicKeyEntity insertOrReplacePublicKeyWithKeyID:d added:added removed:removed source:source jwk:jwk database:database error:error];
  v10 = v9 != 0;

  return v10;
}

- (BOOL)removePublicKeyWithKeyID:(id)d removedDate:(id)date database:(id)database error:(id *)error
{
  v6 = [HDSignedClinicalDataRegistryPublicKeyEntity removePublicKeyWithKeyID:d removedDate:date database:database error:error];
  v7 = v6 != 0;

  return v7;
}

- (BOOL)performTransactionWithError:(id *)error block:(id)block
{
  blockCopy = block;
  v7 = [(HDSignedClinicalDataRegistry *)self openAndInitializeDatabaseIfNeededWithError:error];
  if (v7)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_26DB8;
    v10[3] = &unk_106A20;
    v11 = blockCopy;
    v8 = [v7 performTransactionWithType:1 error:error usingBlock:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)numericValueForMetadataKey:(id)key error:(id *)error
{
  keyCopy = key;
  v7 = [(HDSignedClinicalDataRegistry *)self openAndInitializeDatabaseIfNeededWithError:error];
  if (!v7)
  {
    v8 = 0;
    goto LABEL_13;
  }

  v14 = 0;
  v8 = [HDSignedClinicalDataRegistryMetadataEntity numericValueForKey:keyCopy database:v7 error:&v14];
  v9 = v14;
  v10 = v9;
  if (!v8)
  {
    if (v9)
    {
      keyCopy = v9;
    }

    else
    {
      keyCopy = [NSError hk_error:11 format:@"%@ has not yet been set", keyCopy];
      if (!keyCopy)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    if (error)
    {
      v12 = keyCopy;
      *error = keyCopy;
    }

    else
    {
      _HKLogDroppedError();
    }

    if (v10)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_12:

LABEL_13:

  return v8;
}

- (BOOL)setNumericValue:(id)value forMetadataKey:(id)key error:(id *)error
{
  valueCopy = value;
  keyCopy = key;
  v10 = [(HDSignedClinicalDataRegistry *)self openAndInitializeDatabaseIfNeededWithError:error];
  if (v10)
  {
    v11 = [HDSignedClinicalDataRegistryMetadataEntity setNumericValue:valueCopy forKey:keyCopy database:v10 error:error];
    v12 = v11 != 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)openAndInitializeDatabaseIfNeededWithError:(id *)error
{
  os_unfair_lock_lock(&self->_dbLock);
  v5 = self->_database;
  if (!v5)
  {
    v5 = [objc_opt_class() _validateOrInitializeDatabaseAtURL:self->_databaseURL error:error];
    objc_storeStrong(&self->_database, v5);
  }

  os_unfair_lock_unlock(&self->_dbLock);

  return v5;
}

- (void)close
{
  os_unfair_lock_lock(&self->_dbLock);
  [(HDSQLiteDatabase *)self->_database close];
  database = self->_database;
  self->_database = 0;

  os_unfair_lock_unlock(&self->_dbLock);
}

+ (id)_validateOrInitializeDatabaseAtURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = objc_alloc_init(NSFileManager);
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  v16 = 0;
  v8 = [v6 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v16];
  v9 = v16;

  if ((v8 & 1) == 0)
  {
    [NSError hk_assignError:error code:100 description:@"Unable to create issuer registry database directory" underlyingError:v9];
    v13 = 0;
    goto LABEL_10;
  }

  v10 = [[HDSQLiteDatabase alloc] initWithDatabaseURL:lCopy];
  [v10 setFileProtectionType:NSFileProtectionNone];
  v15 = 0;
  v11 = [v10 openWithError:&v15];
  v12 = v15;
  if (v11)
  {
    [NSError hk_assignError:error code:100 description:@"Unable to open issuer registry database" underlyingError:v12];
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  if (([objc_opt_class() _validateOrInitializeDatabase:v10 error:error] & 1) == 0)
  {
    [v10 close];
    goto LABEL_8;
  }

  v13 = v10;
LABEL_9:

LABEL_10:

  return v13;
}

+ (BOOL)_validateOrInitializeDatabase:(id)database error:(id *)error
{
  databaseCopy = database;
  if (!databaseCopy)
  {
    sub_9F61C(a2, self);
  }

  databaseSchemaVersionInBuild = [self databaseSchemaVersionInBuild];
  v14 = 0;
  v9 = [databaseCopy userVersionWithDatabaseName:0 error:&v14];
  v10 = v14;
  if (v9 < 0)
  {
    [NSError hk_assignError:error code:100 description:@"Unable to read issuer registry database schema version" underlyingError:v10];
LABEL_9:
    v11 = 0;
    goto LABEL_11;
  }

  if (v9 != databaseSchemaVersionInBuild)
  {
    if (v9 <= databaseSchemaVersionInBuild)
    {
      v12 = objc_alloc_init(HDSignedClinicalDataRegistryMigrator);
      v11 = [(HDSignedClinicalDataRegistryMigrator *)v12 migrateDatabase:databaseCopy fromVersion:v9 toVersion:databaseSchemaVersionInBuild error:error];

      goto LABEL_11;
    }

    [NSError hk_assignError:error code:116 format:@"Issuer registry database schema version %ld is greater than current version %ld, cannot use registry", v9, databaseSchemaVersionInBuild];
    goto LABEL_9;
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (int64_t)_currentDatabaseSchemaVersionWithError:(id *)error
{
  database = self->_database;
  v8 = 0;
  v5 = [(HDSQLiteDatabase *)database userVersionWithDatabaseName:0 error:&v8];
  v6 = v8;
  if (v5 < 0)
  {
    [NSError hk_assignError:error code:100 description:@"Unable to read issuer registry database schema version" underlyingError:v6];
  }

  return v5;
}

- (id)currentDatabaseSchemaVersionWithError:(id *)error
{
  v3 = [(HDSignedClinicalDataRegistry *)self _currentDatabaseSchemaVersionWithError:error];
  if (v3 < 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [NSNumber numberWithInteger:v3];
  }

  return v4;
}

@end