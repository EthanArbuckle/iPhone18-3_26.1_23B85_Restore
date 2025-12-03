@interface CKSQLiteUniquedObjectTable
- (id)willStoreReferenceToUnsavedEntry:(id)entry;
@end

@implementation CKSQLiteUniquedObjectTable

- (id)willStoreReferenceToUnsavedEntry:(id)entry
{
  entryCopy = entry;
  v6 = objc_msgSend_lookUpEntry_(self, v5, entryCopy);
  if (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x1E696ABC0], v7, v6))
  {
    v12.receiver = self;
    v12.super_class = CKSQLiteUniquedObjectTable;
    v8 = [(CKSQLiteReferencedObjectTable *)&v12 willStoreReferenceToUnsavedEntry:entryCopy];

    if (objc_msgSend_CKIsConstraintError_(MEMORY[0x1E696ABC0], v9, v8))
    {
      v6 = objc_msgSend_fetchPrimaryKeyForEntry_(self, v10, entryCopy);
    }

    else
    {
      v6 = v8;
    }
  }

  return v6;
}

@end