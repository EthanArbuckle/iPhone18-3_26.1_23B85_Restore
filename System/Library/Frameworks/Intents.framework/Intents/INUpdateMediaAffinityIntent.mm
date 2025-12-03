@interface INUpdateMediaAffinityIntent
- (INMediaAffinityType)affinityType;
- (INMediaSearch)mediaSearch;
- (INPrivateUpdateMediaAffinityIntentData)privateUpdateMediaAffinityIntentData;
- (INUpdateMediaAffinityIntent)initWithMediaItems:(NSArray *)mediaItems mediaSearch:(INMediaSearch *)mediaSearch affinityType:(INMediaAffinityType)affinityType;
- (NSArray)mediaItems;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setAffinityType:(int64_t)type;
- (void)setMediaItems:(id)items;
- (void)setMediaSearch:(id)search;
- (void)setPrivateUpdateMediaAffinityIntentData:(id)data;
@end

@implementation INUpdateMediaAffinityIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INUpdateMediaAffinityIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v14[3] = *MEMORY[0x1E69E9840];
  v13[0] = @"mediaItems";
  mediaItems = [(INUpdateMediaAffinityIntent *)self mediaItems];
  null = mediaItems;
  if (!mediaItems)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = null;
  v13[1] = @"mediaSearch";
  mediaSearch = [(INUpdateMediaAffinityIntent *)self mediaSearch];
  null2 = mediaSearch;
  if (!mediaSearch)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = null2;
  v13[2] = @"affinityType";
  affinityType = [(INUpdateMediaAffinityIntent *)self affinityType];
  v8 = @"unknown";
  if (affinityType == INMediaAffinityTypeDislike)
  {
    v8 = @"dislike";
  }

  if (affinityType == INMediaAffinityTypeLike)
  {
    v8 = @"like";
  }

  v9 = v8;
  v14[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  if (!mediaSearch)
  {
  }

  if (!mediaItems)
  {
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)setPrivateUpdateMediaAffinityIntentData:(id)data
{
  dataCopy = data;
  _typedBackingStore = [(INUpdateMediaAffinityIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToPrivateUpdateMediaAffinityIntentData(dataCopy);

  [_typedBackingStore setPrivateUpdateMediaAffinityIntentData:v5];
}

- (INPrivateUpdateMediaAffinityIntentData)privateUpdateMediaAffinityIntentData
{
  _typedBackingStore = [(INUpdateMediaAffinityIntent *)self _typedBackingStore];
  privateUpdateMediaAffinityIntentData = [_typedBackingStore privateUpdateMediaAffinityIntentData];
  v4 = INIntentSlotValueTransformFromPrivateUpdateMediaAffinityIntentData(privateUpdateMediaAffinityIntentData);

  return v4;
}

- (void)setAffinityType:(int64_t)type
{
  _typedBackingStore = [(INUpdateMediaAffinityIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (type > 2)
  {
    [_typedBackingStore setHasAffinityType:0];
  }

  else
  {
    [_typedBackingStore setAffinityType:type];
  }
}

- (INMediaAffinityType)affinityType
{
  _typedBackingStore = [(INUpdateMediaAffinityIntent *)self _typedBackingStore];
  hasAffinityType = [_typedBackingStore hasAffinityType];
  _typedBackingStore2 = [(INUpdateMediaAffinityIntent *)self _typedBackingStore];
  affinityType = [_typedBackingStore2 affinityType];
  v7 = affinityType == 1;
  if (affinityType == 2)
  {
    v7 = 2;
  }

  if (hasAffinityType)
  {
    v8 = v7;
  }

  else
  {
    v8 = INMediaAffinityTypeUnknown;
  }

  return v8;
}

- (void)setMediaSearch:(id)search
{
  searchCopy = search;
  _typedBackingStore = [(INUpdateMediaAffinityIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToMediaSearch(searchCopy);

  [_typedBackingStore setMediaSearch:v5];
}

- (INMediaSearch)mediaSearch
{
  _typedBackingStore = [(INUpdateMediaAffinityIntent *)self _typedBackingStore];
  mediaSearch = [_typedBackingStore mediaSearch];
  v4 = INIntentSlotValueTransformFromMediaSearch(mediaSearch);

  return v4;
}

- (void)setMediaItems:(id)items
{
  itemsCopy = items;
  _typedBackingStore = [(INUpdateMediaAffinityIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToMediaItemValues(itemsCopy);

  [_typedBackingStore setMediaItems:v5];
}

- (NSArray)mediaItems
{
  _typedBackingStore = [(INUpdateMediaAffinityIntent *)self _typedBackingStore];
  mediaItems = [_typedBackingStore mediaItems];
  v4 = INIntentSlotValueTransformFromMediaItemValues(mediaItems);

  return v4;
}

- (INUpdateMediaAffinityIntent)initWithMediaItems:(NSArray *)mediaItems mediaSearch:(INMediaSearch *)mediaSearch affinityType:(INMediaAffinityType)affinityType
{
  v8 = mediaItems;
  v9 = mediaSearch;
  v13.receiver = self;
  v13.super_class = INUpdateMediaAffinityIntent;
  v10 = [(INIntent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(INUpdateMediaAffinityIntent *)v10 setMediaItems:v8];
    [(INUpdateMediaAffinityIntent *)v11 setMediaSearch:v9];
    [(INUpdateMediaAffinityIntent *)v11 setAffinityType:affinityType];
  }

  return v11;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INUpdateMediaAffinityIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INUpdateMediaAffinityIntent *)self _typedBackingStore];
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