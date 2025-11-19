@interface CKPackageTableBase
- (id)entryWithIndex:(unint64_t)a3 error:(id *)a4;
- (id)fetchEntryBatchWithStartingIndex:(unint64_t)a3 error:(id *)a4;
- (id)finishInitializing;
- (id)insertObject:(id)a3;
@end

@implementation CKPackageTableBase

- (id)finishInitializing
{
  v4 = objc_msgSend_tableGroup(self, a2, v2);
  isNew = objc_msgSend_isNew(v4, v5, v6);

  if (isNew)
  {
    v10 = 0;
    self->_nextIndex = 0;
  }

  else
  {
    v11 = objc_msgSend_primaryKey(self, v8, v9);
    v18 = 0;
    v13 = objc_msgSend_maximumValueOfProperty_label_error_(self, v12, v11, 0, &v18);
    v10 = v18;

    if (v13)
    {
      v16 = objc_msgSend_unsignedLongLongValue(v13, v14, v15) + 1;
    }

    else
    {
      v16 = 0;
    }

    self->_nextIndex = v16;
  }

  return v10;
}

- (id)insertObject:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_primaryKey(self, v5, v6);
  v8 = objc_opt_class();
  v10 = objc_msgSend_propertyInfo_(v8, v9, v7);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_18851F928;
  v16[3] = &unk_1E70BC070;
  v16[4] = self;
  v17 = v7;
  v19 = v10;
  v18 = v4;
  v11 = v4;
  v12 = v7;
  v14 = objc_msgSend_performInTransaction_(self, v13, v16);

  return v14;
}

- (id)entryWithIndex:(unint64_t)a3 error:(id *)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v23 = @"ENTRYINDEX";
  v6 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], a2, a3);
  v24[0] = v6;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v24, &v23, 1);

  v11 = objc_msgSend_primaryKey(self, v9, v10);
  v22 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_18851FC58;
  v20[3] = &unk_1E70BC098;
  v12 = v11;
  v21 = v12;
  v14 = objc_msgSend_entryWithValues_label_error_setupBlock_(self, v13, v8, off_1EA90EAC0, &v22, v20);
  v15 = v22;
  v16 = v15;
  if (v15)
  {
    if (a4)
    {
      v17 = v15;
      *a4 = v16;
    }

    v14 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)fetchEntryBatchWithStartingIndex:(unint64_t)a3 error:(id *)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1883ED844;
  v25 = sub_1883EF578;
  v26 = 0;
  v27 = @"STARTINDEX";
  v6 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], a2, a3);
  v28[0] = v6;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v28, &v27, 1);

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_18851FEB8;
  v18[3] = &unk_1E70BC0C0;
  v18[4] = self;
  v9 = v8;
  v19 = v9;
  v20 = &v21;
  v11 = objc_msgSend_performInTransaction_(self, v10, v18);
  v12 = v11;
  if (a4 && v11)
  {
    v13 = v11;
    *a4 = v12;
    v14 = v22[5];
    v22[5] = 0;
  }

  v15 = v22[5];

  _Block_object_dispose(&v21, 8);
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

@end