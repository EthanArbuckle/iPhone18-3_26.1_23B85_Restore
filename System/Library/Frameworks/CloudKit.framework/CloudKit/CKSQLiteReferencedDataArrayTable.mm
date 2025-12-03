@interface CKSQLiteReferencedDataArrayTable
- (id)addData:(id)data toReferencedDataArray:(id)array;
- (id)collectionWithElementsFromEntryEnumerator:(id)enumerator;
- (id)referentForDatabaseReferenceValue:(id)value error:(id *)error;
- (void)enumerateCollection:(id)collection block:(id)block;
@end

@implementation CKSQLiteReferencedDataArrayTable

- (id)collectionWithElementsFromEntryEnumerator:(id)enumerator
{
  v22 = *MEMORY[0x1E69E9840];
  enumeratorCopy = enumerator;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = enumeratorCopy;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v17, v21, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = objc_msgSend_dataBlob(*(*(&v17 + 1) + 8 * i), v8, v9, v17);
        objc_msgSend_addObject_(v4, v14, v13);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v17, v21, 16);
    }

    while (v10);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)enumerateCollection:(id)collection block:(id)block
{
  collectionCopy = collection;
  blockCopy = block;
  if (objc_msgSend_count(collectionCopy, v7, v8))
  {
    v9 = objc_alloc_init(CKSQLiteReferencedDataArrayValueEntry);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_18867FBC8;
    v13[3] = &unk_1E70C0D90;
    v14 = v9;
    v15 = blockCopy;
    v10 = v9;
    objc_msgSend_enumerateObjectsUsingBlock_(collectionCopy, v11, v13);
  }

  else
  {
    v12 = 0;
    (*(blockCopy + 2))(blockCopy, 0, 0, &v12);
  }
}

- (id)referentForDatabaseReferenceValue:(id)value error:(id *)error
{
  v6.receiver = self;
  v6.super_class = CKSQLiteReferencedDataArrayTable;
  v4 = [(CKSQLiteReferencedObjectTable *)&v6 referentForDatabaseReferenceValue:value error:error];

  return v4;
}

- (id)addData:(id)data toReferencedDataArray:(id)array
{
  arrayCopy = array;
  dataCopy = data;
  v8 = objc_alloc_init(CKSQLiteReferencedDataArrayValueEntry);
  objc_msgSend_setDataBlob_(v8, v9, dataCopy);

  v11 = objc_msgSend_addElement_toCollection_(self, v10, v8, arrayCopy);

  return v11;
}

@end