@interface CKSQLiteDatabaseRegistry
- (id)databaseIDForDatabase:(id)database error:(id *)error;
- (id)databaseWithID:(id)d;
- (id)entryForDatabase:(id)database refresh:(BOOL)refresh error:(id *)error;
- (id)registerDatabase:(id)database;
@end

@implementation CKSQLiteDatabaseRegistry

- (id)registerDatabase:(id)database
{
  databaseCopy = database;
  v5 = objc_alloc_init(CKSQLiteDatabaseRegistryEntry);
  v8 = objc_msgSend_databaseDirectory(databaseCopy, v6, v7);
  objc_msgSend_setDatabaseDirectory_(v5, v9, v8);

  v12 = objc_msgSend_uuid(databaseCopy, v10, v11);

  objc_msgSend_setDatabaseUUID_(v5, v13, v12);
  v15 = objc_msgSend_insertObject_(self, v14, v5);

  return v15;
}

- (id)databaseWithID:(id)d
{
  v4 = objc_msgSend_entryWithPrimaryKey_error_(self, a2, d, 0);
  v7 = v4;
  if (!v4)
  {
    v13 = 0;
    goto LABEL_12;
  }

  v10 = objc_msgSend_databaseDirectory(v4, v5, v6);
  if (v10)
  {
    v11 = objc_msgSend_db(self, v8, v9);
    v13 = objc_msgSend_databaseInDirectory_registryDatabase_options_error_(CKSQLiteDatabase, v12, v10, v11, 1, 0);

    if (!v13)
    {
      goto LABEL_9;
    }

LABEL_7:
    v16 = objc_msgSend_databaseUUID(v7, v14, v15);
    v19 = objc_msgSend_uuid(v13, v17, v18);
    isEqual = objc_msgSend_isEqual_(v16, v20, v19);

    if ((isEqual & 1) == 0)
    {

      v24 = objc_msgSend_tableGroup(self, v22, v23);
      objc_msgSend_databaseWasRemoved_(v24, v25, v7);

      v27 = objc_msgSend_deleteObject_(self, v26, v7);
      v13 = 0;
    }

    goto LABEL_9;
  }

  v13 = objc_msgSend_db(self, v8, v9);
  if (v13)
  {
    goto LABEL_7;
  }

LABEL_9:
  v28 = objc_msgSend_databaseManagerData(v13, v14, v15);

  if (!v28)
  {
    objc_msgSend_setDatabaseManagerData_(v13, v29, v7);
  }

LABEL_12:

  return v13;
}

- (id)entryForDatabase:(id)database refresh:(BOOL)refresh error:(id *)error
{
  refreshCopy = refresh;
  v34[1] = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  objc_msgSend_db(self, v9, v10);

  v13 = objc_msgSend_databaseManagerData(databaseCopy, v11, v12);
  if (v13)
  {
    v16 = v13;
    if (refreshCopy)
    {
      v17 = objc_msgSend_fetchAllProperties_(self, v14, v13);
    }
  }

  else
  {
    v18 = objc_msgSend_uuid(databaseCopy, v14, v15);
    v33 = @"UUID";
    v34[0] = v18;
    v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v19, v34, &v33, 1);
    v16 = objc_msgSend_entryWithValues_label_error_setupBlock_(self, v21, v20, off_1EA910C20, 0, &unk_1EFA2FFF0);
    if (!v16)
    {
      v16 = objc_alloc_init(CKSQLiteDatabaseRegistryEntry);
      v25 = objc_msgSend_databaseDirectory(databaseCopy, v23, v24);
      objc_msgSend_setDatabaseDirectory_(v16, v26, v25);

      objc_msgSend_setDatabaseUUID_(v16, v27, v18);
      v29 = objc_msgSend_insertObject_(self, v28, v16);
      if (v29)
      {

        if (error)
        {
          v30 = v29;
          v16 = 0;
          *error = v29;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    objc_msgSend_setDatabaseManagerData_(databaseCopy, v22, v16);
  }

  v31 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)databaseIDForDatabase:(id)database error:(id *)error
{
  databaseCopy = database;
  objc_msgSend_db(self, v7, v8);

  v10 = objc_msgSend_entryForDatabase_refresh_error_(self, v9, databaseCopy, 0, error);

  v13 = objc_msgSend_databaseID(v10, v11, v12);

  return v13;
}

@end