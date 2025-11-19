@interface CKEncryptedLongLong
- (CKEncryptedLongLong)initWithLongLong:(int64_t)a3;
- (id)value;
- (int64_t)longLongValue;
@end

@implementation CKEncryptedLongLong

- (CKEncryptedLongLong)initWithLongLong:(int64_t)a3
{
  v5 = objc_alloc_init(CKDPRecordFieldValueEncryptedValue);
  objc_msgSend_setSignedValue_(v5, v6, a3);
  v9 = objc_msgSend_data(v5, v7, v8);
  v12.receiver = self;
  v12.super_class = CKEncryptedLongLong;
  v10 = [(CKEncryptedData *)&v12 initWithData:v9];

  return v10;
}

- (int64_t)longLongValue
{
  v3 = objc_msgSend_data(self, a2, v2);
  if (v3)
  {
    v4 = [CKDPRecordFieldValueEncryptedValue alloc];
    v6 = objc_msgSend_initWithData_(v4, v5, v3);
    v9 = objc_msgSend_signedValue(v6, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)value
{
  v3 = MEMORY[0x1E696AD98];
  v5 = objc_msgSend_longLongValue(self, a2, v2);

  return objc_msgSend_numberWithLongLong_(v3, v4, v5);
}

@end