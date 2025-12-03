@interface MPStoreItemLibraryImportElement
- (MPStoreItemLibraryImportElement)initWithStoreItemID:(int64_t)d additionalTrackMetadata:(id)metadata;
@end

@implementation MPStoreItemLibraryImportElement

- (MPStoreItemLibraryImportElement)initWithStoreItemID:(int64_t)d additionalTrackMetadata:(id)metadata
{
  metadataCopy = metadata;
  v12.receiver = self;
  v12.super_class = MPStoreItemLibraryImportElement;
  v7 = [(MPStoreItemLibraryImportElement *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_storeItemID = d;
    v9 = [metadataCopy copy];
    additionalTrackMetadata = v8->_additionalTrackMetadata;
    v8->_additionalTrackMetadata = v9;
  }

  return v8;
}

@end