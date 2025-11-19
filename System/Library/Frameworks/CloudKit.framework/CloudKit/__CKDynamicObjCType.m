@interface __CKDynamicObjCType
- (__CKDynamicObjCType)initWithCode:(int64_t)a3 encoding:(id)a4;
@end

@implementation __CKDynamicObjCType

- (__CKDynamicObjCType)initWithCode:(int64_t)a3 encoding:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = __CKDynamicObjCType;
  v9 = [(CKObjCType *)&v13 initWithCode:a3];
  if (v9)
  {
    v10 = objc_msgSend_copy(v6, v7, v8);
    encoding = v9->_encoding;
    v9->_encoding = v10;
  }

  return v9;
}

@end