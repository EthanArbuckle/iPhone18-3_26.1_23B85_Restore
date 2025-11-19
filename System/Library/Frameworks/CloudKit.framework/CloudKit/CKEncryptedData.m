@interface CKEncryptedData
- (BOOL)isEqual:(id)a3;
- (BOOL)needsDecryption;
- (BOOL)needsEncryption;
- (CKEncryptedData)init;
- (CKEncryptedData)initWithCoder:(id)a3;
- (CKEncryptedData)initWithData:(id)a3;
- (CKEncryptedData)initWithEncryptedData:(id)a3;
- (CKEncryptedData)initWithValue:(id)a3;
- (id)CKPropertiesDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKEncryptedData

- (BOOL)needsDecryption
{
  v6 = objc_msgSend_encryptedData(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_data(self, v4, v5);
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CKEncryptedData)init
{
  v2 = [CKException alloc];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = objc_msgSend_initWithCode_format_(v2, v5, 12, @"You must call [%@ initWithData:]", v4);
  v7 = v6;

  objc_exception_throw(v6);
}

- (CKEncryptedData)initWithData:(id)a3
{
  v4 = a3;
  v25 = 0;
  v5 = _CKCheckArgument("data", v4, 0, 0, 0, &v25);
  v6 = v25;
  if ((v5 & 1) == 0)
  {
    v13 = v6;
    v14 = [CKException alloc];
    v17 = objc_msgSend_code(v13, v15, v16);
    v20 = objc_msgSend_localizedDescription(v13, v18, v19);
    v22 = objc_msgSend_initWithCode_format_(v14, v21, v17, @"%@", v20);
    v23 = v22;

    objc_exception_throw(v22);
  }

  v24.receiver = self;
  v24.super_class = CKEncryptedData;
  v9 = [(CKEncryptedData *)&v24 init];
  if (v9)
  {
    v10 = objc_msgSend_copy(v4, v7, v8);
    data = v9->_data;
    v9->_data = v10;
  }

  return v9;
}

- (CKEncryptedData)initWithEncryptedData:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CKEncryptedData;
  v7 = [(CKEncryptedData *)&v11 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(v4, v5, v6);
    encryptedData = v7->_encryptedData;
    v7->_encryptedData = v8;
  }

  return v7;
}

- (CKEncryptedData)initWithValue:(id)a3
{
  v4 = a3;
  v74 = 0;
  v5 = _CKCheckArgument("value", v4, 0, 0, 1, &v74);
  v6 = v74;
  v7 = v6;
  if ((v5 & 1) == 0)
  {
    v52 = [CKException alloc];
    v55 = objc_msgSend_code(v7, v53, v54);
    v58 = objc_msgSend_localizedDescription(v7, v56, v57);
    v60 = objc_msgSend_initWithCode_format_(v52, v59, v55, @"%@", v58);
    goto LABEL_35;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v4;
      if (CFNumberIsFloatType(v12))
      {
        v13 = [CKEncryptedDouble alloc];
        objc_msgSend_doubleValue(v12, v14, v15);
        v18 = objc_msgSend_initWithDouble_(v13, v16, v17);
      }

      else
      {
        v23 = [CKEncryptedLongLong alloc];
        v26 = objc_msgSend_longLongValue(v12, v24, v25);
        v18 = objc_msgSend_initWithLongLong_(v23, v27, v26);
      }

      v11 = v18;

      goto LABEL_14;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [CKEncryptedDate alloc];
      v10 = objc_msgSend_initWithDate_(v19, v20, v4);
      goto LABEL_4;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [CKEncryptedReference alloc];
      v10 = objc_msgSend_initWithReference_(v21, v22, v4);
      goto LABEL_4;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [CKEncryptedLocation alloc];
      v10 = objc_msgSend_initWithLocation_(v29, v30, v4);
      goto LABEL_4;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = objc_msgSend_initWithData_(self, v31, v4);
      goto LABEL_15;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v63 = [CKException alloc];
      v64 = *MEMORY[0x1E695D940];
      v65 = objc_opt_class();
      v66 = NSStringFromClass(v65);
      v68 = objc_msgSend_initWithName_format_(v63, v67, v64, @"Invalid class requested for encrypted object: %@", v66);
      v69 = v68;

      objc_exception_throw(v68);
    }

    v12 = v4;
    if (!objc_msgSend_count(v12, v32, v33))
    {
      v40 = [CKEncryptedEmptyArray alloc];
      v36 = objc_msgSend_data(MEMORY[0x1E695DEF0], v41, v42);
      v39 = objc_msgSend_initWithData_(v40, v43, v36);
      goto LABEL_33;
    }

    v36 = objc_msgSend_firstObject(v12, v34, v35);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [CKEncryptedStringArray alloc];
      v39 = objc_msgSend_initWithStringArray_(v37, v38, v12);
LABEL_33:
      v11 = v39;

LABEL_14:
      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (CFNumberIsFloatType(v36))
      {
        v44 = [CKEncryptedDoubleArray alloc];
        v39 = objc_msgSend_initWithDoubleArray_(v44, v45, v12);
      }

      else
      {
        v50 = [CKEncryptedLongLongArray alloc];
        v39 = objc_msgSend_initWithLongLongArray_(v50, v51, v12);
      }

      goto LABEL_33;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = [CKEncryptedDateArray alloc];
      v39 = objc_msgSend_initWithDateArray_(v46, v47, v12);
      goto LABEL_33;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = [CKEncryptedLocationArray alloc];
      v39 = objc_msgSend_initWithLocationArray_(v48, v49, v12);
      goto LABEL_33;
    }

    v70 = [CKException alloc];
    v71 = *MEMORY[0x1E695D940];
    v72 = objc_opt_class();
    v58 = NSStringFromClass(v72);
    v60 = objc_msgSend_initWithName_format_(v70, v73, v71, @"Invalid class requested for encrypted object: %@", v58);
LABEL_35:
    v61 = v60;
    v62 = v60;

    objc_exception_throw(v61);
  }

  v8 = [CKEncryptedString alloc];
  v10 = objc_msgSend_initWithString_(v8, v9, v4);
LABEL_4:
  v11 = v10;

LABEL_15:
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_data(v4, v5, v6);
    v10 = objc_msgSend_data(self, v8, v9);
    isEqualToData = objc_msgSend_isEqualToData_(v7, v11, v10);
  }

  else
  {
    isEqualToData = 0;
  }

  return isEqualToData;
}

- (unint64_t)hash
{
  v3 = objc_msgSend_data(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (id)CKPropertiesDescription
{
  v4 = objc_msgSend_data(self, a2, v2);
  v7 = v4;
  v8 = MEMORY[0x1E696AEC0];
  if (v4)
  {
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5, @"data=%@", v4);
  }

  else
  {
    v10 = objc_msgSend_encryptedData(self, v5, v6);
    v9 = objc_msgSend_stringWithFormat_(v8, v11, @"encryptedData=%@", v10);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_data(self, a2, a3);
  v5 = objc_alloc(objc_opt_class());
  v8 = v5;
  if (v4)
  {
    v9 = objc_msgSend_initWithData_(v5, v6, v4);
    v12 = objc_msgSend_encryptedData(self, v10, v11);
    v15 = objc_msgSend_copy(v12, v13, v14);
    v16 = v9[2];
    v9[2] = v15;
  }

  else
  {
    v17 = objc_msgSend_encryptedData(self, v6, v7);
    v9 = objc_msgSend_initWithEncryptedData_(v8, v18, v17);

    v12 = objc_msgSend_data(self, v19, v20);
    v23 = objc_msgSend_copy(v12, v21, v22);
    v16 = v9[1];
    v9[1] = v23;
  }

  return v9;
}

- (BOOL)needsEncryption
{
  v6 = objc_msgSend_data(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_encryptedData(self, v4, v5);
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CKEncryptedData)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CKEncryptedData;
  v5 = [(CKEncryptedData *)&v16 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v7, @"EncryptedData");
    data = v5->_data;
    v5->_data = v9;

    if ((byte_1EA90C538 & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v11 = objc_opt_class();
        v13 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v12, v11, @"ReallyEncryptedData");
        encryptedData = v5->_encryptedData;
        v5->_encryptedData = v13;
      }
    }

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_data(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v13, v8, v7, @"EncryptedData");

  if ((byte_1EA90C538 & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = objc_msgSend_encryptedData(self, v9, v10);
      objc_msgSend_encodeObject_forKey_(v13, v12, v11, @"ReallyEncryptedData");
    }
  }

  objc_autoreleasePoolPop(v4);
}

@end