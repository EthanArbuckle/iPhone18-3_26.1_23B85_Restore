@interface CKDatabaseOperation
- (BOOL)CKOperationShouldRun:(id *)a3;
- (BOOL)zoneIDHasCorrectDatabaseScope:(id)a3 error:(id *)a4;
- (CKDatabase)database;
- (id)databaseIfNotNil;
- (int64_t)databaseScope;
- (void)fillFromOperationInfo:(id)a3;
- (void)fillOutOperationInfo:(id)a3;
- (void)setDatabase:(CKDatabase *)database;
@end

@implementation CKDatabaseOperation

- (id)databaseIfNotNil
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_database;
  objc_sync_exit(v2);

  return v3;
}

- (CKDatabase)database
{
  v2 = self;
  objc_sync_enter(v2);
  database = v2->_database;
  if (!database)
  {
    v6 = objc_msgSend_configuration(v2, v3, v4);
    v9 = objc_msgSend_container(v6, v7, v8);
    v12 = objc_msgSend_privateCloudDatabase(v9, v10, v11);
    v13 = v2->_database;
    v2->_database = v12;

    database = v2->_database;
  }

  v14 = database;
  objc_sync_exit(v2);

  return v14;
}

- (int64_t)databaseScope
{
  v3 = objc_msgSend_database(self, a2, v2);
  v6 = objc_msgSend_databaseScope(v3, v4, v5);

  return v6;
}

- (void)setDatabase:(CKDatabase *)database
{
  v13 = database;
  v5 = self;
  objc_sync_enter(v5);
  objc_storeStrong(&v5->_database, database);
  v8 = objc_msgSend_container(v13, v6, v7);
  v11 = objc_msgSend_configuration(v5, v9, v10);
  objc_msgSend_setContainer_(v11, v12, v8);

  objc_sync_exit(v5);
}

- (void)fillOutOperationInfo:(id)a3
{
  v12.receiver = self;
  v12.super_class = CKDatabaseOperation;
  v4 = a3;
  [(CKOperation *)&v12 fillOutOperationInfo:v4];
  v7 = objc_msgSend_database(self, v5, v6, v12.receiver, v12.super_class);
  v10 = objc_msgSend_scope(v7, v8, v9);
  objc_msgSend_setDatabaseScope_(v4, v11, v10);
}

- (void)fillFromOperationInfo:(id)a3
{
  v17.receiver = self;
  v17.super_class = CKDatabaseOperation;
  v4 = a3;
  [(CKOperation *)&v17 fillFromOperationInfo:v4];
  v7 = objc_msgSend_databaseScope(v4, v5, v6, v17.receiver, v17.super_class);

  v10 = objc_msgSend_configuration(self, v8, v9);
  v13 = objc_msgSend_container(v10, v11, v12);
  v15 = objc_msgSend_databaseWithDatabaseScope_(v13, v14, v7);
  objc_msgSend_setDatabase_(self, v16, v15);
}

- (BOOL)zoneIDHasCorrectDatabaseScope:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9 = v6;
  if (v6 && objc_msgSend_databaseScope(v6, v7, v8) && (v12 = objc_msgSend_databaseScope(v9, v10, v11), v12 != objc_msgSend_databaseScope(self, v13, v14)))
  {
    if (a4)
    {
      v18 = objc_msgSend_databaseScope(v9, v15, v16);
      v19 = CKDatabaseScopeString(v18);
      v22 = objc_msgSend_databaseScope(self, v20, v21);
      v23 = CKDatabaseScopeString(v22);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *a4 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v26, @"CKErrorDomain", 12, @"zoneID had database scope %@, expected %@ in %@: %@", v19, v23, v25, v9);

      LOBYTE(a4) = 0;
    }
  }

  else
  {
    LOBYTE(a4) = 1;
  }

  return a4;
}

- (BOOL)CKOperationShouldRun:(id *)a3
{
  v5 = objc_msgSend_database(self, a2, a3);

  if (!v5)
  {
    if (a3)
    {
      v20 = objc_msgSend_operationID(self, v6, v7);
      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v22, @"CKErrorDomain", 12, @"There is no database set on operation %@.", v20);
      goto LABEL_7;
    }

    return 0;
  }

  v8 = objc_msgSend_configuration(self, v6, v7);
  v11 = objc_msgSend_container(v8, v9, v10);
  v14 = objc_msgSend_database(self, v12, v13);
  v17 = objc_msgSend_container(v14, v15, v16);

  if (v11 != v17)
  {
    if (a3)
    {
      v20 = objc_msgSend_operationID(self, v18, v19);
      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v21, @"CKErrorDomain", 12, @"The container set on operation %@ does not match the container of the database set on that operation.", v20);
      *a3 = LABEL_7:;

      return 0;
    }

    return 0;
  }

  v24.receiver = self;
  v24.super_class = CKDatabaseOperation;
  return [(CKOperation *)&v24 CKOperationShouldRun:a3];
}

@end