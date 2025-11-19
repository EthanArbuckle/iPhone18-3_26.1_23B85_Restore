@interface INSearchForMediaIntent
- (INMediaSearch)mediaSearch;
- (INPrivateSearchForMediaIntentData)privateSearchForMediaIntentData;
- (INSearchForMediaIntent)initWithMediaItems:(NSArray *)mediaItems mediaSearch:(INMediaSearch *)mediaSearch;
- (NSArray)mediaItems;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setMediaItems:(id)a3;
- (void)setMediaSearch:(id)a3;
- (void)setPrivateSearchForMediaIntentData:(id)a3;
@end

@implementation INSearchForMediaIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INSearchForMediaIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"mediaItems";
  v3 = [(INSearchForMediaIntent *)self mediaItems];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"mediaSearch";
  v11[0] = v4;
  v5 = [(INSearchForMediaIntent *)self mediaSearch];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)setPrivateSearchForMediaIntentData:(id)a3
{
  v4 = a3;
  v6 = [(INSearchForMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToPrivateSearchForMediaIntentData(v4);

  [v6 setPrivateSearchForMediaIntentData:v5];
}

- (INPrivateSearchForMediaIntentData)privateSearchForMediaIntentData
{
  v2 = [(INSearchForMediaIntent *)self _typedBackingStore];
  v3 = [v2 privateSearchForMediaIntentData];
  v4 = INIntentSlotValueTransformFromPrivateSearchForMediaIntentData(v3);

  return v4;
}

- (void)setMediaSearch:(id)a3
{
  v4 = a3;
  v6 = [(INSearchForMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToMediaSearch(v4);

  [v6 setMediaSearch:v5];
}

- (INMediaSearch)mediaSearch
{
  v2 = [(INSearchForMediaIntent *)self _typedBackingStore];
  v3 = [v2 mediaSearch];
  v4 = INIntentSlotValueTransformFromMediaSearch(v3);

  return v4;
}

- (void)setMediaItems:(id)a3
{
  v4 = a3;
  v6 = [(INSearchForMediaIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToMediaItemValues(v4);

  [v6 setMediaItems:v5];
}

- (NSArray)mediaItems
{
  v2 = [(INSearchForMediaIntent *)self _typedBackingStore];
  v3 = [v2 mediaItems];
  v4 = INIntentSlotValueTransformFromMediaItemValues(v3);

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

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSearchForMediaIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INSearchForMediaIntent *)self _typedBackingStore];
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