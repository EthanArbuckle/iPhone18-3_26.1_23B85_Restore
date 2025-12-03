@interface __CKClassObjCType
- (__CKClassObjCType)initWithCode:(int64_t)code encoding:(id)encoding class:(Class)class;
- (id)name;
@end

@implementation __CKClassObjCType

- (__CKClassObjCType)initWithCode:(int64_t)code encoding:(id)encoding class:(Class)class
{
  v7.receiver = self;
  v7.super_class = __CKClassObjCType;
  result = [(__CKDynamicObjCType *)&v7 initWithCode:code encoding:encoding];
  if (result)
  {
    result->_class = class;
  }

  return result;
}

- (id)name
{
  v3 = objc_msgSend_className(self, a2, v2);
  v5 = objc_msgSend_stringByAppendingString_(v3, v4, @"*");

  return v5;
}

@end