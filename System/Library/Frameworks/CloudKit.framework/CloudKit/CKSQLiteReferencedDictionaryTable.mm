@interface CKSQLiteReferencedDictionaryTable
- (id)collectionWithElementsFromEntryEnumerator:(id)enumerator;
- (void)enumerateCollection:(id)collection block:(id)block;
@end

@implementation CKSQLiteReferencedDictionaryTable

- (id)collectionWithElementsFromEntryEnumerator:(id)enumerator
{
  v26 = *MEMORY[0x1E69E9840];
  enumeratorCopy = enumerator;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = enumeratorCopy;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v21, v25, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = objc_msgSend_value(v13, v8, v9, v21);
        v17 = objc_msgSend_key(v13, v15, v16);
        objc_msgSend_setObject_forKey_(v4, v18, v14, v17);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v21, v25, 16);
    }

    while (v10);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)enumerateCollection:(id)collection block:(id)block
{
  collectionCopy = collection;
  blockCopy = block;
  if (objc_msgSend_count(collectionCopy, v7, v8))
  {
    v11 = objc_msgSend_allKeys(collectionCopy, v9, v10);
    v13 = objc_msgSend_sortedArrayUsingSelector_(v11, v12, sel_compare_);

    v14 = objc_alloc_init(CKSQLiteReferencedDictionaryValueEntry);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_18867F800;
    v18[3] = &unk_1E70C0D68;
    v19 = v14;
    v20 = collectionCopy;
    v21 = blockCopy;
    v15 = v14;
    objc_msgSend_enumerateObjectsUsingBlock_(v13, v16, v18);
  }

  else
  {
    v17 = 0;
    (*(blockCopy + 2))(blockCopy, 0, 0, &v17);
  }
}

@end