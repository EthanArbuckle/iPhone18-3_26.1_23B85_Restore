@interface MPStoreItemMetadataImportDescriptor
- (MPStoreItemMetadataImportDescriptor)initWithPayload:(id)payload userIdentity:(id)identity;
@end

@implementation MPStoreItemMetadataImportDescriptor

- (MPStoreItemMetadataImportDescriptor)initWithPayload:(id)payload userIdentity:(id)identity
{
  payloadCopy = payload;
  identityCopy = identity;
  v12.receiver = self;
  v12.super_class = MPStoreItemMetadataImportDescriptor;
  v9 = [(MPStoreItemMetadataImportDescriptor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userIdentity, identity);
    objc_storeStrong(&v10->_platformDictionary, payload);
  }

  return v10;
}

@end