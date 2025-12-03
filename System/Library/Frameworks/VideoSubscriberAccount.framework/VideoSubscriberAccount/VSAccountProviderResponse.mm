@interface VSAccountProviderResponse
- (BOOL)isEqual:(id)equal;
- (VSAccountProviderResponse)init;
- (VSAccountProviderResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VSAccountProviderResponse

- (VSAccountProviderResponse)init
{
  v5.receiver = self;
  v5.super_class = VSAccountProviderResponse;
  v2 = [(VSAccountProviderResponse *)&v5 init];
  if (v2)
  {
    v3 = VSAccountProviderResponseValueType();
    VSValueTypeInit(v3, v2);
  }

  return v2;
}

- (VSAccountProviderResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = VSAccountProviderResponse;
  v5 = [(VSAccountProviderResponse *)&v8 init];
  if (v5)
  {
    v6 = VSAccountProviderResponseValueType();
    VSValueTypeInitWithCoder(v6, v5, coderCopy);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = VSAccountProviderResponseValueType();
  VSValueTypeEncodeWithCoder(v5, self, coderCopy);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = VSAccountProviderResponseValueType();
  v6 = VSValueTypeCopyWithZone(v5, self, zone);

  return v6;
}

- (unint64_t)hash
{
  v3 = VSAccountProviderResponseValueType();
  v4 = VSValueTypeHash(v3, self);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = VSAccountProviderResponseValueType();
  LOBYTE(self) = VSValueTypeIsEqual(v5, self, equalCopy);

  return self;
}

- (id)description
{
  v3 = VSAccountProviderResponseValueType();
  v4 = VSValueTypeDescription(v3, self);

  return v4;
}

@end