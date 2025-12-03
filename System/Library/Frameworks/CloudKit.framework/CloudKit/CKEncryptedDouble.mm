@interface CKEncryptedDouble
- (CKEncryptedDouble)initWithDouble:(double)double;
- (double)ckDoubleValue;
- (id)value;
@end

@implementation CKEncryptedDouble

- (CKEncryptedDouble)initWithDouble:(double)double
{
  v5 = objc_alloc_init(CKDPRecordFieldValueEncryptedValue);
  objc_msgSend_setCkDoubleValue_(v5, v6, v7, double);
  v10 = objc_msgSend_data(v5, v8, v9);
  v13.receiver = self;
  v13.super_class = CKEncryptedDouble;
  v11 = [(CKEncryptedData *)&v13 initWithData:v10];

  return v11;
}

- (double)ckDoubleValue
{
  v3 = objc_msgSend_data(self, a2, v2);
  if (v3)
  {
    v4 = [CKDPRecordFieldValueEncryptedValue alloc];
    v6 = objc_msgSend_initWithData_(v4, v5, v3);
    objc_msgSend_ckDoubleValue(v6, v7, v8);
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (id)value
{
  v3 = MEMORY[0x1E696AD98];
  objc_msgSend_ckDoubleValue(self, a2, v2);

  return objc_msgSend_numberWithDouble_(v3, v4, v5);
}

@end