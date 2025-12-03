@interface CLFloor
- (CLFloor)initWithCoder:(id)coder;
- (CLFloor)initWithLevel:(int64_t)level;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLFloor

- (CLFloor)initWithLevel:(int64_t)level
{
  v5.receiver = self;
  v5.super_class = CLFloor;
  result = [(CLFloor *)&v5 init];
  if (result)
  {
    result->level = level;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  if (objc_msgSend_allowsKeyedCoding(coder, a2, v3, v4))
  {
    level = self->level;

    objc_msgSend_encodeInteger_forKey_(coder, v7, v8, v9, level, @"kCLLocationCodingKeyFloor");
  }

  else
  {

    objc_msgSend_encodeValueOfObjCType_at_(coder, v7, v8, v9, "q", &self->level);
  }
}

- (CLFloor)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = CLFloor;
  v5 = [(CLFloor *)&v12 init];
  if (v5)
  {
    if (objc_msgSend_allowsKeyedCoding(coder, v4, v6, v7))
    {
      v5->level = objc_msgSend_decodeIntegerForKey_(coder, v8, v9, v10, @"kCLLocationCodingKeyFloor");
    }

    else
    {
      objc_msgSend_decodeValueOfObjCType_at_(coder, v8, v9, v10, "q", &v5->level);
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6 = objc_msgSend_allocWithZone_(CLFloor, a2, v3, v4, zone);
  level = self->level;

  return objc_msgSend_initWithLevel_(v6, v7, v8, v9, level);
}

@end