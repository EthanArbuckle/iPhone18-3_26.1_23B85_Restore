@interface CKEncryptedLocationArray
- (CKEncryptedLocationArray)initWithLocationArray:(id)a3;
- (NSArray)locationArray;
@end

@implementation CKEncryptedLocationArray

- (CKEncryptedLocationArray)initWithLocationArray:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(CKDPRecordFieldValueEncryptedValue);
  v6 = objc_opt_new();
  objc_msgSend_setLocationListValues_(v5, v7, v6);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v4;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v24, v28, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = objc_msgSend_CKDPLocationCoordinateFromCLLocation_(MEMORY[0x1E6985C40], v11, *(*(&v24 + 1) + 8 * v14));
        objc_msgSend_addLocationListValue_(v5, v16, v15);

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v24, v28, 16);
    }

    while (v12);
  }

  v19 = objc_msgSend_data(v5, v17, v18);
  v23.receiver = self;
  v23.super_class = CKEncryptedLocationArray;
  v20 = [(CKEncryptedData *)&v23 initWithData:v19];

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (NSArray)locationArray
{
  v3 = objc_msgSend_data(self, a2, v2);
  if (v3)
  {
    v4 = [CKDPRecordFieldValueEncryptedValue alloc];
    v6 = objc_msgSend_initWithData_(v4, v5, v3);
    v9 = objc_msgSend_locationListValues(v6, v7, v8);
    v11 = objc_msgSend_CKMap_(v9, v10, &unk_1EFA2EBC8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end