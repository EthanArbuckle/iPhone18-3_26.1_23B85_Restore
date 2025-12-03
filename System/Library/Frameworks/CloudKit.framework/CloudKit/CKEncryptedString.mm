@interface CKEncryptedString
- (CKEncryptedString)initWithString:(id)string;
- (NSString)string;
@end

@implementation CKEncryptedString

- (CKEncryptedString)initWithString:(id)string
{
  stringCopy = string;
  v29 = 0;
  v5 = _CKCheckArgument("string", stringCopy, 0, 0, 1, &v29);
  v6 = v29;
  if ((v5 & 1) == 0)
  {
    v17 = v6;
    v18 = [CKException alloc];
    v21 = objc_msgSend_code(v17, v19, v20);
    v24 = objc_msgSend_localizedDescription(v17, v22, v23);
    v26 = objc_msgSend_initWithCode_format_(v18, v25, v21, @"%@", v24);
    v27 = v26;

    objc_exception_throw(v26);
  }

  v7 = objc_alloc_init(CKDPRecordFieldValueEncryptedValue);
  v10 = objc_msgSend_copy(stringCopy, v8, v9);
  objc_msgSend_setStringValue_(v7, v11, v10);

  v14 = objc_msgSend_data(v7, v12, v13);
  v28.receiver = self;
  v28.super_class = CKEncryptedString;
  v15 = [(CKEncryptedData *)&v28 initWithData:v14];

  return v15;
}

- (NSString)string
{
  v3 = objc_msgSend_data(self, a2, v2);
  if (v3)
  {
    v4 = [CKDPRecordFieldValueEncryptedValue alloc];
    v6 = objc_msgSend_initWithData_(v4, v5, v3);
    v9 = objc_msgSend_stringValue(v6, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end