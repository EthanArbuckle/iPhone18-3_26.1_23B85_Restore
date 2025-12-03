@interface INConfigureHomeIntent
- (INConfigureHomeIntent)initWithEntities:(id)entities;
- (NSArray)entities;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setEntities:(id)entities;
@end

@implementation INConfigureHomeIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INConfigureHomeIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"entities";
  entities = [(INConfigureHomeIntent *)self entities];
  null = entities;
  if (!entities)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!entities)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setEntities:(id)entities
{
  entitiesCopy = entities;
  _typedBackingStore = [(INConfigureHomeIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToHomeEntities(entitiesCopy);

  [_typedBackingStore setEntities:v5];
}

- (NSArray)entities
{
  _typedBackingStore = [(INConfigureHomeIntent *)self _typedBackingStore];
  entities = [_typedBackingStore entities];
  v4 = INIntentSlotValueTransformFromHomeEntities(entities);

  return v4;
}

- (INConfigureHomeIntent)initWithEntities:(id)entities
{
  entitiesCopy = entities;
  v8.receiver = self;
  v8.super_class = INConfigureHomeIntent;
  v5 = [(INIntent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(INConfigureHomeIntent *)v5 setEntities:entitiesCopy];
  }

  return v6;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INConfigureHomeIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INConfigureHomeIntent *)self _typedBackingStore];
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