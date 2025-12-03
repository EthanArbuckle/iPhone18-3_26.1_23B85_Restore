@interface INGetSettingIntent
- (INGetSettingIntent)initWithSettingMetadata:(id)metadata confirmationValue:(int64_t)value;
- (INSettingMetadata)settingMetadata;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)confirmationValue;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setConfirmationValue:(int64_t)value;
- (void)setSettingMetadata:(id)metadata;
@end

@implementation INGetSettingIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INGetSettingIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"settingMetadata";
  settingMetadata = [(INGetSettingIntent *)self settingMetadata];
  null = settingMetadata;
  if (!settingMetadata)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = @"confirmationValue";
  v12[0] = null;
  confirmationValue = [(INGetSettingIntent *)self confirmationValue];
  if ((confirmationValue - 1) > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = *(&off_1E7287C40 + confirmationValue - 1);
  }

  v7 = v6;
  v12[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  if (!settingMetadata)
  {
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)setConfirmationValue:(int64_t)value
{
  v3 = value - 1;
  _typedBackingStore = [(INGetSettingIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (v3 > 2)
  {
    [_typedBackingStore setHasConfirmationValue:0];
  }

  else
  {
    [_typedBackingStore setConfirmationValue:?];
  }
}

- (int64_t)confirmationValue
{
  _typedBackingStore = [(INGetSettingIntent *)self _typedBackingStore];
  hasConfirmationValue = [_typedBackingStore hasConfirmationValue];
  _typedBackingStore2 = [(INGetSettingIntent *)self _typedBackingStore];
  confirmationValue = [_typedBackingStore2 confirmationValue];
  if (((confirmationValue - 1 < 3) & hasConfirmationValue) != 0)
  {
    v7 = confirmationValue;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setSettingMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INGetSettingIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToSettingMetadata(metadataCopy);

  [_typedBackingStore setSettingMetadata:v5];
}

- (INSettingMetadata)settingMetadata
{
  _typedBackingStore = [(INGetSettingIntent *)self _typedBackingStore];
  settingMetadata = [_typedBackingStore settingMetadata];
  v4 = INIntentSlotValueTransformFromSettingMetadata(settingMetadata);

  return v4;
}

- (INGetSettingIntent)initWithSettingMetadata:(id)metadata confirmationValue:(int64_t)value
{
  metadataCopy = metadata;
  v10.receiver = self;
  v10.super_class = INGetSettingIntent;
  v7 = [(INIntent *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(INGetSettingIntent *)v7 setSettingMetadata:metadataCopy];
    [(INGetSettingIntent *)v8 setConfirmationValue:value];
  }

  return v8;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INGetSettingIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INGetSettingIntent *)self _typedBackingStore];
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