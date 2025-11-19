@interface CKSQLiteUniquedObjectTable
- (id)willStoreReferenceToUnsavedEntry:(id)a3;
@end

@implementation CKSQLiteUniquedObjectTable

- (id)willStoreReferenceToUnsavedEntry:(id)a3
{
  v4 = a3;
  v6 = objc_msgSend_lookUpEntry_(self, v5, v4);
  if (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x1E696ABC0], v7, v6))
  {
    v12.receiver = self;
    v12.super_class = CKSQLiteUniquedObjectTable;
    v8 = [(CKSQLiteReferencedObjectTable *)&v12 willStoreReferenceToUnsavedEntry:v4];

    if (objc_msgSend_CKIsConstraintError_(MEMORY[0x1E696ABC0], v9, v8))
    {
      v6 = objc_msgSend_fetchPrimaryKeyForEntry_(self, v10, v4);
    }

    else
    {
      v6 = v8;
    }
  }

  return v6;
}

@end