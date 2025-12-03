@interface CKSQLiteReferencedObjectTable
- (BOOL)isNotFoundEntry:(id)entry;
- (BOOL)shouldLogError:(id)error;
- (id)databaseReferenceIDForSavedReferent:(id)referent error:(id *)error;
- (id)databaseReferenceIDForSearchingForReferent:(id)referent error:(id *)error;
- (id)insertObject:(id)object;
- (id)lookUpEntry:(id)entry;
- (id)referenceWasDeleted:(id)deleted;
- (id)referencedObjectTriggerSQLForProperty:(id)property inTable:(id)table;
- (id)referentForDatabaseReferenceValue:(id)value error:(id *)error;
@end

@implementation CKSQLiteReferencedObjectTable

- (BOOL)isNotFoundEntry:(id)entry
{
  v3 = objc_msgSend_primaryKeyValueInEntry_(self, a2, entry);
  isEqualToNumber = objc_msgSend_isEqualToNumber_(v3, v4, &unk_1EFA853C8);

  return isEqualToNumber;
}

- (id)insertObject:(id)object
{
  objectCopy = object;
  v6 = objc_msgSend_primaryKeyValueInEntry_(self, v5, objectCopy);
  isEqualToNumber = objc_msgSend_isEqualToNumber_(v6, v7, &unk_1EFA853C8);

  if (isEqualToNumber)
  {
    objc_msgSend_setPrimaryKeyValue_inEntry_(self, v9, 0, objectCopy);
  }

  v12.receiver = self;
  v12.super_class = CKSQLiteReferencedObjectTable;
  v10 = [(CKSQLiteTable *)&v12 insertObject:objectCopy];

  return v10;
}

- (id)referencedObjectTriggerSQLForProperty:(id)property inTable:(id)table
{
  propertyCopy = property;
  v9 = objc_msgSend_dbTableName(table, v7, v8);
  v12 = objc_msgSend_dbTableName(self, v10, v11);
  v13 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @"%@_%@", v9, propertyCopy);
  objc_msgSend_appendFormat_(v13, v16, @" CREATE TRIGGER '%@_update_check' BEFORE UPDATE ON '%@' WHEN OLD.%@ IS NOT NULL AND OLD.%@ != NEW.%@ BEGIN ", v15, v9, propertyCopy, propertyCopy, propertyCopy);
  objc_msgSend_appendFormat_(v13, v17, @"SELECT RAISE(FAIL, Updating non-nil reference property %@ in %@ is not allowed); ", propertyCopy, v12);

  objc_msgSend_appendString_(v13, v18, @"END;");

  return v13;
}

- (id)lookUpEntry:(id)entry
{
  entryCopy = entry;
  v7 = objc_msgSend_primaryKeyValueInEntry_(self, v6, entryCopy);
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
    v11 = objc_msgSend_fetchPrimaryKeyForEntry_(self, v8, entryCopy);
    if (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x1E696ABC0], v12, v11))
    {
      objc_msgSend_setPrimaryKeyValue_inEntry_(self, v13, &unk_1EFA853C8, entryCopy);
    }
  }

  return v11;
}

- (id)databaseReferenceIDForSearchingForReferent:(id)referent error:(id *)error
{
  v6 = objc_msgSend_entryForReferent_(self, a2, referent);
  v8 = objc_msgSend_lookUpEntry_(self, v7, v6);
  v10 = v8;
  if (v8)
  {
    if (error)
    {
      v11 = v8;
      v12 = 0;
      *error = v10;
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

- (id)databaseReferenceIDForSavedReferent:(id)referent error:(id *)error
{
  v6 = objc_msgSend_entryForReferent_(self, a2, referent);
  v8 = objc_msgSend_lookUpEntry_(self, v7, v6);
  if (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x1E696ABC0], v9, v8))
  {
    v11 = objc_msgSend_willStoreReferenceToUnsavedEntry_(self, v10, v6);

    v8 = v11;
  }

  if (v8)
  {
    if (error)
    {
      v12 = v8;
      v13 = 0;
      *error = v8;
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

- (id)referentForDatabaseReferenceValue:(id)value error:(id *)error
{
  v7 = objc_msgSend_entryWithPrimaryKey_error_(self, a2, value);
  if (v7)
  {
    v8 = objc_msgSend_referentForEntry_error_(self, v6, v7, error);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)referenceWasDeleted:(id)deleted
{
  deletedCopy = deleted;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_18867E150;
  v9[3] = &unk_1E70BC178;
  v9[4] = self;
  v10 = deletedCopy;
  v5 = deletedCopy;
  v7 = objc_msgSend_performInTransaction_(self, v6, v9);

  return v7;
}

- (BOOL)shouldLogError:(id)error
{
  if (objc_msgSend_CKIsForeignKeyConstraintError_(MEMORY[0x1E696ABC0], a2, error))
  {
    return objc_msgSend_isDeletingReferent(self, v4, v5) ^ 1;
  }

  else
  {
    return 1;
  }
}

@end