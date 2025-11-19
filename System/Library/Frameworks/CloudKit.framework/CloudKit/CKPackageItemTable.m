@interface CKPackageItemTable
+ (id)dbProperties;
- (id)copyItemsFromPackage:(id)a3 itemTable:(id)a4;
- (id)enumerateItemsInSection:(unint64_t)a3 withBlock:(id)a4;
- (id)resetSectionPlanning;
- (id)updateItem:(id)a3 withSignature:(id)a4 size:(unint64_t)a5 paddedSize:(unint64_t)a6 itemID:(unint64_t)a7 sectionIndex:(id)a8;
- (id)updateItemsAtIndexes:(id)a3 fileURLs:(id)a4;
- (unint64_t)paddedSizeOfSectionAtIndex:(unint64_t)a3 error:(id *)a4;
- (unint64_t)sizeOfSectionAtIndex:(unint64_t)a3 error:(id *)a4;
@end

@implementation CKPackageItemTable

+ (id)dbProperties
{
  v6[12] = *MEMORY[0x1E69E9840];
  v5[0] = @"packageItemID";
  v5[1] = @"itemID";
  v6[0] = &unk_1EFA84F30;
  v6[1] = &unk_1EFA84F60;
  v5[2] = @"fileURL";
  v5[3] = @"signature";
  v6[2] = &unk_1EFA84F78;
  v6[3] = &unk_1EFA84F48;
  v5[4] = @"deviceID";
  v5[5] = @"fileID";
  v6[4] = &unk_1EFA84F90;
  v6[5] = &unk_1EFA84F90;
  v5[6] = @"generationID";
  v5[7] = @"size";
  v6[6] = &unk_1EFA84F90;
  v6[7] = &unk_1EFA84F60;
  v5[8] = @"paddedSize";
  v5[9] = @"offset";
  v6[8] = &unk_1EFA84F60;
  v6[9] = &unk_1EFA84F60;
  v5[10] = @"sectionIndex";
  v5[11] = @"itemTypeHint";
  v6[10] = &unk_1EFA84FA8;
  v6[11] = &unk_1EFA84FC0;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v6, v5, 12);
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)resetSectionPlanning
{
  v12[5] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(CKPackageItem);
  v12[0] = @"signature";
  v12[1] = @"itemID";
  v12[2] = @"size";
  v12[3] = @"paddedSize";
  v12[4] = @"sectionIndex";
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v4, v12, 5);
  v11 = 0;
  objc_msgSend_setProperties_valuesToStore_inEntriesMatching_label_error_predicate_(self, v6, v5, v3, 0, 0, &v11, 0);
  v7 = v11;
  v8 = v11;

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

- (unint64_t)sizeOfSectionAtIndex:(unint64_t)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = @"SECTION";
  v6 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], a2, a3);
  v14[0] = v6;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v14, &v13, 1);

  v10 = objc_msgSend_sumOfProperty_inEntriesMatching_label_error_predicate_(self, v9, @"size", v8, off_1EA90EB08, a4, &unk_1EFA2E4A8);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (unint64_t)paddedSizeOfSectionAtIndex:(unint64_t)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = @"SECTION";
  v6 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], a2, a3);
  v14[0] = v6;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v14, &v13, 1);

  v10 = objc_msgSend_sumOfProperty_inEntriesMatching_label_error_predicate_(self, v9, @"paddedSize", v8, off_1EA90EB20, a4, &unk_1EFA2E4C8);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)updateItem:(id)a3 withSignature:(id)a4 size:(unint64_t)a5 paddedSize:(unint64_t)a6 itemID:(unint64_t)a7 sectionIndex:(id)a8
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = @"signature";
  v30 = @"size";
  v31 = @"paddedSize";
  v32 = @"itemID";
  v33 = @"sectionIndex";
  v14 = MEMORY[0x1E695DEC8];
  v15 = a8;
  v16 = a4;
  v17 = a3;
  v19 = objc_msgSend_arrayWithObjects_count_(v14, v18, &v29, 5);
  objc_msgSend_setSignature_(v17, v20, v16, v29, v30, v31, v32, v33, v34);

  objc_msgSend_setSize_(v17, v21, a5);
  objc_msgSend_setPaddedSize_(v17, v22, a6);
  objc_msgSend_setItemID_(v17, v23, a7);
  objc_msgSend_setSectionIndex_(v17, v24, v15);

  v26 = objc_msgSend_updateProperties_usingObject_label_(self, v25, v19, v17, off_1EA90EB38);

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)updateItemsAtIndexes:(id)a3 fileURLs:(id)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v26[0] = @"fileURL";
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v26, 1);
  v12 = objc_msgSend_count(v6, v10, v11);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_188520890;
  v20[3] = &unk_1E70BC108;
  v24 = v9;
  v25 = v12;
  v21 = v6;
  v22 = v7;
  v23 = self;
  v13 = v9;
  v14 = v7;
  v15 = v6;
  v17 = objc_msgSend_performInTransaction_(self, v16, v20);

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)enumerateItemsInSection:(unint64_t)a3 withBlock:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_188520A38;
  v11[3] = &unk_1E70BC150;
  v12 = v6;
  v13 = a3;
  v11[4] = self;
  v7 = v6;
  v9 = objc_msgSend_performInTransaction_(self, v8, v11);

  return v9;
}

- (id)copyItemsFromPackage:(id)a3 itemTable:(id)a4
{
  v5 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_188520CC4;
  v10[3] = &unk_1E70BC178;
  v11 = v5;
  v12 = self;
  v6 = v5;
  v8 = objc_msgSend_performTransaction_(self, v7, v10);

  return v8;
}

@end