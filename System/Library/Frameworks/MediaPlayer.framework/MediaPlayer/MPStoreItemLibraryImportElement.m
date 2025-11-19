@interface MPStoreItemLibraryImportElement
- (MPStoreItemLibraryImportElement)initWithStoreItemID:(int64_t)a3 additionalTrackMetadata:(id)a4;
@end

@implementation MPStoreItemLibraryImportElement

- (MPStoreItemLibraryImportElement)initWithStoreItemID:(int64_t)a3 additionalTrackMetadata:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = MPStoreItemLibraryImportElement;
  v7 = [(MPStoreItemLibraryImportElement *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_storeItemID = a3;
    v9 = [v6 copy];
    additionalTrackMetadata = v8->_additionalTrackMetadata;
    v8->_additionalTrackMetadata = v9;
  }

  return v8;
}

@end