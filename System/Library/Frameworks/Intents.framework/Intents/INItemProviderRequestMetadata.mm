@interface INItemProviderRequestMetadata
- (INItemProviderRequestMetadata)initWithCoder:(id)coder;
- (INItemProviderRequestMetadata)initWithMetadata:(id)metadata supportedContentTypes:(id)types;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INItemProviderRequestMetadata

- (void)encodeWithCoder:(id)coder
{
  metadata = self->_metadata;
  coderCopy = coder;
  [coderCopy encodeObject:metadata forKey:@"metadata"];
  [coderCopy encodeObject:self->_supportedContentTypes forKey:@"supportedContentTypes"];
}

- (INItemProviderRequestMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"supportedContentTypes"];

  v10 = [(INItemProviderRequestMetadata *)self initWithMetadata:v5 supportedContentTypes:v9];
  return v10;
}

- (INItemProviderRequestMetadata)initWithMetadata:(id)metadata supportedContentTypes:(id)types
{
  metadataCopy = metadata;
  typesCopy = types;
  v8 = [(INItemProviderRequestMetadata *)self init];
  if (v8)
  {
    v9 = [metadataCopy copy];
    metadata = v8->_metadata;
    v8->_metadata = v9;

    v11 = [typesCopy copy];
    supportedContentTypes = v8->_supportedContentTypes;
    v8->_supportedContentTypes = v11;

    v13 = v8;
  }

  return v8;
}

@end