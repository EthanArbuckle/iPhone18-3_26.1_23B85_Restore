@interface INSetNumericSettingIntent
- (INNumericSettingValue)numericValue;
- (INSetNumericSettingIntent)initWithSettingMetadata:(id)metadata numericValue:(id)value boundedValue:(int64_t)boundedValue action:(int64_t)action temporalEventTrigger:(id)trigger;
- (INSettingMetadata)settingMetadata;
- (INTemporalEventTrigger)temporalEventTrigger;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)action;
- (int64_t)boundedValue;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setAction:(int64_t)action;
- (void)setBoundedValue:(int64_t)value;
- (void)setNumericValue:(id)value;
- (void)setSettingMetadata:(id)metadata;
- (void)setTemporalEventTrigger:(id)trigger;
@end

@implementation INSetNumericSettingIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INSetNumericSettingIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v19[5] = *MEMORY[0x1E69E9840];
  v18[0] = @"settingMetadata";
  settingMetadata = [(INSetNumericSettingIntent *)self settingMetadata];
  null = settingMetadata;
  if (!settingMetadata)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19[0] = null;
  v18[1] = @"numericValue";
  numericValue = [(INSetNumericSettingIntent *)self numericValue];
  null2 = numericValue;
  if (!numericValue)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = null2;
  v18[2] = @"boundedValue";
  boundedValue = [(INSetNumericSettingIntent *)self boundedValue];
  if ((boundedValue - 1) > 2)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_1E7287E78[boundedValue - 1];
  }

  v9 = v8;
  v19[2] = v9;
  v18[3] = @"action";
  action = [(INSetNumericSettingIntent *)self action];
  if ((action - 1) > 2)
  {
    v11 = @"unknown";
  }

  else
  {
    v11 = *(&off_1E7287CF8 + action - 1);
  }

  v12 = v11;
  v19[3] = v12;
  v18[4] = @"temporalEventTrigger";
  temporalEventTrigger = [(INSetNumericSettingIntent *)self temporalEventTrigger];
  null3 = temporalEventTrigger;
  if (!temporalEventTrigger)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v19[4] = null3;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:5];
  if (!temporalEventTrigger)
  {
  }

  if (!numericValue)
  {
  }

  if (!settingMetadata)
  {
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)setTemporalEventTrigger:(id)trigger
{
  triggerCopy = trigger;
  _typedBackingStore = [(INSetNumericSettingIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTemporalEventTrigger(triggerCopy);

  [_typedBackingStore setTemporalEventTrigger:v5];
}

- (INTemporalEventTrigger)temporalEventTrigger
{
  _typedBackingStore = [(INSetNumericSettingIntent *)self _typedBackingStore];
  temporalEventTrigger = [_typedBackingStore temporalEventTrigger];
  v4 = INIntentSlotValueTransformFromTemporalEventTrigger(temporalEventTrigger);

  return v4;
}

- (void)setAction:(int64_t)action
{
  v3 = action - 1;
  _typedBackingStore = [(INSetNumericSettingIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (v3 > 2)
  {
    [_typedBackingStore setHasAction:0];
  }

  else
  {
    [_typedBackingStore setAction:?];
  }
}

- (int64_t)action
{
  _typedBackingStore = [(INSetNumericSettingIntent *)self _typedBackingStore];
  hasAction = [_typedBackingStore hasAction];
  _typedBackingStore2 = [(INSetNumericSettingIntent *)self _typedBackingStore];
  action = [_typedBackingStore2 action];
  if (((action - 1 < 3) & hasAction) != 0)
  {
    v7 = action;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setBoundedValue:(int64_t)value
{
  v3 = value - 1;
  _typedBackingStore = [(INSetNumericSettingIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (v3 > 2)
  {
    [_typedBackingStore setHasBoundedValue:0];
  }

  else
  {
    [_typedBackingStore setBoundedValue:?];
  }
}

- (int64_t)boundedValue
{
  _typedBackingStore = [(INSetNumericSettingIntent *)self _typedBackingStore];
  hasBoundedValue = [_typedBackingStore hasBoundedValue];
  _typedBackingStore2 = [(INSetNumericSettingIntent *)self _typedBackingStore];
  boundedValue = [_typedBackingStore2 boundedValue];
  if (((boundedValue - 1 < 3) & hasBoundedValue) != 0)
  {
    v7 = boundedValue;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setNumericValue:(id)value
{
  valueCopy = value;
  _typedBackingStore = [(INSetNumericSettingIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToNumericSettingValue(valueCopy);

  [_typedBackingStore setNumericValue:v5];
}

- (INNumericSettingValue)numericValue
{
  _typedBackingStore = [(INSetNumericSettingIntent *)self _typedBackingStore];
  numericValue = [_typedBackingStore numericValue];
  v4 = INIntentSlotValueTransformFromNumericSettingValue(numericValue);

  return v4;
}

- (void)setSettingMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSetNumericSettingIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToSettingMetadata(metadataCopy);

  [_typedBackingStore setSettingMetadata:v5];
}

- (INSettingMetadata)settingMetadata
{
  _typedBackingStore = [(INSetNumericSettingIntent *)self _typedBackingStore];
  settingMetadata = [_typedBackingStore settingMetadata];
  v4 = INIntentSlotValueTransformFromSettingMetadata(settingMetadata);

  return v4;
}

- (INSetNumericSettingIntent)initWithSettingMetadata:(id)metadata numericValue:(id)value boundedValue:(int64_t)boundedValue action:(int64_t)action temporalEventTrigger:(id)trigger
{
  metadataCopy = metadata;
  valueCopy = value;
  triggerCopy = trigger;
  v18.receiver = self;
  v18.super_class = INSetNumericSettingIntent;
  v15 = [(INIntent *)&v18 init];
  v16 = v15;
  if (v15)
  {
    [(INSetNumericSettingIntent *)v15 setSettingMetadata:metadataCopy];
    [(INSetNumericSettingIntent *)v16 setNumericValue:valueCopy];
    [(INSetNumericSettingIntent *)v16 setBoundedValue:boundedValue];
    [(INSetNumericSettingIntent *)v16 setAction:action];
    [(INSetNumericSettingIntent *)v16 setTemporalEventTrigger:triggerCopy];
  }

  return v16;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSetNumericSettingIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSetNumericSettingIntent *)self _typedBackingStore];
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