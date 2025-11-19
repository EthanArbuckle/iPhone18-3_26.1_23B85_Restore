@interface VSAccountMetadata
- (BOOL)isEqual:(id)a3;
- (NSString)SAMLAttributeQueryResponse;
- (VSAccountMetadata)init;
- (VSAccountMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (VSAccountMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VSAccountMetadata;
  v5 = [(VSAccountMetadata *)&v8 init];
  if (v5)
  {
    v6 = VSAccountMetadataValueType();
    VSValueTypeInitWithCoder(v6, v5, v4);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = VSAccountMetadataValueType();
  VSValueTypeEncodeWithCoder(v5, self, v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = VSAccountMetadataValueType();
  v6 = VSValueTypeCopyWithZone(v5, self, a3);

  return v6;
}

- (unint64_t)hash
{
  v3 = VSAccountMetadataValueType();
  v4 = VSValueTypeHash(v3, self);

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = VSAccountMetadataValueType();
  LOBYTE(self) = VSValueTypeIsEqual(v5, self, v4);

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
  v2 = [(VSAccountMetadata *)self accountProviderResponse];
  v3 = [v2 authenticationScheme];
  v4 = [v3 isEqual:@"SAML"];

  if (v4)
  {
    v5 = [v2 body];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end