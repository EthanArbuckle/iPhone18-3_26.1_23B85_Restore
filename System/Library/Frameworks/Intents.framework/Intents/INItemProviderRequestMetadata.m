@interface INItemProviderRequestMetadata
- (INItemProviderRequestMetadata)initWithCoder:(id)a3;
- (INItemProviderRequestMetadata)initWithMetadata:(id)a3 supportedContentTypes:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INItemProviderRequestMetadata

- (void)encodeWithCoder:(id)a3
{
  metadata = self->_metadata;
  v5 = a3;
  [v5 encodeObject:metadata forKey:@"metadata"];
  [v5 encodeObject:self->_supportedContentTypes forKey:@"supportedContentTypes"];
}

- (INItemProviderRequestMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"supportedContentTypes"];

  v10 = [(INItemProviderRequestMetadata *)self initWithMetadata:v5 supportedContentTypes:v9];
  return v10;
}

- (INItemProviderRequestMetadata)initWithMetadata:(id)a3 supportedContentTypes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(INItemProviderRequestMetadata *)self init];
  if (v8)
  {
    v9 = [v6 copy];
    metadata = v8->_metadata;
    v8->_metadata = v9;

    v11 = [v7 copy];
    supportedContentTypes = v8->_supportedContentTypes;
    v8->_supportedContentTypes = v11;

    v13 = v8;
  }

  return v8;
}

@end