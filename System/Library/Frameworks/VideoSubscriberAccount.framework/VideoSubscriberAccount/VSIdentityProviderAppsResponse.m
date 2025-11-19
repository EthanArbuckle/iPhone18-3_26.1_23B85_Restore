@interface VSIdentityProviderAppsResponse
- (BOOL)isEqual:(id)a3;
- (VSIdentityProviderAppsResponse)init;
- (VSIdentityProviderAppsResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (VSIdentityProviderAppsResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VSIdentityProviderAppsResponse;
  v5 = [(VSIdentityProviderAppsResponse *)&v8 init];
  if (v5)
  {
    v6 = VSIdentityProviderAppsResponseValueType();
    VSValueTypeInitWithCoder(v6, v5, v4);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = VSIdentityProviderAppsResponseValueType();
  VSValueTypeEncodeWithCoder(v5, self, v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = VSIdentityProviderAppsResponseValueType();
  v6 = VSValueTypeCopyWithZone(v5, self, a3);

  return v6;
}

- (unint64_t)hash
{
  v3 = VSIdentityProviderAppsResponseValueType();
  v4 = VSValueTypeHash(v3, self);

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = VSIdentityProviderAppsResponseValueType();
  LOBYTE(self) = VSValueTypeIsEqual(v5, self, v4);

  return self;
}

- (id)description
{
  v3 = VSIdentityProviderAppsResponseValueType();
  v4 = VSValueTypeDescription(v3, self);

  return v4;
}

@end