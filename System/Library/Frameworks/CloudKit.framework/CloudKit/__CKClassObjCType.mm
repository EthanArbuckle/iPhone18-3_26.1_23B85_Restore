@interface __CKClassObjCType
- (__CKClassObjCType)initWithCode:(int64_t)a3 encoding:(id)a4 class:(Class)a5;
- (id)name;
@end

@implementation __CKClassObjCType

- (__CKClassObjCType)initWithCode:(int64_t)a3 encoding:(id)a4 class:(Class)a5
{
  v7.receiver = self;
  v7.super_class = __CKClassObjCType;
  result = [(__CKDynamicObjCType *)&v7 initWithCode:a3 encoding:a4];
  if (result)
  {
    result->_class = a5;
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