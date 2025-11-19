@interface VSAMSRequest
- (BOOL)isEqual:(id)a3;
- (VSAMSRequest)init;
- (VSAMSRequest)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VSAMSRequest

- (VSAMSRequest)init
{
  v5.receiver = self;
  v5.super_class = VSAMSRequest;
  v2 = [(VSAMSRequest *)&v5 init];
  if (v2)
  {
    v3 = VSAMSRequestValueType();
    VSValueTypeInit(v3, v2);
  }

  return v2;
}

- (VSAMSRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VSAMSRequest;
  v5 = [(VSAMSRequest *)&v8 init];
  if (v5)
  {
    v6 = VSAMSRequestValueType();
    VSValueTypeInitWithCoder(v6, v5, v4);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = VSAMSRequestValueType();
  VSValueTypeEncodeWithCoder(v5, self, v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = VSAMSRequestValueType();
  v6 = VSValueTypeCopyWithZone(v5, self, a3);

  return v6;
}

- (unint64_t)hash
{
  v3 = VSAMSRequestValueType();
  v4 = VSValueTypeHash(v3, self);

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = VSAMSRequestValueType();
  LOBYTE(self) = VSValueTypeIsEqual(v5, self, v4);

  return self;
}

- (id)description
{
  v3 = VSAMSRequestValueType();
  v4 = VSValueTypeDescription(v3, self);

  return v4;
}

@end