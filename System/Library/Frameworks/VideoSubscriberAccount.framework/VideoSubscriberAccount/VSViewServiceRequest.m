@interface VSViewServiceRequest
- (BOOL)allowsAuthenticationUI;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPreAuthRequest;
- (NSArray)applicationAccountProviders;
- (NSArray)featuredIdentityProviderIdentifiers;
- (NSArray)supportedAccountProviderAuthenticationSchemes;
- (NSArray)supportedIdentityProviderIdentifiers;
- (NSString)accountProviderAuthenticationToken;
- (NSString)localizedVideoTitle;
- (VSViewServiceRequest)init;
- (VSViewServiceRequest)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VSViewServiceRequest

- (VSViewServiceRequest)init
{
  v5.receiver = self;
  v5.super_class = VSViewServiceRequest;
  v2 = [(VSViewServiceRequest *)&v5 init];
  if (v2)
  {
    v3 = VSViewServiceRequestValueType();
    VSValueTypeInit(v3, v2);
  }

  return v2;
}

- (VSViewServiceRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VSViewServiceRequest;
  v5 = [(VSViewServiceRequest *)&v8 init];
  if (v5)
  {
    v6 = VSViewServiceRequestValueType();
    VSValueTypeInitWithCoder(v6, v5, v4);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = VSViewServiceRequestValueType();
  VSValueTypeEncodeWithCoder(v5, self, v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = VSViewServiceRequestValueType();
  v6 = VSValueTypeCopyWithZone(v5, self, a3);

  return v6;
}

- (unint64_t)hash
{
  v3 = VSViewServiceRequestValueType();
  v4 = VSValueTypeHash(v3, self);

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = VSViewServiceRequestValueType();
  LOBYTE(self) = VSValueTypeIsEqual(v5, self, v4);

  return self;
}

- (id)description
{
  v3 = VSViewServiceRequestValueType();
  v4 = VSValueTypeDescription(v3, self);

  return v4;
}

- (BOOL)allowsAuthenticationUI
{
  v2 = [(VSViewServiceRequest *)self accountMetadataRequest];
  v3 = [v2 isInterruptionAllowed];

  return v3;
}

- (NSArray)supportedIdentityProviderIdentifiers
{
  v2 = [(VSViewServiceRequest *)self accountMetadataRequest];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 supportedAccountProviderIdentifiers];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (NSArray)featuredIdentityProviderIdentifiers
{
  v2 = [(VSViewServiceRequest *)self accountMetadataRequest];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 featuredAccountProviderIdentifiers];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (NSArray)applicationAccountProviders
{
  v2 = [(VSViewServiceRequest *)self accountMetadataRequest];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 applicationAccountProviders];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (NSArray)supportedAccountProviderAuthenticationSchemes
{
  v2 = [(VSViewServiceRequest *)self accountMetadataRequest];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 supportedAuthenticationSchemes];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (NSString)localizedVideoTitle
{
  v2 = [(VSViewServiceRequest *)self accountMetadataRequest];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizedVideoTitle];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)accountProviderAuthenticationToken
{
  v2 = [(VSViewServiceRequest *)self accountMetadataRequest];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 accountProviderAuthenticationToken];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isPreAuthRequest
{
  v2 = [(VSViewServiceRequest *)self accountMetadataRequest];
  v3 = [v2 accountProviderAuthenticationToken];
  v4 = v3 != 0;

  return v4;
}

@end