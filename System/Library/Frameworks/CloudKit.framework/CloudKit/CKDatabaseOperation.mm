@interface CKDatabaseOperation
- (BOOL)CKOperationShouldRun:(id *)run;
- (BOOL)zoneIDHasCorrectDatabaseScope:(id)scope error:(id *)error;
- (CKDatabase)database;
- (id)databaseIfNotNil;
- (int64_t)databaseScope;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)setDatabase:(CKDatabase *)database;
@end

@implementation CKDatabaseOperation

- (id)databaseIfNotNil
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_database;
  objc_sync_exit(selfCopy);

  return v3;
}

- (CKDatabase)database
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  database = selfCopy->_database;
  if (!database)
  {
    v6 = objc_msgSend_configuration(selfCopy, v3, v4);
    v9 = objc_msgSend_container(v6, v7, v8);
    v12 = objc_msgSend_privateCloudDatabase(v9, v10, v11);
    v13 = selfCopy->_database;
    selfCopy->_database = v12;

    database = selfCopy->_database;
  }

  v14 = database;
  objc_sync_exit(selfCopy);

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_database, database);
  v8 = objc_msgSend_container(v13, v6, v7);
  v11 = objc_msgSend_configuration(selfCopy, v9, v10);
  objc_msgSend_setContainer_(v11, v12, v8);

  objc_sync_exit(selfCopy);
}

- (void)fillOutOperationInfo:(id)info
{
  v12.receiver = self;
  v12.super_class = CKDatabaseOperation;
  infoCopy = info;
  [(CKOperation *)&v12 fillOutOperationInfo:infoCopy];
  v7 = objc_msgSend_database(self, v5, v6, v12.receiver, v12.super_class);
  v10 = objc_msgSend_scope(v7, v8, v9);
  objc_msgSend_setDatabaseScope_(infoCopy, v11, v10);
}

- (void)fillFromOperationInfo:(id)info
{
  v17.receiver = self;
  v17.super_class = CKDatabaseOperation;
  infoCopy = info;
  [(CKOperation *)&v17 fillFromOperationInfo:infoCopy];
  v7 = objc_msgSend_databaseScope(infoCopy, v5, v6, v17.receiver, v17.super_class);

  v10 = objc_msgSend_configuration(self, v8, v9);
  v13 = objc_msgSend_container(v10, v11, v12);
  v15 = objc_msgSend_databaseWithDatabaseScope_(v13, v14, v7);
  objc_msgSend_setDatabase_(self, v16, v15);
}

- (BOOL)zoneIDHasCorrectDatabaseScope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  v9 = scopeCopy;
  if (scopeCopy && objc_msgSend_databaseScope(scopeCopy, v7, v8) && (v12 = objc_msgSend_databaseScope(v9, v10, v11), v12 != objc_msgSend_databaseScope(self, v13, v14)))
  {
    if (error)
    {
      v18 = objc_msgSend_databaseScope(v9, v15, v16);
      v19 = CKDatabaseScopeString(v18);
      v22 = objc_msgSend_databaseScope(self, v20, v21);
      v23 = CKDatabaseScopeString(v22);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *error = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v26, @"CKErrorDomain", 12, @"zoneID had database scope %@, expected %@ in %@: %@", v19, v23, v25, v9);

      LOBYTE(error) = 0;
    }
  }

  else
  {
    LOBYTE(error) = 1;
  }

  return error;
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  v5 = objc_msgSend_database(self, a2, run);

  if (!v5)
  {
    if (run)
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
    if (run)
    {
      v20 = objc_msgSend_operationID(self, v18, v19);
      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v21, @"CKErrorDomain", 12, @"The container set on operation %@ does not match the container of the database set on that operation.", v20);
      *run = LABEL_7:;

      return 0;
    }

    return 0;
  }

  v24.receiver = self;
  v24.super_class = CKDatabaseOperation;
  return [(CKOperation *)&v24 CKOperationShouldRun:run];
}

@end