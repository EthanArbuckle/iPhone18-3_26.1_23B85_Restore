@interface CKSQLiteReferencedObjectTable
- (BOOL)isNotFoundEntry:(id)a3;
- (BOOL)shouldLogError:(id)a3;
- (id)databaseReferenceIDForSavedReferent:(id)a3 error:(id *)a4;
- (id)databaseReferenceIDForSearchingForReferent:(id)a3 error:(id *)a4;
- (id)insertObject:(id)a3;
- (id)lookUpEntry:(id)a3;
- (id)referenceWasDeleted:(id)a3;
- (id)referencedObjectTriggerSQLForProperty:(id)a3 inTable:(id)a4;
- (id)referentForDatabaseReferenceValue:(id)a3 error:(id *)a4;
@end

@implementation CKSQLiteReferencedObjectTable

- (BOOL)isNotFoundEntry:(id)a3
{
  v3 = objc_msgSend_primaryKeyValueInEntry_(self, a2, a3);
  isEqualToNumber = objc_msgSend_isEqualToNumber_(v3, v4, &unk_1EFA853C8);

  return isEqualToNumber;
}

- (id)insertObject:(id)a3
{
  v4 = a3;
  v6 = objc_msgSend_primaryKeyValueInEntry_(self, v5, v4);
  isEqualToNumber = objc_msgSend_isEqualToNumber_(v6, v7, &unk_1EFA853C8);

  if (isEqualToNumber)
  {
    objc_msgSend_setPrimaryKeyValue_inEntry_(self, v9, 0, v4);
  }

  v12.receiver = self;
  v12.super_class = CKSQLiteReferencedObjectTable;
  v10 = [(CKSQLiteTable *)&v12 insertObject:v4];

  return v10;
}

- (id)referencedObjectTriggerSQLForProperty:(id)a3 inTable:(id)a4
{
  v6 = a3;
  v9 = objc_msgSend_dbTableName(a4, v7, v8);
  v12 = objc_msgSend_dbTableName(self, v10, v11);
  v13 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @"%@_%@", v9, v6);
  objc_msgSend_appendFormat_(v13, v16, @" CREATE TRIGGER '%@_update_check' BEFORE UPDATE ON '%@' WHEN OLD.%@ IS NOT NULL AND OLD.%@ != NEW.%@ BEGIN ", v15, v9, v6, v6, v6);
  objc_msgSend_appendFormat_(v13, v17, @"SELECT RAISE(FAIL, Updating non-nil reference property %@ in %@ is not allowed); ", v6, v12);

  objc_msgSend_appendString_(v13, v18, @"END;");

  return v13;
}

- (id)lookUpEntry:(id)a3
{
  v5 = a3;
  v7 = objc_msgSend_primaryKeyValueInEntry_(self, v6, v5);
  v9 = v7;
  if (v7)
  {
    if (objc_msgSend_isEqualToNumber_(v7, v8, &unk_1EFA853C8))
    {
      v11 = objc_msgSend_noMatchingDatabaseRowErrorIn_(CKPrettyError, v10, a2);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = objc_msgSend_fetchPrimaryKeyForEntry_(self, v8, v5);
    if (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x1E696ABC0], v12, v11))
    {
      objc_msgSend_setPrimaryKeyValue_inEntry_(self, v13, &unk_1EFA853C8, v5);
    }
  }

  return v11;
}

- (id)databaseReferenceIDForSearchingForReferent:(id)a3 error:(id *)a4
{
  v6 = objc_msgSend_entryForReferent_(self, a2, a3);
  v8 = objc_msgSend_lookUpEntry_(self, v7, v6);
  v10 = v8;
  if (v8)
  {
    if (a4)
    {
      v11 = v8;
      v12 = 0;
      *a4 = v10;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = objc_msgSend_primaryKeyValueInEntry_(self, v9, v6);
  }

  return v12;
}

- (id)databaseReferenceIDForSavedReferent:(id)a3 error:(id *)a4
{
  v6 = objc_msgSend_entryForReferent_(self, a2, a3);
  v8 = objc_msgSend_lookUpEntry_(self, v7, v6);
  if (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x1E696ABC0], v9, v8))
  {
    v11 = objc_msgSend_willStoreReferenceToUnsavedEntry_(self, v10, v6);

    v8 = v11;
  }

  if (v8)
  {
    if (a4)
    {
      v12 = v8;
      v13 = 0;
      *a4 = v8;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = objc_msgSend_primaryKeyValueInEntry_(self, v10, v6);
  }

  return v13;
}

- (id)referentForDatabaseReferenceValue:(id)a3 error:(id *)a4
{
  v7 = objc_msgSend_entryWithPrimaryKey_error_(self, a2, a3);
  if (v7)
  {
    v8 = objc_msgSend_referentForEntry_error_(self, v6, v7, a4);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)referenceWasDeleted:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_18867E150;
  v9[3] = &unk_1E70BC178;
  v9[4] = self;
  v10 = v4;
  v5 = v4;
  v7 = objc_msgSend_performInTransaction_(self, v6, v9);

  return v7;
}

- (BOOL)shouldLogError:(id)a3
{
  if (objc_msgSend_CKIsForeignKeyConstraintError_(MEMORY[0x1E696ABC0], a2, a3))
  {
    return objc_msgSend_isDeletingReferent(self, v4, v5) ^ 1;
  }

  else
  {
    return 1;
  }
}

@end