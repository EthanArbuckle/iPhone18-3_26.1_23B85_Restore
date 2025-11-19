@interface MPStoreItemLibraryImportLookupElement
- (MPStoreItemLibraryImportLookupElement)initWithLookupDictionary:(id)a3 additionalTrackMetadata:(id)a4;
@end

@implementation MPStoreItemLibraryImportLookupElement

- (MPStoreItemLibraryImportLookupElement)initWithLookupDictionary:(id)a3 additionalTrackMetadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 valueForKey:@"id"];
  v9 = [v8 longLongValue];

  v16.receiver = self;
  v16.super_class = MPStoreItemLibraryImportLookupElement;
  v10 = [(MPStoreItemLibraryImportElement *)&v16 initWithStoreItemID:v9 additionalTrackMetadata:v7];

  if (v10)
  {
    v11 = [v6 copy];
    lookupDictionary = v10->_lookupDictionary;
    v10->_lookupDictionary = v11;

    v13 = [objc_alloc(MEMORY[0x1E69E4608]) initWithMetadataDictionary:v6];
    storeItem = v10->_storeItem;
    v10->_storeItem = v13;
  }

  return v10;
}

@end