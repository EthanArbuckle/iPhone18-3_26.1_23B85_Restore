@interface MPStoreItemMetadataImportDescriptor
- (MPStoreItemMetadataImportDescriptor)initWithPayload:(id)a3 userIdentity:(id)a4;
@end

@implementation MPStoreItemMetadataImportDescriptor

- (MPStoreItemMetadataImportDescriptor)initWithPayload:(id)a3 userIdentity:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MPStoreItemMetadataImportDescriptor;
  v9 = [(MPStoreItemMetadataImportDescriptor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userIdentity, a4);
    objc_storeStrong(&v10->_platformDictionary, a3);
  }

  return v10;
}

@end