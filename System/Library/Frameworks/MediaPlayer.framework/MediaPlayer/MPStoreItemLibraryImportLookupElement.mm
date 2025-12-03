@interface MPStoreItemLibraryImportLookupElement
- (MPStoreItemLibraryImportLookupElement)initWithLookupDictionary:(id)dictionary additionalTrackMetadata:(id)metadata;
@end

@implementation MPStoreItemLibraryImportLookupElement

- (MPStoreItemLibraryImportLookupElement)initWithLookupDictionary:(id)dictionary additionalTrackMetadata:(id)metadata
{
  dictionaryCopy = dictionary;
  metadataCopy = metadata;
  v8 = [dictionaryCopy valueForKey:@"id"];
  longLongValue = [v8 longLongValue];

  v16.receiver = self;
  v16.super_class = MPStoreItemLibraryImportLookupElement;
  v10 = [(MPStoreItemLibraryImportElement *)&v16 initWithStoreItemID:longLongValue additionalTrackMetadata:metadataCopy];

  if (v10)
  {
    v11 = [dictionaryCopy copy];
    lookupDictionary = v10->_lookupDictionary;
    v10->_lookupDictionary = v11;

    v13 = [objc_alloc(MEMORY[0x1E69E4608]) initWithMetadataDictionary:dictionaryCopy];
    storeItem = v10->_storeItem;
    v10->_storeItem = v13;
  }

  return v10;
}

@end