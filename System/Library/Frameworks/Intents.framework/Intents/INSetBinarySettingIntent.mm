@interface INSetBinarySettingIntent
- (INSetBinarySettingIntent)initWithSettingMetadata:(id)metadata binaryValue:(int64_t)value temporalEventTrigger:(id)trigger;
- (INSettingMetadata)settingMetadata;
- (INTemporalEventTrigger)temporalEventTrigger;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)binaryValue;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setBinaryValue:(int64_t)value;
- (void)setSettingMetadata:(id)metadata;
- (void)setTemporalEventTrigger:(id)trigger;
@end

@implementation INSetBinarySettingIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INSetBinarySettingIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v14[3] = *MEMORY[0x1E69E9840];
  v13[0] = @"settingMetadata";
  settingMetadata = [(INSetBinarySettingIntent *)self settingMetadata];
  null = settingMetadata;
  if (!settingMetadata)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = null;
  v13[1] = @"binaryValue";
  binaryValue = [(INSetBinarySettingIntent *)self binaryValue];
  if ((binaryValue - 1) > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = *(&off_1E7287C40 + binaryValue - 1);
  }

  v7 = v6;
  v14[1] = v7;
  v13[2] = @"temporalEventTrigger";
  temporalEventTrigger = [(INSetBinarySettingIntent *)self temporalEventTrigger];
  null2 = temporalEventTrigger;
  if (!temporalEventTrigger)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = null2;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  if (!temporalEventTrigger)
  {
  }

  if (!settingMetadata)
  {
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)setTemporalEventTrigger:(id)trigger
{
  triggerCopy = trigger;
  _typedBackingStore = [(INSetBinarySettingIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTemporalEventTrigger(triggerCopy);

  [_typedBackingStore setTemporalEventTrigger:v5];
}

- (INTemporalEventTrigger)temporalEventTrigger
{
  _typedBackingStore = [(INSetBinarySettingIntent *)self _typedBackingStore];
  temporalEventTrigger = [_typedBackingStore temporalEventTrigger];
  v4 = INIntentSlotValueTransformFromTemporalEventTrigger(temporalEventTrigger);

  return v4;
}

- (void)setBinaryValue:(int64_t)value
{
  v3 = value - 1;
  _typedBackingStore = [(INSetBinarySettingIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (v3 > 2)
  {
    [_typedBackingStore setHasBinaryValue:0];
  }

  else
  {
    [_typedBackingStore setBinaryValue:?];
  }
}

- (int64_t)binaryValue
{
  _typedBackingStore = [(INSetBinarySettingIntent *)self _typedBackingStore];
  hasBinaryValue = [_typedBackingStore hasBinaryValue];
  _typedBackingStore2 = [(INSetBinarySettingIntent *)self _typedBackingStore];
  binaryValue = [_typedBackingStore2 binaryValue];
  if (((binaryValue - 1 < 3) & hasBinaryValue) != 0)
  {
    v7 = binaryValue;
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
  _typedBackingStore = [(INSetBinarySettingIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToSettingMetadata(metadataCopy);

  [_typedBackingStore setSettingMetadata:v5];
}

- (INSettingMetadata)settingMetadata
{
  _typedBackingStore = [(INSetBinarySettingIntent *)self _typedBackingStore];
  settingMetadata = [_typedBackingStore settingMetadata];
  v4 = INIntentSlotValueTransformFromSettingMetadata(settingMetadata);

  return v4;
}

- (INSetBinarySettingIntent)initWithSettingMetadata:(id)metadata binaryValue:(int64_t)value temporalEventTrigger:(id)trigger
{
  metadataCopy = metadata;
  triggerCopy = trigger;
  v13.receiver = self;
  v13.super_class = INSetBinarySettingIntent;
  v10 = [(INIntent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(INSetBinarySettingIntent *)v10 setSettingMetadata:metadataCopy];
    [(INSetBinarySettingIntent *)v11 setBinaryValue:value];
    [(INSetBinarySettingIntent *)v11 setTemporalEventTrigger:triggerCopy];
  }

  return v11;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSetBinarySettingIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSetBinarySettingIntent *)self _typedBackingStore];
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