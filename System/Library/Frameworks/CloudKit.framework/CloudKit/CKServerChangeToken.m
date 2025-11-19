@interface CKServerChangeToken
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (CKServerChangeToken)init;
- (CKServerChangeToken)initWithCoder:(id)a3;
- (CKServerChangeToken)initWithData:(id)a3;
- (id)CKPropertiesDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKServerChangeToken

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = objc_opt_self();

  sub_1886CEE50(v3, v2, 0, 0, 0);
}

- (id)CKPropertiesDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_msgSend_data(self, a2, v2);
  v6 = objc_msgSend_base64EncodedStringWithOptions_(v4, v5, 0);
  v8 = objc_msgSend_stringWithFormat_(v3, v7, @"data=%@", v6);

  return v8;
}

- (CKServerChangeToken)init
{
  v2 = [CKException alloc];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = objc_msgSend_initWithCode_format_(v2, v5, 12, @"You can't call init on %@", v4);
  v7 = v6;

  objc_exception_throw(v6);
}

- (CKServerChangeToken)initWithData:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CKServerChangeToken;
  v7 = [(CKServerChangeToken *)&v11 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(v4, v5, v6);
    data = v7->_data;
    v7->_data = v8;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_data(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v9, v8, v7, @"ChangeTokenData");

  objc_autoreleasePoolPop(v4);
}

- (CKServerChangeToken)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CKServerChangeToken;
  v5 = [(CKServerChangeToken *)&v12 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v7, @"ChangeTokenData");
    data = v5->_data;
    v5->_data = v9;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v8 = objc_msgSend_data(self, v6, v7);
      v11 = objc_msgSend_data(v5, v9, v10);

      v12 = CKObjectsAreBothNilOrEqual(v8, v11);
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_msgSend_data(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

@end