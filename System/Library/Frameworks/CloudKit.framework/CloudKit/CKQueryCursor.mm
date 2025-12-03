@interface CKQueryCursor
+ (void)initialize;
- (CKQueryCursor)init;
- (CKQueryCursor)initWithCoder:(id)coder;
- (CKQueryCursor)initWithData:(id)data zoneID:(id)d;
- (id)CKPropertiesDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKQueryCursor

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = objc_opt_self();

  sub_1886CEE50(v3, v2, 0, 0, 0);
}

- (CKQueryCursor)init
{
  v2 = [CKException alloc];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = objc_msgSend_initWithCode_format_(v2, v5, 12, @"You can't call init on %@", v4);
  v7 = v6;

  objc_exception_throw(v6);
}

- (CKQueryCursor)initWithData:(id)data zoneID:(id)d
{
  dataCopy = data;
  dCopy = d;
  v18.receiver = self;
  v18.super_class = CKQueryCursor;
  v10 = [(CKQueryCursor *)&v18 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(dataCopy, v8, v9);
    data = v10->_data;
    v10->_data = v11;

    v15 = objc_msgSend_copy(dCopy, v13, v14);
    zoneID = v10->_zoneID;
    v10->_zoneID = v15;
  }

  return v10;
}

- (id)CKPropertiesDescription
{
  v4 = objc_msgSend_data(self, a2, v2);
  v7 = objc_msgSend_CKSHA256(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_length(v7, v8, v9);
    if (v10 >= 16)
    {
      objc_msgSend_substringToIndex_(v7, v11, 16);
    }

    else
    {
      objc_msgSend_substringToIndex_(v7, v11, v10);
    }
    v12 = ;
  }

  else
  {
    v12 = 0;
  }

  v13 = MEMORY[0x1E696AEC0];
  v14 = objc_msgSend_zoneID(self, v8, v9);
  v16 = objc_msgSend_stringWithFormat_(v13, v15, @"id=%@, zone=%@", v12, v14);

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_data(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"CursorData");

  v11 = objc_msgSend_zoneID(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"ZoneID");

  objc_autoreleasePoolPop(v4);
}

- (CKQueryCursor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CKQueryCursor;
  v5 = [(CKQueryCursor *)&v16 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v7, @"CursorData");
    data = v5->_data;
    v5->_data = v9;

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v12, v11, @"ZoneID");
    zoneID = v5->_zoneID;
    v5->_zoneID = v13;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end