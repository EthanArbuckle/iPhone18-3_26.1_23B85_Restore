@interface INUpdateMediaAffinityIntent
- (INMediaAffinityType)affinityType;
- (INMediaSearch)mediaSearch;
- (INPrivateUpdateMediaAffinityIntentData)privateUpdateMediaAffinityIntentData;
- (INUpdateMediaAffinityIntent)initWithMediaItems:(NSArray *)mediaItems mediaSearch:(INMediaSearch *)mediaSearch affinityType:(INMediaAffinityType)affinityType;
- (NSArray)mediaItems;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setAffinityType:(int64_t)a3;
- (void)setMediaItems:(id)a3;
- (void)setMediaSearch:(id)a3;
- (void)setPrivateUpdateMediaAffinityIntentData:(id)a3;
@end

@implementation INUpdateMediaAffinityIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INUpdateMediaAffinityIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v14[3] = *MEMORY[0x1E69E9840];
  v13[0] = @"mediaItems";
  v3 = [(INUpdateMediaAffinityIntent *)self mediaItems];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = v4;
  v13[1] = @"mediaSearch";
  v5 = [(INUpdateMediaAffinityIntent *)self mediaSearch];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = v6;
  v13[2] = @"affinityType";
  v7 = [(INUpdateMediaAffinityIntent *)self affinityType];
  v8 = @"unknown";
  if (v7 == INMediaAffinityTypeDislike)
  {
    v8 = @"dislike";
  }

  if (v7 == INMediaAffinityTypeLike)
  {
    v8 = @"like";
  }

  v9 = v8;
  v14[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)setPrivateUpdateMediaAffinityIntentData:(id)a3
{
  v4 = a3;
  v6 = [(INUpdateMediaAffinityIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToPrivateUpdateMediaAffinityIntentData(v4);

  [v6 setPrivateUpdateMediaAffinityIntentData:v5];
}

- (INPrivateUpdateMediaAffinityIntentData)privateUpdateMediaAffinityIntentData
{
  v2 = [(INUpdateMediaAffinityIntent *)self _typedBackingStore];
  v3 = [v2 privateUpdateMediaAffinityIntentData];
  v4 = INIntentSlotValueTransformFromPrivateUpdateMediaAffinityIntentData(v3);

  return v4;
}

- (void)setAffinityType:(int64_t)a3
{
  v4 = [(INUpdateMediaAffinityIntent *)self _typedBackingStore];
  v5 = v4;
  if (a3 > 2)
  {
    [v4 setHasAffinityType:0];
  }

  else
  {
    [v4 setAffinityType:a3];
  }
}

- (INMediaAffinityType)affinityType
{
  v3 = [(INUpdateMediaAffinityIntent *)self _typedBackingStore];
  v4 = [v3 hasAffinityType];
  v5 = [(INUpdateMediaAffinityIntent *)self _typedBackingStore];
  v6 = [v5 affinityType];
  v7 = v6 == 1;
  if (v6 == 2)
  {
    v7 = 2;
  }

  if (v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = INMediaAffinityTypeUnknown;
  }

  return v8;
}

- (void)setMediaSearch:(id)a3
{
  v4 = a3;
  v6 = [(INUpdateMediaAffinityIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToMediaSearch(v4);

  [v6 setMediaSearch:v5];
}

- (INMediaSearch)mediaSearch
{
  v2 = [(INUpdateMediaAffinityIntent *)self _typedBackingStore];
  v3 = [v2 mediaSearch];
  v4 = INIntentSlotValueTransformFromMediaSearch(v3);

  return v4;
}

- (void)setMediaItems:(id)a3
{
  v4 = a3;
  v6 = [(INUpdateMediaAffinityIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToMediaItemValues(v4);

  [v6 setMediaItems:v5];
}

- (NSArray)mediaItems
{
  v2 = [(INUpdateMediaAffinityIntent *)self _typedBackingStore];
  v3 = [v2 mediaItems];
  v4 = INIntentSlotValueTransformFromMediaItemValues(v3);

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

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INUpdateMediaAffinityIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INUpdateMediaAffinityIntent *)self _typedBackingStore];
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