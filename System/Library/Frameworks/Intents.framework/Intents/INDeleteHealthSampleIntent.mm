@interface INDeleteHealthSampleIntent
- (INDeleteHealthSampleIntent)initWithSampleUuids:(id)uuids;
- (NSArray)sampleUuids;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setSampleUuids:(id)uuids;
@end

@implementation INDeleteHealthSampleIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INDeleteHealthSampleIntent *)self _typedBackingStore];
  v11 = idCopy;
  v8 = [_typedBackingStore copy];
  sampleUuids = [_typedBackingStore sampleUuids];
  v10 = INIntentSlotValueRedactedStringsFromStrings(sampleUuids, options, v11);

  [v8 setSampleUuids:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"sampleUuids";
  sampleUuids = [(INDeleteHealthSampleIntent *)self sampleUuids];
  null = sampleUuids;
  if (!sampleUuids)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!sampleUuids)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setSampleUuids:(id)uuids
{
  uuidsCopy = uuids;
  _typedBackingStore = [(INDeleteHealthSampleIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToStrings(uuidsCopy);

  [_typedBackingStore setSampleUuids:v5];
}

- (NSArray)sampleUuids
{
  _typedBackingStore = [(INDeleteHealthSampleIntent *)self _typedBackingStore];
  sampleUuids = [_typedBackingStore sampleUuids];
  v4 = INIntentSlotValueTransformFromStrings(sampleUuids);

  return v4;
}

- (INDeleteHealthSampleIntent)initWithSampleUuids:(id)uuids
{
  uuidsCopy = uuids;
  v8.receiver = self;
  v8.super_class = INDeleteHealthSampleIntent;
  v5 = [(INIntent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(INDeleteHealthSampleIntent *)v5 setSampleUuids:uuidsCopy];
  }

  return v6;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INDeleteHealthSampleIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INDeleteHealthSampleIntent *)self _typedBackingStore];
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