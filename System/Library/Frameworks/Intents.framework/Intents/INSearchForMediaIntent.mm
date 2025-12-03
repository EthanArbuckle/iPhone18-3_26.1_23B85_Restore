@interface INSearchForMediaIntent
- (INMediaSearch)mediaSearch;
- (INPrivateSearchForMediaIntentData)privateSearchForMediaIntentData;
- (INSearchForMediaIntent)initWithMediaItems:(NSArray *)mediaItems mediaSearch:(INMediaSearch *)mediaSearch;
- (NSArray)mediaItems;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setMediaItems:(id)items;
- (void)setMediaSearch:(id)search;
- (void)setPrivateSearchForMediaIntentData:(id)data;
@end

@implementation INSearchForMediaIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INSearchForMediaIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"mediaItems";
  mediaItems = [(INSearchForMediaIntent *)self mediaItems];
  null = mediaItems;
  if (!mediaItems)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"mediaSearch";
  v11[0] = null;
  mediaSearch = [(INSearchForMediaIntent *)self mediaSearch];
  null2 = mediaSearch;
  if (!mediaSearch)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!mediaSearch)
  {
  }

  if (!mediaItems)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)setPrivateSearchForMediaIntentData:(id)data
{
  dataCopy = data;
  _typedBackingStore = [(INSearchForMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToPrivateSearchForMediaIntentData(dataCopy);

  [_typedBackingStore setPrivateSearchForMediaIntentData:v5];
}

- (INPrivateSearchForMediaIntentData)privateSearchForMediaIntentData
{
  _typedBackingStore = [(INSearchForMediaIntent *)self _typedBackingStore];
  privateSearchForMediaIntentData = [_typedBackingStore privateSearchForMediaIntentData];
  v4 = INIntentSlotValueTransformFromPrivateSearchForMediaIntentData(privateSearchForMediaIntentData);

  return v4;
}

- (void)setMediaSearch:(id)search
{
  searchCopy = search;
  _typedBackingStore = [(INSearchForMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToMediaSearch(searchCopy);

  [_typedBackingStore setMediaSearch:v5];
}

- (INMediaSearch)mediaSearch
{
  _typedBackingStore = [(INSearchForMediaIntent *)self _typedBackingStore];
  mediaSearch = [_typedBackingStore mediaSearch];
  v4 = INIntentSlotValueTransformFromMediaSearch(mediaSearch);

  return v4;
}

- (void)setMediaItems:(id)items
{
  itemsCopy = items;
  _typedBackingStore = [(INSearchForMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToMediaItemValues(itemsCopy);

  [_typedBackingStore setMediaItems:v5];
}

- (NSArray)mediaItems
{
  _typedBackingStore = [(INSearchForMediaIntent *)self _typedBackingStore];
  mediaItems = [_typedBackingStore mediaItems];
  v4 = INIntentSlotValueTransformFromMediaItemValues(mediaItems);

  return v4;
}

- (INSearchForMediaIntent)initWithMediaItems:(NSArray *)mediaItems mediaSearch:(INMediaSearch *)mediaSearch
{
  v6 = mediaItems;
  v7 = mediaSearch;
  v11.receiver = self;
  v11.super_class = INSearchForMediaIntent;
  v8 = [(INIntent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(INSearchForMediaIntent *)v8 setMediaItems:v6];
    [(INSearchForMediaIntent *)v9 setMediaSearch:v7];
  }

  return v9;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSearchForMediaIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSearchForMediaIntent *)self _typedBackingStore];
  intentMetadata = [_typedBackingStore intentMetadata];

  return intentMetadata;
}

- (id)_typedBackingStore
{
  backingStore = [(INIntent *)self backingStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = backingStore;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end