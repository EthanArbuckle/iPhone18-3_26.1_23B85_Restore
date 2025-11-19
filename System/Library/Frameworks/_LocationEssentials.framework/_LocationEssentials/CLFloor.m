@interface CLFloor
- (CLFloor)initWithCoder:(id)a3;
- (CLFloor)initWithLevel:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLFloor

- (CLFloor)initWithLevel:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CLFloor;
  result = [(CLFloor *)&v5 init];
  if (result)
  {
    result->level = a3;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  if (objc_msgSend_allowsKeyedCoding(a3, a2, v3, v4))
  {
    level = self->level;

    objc_msgSend_encodeInteger_forKey_(a3, v7, v8, v9, level, @"kCLLocationCodingKeyFloor");
  }

  else
  {

    objc_msgSend_encodeValueOfObjCType_at_(a3, v7, v8, v9, "q", &self->level);
  }
}

- (CLFloor)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = CLFloor;
  v5 = [(CLFloor *)&v12 init];
  if (v5)
  {
    if (objc_msgSend_allowsKeyedCoding(a3, v4, v6, v7))
    {
      v5->level = objc_msgSend_decodeIntegerForKey_(a3, v8, v9, v10, @"kCLLocationCodingKeyFloor");
    }

    else
    {
      objc_msgSend_decodeValueOfObjCType_at_(a3, v8, v9, v10, "q", &v5->level);
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6 = objc_msgSend_allocWithZone_(CLFloor, a2, v3, v4, a3);
  level = self->level;

  return objc_msgSend_initWithLevel_(v6, v7, v8, v9, level);
}

@end