@interface AMSStorageDatabase
+ (id)sharedDatabaseWithDomain:(id)a3;
- (AMSStorageDatabase)initWithDomain:(id)a3;
- (BOOL)BOOLeanForKey:(id)a3 error:(id *)a4;
- (BOOL)_setValueData:(id)a3 valueType:(int64_t)a4 forKey:(id)a5 error:(id *)a6;
- (BOOL)connection:(id)a3 needsResetForCorruptionError:(id)a4 error:(id *)a5;
- (BOOL)deleteForKey:(id)a3 error:(id *)a4;
- (BOOL)setBoolean:(BOOL)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)setDouble:(double)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)setInteger:(int64_t)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)setIsLasset:(id)a3 error:(id *)a4;
- (BOOL)setValue:(id)a3 forKey:(id)a4 error:(id *)a5;
- (double)doubleForKey:(id)a3 error:(id *)a4;
- (id)_allKeysPrefixedByDomainWithError:(id *)a3;
- (id)_convertToDataWithValue:(id)a3 valueType:(int64_t)a4 error:(id *)a5;
- (id)_convertToValueWithData:(id)a3 valueType:(int64_t)a4 error:(id *)a5;
- (id)_dataForPlistValue:(id)a3 error:(id *)a4;
- (id)_plistValueForData:(id)a3 error:(id *)a4;
- (id)allKeyValuesWithError:(id *)a3;
- (id)allKeysForDomain:(id)a3 withError:(id *)a4;
- (id)isLassetAndReturnError:(id *)a3;
- (id)sizeWithError:(id *)a3;
- (id)valueForKey:(id)a3 error:(id *)a4;
- (int64_t)_valueTypeForValue:(id)a3;
- (int64_t)integerForKey:(id)a3 error:(id *)a4;
- (void)_performTransaction:(id)a3;
- (void)close;
- (void)dealloc;
@end

@implementation AMSStorageDatabase

- (void)dealloc
{
  [(AMSStorageDatabase *)self close];
  [(AMSStorageDatabase *)self setConnection:0];
  v3.receiver = self;
  v3.super_class = AMSStorageDatabase;
  [(AMSStorageDatabase *)&v3 dealloc];
}

- (void)close
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [AMSKeepAlive keepAliveWithName:@"AMSStorage"];
  v4 = [(AMSStorageDatabase *)self connection];
  v12 = 0;
  v5 = [v4 closeWithError:&v12];
  v6 = v12;

  if ((v5 & 1) == 0)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = AMSLogableError(v6);
      *buf = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = v11;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to close the AMSStorage database connection: %{public}@", buf, 0x16u);
    }
  }

  [v3 invalidate];
}

- (id)isLassetAndReturnError:(id *)a3
{
  v4 = self;
  v5.super.super.isa = AMSStorageDatabase.isLasset()().super.super.isa;

  if (v6.super.super.isa)
  {
    if (a3)
    {
      v7 = sub_192F958CC();

      v8 = v7;
      v5.super.super.isa = 0;
      *a3 = v7;
    }

    else
    {

      v5.super.super.isa = 0;
    }
  }

  return v5.super.super.isa;
}

- (BOOL)setIsLasset:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self;
  AMSStorageDatabase.setIsLasset(_:)(v6);

  if (v8)
  {
    if (a4)
    {
      v9 = sub_192F958CC();

      v10 = v9;
      *a4 = v9;
    }

    else
    {
    }
  }

  return v8 == 0;
}

- (AMSStorageDatabase)initWithDomain:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v35.receiver = self;
  v35.super_class = AMSStorageDatabase;
  v6 = [(AMSStorageDatabase *)&v35 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&v6->_domain, a3);
  v8 = [AMSKeepAlive keepAliveWithName:@"AMSStorage"];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__AMSStorageDatabase_initWithDomain___block_invoke;
  aBlock[3] = &unk_1E73B3680;
  v9 = v8;
  v34 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [(AMSStorageDatabase *)v7 _cachePath];
  v12 = [AMSDatabaseHelper databasePathForCachePath:v11 type:1];

  if (!v12)
  {
    v23 = +[AMSLogConfig sharedConfig];
    if (!v23)
    {
      v23 = +[AMSLogConfig sharedConfig];
    }

    v24 = [v23 OSLogObject];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      *buf = 138543362;
      v37 = v25;
      _os_log_impl(&dword_192869000, v24, OS_LOG_TYPE_ERROR, "%{public}@: Fatal Error: Failed to fetch AMSStorage database path.", buf, 0xCu);
    }

    v10[2](v10);
    goto LABEL_16;
  }

  v13 = dispatch_queue_create("com.apple.AMSStorageDatabase.internal", 0);
  internalQueue = v7->_internalQueue;
  v7->_internalQueue = v13;

  v15 = [[AMSSQLiteConnectionOptions alloc] initWithDatabasePath:v12];
  v16 = [[AMSSQLiteConnection alloc] initWithOptions:v15];
  connection = v7->_connection;
  v7->_connection = v16;

  [(AMSSQLiteConnection *)v7->_connection setDelegate:v7];
  v18 = v7->_connection;
  v32 = 0;
  v19 = [AMSStorageDatabaseSchema createOrUpdateSchemaUsingConnection:v18 error:&v32];
  v20 = v32;
  v21 = v20;
  if (!v19)
  {
    v26 = +[AMSLogConfig sharedConfig];
    if (!v26)
    {
      v26 = +[AMSLogConfig sharedConfig];
    }

    v27 = [v26 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v31 = v5;
      v28 = objc_opt_class();
      v29 = AMSLogableError(v21);
      *buf = 138543618;
      v37 = v28;
      v38 = 2114;
      v39 = v29;
      _os_log_impl(&dword_192869000, v27, OS_LOG_TYPE_ERROR, "%{public}@: Fatal Error: Failed to create the AMSStorage database schema: %{public}@.", buf, 0x16u);

      v5 = v31;
    }

    v10[2](v10);
LABEL_16:
    v22 = 0;
    goto LABEL_17;
  }

  v10[2](v10);
LABEL_5:
  v22 = v7;
LABEL_17:

  return v22;
}

- (id)valueForKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__65;
  v41 = __Block_byref_object_dispose__65;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__65;
  v31 = __Block_byref_object_dispose__65;
  v32 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __40__AMSStorageDatabase_valueForKey_error___block_invoke;
  v22[3] = &unk_1E73BC428;
  v22[4] = self;
  v24 = &v27;
  v7 = v6;
  v23 = v7;
  v25 = &v33;
  v26 = &v37;
  [(AMSStorageDatabase *)self _performTransaction:v22];
  v14 = (v28 + 5);
  v13 = v28[5];
  if (v13)
  {
    if (a4)
    {
LABEL_3:
      v15 = 0;
      *a4 = v13;
      goto LABEL_9;
    }
  }

  else
  {
    v16 = v38[5];
    if (v16)
    {
      v17 = v34[3];
      obj = 0;
      v15 = [(AMSStorageDatabase *)self _convertToValueWithData:v16 valueType:v17 error:&obj];
      objc_storeStrong(v14, obj);
      goto LABEL_9;
    }

    v18 = AMSErrorWithFormat(7, @"No value found in AMSStorage database.", @"No value found with key: %@ in the AMSStorage database.", v8, v9, v10, v11, v12, v7);
    v19 = v28[5];
    v28[5] = v18;

    if (a4)
    {
      v13 = v28[5];
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_9:

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);

  return v15;
}

BOOL __40__AMSStorageDatabase_valueForKey_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__AMSStorageDatabase_valueForKey_error___block_invoke_2;
  v8[3] = &unk_1E73B96B0;
  v8[4] = *(a1 + 32);
  v7 = *(a1 + 40);
  v3 = v7;
  v4 = *(a1 + 56);
  v9 = v7;
  v10 = v4;
  [v2 executeQuery:@"SELECT key withResults:{valueType, value FROM data WHERE key=? AND domain=?;", v8}];

  v5 = *(*(*(a1 + 48) + 8) + 40) != 0;
  return v5;
}

void __40__AMSStorageDatabase_valueForKey_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to query data in AMSStorage database. %{public}@", buf, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  else
  {
    [v5 bindString:*(a1 + 40) atPosition:1];
    v9 = [*(a1 + 32) domain];
    [v5 bindString:v9 atPosition:2];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __40__AMSStorageDatabase_valueForKey_error___block_invoke_18;
    v10[3] = &unk_1E73B9688;
    v10[4] = *(a1 + 32);
    v11 = *(a1 + 48);
    v12 = *(a1 + 64);
    [v5 enumerateRowsUsingBlock:v10];
  }
}

void __40__AMSStorageDatabase_valueForKey_error___block_invoke_18(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543618;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to query data in AMSStorage database. %{public}@", &v12, 0x16u);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  else
  {
    *(*(a1[6] + 8) + 24) = [v5 intForColumnName:@"valueType"];
    v9 = [v5 dataForColumnName:@"value"];
    v10 = *(a1[7] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

- (BOOL)setValue:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(AMSStorageDatabase *)self _valueTypeForValue:v8];
  if (v10 != 1)
  {
    v16 = v10;
    if (!v10)
    {
      AMSErrorWithFormat(2, @"Value type not supported", @"The value type you are trying to use is not supported. Did you mean to conform to 'AMSStorageDatabasePersistable'? Key: %@", v11, v12, v13, v14, v15, v9);
      goto LABEL_5;
    }

    v37 = 0;
    v21 = [(AMSStorageDatabase *)self _convertToDataWithValue:v8 valueType:v10 error:&v37];
    v18 = v37;
    if (v18)
    {
      v27 = +[AMSLogConfig sharedConfig];
      if (!v27)
      {
        v27 = +[AMSLogConfig sharedConfig];
      }

      v28 = [v27 OSLogObject];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = objc_opt_class();
        *buf = 138543874;
        v39 = v29;
        v40 = 2114;
        v41 = v9;
        v42 = 2114;
        v43 = v18;
        _os_log_impl(&dword_192869000, v28, OS_LOG_TYPE_ERROR, "%{public}@: Creating data object for %{public}@ failed with error: %{public}@", buf, 0x20u);
      }

      if (a5)
      {
        v30 = v18;
        v20 = 0;
        *a5 = v18;
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
      if (v21)
      {
        v20 = [(AMSStorageDatabase *)self _setValueData:v21 valueType:v16 forKey:v9 error:a5];
        goto LABEL_25;
      }

      v31 = AMSErrorWithFormat(2, @"Error converting value to data", @"There was an issue converting value to data for key: %@", v22, v23, v24, v25, v26, v9);
      v32 = +[AMSLogConfig sharedConfig];
      if (!v32)
      {
        v32 = +[AMSLogConfig sharedConfig];
      }

      v33 = [v32 OSLogObject];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = objc_opt_class();
        *buf = 138543874;
        v39 = v34;
        v40 = 2114;
        v41 = v9;
        v42 = 2114;
        v43 = v31;
        _os_log_impl(&dword_192869000, v33, OS_LOG_TYPE_ERROR, "%{public}@: Creating data object for %{public}@ failed with error: %{public}@", buf, 0x20u);
      }

      if (a5)
      {
        v35 = v31;
        *a5 = v31;
      }
    }

    v20 = 0;
    goto LABEL_25;
  }

  AMSErrorWithFormat(2, @"Value is null", @"You are trying to save a null value. Did you mean to call 'deleteForKey'? Key: %@", v11, v12, v13, v14, v15, v9);
  v17 = LABEL_5:;
  v18 = v17;
  if (a5)
  {
    v19 = v17;
    v20 = 0;
    *a5 = v18;
  }

  else
  {
    v20 = 0;
  }

LABEL_26:

  return v20;
}

- (BOOL)BOOLeanForKey:(id)a3 error:(id *)a4
{
  v4 = [(AMSStorageDatabase *)self valueForKey:a3 error:a4];
  v5 = [v4 BOOLValue];

  return v5;
}

- (BOOL)setBoolean:(BOOL)a3 forKey:(id)a4 error:(id *)a5
{
  v6 = a3;
  v8 = MEMORY[0x1E696AD98];
  v9 = a4;
  v10 = [v8 numberWithBool:v6];
  v11 = [(AMSStorageDatabase *)self _convertToDataWithValue:v10 valueType:2 error:a5];

  LOBYTE(a5) = [(AMSStorageDatabase *)self _setValueData:v11 valueType:2 forKey:v9 error:a5];
  return a5;
}

- (int64_t)integerForKey:(id)a3 error:(id *)a4
{
  v4 = [(AMSStorageDatabase *)self valueForKey:a3 error:a4];
  v5 = [v4 integerValue];

  return v5;
}

- (BOOL)setInteger:(int64_t)a3 forKey:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x1E696AD98];
  v9 = a4;
  v10 = [v8 numberWithInteger:a3];
  v11 = [(AMSStorageDatabase *)self _convertToDataWithValue:v10 valueType:2 error:a5];

  LOBYTE(a5) = [(AMSStorageDatabase *)self _setValueData:v11 valueType:2 forKey:v9 error:a5];
  return a5;
}

- (double)doubleForKey:(id)a3 error:(id *)a4
{
  v4 = [(AMSStorageDatabase *)self valueForKey:a3 error:a4];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (BOOL)setDouble:(double)a3 forKey:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x1E696AD98];
  v9 = a4;
  v10 = [v8 numberWithDouble:a3];
  v11 = [(AMSStorageDatabase *)self _convertToDataWithValue:v10 valueType:2 error:a5];

  LOBYTE(a5) = [(AMSStorageDatabase *)self _setValueData:v11 valueType:2 forKey:v9 error:a5];
  return a5;
}

- (BOOL)deleteForKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__65;
  v18 = __Block_byref_object_dispose__65;
  v19 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__AMSStorageDatabase_deleteForKey_error___block_invoke;
  v11[3] = &unk_1E73B9610;
  v11[4] = self;
  v13 = &v14;
  v7 = v6;
  v12 = v7;
  [(AMSStorageDatabase *)self _performTransaction:v11];
  v8 = v15[5];
  if (a4 && v8)
  {
    v8 = v8;
    *a4 = v8;
  }

  v9 = v8 == 0;

  _Block_object_dispose(&v14, 8);
  return v9;
}

uint64_t __41__AMSStorageDatabase_deleteForKey_error___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) connection];
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __41__AMSStorageDatabase_deleteForKey_error___block_invoke_2;
  v13[3] = &unk_1E73BC0B8;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v14 = v4;
  v15 = v5;
  v6 = [v2 executeStatement:@"DELETE FROM data WHERE key=? AND domain=?;" error:&obj bindings:v13];
  objc_storeStrong((v3 + 40), obj);

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 40);
      v11 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138543874;
      v18 = v9;
      v19 = 2114;
      v20 = v10;
      v21 = 2114;
      v22 = v11;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Deleting value for key: %{public}@ failed with error: %{public}@", buf, 0x20u);
    }
  }

  return v6;
}

void __41__AMSStorageDatabase_deleteForKey_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindString:v3 atPosition:1];
  v5 = [*(a1 + 40) domain];
  [v4 bindString:v5 atPosition:2];
}

- (id)sizeWithError:(id *)a3
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__65;
  v12[4] = __Block_byref_object_dispose__65;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__65;
  v10 = __Block_byref_object_dispose__65;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__AMSStorageDatabase_sizeWithError___block_invoke;
  v5[3] = &unk_1E73BC4A0;
  v5[4] = self;
  v5[5] = v12;
  v5[6] = &v6;
  [(AMSStorageDatabase *)self _performTransaction:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  _Block_object_dispose(v12, 8);

  return v3;
}

BOOL __36__AMSStorageDatabase_sizeWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__AMSStorageDatabase_sizeWithError___block_invoke_2;
  v4[3] = &unk_1E73BC478;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  [v2 executeQuery:@"SELECT SUM(pgsize) FROM dbstat WHERE name='data';" withResults:v4];

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

void __36__AMSStorageDatabase_sizeWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to query data in AMSStorage database. %{public}@", buf, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36__AMSStorageDatabase_sizeWithError___block_invoke_60;
    v9[3] = &unk_1E73BC450;
    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    [a2 enumerateRowsUsingBlock:v9];
  }
}

void __36__AMSStorageDatabase_sizeWithError___block_invoke_60(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543618;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to query data in AMSStorage database. %{public}@", &v12, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v9 = [a2 stringForColumnIndex:0];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

- (id)allKeysForDomain:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__65;
  v25 = __Block_byref_object_dispose__65;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__65;
  v19 = __Block_byref_object_dispose__65;
  v20 = objc_opt_new();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__AMSStorageDatabase_allKeysForDomain_withError___block_invoke;
  v11[3] = &unk_1E73BC4F0;
  v11[4] = self;
  v13 = &v21;
  v7 = v6;
  v12 = v7;
  v14 = &v15;
  [(AMSStorageDatabase *)self _performTransaction:v11];
  if (a4)
  {
    v8 = v22[5];
    if (v8)
    {
      *a4 = v8;
    }
  }

  v9 = v16[5];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

BOOL __49__AMSStorageDatabase_allKeysForDomain_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__AMSStorageDatabase_allKeysForDomain_withError___block_invoke_2;
  v7[3] = &unk_1E73BC4C8;
  v7[4] = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = v6;
  v8 = v6;
  v9 = *(a1 + 56);
  [v2 executeQuery:@"SELECT key FROM data WHERE domain=? ORDER BY length(data.value) DESC;" withResults:v7];

  v4 = *(*(*(a1 + 48) + 8) + 40) != 0;
  return v4;
}

void __49__AMSStorageDatabase_allKeysForDomain_withError___block_invoke_2(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v12 = objc_opt_class();
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to query data in AMSStorage database. %{public}@", buf, 0x16u);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a3);
  }

  else
  {
    [v5 bindString:a1[5] atPosition:1];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__AMSStorageDatabase_allKeysForDomain_withError___block_invoke_65;
    v9[3] = &unk_1E73BC450;
    v9[4] = a1[4];
    v10 = *(a1 + 3);
    [v5 enumerateRowsUsingBlock:v9];
  }
}

void __49__AMSStorageDatabase_allKeysForDomain_withError___block_invoke_65(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543618;
      v11 = objc_opt_class();
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to query data in AMSStorage database. %{public}@", &v10, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v9 = [a2 stringForColumnIndex:0];
    [*(*(*(a1 + 48) + 8) + 40) addObject:v9];
  }
}

- (id)allKeyValuesWithError:(id *)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__65;
  v29[4] = __Block_byref_object_dispose__65;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__65;
  v27 = __Block_byref_object_dispose__65;
  v28 = objc_opt_new();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __44__AMSStorageDatabase_allKeyValuesWithError___block_invoke;
  v22[3] = &unk_1E73BC4A0;
  v22[4] = self;
  v22[5] = v29;
  v22[6] = &v23;
  [(AMSStorageDatabase *)self _performTransaction:v22];
  v4 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v24[5];
  v5 = [obj countByEnumeratingWithState:&v18 objects:v31 count:16];
  if (v5)
  {
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v12 = 0;
        v13 = &v12;
        v14 = 0x3032000000;
        v15 = __Block_byref_object_copy__65;
        v16 = __Block_byref_object_dispose__65;
        v17 = objc_opt_new();
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __44__AMSStorageDatabase_allKeyValuesWithError___block_invoke_71;
        v11[3] = &unk_1E73BC4F0;
        v11[4] = self;
        v11[5] = v8;
        v11[6] = v29;
        v11[7] = &v12;
        [(AMSStorageDatabase *)self _performTransaction:v11];
        [v4 setObject:v13[5] forKey:v8];
        _Block_object_dispose(&v12, 8);
      }

      v5 = [obj countByEnumeratingWithState:&v18 objects:v31 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(v29, 8);

  return v4;
}

BOOL __44__AMSStorageDatabase_allKeyValuesWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__AMSStorageDatabase_allKeyValuesWithError___block_invoke_2;
  v4[3] = &unk_1E73BC478;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  [v2 executeQuery:@"SELECT DISTINCT domain FROM data;" withResults:v4];

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

void __44__AMSStorageDatabase_allKeyValuesWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to query data in AMSStorage database. %{public}@", buf, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__AMSStorageDatabase_allKeyValuesWithError___block_invoke_69;
    v9[3] = &unk_1E73BC450;
    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    [a2 enumerateRowsUsingBlock:v9];
  }
}

void __44__AMSStorageDatabase_allKeyValuesWithError___block_invoke_69(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543618;
      v11 = objc_opt_class();
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to query data in AMSStorage database. %{public}@", &v10, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v9 = [a2 stringForColumnIndex:0];
    [*(*(*(a1 + 48) + 8) + 40) addObject:v9];
  }
}

BOOL __44__AMSStorageDatabase_allKeyValuesWithError___block_invoke_71(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__AMSStorageDatabase_allKeyValuesWithError___block_invoke_2_75;
  v5[3] = &unk_1E73BC4C8;
  v3 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = v3;
  [v2 executeQuery:@"SELECT key withResults:{value, valueType FROM data WHERE domain=? ORDER BY length(data.value) DESC;", v5}];

  return *(*(*(a1 + 48) + 8) + 40) != 0;
}

void __44__AMSStorageDatabase_allKeyValuesWithError___block_invoke_2_75(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v12 = objc_opt_class();
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to query data in AMSStorage database. %{public}@", buf, 0x16u);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a3);
  }

  else
  {
    [v5 bindString:a1[5] atPosition:1];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__AMSStorageDatabase_allKeyValuesWithError___block_invoke_76;
    v9[3] = &unk_1E73BC450;
    v9[4] = a1[4];
    v10 = *(a1 + 3);
    [v5 enumerateRowsUsingBlock:v9];
  }
}

void __44__AMSStorageDatabase_allKeyValuesWithError___block_invoke_76(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v20 = objc_opt_class();
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to query data in AMSStorage database. %{public}@", buf, 0x16u);
    }

    v9 = *(a1[5] + 8);
    v10 = v6;
    v11 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  else
  {
    v11 = [v5 stringForColumnIndex:0];
    v12 = [v5 intForColumnName:@"valueType"];
    v13 = [v5 dataForColumnName:@"value"];
    v14 = v12;
    v15 = a1[4];
    v16 = *(a1[5] + 8);
    obj = *(v16 + 40);
    v17 = [v15 _convertToValueWithData:v13 valueType:v14 error:&obj];
    objc_storeStrong((v16 + 40), obj);
    [*(*(a1[6] + 8) + 40) setObject:v17 forKey:v11];
  }
}

- (BOOL)connection:(id)a3 needsResetForCorruptionError:(id)a4 error:(id *)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [AMSKeepAlive keepAliveWithName:@"AMSStorage"];
  v30 = 0;
  v11 = [v8 truncateWithError:&v30];
  v12 = v30;
  if ((v11 & 1) == 0)
  {
    v29 = 0;
    [v8 closeWithError:&v29];
    v13 = v29;
    v14 = [(AMSStorageDatabase *)self _cachePath];
    v28 = 0;
    v15 = [AMSDatabaseHelper removeDatabaseForCachePath:v14 error:&v28];
    v16 = v28;

    if (!v15)
    {
      v20 = AMSErrorBySettingUnderlyingError(v12, v9);
      v18 = AMSErrorBySettingUnderlyingError(v16, v20);

      goto LABEL_7;
    }
  }

  v27 = 0;
  v17 = [AMSStorageDatabaseSchema createOrUpdateSchemaUsingConnection:v8 error:&v27];
  v18 = v27;
  if (v17)
  {
    v19 = 1;
    goto LABEL_12;
  }

LABEL_7:
  v21 = +[AMSLogConfig sharedConfig];
  if (!v21)
  {
    v21 = +[AMSLogConfig sharedConfig];
  }

  v22 = [v21 OSLogObject];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = objc_opt_class();
    v24 = AMSLogableError(v18);
    *buf = 138543618;
    v32 = v23;
    v33 = 2114;
    v34 = v24;
    _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_ERROR, "%{public}@: Failed to reset AMSStorage database after corruption. This is bad! Error = %{public}@", buf, 0x16u);
  }

  v19 = 0;
LABEL_12:
  [v10 invalidate];
  if (a5)
  {
    v25 = v18;
    *a5 = v18;
  }

  return v19;
}

- (id)_allKeysPrefixedByDomainWithError:(id *)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__65;
  v34 = __Block_byref_object_dispose__65;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__65;
  v28 = __Block_byref_object_dispose__65;
  v29 = objc_opt_new();
  v4 = objc_opt_new();
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __56__AMSStorageDatabase__allKeysPrefixedByDomainWithError___block_invoke;
  v23[3] = &unk_1E73BC4A0;
  v23[4] = self;
  v23[5] = &v30;
  v23[6] = &v24;
  [(AMSStorageDatabase *)self _performTransaction:v23];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v25[5];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v36 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = (v31 + 5);
        obj = v31[5];
        v11 = [(AMSStorageDatabase *)self allKeysForDomain:v9 withError:&obj];
        objc_storeStrong(v10, obj);
        if ([v11 count])
        {
          v12 = MEMORY[0x1E696AEC0];
          v13 = [v11 componentsJoinedByString:@""];;
          v14 = [v12 stringWithFormat:@"%@:%@", v9, v13];

          [v4 addObject:v11];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v19 objects:v36 count:16];
    }

    while (v6);
  }

  if (a3)
  {
    v15 = v31[5];
    if (v15)
    {
      *a3 = v15;
    }
  }

  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);

  return v4;
}

BOOL __56__AMSStorageDatabase__allKeysPrefixedByDomainWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__AMSStorageDatabase__allKeysPrefixedByDomainWithError___block_invoke_2;
  v4[3] = &unk_1E73BC478;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  [v2 executeQuery:@"SELECT DISTINCT domain FROM data;" withResults:v4];

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

void __56__AMSStorageDatabase__allKeysPrefixedByDomainWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to query data in AMSStorage database. %{public}@", buf, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__AMSStorageDatabase__allKeysPrefixedByDomainWithError___block_invoke_77;
    v9[3] = &unk_1E73BC450;
    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    [a2 enumerateRowsUsingBlock:v9];
  }
}

void __56__AMSStorageDatabase__allKeysPrefixedByDomainWithError___block_invoke_77(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543618;
      v11 = objc_opt_class();
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to query data in AMSStorage database. %{public}@", &v10, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v9 = [a2 stringForColumnIndex:0];
    [*(*(*(a1 + 48) + 8) + 40) addObject:v9];
  }
}

- (int64_t)_valueTypeForValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 2;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = 3;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = 4;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = 5;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v4 = 6;
          }

          else if ([v3 conformsToProtocol:&unk_1F0792658])
          {
            v4 = 7;
          }

          else
          {
            v4 = v3 == 0;
          }
        }
      }
    }
  }

  return v4;
}

- (id)_convertToDataWithValue:(id)a3 valueType:(int64_t)a4 error:(id *)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = v9;
  if (a4 > 3)
  {
    if (a4 > 5)
    {
      if (a4 != 6)
      {
        if (a4 == 7)
        {
          v11 = [v9 serializeToDictionary];
          v5 = [(AMSStorageDatabase *)self _dataForPlistValue:v11 error:a5];
        }

        goto LABEL_20;
      }
    }

    else if (a4 == 4)
    {
      v12 = [v9 dataUsingEncoding:4];
      goto LABEL_19;
    }

LABEL_12:
    v12 = [(AMSStorageDatabase *)self _dataForPlistValue:v9 error:a5];
LABEL_19:
    v5 = v12;
    goto LABEL_20;
  }

  if (a4 < 2)
  {
    v13 = +[AMSLogConfig sharedConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = objc_opt_class();
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Unsupported value can't be saved to the database. This path should not be reachable.", buf, 0xCu);
    }

    v5 = 0;
    goto LABEL_20;
  }

  if (a4 == 2)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v9];
    v5 = [v16 dataUsingEncoding:4];

    goto LABEL_20;
  }

  if (a4 == 3)
  {
    goto LABEL_12;
  }

LABEL_20:

  return v5;
}

- (id)_convertToValueWithData:(id)a3 valueType:(int64_t)a4 error:(id *)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (a4 > 3)
  {
    if (a4 > 5)
    {
      if (a4 != 6 && a4 != 7)
      {
        goto LABEL_20;
      }
    }

    else if (a4 == 4)
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v9 encoding:4];
      goto LABEL_12;
    }

LABEL_11:
    v10 = [(AMSStorageDatabase *)self _plistValueForData:v9 error:a5];
LABEL_12:
    v5 = v10;
    goto LABEL_20;
  }

  if (a4 < 2)
  {
    v11 = +[AMSLogConfig sharedConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = 138543362;
      v17 = objc_opt_class();
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Unsupported value should not have been saved to the database. This path should not be reachable.", &v16, 0xCu);
    }

    v5 = 0;
    goto LABEL_20;
  }

  if (a4 == 2)
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v9 encoding:4];
    v14 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v5 = [v14 numberFromString:v13];

    goto LABEL_20;
  }

  if (a4 == 3)
  {
    goto LABEL_11;
  }

LABEL_20:

  return v5;
}

- (id)_dataForPlistValue:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([MEMORY[0x1E696AE40] propertyList:v5 isValidForFormat:100])
  {
    v25 = 0;
    v11 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:100 options:0 error:&v25];
    v12 = v25;
    v18 = v12;
    if (v11)
    {
      v19 = v11;
    }

    else
    {
      v22 = AMSErrorWithFormat(3, @"Error serializing data", @"Error serializing plist data in the AMSStorage database: %@", v13, v14, v15, v16, v17, v12);
      if (a4)
      {
        v22 = v22;
        *a4 = v22;
      }
    }
  }

  else
  {
    v20 = AMSErrorWithFormat(3, @"AMSStorage invalid format", @"Trying to save invalid format in the AMSStorage database.", v6, v7, v8, v9, v10, v24);
    v18 = v20;
    if (a4)
    {
      v21 = v20;
      v11 = 0;
      *a4 = v18;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)_plistValueForData:(id)a3 error:(id *)a4
{
  v19 = 0;
  v20 = 0;
  v5 = [MEMORY[0x1E696AE40] propertyListWithData:a3 options:0 format:&v20 error:&v19];
  v6 = v19;
  v12 = v6;
  if (v5)
  {
    if (v20 == 100)
    {
      v13 = v5;
    }

    else
    {
      v15 = AMSErrorWithFormat(3, @"AMSStorage invalid format", @"Trying to read invalid format from the AMSStorage database.", v7, v8, v9, v10, v11, v18);

      if (a4)
      {
        v16 = v15;
        v13 = 0;
        *a4 = v15;
      }

      else
      {
        v13 = 0;
      }

      v12 = v15;
    }
  }

  else
  {
    v14 = AMSErrorWithFormat(3, @"Error deserializing data", @"Error deserializing plist data in the AMSStorage database: %@", v7, v8, v9, v10, v11, v6);
    if (a4)
    {
      v14 = v14;
      *a4 = v14;
    }

    v13 = 0;
  }

  return v13;
}

- (BOOL)_setValueData:(id)a3 valueType:(int64_t)a4 forKey:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__65;
  v26 = __Block_byref_object_dispose__65;
  v27 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __59__AMSStorageDatabase__setValueData_valueType_forKey_error___block_invoke;
  v17[3] = &unk_1E73BC540;
  v17[4] = self;
  v20 = &v22;
  v12 = v11;
  v18 = v12;
  v21 = a4;
  v13 = v10;
  v19 = v13;
  [(AMSStorageDatabase *)self _performTransaction:v17];
  v14 = v23[5];
  if (a6 && v14)
  {
    v14 = v14;
    *a6 = v14;
  }

  v15 = v14 == 0;

  _Block_object_dispose(&v22, 8);
  return v15;
}

uint64_t __59__AMSStorageDatabase__setValueData_valueType_forKey_error___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) connection];
  v3 = *(*(a1 + 56) + 8);
  obj = *(v3 + 40);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__AMSStorageDatabase__setValueData_valueType_forKey_error___block_invoke_2;
  v14[3] = &unk_1E73BC518;
  v4 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v5 = v4;
  v6 = *(a1 + 64);
  v15 = v5;
  v17 = v6;
  v16 = *(a1 + 48);
  v7 = [v2 executeStatement:@"INSERT OR REPLACE INTO data (domain error:key bindings:{valueType, value, lastModified) VALUES (?, ?, ?, ?, ?);", &obj, v14}];
  objc_storeStrong((v3 + 40), obj);

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = *(a1 + 40);
      v12 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138543874;
      v20 = v10;
      v21 = 2114;
      v22 = v11;
      v23 = 2114;
      v24 = v12;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Inserting data for key: %{public}@ failed with error: %{public}@", buf, 0x20u);
    }
  }

  return v7;
}

void __59__AMSStorageDatabase__setValueData_valueType_forKey_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 domain];
  [v5 bindString:v4 atPosition:1];

  [v5 bindString:*(a1 + 40) atPosition:2];
  [v5 bindInt:*(a1 + 56) atPosition:3];
  [v5 bindData:*(a1 + 48) atPosition:4];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [v5 bindDouble:5 atPosition:?];
}

- (void)_performTransaction:(id)a3
{
  v4 = a3;
  v5 = [AMSKeepAlive keepAliveWithName:@"AMSStorage"];
  v6 = [(AMSStorageDatabase *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__AMSStorageDatabase__performTransaction___block_invoke;
  block[3] = &unk_1E73B4378;
  v10 = v5;
  v11 = v4;
  block[4] = self;
  v7 = v5;
  v8 = v4;
  dispatch_sync(v6, block);
}

void __42__AMSStorageDatabase__performTransaction___block_invoke(id *a1)
{
  v2 = [a1[4] connection];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__AMSStorageDatabase__performTransaction___block_invoke_2;
  v5[3] = &unk_1E73B97C8;
  v6 = a1[6];
  [v2 performTransaction:v5];

  v3 = [a1[4] connection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__AMSStorageDatabase__performTransaction___block_invoke_3;
  v4[3] = &unk_1E73B97F0;
  v4[4] = a1[4];
  [v3 performTransaction:v4];

  [a1[5] invalidate];
}

uint64_t __42__AMSStorageDatabase__performTransaction___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) connection];
  v10 = 0;
  v2 = [v1 executeStatement:@"PRAGMA incremental_vacuum(100);" error:&v10];
  v3 = v10;

  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    v5 = +[AMSLogConfig sharedConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = AMSLogableError(v3);
      *buf = 138543618;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Incremental vacuum failed. Error = %{public}@", buf, 0x16u);
    }
  }

  return v2;
}

+ (id)sharedDatabaseWithDomain:(id)a3
{
  v3 = a3;
  v4 = [[AMSStorageDatabase alloc] initWithDomain:v3];

  return v4;
}

@end