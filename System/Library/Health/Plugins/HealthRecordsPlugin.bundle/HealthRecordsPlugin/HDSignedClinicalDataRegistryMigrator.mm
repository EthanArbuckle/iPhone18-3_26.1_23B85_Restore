@interface HDSignedClinicalDataRegistryMigrator
- (BOOL)migrateDatabase:(id)a3 fromVersion:(unint64_t)a4 toVersion:(int64_t)a5 error:(id *)a6;
- (BOOL)runMigrationFunction:(void *)a3 database:(id)a4 error:(id *)a5;
- (int64_t)executeStatements:(id)a3 database:(id)a4 error:(id *)a5;
@end

@implementation HDSignedClinicalDataRegistryMigrator

- (BOOL)migrateDatabase:(id)a3 fromVersion:(unint64_t)a4 toVersion:(int64_t)a5 error:(id *)a6
{
  v11 = a3;
  if (a4 >= a5)
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
    v40 = a4;
    v41 = 2048;
    v42 = a5;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Migrating registry from version %lld to %lld", buf, 0x20u);
  }

  if (!a4 && a5 >= 1)
  {
    v36 = 0;
    v16 = [(HDSignedClinicalDataRegistryMigrator *)self runMigrationFunction:sub_16F28 database:v11 error:&v36];
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

  if (a4 > 1 || a5 < 2)
  {
    goto LABEL_13;
  }

  v35 = 0;
  v19 = [(HDSignedClinicalDataRegistryMigrator *)self runMigrationFunction:sub_16FFC database:v11 error:&v35];
  v20 = v35;
  v18 = v20;
  if (v19)
  {

LABEL_13:
    v33[4] = a5;
    v34 = 0;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_170D8;
    v33[3] = &unk_106318;
    v21 = [v11 performTransactionWithType:1 error:&v34 usingBlock:v33];
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
      v40 = a4;
      v41 = 2048;
      v42 = a5;
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
    if (a6)
    {
      v31 = v22;
      *a6 = v22;
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

- (BOOL)runMigrationFunction:(void *)a3 database:(id)a4 error:(id *)a5
{
  v8 = a4;
  v17 = 0;
  v9 = (a3)(self, v8, &v17);
  v10 = v17;
  v11 = v10;
  if (v9 == 1)
  {
    v16 = v10;
    v9 = (a3)(self, v8, &v16);
    v12 = v16;

    v11 = v12;
  }

  if (v9)
  {
    v13 = v11;
    if (v13)
    {
      if (a5)
      {
        v14 = v13;
        *a5 = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v9 == 0;
}

- (int64_t)executeStatements:(id)a3 database:(id)a4 error:(id *)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1727C;
  v10[3] = &unk_106340;
  v11 = a3;
  v7 = v11;
  v8 = [a4 performTransactionWithType:1 error:a5 usingBlock:v10] ^ 1;

  return v8;
}

@end