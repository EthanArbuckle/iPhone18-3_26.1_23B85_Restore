@interface VSAuditToken
- (BOOL)isEqual:(id)equal;
- (VSAuditToken)init;
- (VSAuditToken)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VSAuditToken

- (VSAuditToken)init
{
  v5.receiver = self;
  v5.super_class = VSAuditToken;
  v2 = [(VSAuditToken *)&v5 init];
  if (v2)
  {
    v3 = VSAuditTokenValueType();
    VSValueTypeInit(v3, v2);
  }

  return v2;
}

- (VSAuditToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = VSAuditToken;
  v5 = [(VSAuditToken *)&v8 init];
  if (v5)
  {
    v6 = VSAuditTokenValueType();
    VSValueTypeInitWithCoder(v6, v5, coderCopy);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = VSAuditTokenValueType();
  VSValueTypeEncodeWithCoder(v5, self, coderCopy);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = VSAuditTokenValueType();
  v6 = VSValueTypeCopyWithZone(v5, self, zone);

  return v6;
}

- (unint64_t)hash
{
  v3 = VSAuditTokenValueType();
  v4 = VSValueTypeHash(v3, self);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = VSAuditTokenValueType();
  LOBYTE(self) = VSValueTypeIsEqual(v5, self, equalCopy);

  return self;
}

- (id)description
{
  v3 = VSAuditTokenValueType();
  v4 = VSValueTypeDescription(v3, self);

  return v4;
}

@end