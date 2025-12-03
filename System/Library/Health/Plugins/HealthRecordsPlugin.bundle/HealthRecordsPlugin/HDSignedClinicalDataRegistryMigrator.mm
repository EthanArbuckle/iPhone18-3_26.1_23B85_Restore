@interface HDSignedClinicalDataRegistryMigrator
- (BOOL)migrateDatabase:(id)database fromVersion:(unint64_t)version toVersion:(int64_t)toVersion error:(id *)error;
- (BOOL)runMigrationFunction:(void *)function database:(id)database error:(id *)error;
- (int64_t)executeStatements:(id)statements database:(id)database error:(id *)error;
@end

@implementation HDSignedClinicalDataRegistryMigrator

- (BOOL)migrateDatabase:(id)database fromVersion:(unint64_t)version toVersion:(int64_t)toVersion error:(id *)error
{
  databaseCopy = database;
  if (version >= toVersion)
  {
    sub_9D58C(a2, self);
  }

  _HKInitializeLogging();
  v12 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    *buf = 138543874;
    v38 = v15;
    v39 = 2048;
    versionCopy2 = version;
    v41 = 2048;
    toVersionCopy2 = toVersion;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Migrating registry from version %lld to %lld", buf, 0x20u);
  }

  if (!version && toVersion >= 1)
  {
    v36 = 0;
    v16 = [(HDSignedClinicalDataRegistryMigrator *)self runMigrationFunction:sub_16F28 database:databaseCopy error:&v36];
    v17 = v36;
    v18 = v17;
    if ((v16 & 1) == 0)
    {
      _HKInitializeLogging();
      v29 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_9D608(v29);
      }

      goto LABEL_23;
    }
  }

  if (version > 1 || toVersion < 2)
  {
    goto LABEL_13;
  }

  v35 = 0;
  v19 = [(HDSignedClinicalDataRegistryMigrator *)self runMigrationFunction:sub_16FFC database:databaseCopy error:&v35];
  v20 = v35;
  v18 = v20;
  if (v19)
  {

LABEL_13:
    v33[4] = toVersion;
    v34 = 0;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_170D8;
    v33[3] = &unk_106318;
    v21 = [databaseCopy performTransactionWithType:1 error:&v34 usingBlock:v33];
    v22 = v34;
    if ((v21 & 1) == 0)
    {
      _HKInitializeLogging();
      v23 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_9D750(v23);
      }
    }

    _HKInitializeLogging();
    v24 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138543874;
      v38 = v27;
      v39 = 2048;
      versionCopy2 = version;
      v41 = 2048;
      toVersionCopy2 = toVersion;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ Migration from version %lld to %lld done", buf, 0x20u);
    }

    v28 = 1;
    goto LABEL_28;
  }

  _HKInitializeLogging();
  v30 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_9D6AC(v30);
  }

LABEL_23:
  v22 = v18;
  if (v22)
  {
    if (error)
    {
      v31 = v22;
      *error = v22;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v28 = 0;
LABEL_28:

  return v28;
}

- (BOOL)runMigrationFunction:(void *)function database:(id)database error:(id *)error
{
  databaseCopy = database;
  v17 = 0;
  v9 = (function)(self, databaseCopy, &v17);
  v10 = v17;
  v11 = v10;
  if (v9 == 1)
  {
    v16 = v10;
    v9 = (function)(self, databaseCopy, &v16);
    v12 = v16;

    v11 = v12;
  }

  if (v9)
  {
    v13 = v11;
    if (v13)
    {
      if (error)
      {
        v14 = v13;
        *error = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v9 == 0;
}

- (int64_t)executeStatements:(id)statements database:(id)database error:(id *)error
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1727C;
  v10[3] = &unk_106340;
  statementsCopy = statements;
  v7 = statementsCopy;
  v8 = [database performTransactionWithType:1 error:error usingBlock:v10] ^ 1;

  return v8;
}

@end