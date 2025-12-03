@interface INAddMediaIntent
- (INAddMediaIntent)initWithMediaItems:(NSArray *)mediaItems mediaSearch:(INMediaSearch *)mediaSearch mediaDestination:(INMediaDestination *)mediaDestination;
- (INMediaDestination)mediaDestination;
- (INMediaSearch)mediaSearch;
- (INPrivateAddMediaIntentData)privateAddMediaIntentData;
- (NSArray)mediaItems;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setMediaDestination:(id)destination;
- (void)setMediaItems:(id)items;
- (void)setMediaSearch:(id)search;
- (void)setPrivateAddMediaIntentData:(id)data;
@end

@implementation INAddMediaIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INAddMediaIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"mediaItems";
  mediaItems = [(INAddMediaIntent *)self mediaItems];
  null = mediaItems;
  if (!mediaItems)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"mediaSearch";
  mediaSearch = [(INAddMediaIntent *)self mediaSearch];
  null2 = mediaSearch;
  if (!mediaSearch)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"mediaDestination";
  mediaDestination = [(INAddMediaIntent *)self mediaDestination];
  null3 = mediaDestination;
  if (!mediaDestination)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (!mediaDestination)
  {
  }

  if (!mediaSearch)
  {
  }

  if (!mediaItems)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setPrivateAddMediaIntentData:(id)data
{
  dataCopy = data;
  _typedBackingStore = [(INAddMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToPrivateAddMediaIntentData(dataCopy);

  [_typedBackingStore setPrivateAddMediaIntentData:v5];
}

- (INPrivateAddMediaIntentData)privateAddMediaIntentData
{
  _typedBackingStore = [(INAddMediaIntent *)self _typedBackingStore];
  privateAddMediaIntentData = [_typedBackingStore privateAddMediaIntentData];
  v4 = INIntentSlotValueTransformFromPrivateAddMediaIntentData(privateAddMediaIntentData);

  return v4;
}

- (void)setMediaDestination:(id)destination
{
  destinationCopy = destination;
  _typedBackingStore = [(INAddMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToMediaDestination(destinationCopy);

  [_typedBackingStore setMediaDestination:v5];
}

- (INMediaDestination)mediaDestination
{
  _typedBackingStore = [(INAddMediaIntent *)self _typedBackingStore];
  mediaDestination = [_typedBackingStore mediaDestination];
  v4 = INIntentSlotValueTransformFromMediaDestination(mediaDestination);

  return v4;
}

- (void)setMediaSearch:(id)search
{
  searchCopy = search;
  _typedBackingStore = [(INAddMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToMediaSearch(searchCopy);

  [_typedBackingStore setMediaSearch:v5];
}

- (INMediaSearch)mediaSearch
{
  _typedBackingStore = [(INAddMediaIntent *)self _typedBackingStore];
  mediaSearch = [_typedBackingStore mediaSearch];
  v4 = INIntentSlotValueTransformFromMediaSearch(mediaSearch);

  return v4;
}

- (void)setMediaItems:(id)items
{
  itemsCopy = items;
  _typedBackingStore = [(INAddMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToMediaItemValues(itemsCopy);

  [_typedBackingStore setMediaItems:v5];
}

- (NSArray)mediaItems
{
  _typedBackingStore = [(INAddMediaIntent *)self _typedBackingStore];
  mediaItems = [_typedBackingStore mediaItems];
  v4 = INIntentSlotValueTransformFromMediaItemValues(mediaItems);

  return v4;
}

- (INAddMediaIntent)initWithMediaItems:(NSArray *)mediaItems mediaSearch:(INMediaSearch *)mediaSearch mediaDestination:(INMediaDestination *)mediaDestination
{
  v8 = mediaItems;
  v9 = mediaSearch;
  v10 = mediaDestination;
  v14.receiver = self;
  v14.super_class = INAddMediaIntent;
  v11 = [(INIntent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(INAddMediaIntent *)v11 setMediaItems:v8];
    [(INAddMediaIntent *)v12 setMediaSearch:v9];
    [(INAddMediaIntent *)v12 setMediaDestination:v10];
  }

  return v12;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INAddMediaIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INAddMediaIntent *)self _typedBackingStore];
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