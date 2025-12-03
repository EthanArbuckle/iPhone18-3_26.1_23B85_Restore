@interface VSViewServiceRequest
- (BOOL)allowsAuthenticationUI;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPreAuthRequest;
- (NSArray)applicationAccountProviders;
- (NSArray)featuredIdentityProviderIdentifiers;
- (NSArray)supportedAccountProviderAuthenticationSchemes;
- (NSArray)supportedIdentityProviderIdentifiers;
- (NSString)accountProviderAuthenticationToken;
- (NSString)localizedVideoTitle;
- (VSViewServiceRequest)init;
- (VSViewServiceRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (VSViewServiceRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = VSViewServiceRequest;
  v5 = [(VSViewServiceRequest *)&v8 init];
  if (v5)
  {
    v6 = VSViewServiceRequestValueType();
    VSValueTypeInitWithCoder(v6, v5, coderCopy);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = VSViewServiceRequestValueType();
  VSValueTypeEncodeWithCoder(v5, self, coderCopy);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = VSViewServiceRequestValueType();
  v6 = VSValueTypeCopyWithZone(v5, self, zone);

  return v6;
}

- (unint64_t)hash
{
  v3 = VSViewServiceRequestValueType();
  v4 = VSValueTypeHash(v3, self);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = VSViewServiceRequestValueType();
  LOBYTE(self) = VSValueTypeIsEqual(v5, self, equalCopy);

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
  accountMetadataRequest = [(VSViewServiceRequest *)self accountMetadataRequest];
  isInterruptionAllowed = [accountMetadataRequest isInterruptionAllowed];

  return isInterruptionAllowed;
}

- (NSArray)supportedIdentityProviderIdentifiers
{
  accountMetadataRequest = [(VSViewServiceRequest *)self accountMetadataRequest];
  v3 = accountMetadataRequest;
  if (accountMetadataRequest)
  {
    supportedAccountProviderIdentifiers = [accountMetadataRequest supportedAccountProviderIdentifiers];
  }

  else
  {
    supportedAccountProviderIdentifiers = MEMORY[0x277CBEBF8];
  }

  return supportedAccountProviderIdentifiers;
}

- (NSArray)featuredIdentityProviderIdentifiers
{
  accountMetadataRequest = [(VSViewServiceRequest *)self accountMetadataRequest];
  v3 = accountMetadataRequest;
  if (accountMetadataRequest)
  {
    featuredAccountProviderIdentifiers = [accountMetadataRequest featuredAccountProviderIdentifiers];
  }

  else
  {
    featuredAccountProviderIdentifiers = MEMORY[0x277CBEBF8];
  }

  return featuredAccountProviderIdentifiers;
}

- (NSArray)applicationAccountProviders
{
  accountMetadataRequest = [(VSViewServiceRequest *)self accountMetadataRequest];
  v3 = accountMetadataRequest;
  if (accountMetadataRequest)
  {
    applicationAccountProviders = [accountMetadataRequest applicationAccountProviders];
    v5 = applicationAccountProviders;
    if (applicationAccountProviders)
    {
      v6 = applicationAccountProviders;
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
  accountMetadataRequest = [(VSViewServiceRequest *)self accountMetadataRequest];
  v3 = accountMetadataRequest;
  if (accountMetadataRequest)
  {
    supportedAuthenticationSchemes = [accountMetadataRequest supportedAuthenticationSchemes];
  }

  else
  {
    supportedAuthenticationSchemes = MEMORY[0x277CBEBF8];
  }

  return supportedAuthenticationSchemes;
}

- (NSString)localizedVideoTitle
{
  accountMetadataRequest = [(VSViewServiceRequest *)self accountMetadataRequest];
  v3 = accountMetadataRequest;
  if (accountMetadataRequest)
  {
    localizedVideoTitle = [accountMetadataRequest localizedVideoTitle];
  }

  else
  {
    localizedVideoTitle = 0;
  }

  return localizedVideoTitle;
}

- (NSString)accountProviderAuthenticationToken
{
  accountMetadataRequest = [(VSViewServiceRequest *)self accountMetadataRequest];
  v3 = accountMetadataRequest;
  if (accountMetadataRequest)
  {
    accountProviderAuthenticationToken = [accountMetadataRequest accountProviderAuthenticationToken];
  }

  else
  {
    accountProviderAuthenticationToken = 0;
  }

  return accountProviderAuthenticationToken;
}

- (BOOL)isPreAuthRequest
{
  accountMetadataRequest = [(VSViewServiceRequest *)self accountMetadataRequest];
  accountProviderAuthenticationToken = [accountMetadataRequest accountProviderAuthenticationToken];
  v4 = accountProviderAuthenticationToken != 0;

  return v4;
}

@end