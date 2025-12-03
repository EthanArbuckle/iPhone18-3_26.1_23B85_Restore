@interface __CKDynamicObjCType
- (__CKDynamicObjCType)initWithCode:(int64_t)code encoding:(id)encoding;
@end

@implementation __CKDynamicObjCType

- (__CKDynamicObjCType)initWithCode:(int64_t)code encoding:(id)encoding
{
  encodingCopy = encoding;
  v13.receiver = self;
  v13.super_class = __CKDynamicObjCType;
  v9 = [(CKObjCType *)&v13 initWithCode:code];
  if (v9)
  {
    v10 = objc_msgSend_copy(encodingCopy, v7, v8);
    encoding = v9->_encoding;
    v9->_encoding = v10;
  }

  return v9;
}

@end