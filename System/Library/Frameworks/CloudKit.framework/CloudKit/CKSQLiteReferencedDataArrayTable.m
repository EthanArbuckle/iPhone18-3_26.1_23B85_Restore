@interface CKSQLiteReferencedDataArrayTable
- (id)addData:(id)a3 toReferencedDataArray:(id)a4;
- (id)collectionWithElementsFromEntryEnumerator:(id)a3;
- (id)referentForDatabaseReferenceValue:(id)a3 error:(id *)a4;
- (void)enumerateCollection:(id)a3 block:(id)a4;
@end

@implementation CKSQLiteReferencedDataArrayTable

- (id)collectionWithElementsFromEntryEnumerator:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
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

- (void)enumerateCollection:(id)a3 block:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (objc_msgSend_count(v5, v7, v8))
  {
    v9 = objc_alloc_init(CKSQLiteReferencedDataArrayValueEntry);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_18867FBC8;
    v13[3] = &unk_1E70C0D90;
    v14 = v9;
    v15 = v6;
    v10 = v9;
    objc_msgSend_enumerateObjectsUsingBlock_(v5, v11, v13);
  }

  else
  {
    v12 = 0;
    (*(v6 + 2))(v6, 0, 0, &v12);
  }
}

- (id)referentForDatabaseReferenceValue:(id)a3 error:(id *)a4
{
  v6.receiver = self;
  v6.super_class = CKSQLiteReferencedDataArrayTable;
  v4 = [(CKSQLiteReferencedObjectTable *)&v6 referentForDatabaseReferenceValue:a3 error:a4];

  return v4;
}

- (id)addData:(id)a3 toReferencedDataArray:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(CKSQLiteReferencedDataArrayValueEntry);
  objc_msgSend_setDataBlob_(v8, v9, v7);

  v11 = objc_msgSend_addElement_toCollection_(self, v10, v8, v6);

  return v11;
}

@end