@interface HDSignedClinicalDataRegistry
+ (BOOL)_validateOrInitializeDatabase:(id)a3 error:(id *)a4;
+ (id)_validateOrInitializeDatabaseAtURL:(id)a3 error:(id *)a4;
- (BOOL)fetchTitleForIssuerWithIdentifier:(id)a3 titleOut:(id *)a4 error:(id *)a5;
- (BOOL)insertOrReplaceIssuer:(id)a3 database:(id)a4 error:(id *)a5;
- (BOOL)insertOrReplacePublicKeyWithKeyID:(id)a3 added:(id)a4 removed:(id)a5 source:(id)a6 jwk:(id)a7 database:(id)a8 error:(id *)a9;
- (BOOL)performTransactionWithError:(id *)a3 block:(id)a4;
- (BOOL)removePublicKeyWithKeyID:(id)a3 removedDate:(id)a4 database:(id)a5 error:(id *)a6;
- (BOOL)setNumericValue:(id)a3 forMetadataKey:(id)a4 error:(id *)a5;
- (HDSignedClinicalDataRegistry)initWithDatabaseURL:(id)a3;
- (HDSignedClinicalDataRegistry)initWithHealthDirectoryURL:(id)a3;
- (id)currentDatabaseSchemaVersionWithError:(id *)a3;
- (id)numericValueForMetadataKey:(id)a3 error:(id *)a4;
- (id)openAndInitializeDatabaseIfNeededWithError:(id *)a3;
- (id)publicKeyWithID:(id)a3;
- (id)titleForIssuerWithIdentifier:(id)a3;
- (int64_t)_currentDatabaseSchemaVersionWithError:(id *)a3;
- (void)close;
- (void)dealloc;
@end

@implementation HDSignedClinicalDataRegistry

- (HDSignedClinicalDataRegistry)initWithDatabaseURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDSignedClinicalDataRegistry;
  v5 = [(HDSignedClinicalDataRegistry *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    databaseURL = v5->_databaseURL;
    v5->_databaseURL = v6;

    v5->_dbLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (HDSignedClinicalDataRegistry)initWithHealthDirectoryURL:(id)a3
{
  v4 = [a3 URLByAppendingPathComponent:@"IssuerRegistry"];
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

- (id)titleForIssuerWithIdentifier:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = 0;
  v5 = [(HDSignedClinicalDataRegistry *)self fetchTitleForIssuerWithIdentifier:v4 titleOut:&v16 error:&v15];
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

- (BOOL)fetchTitleForIssuerWithIdentifier:(id)a3 titleOut:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(HDSignedClinicalDataRegistry *)self openAndInitializeDatabaseIfNeededWithError:a5];
  if (v9)
  {
    v18 = 0;
    v10 = [HDSignedClinicalDataRegistryIssuerEntity entityForIssuerWithIdentifier:v8 database:v9 error:&v18];
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
      if (a4)
      {
        v15 = v15;
        *a4 = v15;
      }
    }

    else if (a5)
    {
      v16 = v11;
      *a5 = v12;
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

- (BOOL)insertOrReplaceIssuer:(id)a3 database:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 title];
  v10 = [v9 isEqualToString:&stru_1090E8];

  v11 = [v7 identifier];
  if (v10)
  {
    v12 = [HDSignedClinicalDataRegistryIssuerEntity deleteIssuerWithIdentifier:v11 database:v8 error:a5];
  }

  else
  {
    v13 = [v7 title];
    v14 = [HDSignedClinicalDataRegistryIssuerEntity insertOrReplaceIssuerWithIdentifier:v11 title:v13 logoURL:0 softwareLogoURL:0 database:v8 error:a5];

    v12 = v14 != 0;
    v8 = v13;
  }

  return v12;
}

- (id)publicKeyWithID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v5 = [(HDSignedClinicalDataRegistry *)self openAndInitializeDatabaseIfNeededWithError:&v11];
  v6 = v11;
  if (v5)
  {
    v7 = [HDSignedClinicalDataRegistryPublicKeyEntity publicKeyWithKeyID:v4 database:v5];
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_9F558(v8, self, v6);
    }

    v7 = [[HKSignedClinicalDataRegistryPublicKeyFetchResult alloc] initWithKeyID:v4 outcome:4 jwkData:0];
  }

  v9 = v7;

  return v9;
}

- (BOOL)insertOrReplacePublicKeyWithKeyID:(id)a3 added:(id)a4 removed:(id)a5 source:(id)a6 jwk:(id)a7 database:(id)a8 error:(id *)a9
{
  v9 = [HDSignedClinicalDataRegistryPublicKeyEntity insertOrReplacePublicKeyWithKeyID:a3 added:a4 removed:a5 source:a6 jwk:a7 database:a8 error:a9];
  v10 = v9 != 0;

  return v10;
}

- (BOOL)removePublicKeyWithKeyID:(id)a3 removedDate:(id)a4 database:(id)a5 error:(id *)a6
{
  v6 = [HDSignedClinicalDataRegistryPublicKeyEntity removePublicKeyWithKeyID:a3 removedDate:a4 database:a5 error:a6];
  v7 = v6 != 0;

  return v7;
}

- (BOOL)performTransactionWithError:(id *)a3 block:(id)a4
{
  v6 = a4;
  v7 = [(HDSignedClinicalDataRegistry *)self openAndInitializeDatabaseIfNeededWithError:a3];
  if (v7)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_26DB8;
    v10[3] = &unk_106A20;
    v11 = v6;
    v8 = [v7 performTransactionWithType:1 error:a3 usingBlock:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)numericValueForMetadataKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDSignedClinicalDataRegistry *)self openAndInitializeDatabaseIfNeededWithError:a4];
  if (!v7)
  {
    v8 = 0;
    goto LABEL_13;
  }

  v14 = 0;
  v8 = [HDSignedClinicalDataRegistryMetadataEntity numericValueForKey:v6 database:v7 error:&v14];
  v9 = v14;
  v10 = v9;
  if (!v8)
  {
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [NSError hk_error:11 format:@"%@ has not yet been set", v6];
      if (!v11)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    if (a4)
    {
      v12 = v11;
      *a4 = v11;
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

- (BOOL)setNumericValue:(id)a3 forMetadataKey:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HDSignedClinicalDataRegistry *)self openAndInitializeDatabaseIfNeededWithError:a5];
  if (v10)
  {
    v11 = [HDSignedClinicalDataRegistryMetadataEntity setNumericValue:v8 forKey:v9 database:v10 error:a5];
    v12 = v11 != 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)openAndInitializeDatabaseIfNeededWithError:(id *)a3
{
  os_unfair_lock_lock(&self->_dbLock);
  v5 = self->_database;
  if (!v5)
  {
    v5 = [objc_opt_class() _validateOrInitializeDatabaseAtURL:self->_databaseURL error:a3];
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

+ (id)_validateOrInitializeDatabaseAtURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(NSFileManager);
  v7 = [v5 URLByDeletingLastPathComponent];
  v16 = 0;
  v8 = [v6 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v16];
  v9 = v16;

  if ((v8 & 1) == 0)
  {
    [NSError hk_assignError:a4 code:100 description:@"Unable to create issuer registry database directory" underlyingError:v9];
    v13 = 0;
    goto LABEL_10;
  }

  v10 = [[HDSQLiteDatabase alloc] initWithDatabaseURL:v5];
  [v10 setFileProtectionType:NSFileProtectionNone];
  v15 = 0;
  v11 = [v10 openWithError:&v15];
  v12 = v15;
  if (v11)
  {
    [NSError hk_assignError:a4 code:100 description:@"Unable to open issuer registry database" underlyingError:v12];
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  if (([objc_opt_class() _validateOrInitializeDatabase:v10 error:a4] & 1) == 0)
  {
    [v10 close];
    goto LABEL_8;
  }

  v13 = v10;
LABEL_9:

LABEL_10:

  return v13;
}

+ (BOOL)_validateOrInitializeDatabase:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    sub_9F61C(a2, a1);
  }

  v8 = [a1 databaseSchemaVersionInBuild];
  v14 = 0;
  v9 = [v7 userVersionWithDatabaseName:0 error:&v14];
  v10 = v14;
  if (v9 < 0)
  {
    [NSError hk_assignError:a4 code:100 description:@"Unable to read issuer registry database schema version" underlyingError:v10];
LABEL_9:
    v11 = 0;
    goto LABEL_11;
  }

  if (v9 != v8)
  {
    if (v9 <= v8)
    {
      v12 = objc_alloc_init(HDSignedClinicalDataRegistryMigrator);
      v11 = [(HDSignedClinicalDataRegistryMigrator *)v12 migrateDatabase:v7 fromVersion:v9 toVersion:v8 error:a4];

      goto LABEL_11;
    }

    [NSError hk_assignError:a4 code:116 format:@"Issuer registry database schema version %ld is greater than current version %ld, cannot use registry", v9, v8];
    goto LABEL_9;
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (int64_t)_currentDatabaseSchemaVersionWithError:(id *)a3
{
  database = self->_database;
  v8 = 0;
  v5 = [(HDSQLiteDatabase *)database userVersionWithDatabaseName:0 error:&v8];
  v6 = v8;
  if (v5 < 0)
  {
    [NSError hk_assignError:a3 code:100 description:@"Unable to read issuer registry database schema version" underlyingError:v6];
  }

  return v5;
}

- (id)currentDatabaseSchemaVersionWithError:(id *)a3
{
  v3 = [(HDSignedClinicalDataRegistry *)self _currentDatabaseSchemaVersionWithError:a3];
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