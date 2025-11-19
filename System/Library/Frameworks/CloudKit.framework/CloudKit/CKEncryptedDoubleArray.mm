@interface CKEncryptedDoubleArray
- (CKEncryptedDoubleArray)initWithDoubleArray:(id)a3;
- (NSArray)doubleArray;
@end

@implementation CKEncryptedDoubleArray

- (CKEncryptedDoubleArray)initWithDoubleArray:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v4;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v23, v27, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_doubleValue(*(*(&v23 + 1) + 8 * v13), v9, v10);
        objc_msgSend_addDoubleListValue_(v5, v14, v15);
        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v23, v27, 16);
    }

    while (v11);
  }

  v18 = objc_msgSend_data(v5, v16, v17);
  v22.receiver = self;
  v22.super_class = CKEncryptedDoubleArray;
  v19 = [(CKEncryptedData *)&v22 initWithData:v18];

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (NSArray)doubleArray
{
  v3 = objc_msgSend_data(self, a2, v2);
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [CKDPRecordFieldValueEncryptedValue alloc];
    v7 = objc_msgSend_initWithData_(v5, v6, v3);
    if (objc_msgSend_doubleListValuesCount(v7, v8, v9))
    {
      v12 = 0;
      do
      {
        v13 = MEMORY[0x1E696AD98];
        v14 = objc_msgSend_doubleListValues(v7, v10, v11);
        v17 = objc_msgSend_numberWithDouble_(v13, v15, v16, *(v14 + 8 * v12));
        objc_msgSend_addObject_(v4, v18, v17);

        ++v12;
      }

      while (v12 < objc_msgSend_doubleListValuesCount(v7, v19, v20));
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end