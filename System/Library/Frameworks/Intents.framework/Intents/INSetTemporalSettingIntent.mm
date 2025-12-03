@interface INSetTemporalSettingIntent
- (INDateComponentsRange)timeValue;
- (INSetTemporalSettingIntent)initWithSettingMetadata:(id)metadata timeValue:(id)value temporalEventTrigger:(id)trigger action:(int64_t)action;
- (INSettingMetadata)settingMetadata;
- (INTemporalEventTrigger)temporalEventTrigger;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)action;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setAction:(int64_t)action;
- (void)setSettingMetadata:(id)metadata;
- (void)setTemporalEventTrigger:(id)trigger;
- (void)setTimeValue:(id)value;
@end

@implementation INSetTemporalSettingIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INSetTemporalSettingIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v16[4] = *MEMORY[0x1E69E9840];
  v15[0] = @"settingMetadata";
  settingMetadata = [(INSetTemporalSettingIntent *)self settingMetadata];
  null = settingMetadata;
  if (!settingMetadata)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = null;
  v15[1] = @"timeValue";
  timeValue = [(INSetTemporalSettingIntent *)self timeValue];
  null2 = timeValue;
  if (!timeValue)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = null2;
  v15[2] = @"temporalEventTrigger";
  temporalEventTrigger = [(INSetTemporalSettingIntent *)self temporalEventTrigger];
  null3 = temporalEventTrigger;
  if (!temporalEventTrigger)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = null3;
  v15[3] = @"action";
  action = [(INSetTemporalSettingIntent *)self action];
  if ((action - 1) > 2)
  {
    v10 = @"unknown";
  }

  else
  {
    v10 = *(&off_1E7287CF8 + action - 1);
  }

  v11 = v10;
  v16[3] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];

  if (!temporalEventTrigger)
  {
  }

  if (!timeValue)
  {
  }

  if (!settingMetadata)
  {
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)setAction:(int64_t)action
{
  v3 = action - 1;
  _typedBackingStore = [(INSetTemporalSettingIntent *)self _typedBackingStore];
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
  _typedBackingStore = [(INSetTemporalSettingIntent *)self _typedBackingStore];
  hasAction = [_typedBackingStore hasAction];
  _typedBackingStore2 = [(INSetTemporalSettingIntent *)self _typedBackingStore];
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

- (void)setTemporalEventTrigger:(id)trigger
{
  triggerCopy = trigger;
  _typedBackingStore = [(INSetTemporalSettingIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTemporalEventTrigger(triggerCopy);

  [_typedBackingStore setTemporalEventTrigger:v5];
}

- (INTemporalEventTrigger)temporalEventTrigger
{
  _typedBackingStore = [(INSetTemporalSettingIntent *)self _typedBackingStore];
  temporalEventTrigger = [_typedBackingStore temporalEventTrigger];
  v4 = INIntentSlotValueTransformFromTemporalEventTrigger(temporalEventTrigger);

  return v4;
}

- (void)setTimeValue:(id)value
{
  valueCopy = value;
  _typedBackingStore = [(INSetTemporalSettingIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRangeValue(valueCopy);

  [_typedBackingStore setTimeValue:v5];
}

- (INDateComponentsRange)timeValue
{
  _typedBackingStore = [(INSetTemporalSettingIntent *)self _typedBackingStore];
  timeValue = [_typedBackingStore timeValue];
  v4 = INIntentSlotValueTransformFromDateTimeRangeValue(timeValue);

  return v4;
}

- (void)setSettingMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSetTemporalSettingIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToSettingMetadata(metadataCopy);

  [_typedBackingStore setSettingMetadata:v5];
}

- (INSettingMetadata)settingMetadata
{
  _typedBackingStore = [(INSetTemporalSettingIntent *)self _typedBackingStore];
  settingMetadata = [_typedBackingStore settingMetadata];
  v4 = INIntentSlotValueTransformFromSettingMetadata(settingMetadata);

  return v4;
}

- (INSetTemporalSettingIntent)initWithSettingMetadata:(id)metadata timeValue:(id)value temporalEventTrigger:(id)trigger action:(int64_t)action
{
  metadataCopy = metadata;
  valueCopy = value;
  triggerCopy = trigger;
  v16.receiver = self;
  v16.super_class = INSetTemporalSettingIntent;
  v13 = [(INIntent *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(INSetTemporalSettingIntent *)v13 setSettingMetadata:metadataCopy];
    [(INSetTemporalSettingIntent *)v14 setTimeValue:valueCopy];
    [(INSetTemporalSettingIntent *)v14 setTemporalEventTrigger:triggerCopy];
    [(INSetTemporalSettingIntent *)v14 setAction:action];
  }

  return v14;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSetTemporalSettingIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSetTemporalSettingIntent *)self _typedBackingStore];
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