@interface VSIdentityProviderAppsResponse
- (BOOL)isEqual:(id)equal;
- (VSIdentityProviderAppsResponse)init;
- (VSIdentityProviderAppsResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VSIdentityProviderAppsResponse

- (VSIdentityProviderAppsResponse)init
{
  v5.receiver = self;
  v5.super_class = VSIdentityProviderAppsResponse;
  v2 = [(VSIdentityProviderAppsResponse *)&v5 init];
  if (v2)
  {
    v3 = VSIdentityProviderAppsResponseValueType();
    VSValueTypeInit(v3, v2);
  }

  return v2;
}

- (VSIdentityProviderAppsResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = VSIdentityProviderAppsResponse;
  v5 = [(VSIdentityProviderAppsResponse *)&v8 init];
  if (v5)
  {
    v6 = VSIdentityProviderAppsResponseValueType();
    VSValueTypeInitWithCoder(v6, v5, coderCopy);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = VSIdentityProviderAppsResponseValueType();
  VSValueTypeEncodeWithCoder(v5, self, coderCopy);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = VSIdentityProviderAppsResponseValueType();
  v6 = VSValueTypeCopyWithZone(v5, self, zone);

  return v6;
}

- (unint64_t)hash
{
  v3 = VSIdentityProviderAppsResponseValueType();
  v4 = VSValueTypeHash(v3, self);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = VSIdentityProviderAppsResponseValueType();
  LOBYTE(self) = VSValueTypeIsEqual(v5, self, equalCopy);

  return self;
}

- (id)description
{
  v3 = VSIdentityProviderAppsResponseValueType();
  v4 = VSValueTypeDescription(v3, self);

  return v4;
}

@end