@interface INAddMediaIntent
- (INAddMediaIntent)initWithMediaItems:(NSArray *)mediaItems mediaSearch:(INMediaSearch *)mediaSearch mediaDestination:(INMediaDestination *)mediaDestination;
- (INMediaDestination)mediaDestination;
- (INMediaSearch)mediaSearch;
- (INPrivateAddMediaIntentData)privateAddMediaIntentData;
- (NSArray)mediaItems;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setMediaDestination:(id)a3;
- (void)setMediaItems:(id)a3;
- (void)setMediaSearch:(id)a3;
- (void)setPrivateAddMediaIntentData:(id)a3;
@end

@implementation INAddMediaIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INAddMediaIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"mediaItems";
  v3 = [(INAddMediaIntent *)self mediaItems];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v4;
  v12[1] = @"mediaSearch";
  v5 = [(INAddMediaIntent *)self mediaSearch];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v6;
  v12[2] = @"mediaDestination";
  v7 = [(INAddMediaIntent *)self mediaDestination];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (!v7)
  {
  }

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setPrivateAddMediaIntentData:(id)a3
{
  v4 = a3;
  v6 = [(INAddMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToPrivateAddMediaIntentData(v4);

  [v6 setPrivateAddMediaIntentData:v5];
}

- (INPrivateAddMediaIntentData)privateAddMediaIntentData
{
  v2 = [(INAddMediaIntent *)self _typedBackingStore];
  v3 = [v2 privateAddMediaIntentData];
  v4 = INIntentSlotValueTransformFromPrivateAddMediaIntentData(v3);

  return v4;
}

- (void)setMediaDestination:(id)a3
{
  v4 = a3;
  v6 = [(INAddMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToMediaDestination(v4);

  [v6 setMediaDestination:v5];
}

- (INMediaDestination)mediaDestination
{
  v2 = [(INAddMediaIntent *)self _typedBackingStore];
  v3 = [v2 mediaDestination];
  v4 = INIntentSlotValueTransformFromMediaDestination(v3);

  return v4;
}

- (void)setMediaSearch:(id)a3
{
  v4 = a3;
  v6 = [(INAddMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToMediaSearch(v4);

  [v6 setMediaSearch:v5];
}

- (INMediaSearch)mediaSearch
{
  v2 = [(INAddMediaIntent *)self _typedBackingStore];
  v3 = [v2 mediaSearch];
  v4 = INIntentSlotValueTransformFromMediaSearch(v3);

  return v4;
}

- (void)setMediaItems:(id)a3
{
  v4 = a3;
  v6 = [(INAddMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToMediaItemValues(v4);

  [v6 setMediaItems:v5];
}

- (NSArray)mediaItems
{
  v2 = [(INAddMediaIntent *)self _typedBackingStore];
  v3 = [v2 mediaItems];
  v4 = INIntentSlotValueTransformFromMediaItemValues(v3);

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

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INAddMediaIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INAddMediaIntent *)self _typedBackingStore];
  v3 = [v2 intentMetadata];

  return v3;
}

- (id)_typedBackingStore
{
  v2 = [(INIntent *)self backingStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end