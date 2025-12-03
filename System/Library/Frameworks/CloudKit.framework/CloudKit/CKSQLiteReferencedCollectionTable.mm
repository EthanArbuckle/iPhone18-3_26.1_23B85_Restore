@interface CKSQLiteReferencedCollectionTable
- (Class)elementTableClass;
- (id)addElement:(id)element toCollection:(id)collection;
- (id)collectionWithElementsFromEntryEnumerator:(id)enumerator;
- (id)elementTable;
- (id)entryForReferent:(id)referent;
- (id)referenceWasDeleted:(id)deleted;
- (id)referentForEntry:(id)entry error:(id *)error;
- (id)tableForReferenceProperty:(id)property;
- (id)willStoreReferenceToUnsavedEntry:(id)entry;
- (unint64_t)collectionCount:(id *)count;
- (void)defaultSearchOrder:(id)order;
- (void)enumerateCollection:(id)collection block:(id)block;
- (void)willAddToGroup:(id)group;
@end

@implementation CKSQLiteReferencedCollectionTable

- (void)defaultSearchOrder:(id)order
{
  orderCopy = order;
  objc_msgSend_orderAscendingByProperty_(orderCopy, v3, @"collectionID");
  objc_msgSend_orderAscendingByProperty_(orderCopy, v4, @"elementIndex");
}

- (Class)elementTableClass
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, v2);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v5, v6, a2, self, @"CKSQLiteReferencedObjectTable.m", 263, @"Subclasses must implement");

  return 0;
}

- (void)willAddToGroup:(id)group
{
  groupCopy = group;
  v6 = objc_msgSend_elementTableClass(self, v4, v5);
  objc_msgSend_addSingletonInstanceToGroup_(v6, v7, groupCopy);
}

- (id)elementTable
{
  v4 = objc_msgSend_elementTableClass(self, a2, v2);
  v7 = objc_msgSend_tableGroup(self, v5, v6);
  v9 = objc_msgSend_singletonInstanceInGroup_(v4, v8, v7);

  return v9;
}

- (id)tableForReferenceProperty:(id)property
{
  propertyCopy = property;
  if (objc_msgSend_isEqualToString_(propertyCopy, v5, @"element"))
  {
    v8 = objc_msgSend_elementTable(self, v6, v7);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CKSQLiteReferencedCollectionTable;
    v8 = [(CKSQLiteTable *)&v11 tableForReferenceProperty:propertyCopy];
  }

  v9 = v8;

  return v9;
}

- (id)entryForReferent:(id)referent
{
  referentCopy = referent;
  v4 = objc_alloc_init(CKSQLiteReferencedCollectionTableEntry);
  objc_msgSend_setElementIndex_(v4, v5, &unk_1EFA85458);
  objc_msgSend_setCollection_(v4, v6, referentCopy);

  return v4;
}

- (id)collectionWithElementsFromEntryEnumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v6, v7);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CKSQLiteReferencedObjectTable.m", 291, @"subclasses must implement");

  exit(1);
}

- (id)referentForEntry:(id)entry error:(id *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  v21 = @"COLLECTION_ID";
  v6 = objc_msgSend_collectionID(entry, a2, entry);
  v22[0] = v6;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v22, &v21, 1);

  v10 = objc_msgSend_entriesWithValues_label_setupBlock_(self, v9, v8, off_1EA910E48, &unk_1EFA30090);
  objc_msgSend_setValueTransformBlock_(v10, v11, &unk_1EFA300B0);
  v13 = objc_msgSend_collectionWithElementsFromEntryEnumerator_(self, v12, v10);
  v16 = objc_msgSend_error(v10, v14, v15);
  v17 = v16;
  if (v16)
  {
    if (error)
    {
      v18 = v16;
      *error = v17;
    }

    v13 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)enumerateCollection:(id)collection block:(id)block
{
  collectionCopy = collection;
  blockCopy = block;
  v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v9, v10);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CKSQLiteReferencedObjectTable.m", 320, @"subclasses must implement");

  exit(1);
}

- (id)willStoreReferenceToUnsavedEntry:(id)entry
{
  entryCopy = entry;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_1883EE1FC;
  v35 = sub_1883EF7A4;
  v36 = 0;
  obj = 0;
  v6 = objc_msgSend_maximumValueOfProperty_label_error_(self, v5, @"collectionID", off_1EA910E60, &obj);
  objc_storeStrong(&v36, obj);
  v7 = MEMORY[0x1E696AD98];
  v10 = objc_msgSend_unsignedLongLongValue(v6, v8, v9);
  v12 = objc_msgSend_numberWithUnsignedLongLong_(v7, v11, v10 + 1);
  objc_msgSend_setCollectionID_(entryCopy, v13, v12);
  v16 = objc_msgSend_collection(entryCopy, v14, v15);
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = sub_18867ECB8;
  v26 = &unk_1E70C0D40;
  v17 = entryCopy;
  selfCopy = self;
  v29 = &v31;
  v27 = v17;
  objc_msgSend_enumerateCollection_block_(self, v18, v16, &v23);

  objc_msgSend_setElement_(v17, v19, 0, v23, v24, v25, v26);
  objc_msgSend_setElementIndex_(v17, v20, &unk_1EFA85458);
  v21 = v32[5];

  _Block_object_dispose(&v31, 8);

  return v21;
}

- (id)addElement:(id)element toCollection:(id)collection
{
  elementCopy = element;
  collectionCopy = collection;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_18867EE60;
  v13[3] = &unk_1E70C09E0;
  v14 = collectionCopy;
  selfCopy = self;
  v16 = elementCopy;
  v17 = off_1EA910E78;
  v8 = elementCopy;
  v9 = collectionCopy;
  v11 = objc_msgSend_performInTransaction_(self, v10, v13);

  return v11;
}

- (id)referenceWasDeleted:(id)deleted
{
  v18[1] = *MEMORY[0x1E69E9840];
  v16 = 0;
  v4 = objc_msgSend_entryWithPrimaryKey_fetchProperties_label_error_(self, a2, deleted, &unk_1EFA85D70, off_1ED4B5EE8, &v16);
  v7 = v16;
  if (v4)
  {
    v17 = @"COLLECTIONID";
    v8 = objc_msgSend_collectionID(v4, v5, v6);
    v18[0] = v8;
    v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, v18, &v17, 1);

    v15 = v7;
    objc_msgSend_deleteEntriesMatching_label_error_predicate_(self, v11, v10, off_1ED4B5F00, &v15, &unk_1EFA300F0);
    v12 = v15;

    v7 = v12;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

- (unint64_t)collectionCount:(id *)count
{
  v3 = objc_msgSend_fetchDistinctProperties_label_error_(self, a2, &unk_1EFA85D88, off_1EA910E90, count);
  v6 = objc_msgSend_count(v3, v4, v5);

  return v6;
}

@end