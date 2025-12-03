@interface VSAccountMetadata
- (BOOL)isEqual:(id)equal;
- (NSString)SAMLAttributeQueryResponse;
- (VSAccountMetadata)init;
- (VSAccountMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VSAccountMetadata

- (VSAccountMetadata)init
{
  v5.receiver = self;
  v5.super_class = VSAccountMetadata;
  v2 = [(VSAccountMetadata *)&v5 init];
  if (v2)
  {
    v3 = VSAccountMetadataValueType();
    VSValueTypeInit(v3, v2);
  }

  return v2;
}

- (VSAccountMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = VSAccountMetadata;
  v5 = [(VSAccountMetadata *)&v8 init];
  if (v5)
  {
    v6 = VSAccountMetadataValueType();
    VSValueTypeInitWithCoder(v6, v5, coderCopy);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = VSAccountMetadataValueType();
  VSValueTypeEncodeWithCoder(v5, self, coderCopy);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = VSAccountMetadataValueType();
  v6 = VSValueTypeCopyWithZone(v5, self, zone);

  return v6;
}

- (unint64_t)hash
{
  v3 = VSAccountMetadataValueType();
  v4 = VSValueTypeHash(v3, self);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = VSAccountMetadataValueType();
  LOBYTE(self) = VSValueTypeIsEqual(v5, self, equalCopy);

  return self;
}

- (id)description
{
  v3 = VSAccountMetadataValueType();
  v4 = VSValueTypeDescription(v3, self);

  return v4;
}

- (NSString)SAMLAttributeQueryResponse
{
  accountProviderResponse = [(VSAccountMetadata *)self accountProviderResponse];
  authenticationScheme = [accountProviderResponse authenticationScheme];
  v4 = [authenticationScheme isEqual:@"SAML"];

  if (v4)
  {
    body = [accountProviderResponse body];
  }

  else
  {
    body = 0;
  }

  return body;
}

@end