@interface CKSourceCodeLocation
- (BOOL)isEqual:(id)a3;
- (CKSourceCodeLocation)initWithCoder:(id)a3;
- (CKSourceCodeLocation)initWithFilePath:(id)a3 lineNumber:(unint64_t)a4;
- (CKSourceCodeLocation)initWithFileURL:(id)a3 lineNumber:(unint64_t)a4;
- (unint64_t)hash;
- (void)CKDescribePropertiesUsing:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKSourceCodeLocation

- (CKSourceCodeLocation)initWithFilePath:(id)a3 lineNumber:(unint64_t)a4
{
  v6 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], a2, a3);
  v8 = objc_msgSend_initWithFileURL_lineNumber_(self, v7, v6, a4);

  return v8;
}

- (CKSourceCodeLocation)initWithFileURL:(id)a3 lineNumber:(unint64_t)a4
{
  v9 = a3;
  if (!v9)
  {
    v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, a2, self, @"CKSignificantIssue.m", 28, @"Invalid parameter not satisfying: %@", @"fileURL");
  }

  v18.receiver = self;
  v18.super_class = CKSourceCodeLocation;
  v12 = [(CKSourceCodeLocation *)&v18 init];
  if (v12)
  {
    v13 = objc_msgSend_copy(v9, v10, v11);
    fileURL = v12->_fileURL;
    v12->_fileURL = v13;

    v12->_lineNumber = a4;
  }

  return v12;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_fileURL(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_lineNumber(self, v8, v9);

  return v10 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v8 = objc_msgSend_fileURL(self, v6, v7);
      v11 = objc_msgSend_fileURL(v5, v9, v10);
      if (objc_msgSend_isEqual_(v8, v12, v11))
      {
        v15 = objc_msgSend_lineNumber(self, v13, v14);
        v18 = v15 == objc_msgSend_lineNumber(v5, v16, v17);
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_fileURL(self, v5, v6);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v8, @"fileURL", v7, 0);

  v9 = MEMORY[0x1E696AD98];
  v12 = objc_msgSend_lineNumber(self, v10, v11);
  v15 = objc_msgSend_numberWithUnsignedInteger_(v9, v13, v12);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v14, @"lineNumber", v15, 0);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_fileURL(self, v5, v6);
  v8 = NSStringFromSelector(sel_fileURL);
  objc_msgSend_encodeObject_forKey_(v4, v9, v7, v8);

  v10 = MEMORY[0x1E696AD98];
  v13 = objc_msgSend_lineNumber(self, v11, v12);
  v17 = objc_msgSend_numberWithUnsignedInteger_(v10, v14, v13);
  v15 = NSStringFromSelector(sel_lineNumber);
  objc_msgSend_encodeObject_forKey_(v4, v16, v17, v15);
}

- (CKSourceCodeLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_fileURL);
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v5, v6);

  v9 = objc_opt_class();
  v10 = NSStringFromSelector(sel_lineNumber);
  v12 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v9, v10);

  v15 = objc_msgSend_unsignedIntegerValue(v12, v13, v14);
  v17 = objc_msgSend_initWithFileURL_lineNumber_(self, v16, v8, v15);

  return v17;
}

@end