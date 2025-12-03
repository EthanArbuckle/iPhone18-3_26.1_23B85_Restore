@interface INGetCarPowerLevelStatusIntent
- (INGetCarPowerLevelStatusIntent)initWithCarName:(INSpeakableString *)carName;
- (INSpeakableString)carName;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setCarName:(id)name;
@end

@implementation INGetCarPowerLevelStatusIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INGetCarPowerLevelStatusIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"carName";
  carName = [(INGetCarPowerLevelStatusIntent *)self carName];
  null = carName;
  if (!carName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!carName)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setCarName:(id)name
{
  nameCopy = name;
  _typedBackingStore = [(INGetCarPowerLevelStatusIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(nameCopy);

  [_typedBackingStore setCarName:v5];
}

- (INSpeakableString)carName
{
  _typedBackingStore = [(INGetCarPowerLevelStatusIntent *)self _typedBackingStore];
  carName = [_typedBackingStore carName];
  v4 = INIntentSlotValueTransformFromDataString(carName);

  return v4;
}

- (INGetCarPowerLevelStatusIntent)initWithCarName:(INSpeakableString *)carName
{
  v4 = carName;
  v8.receiver = self;
  v8.super_class = INGetCarPowerLevelStatusIntent;
  v5 = [(INIntent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(INGetCarPowerLevelStatusIntent *)v5 setCarName:v4];
  }

  return v6;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INGetCarPowerLevelStatusIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INGetCarPowerLevelStatusIntent *)self _typedBackingStore];
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