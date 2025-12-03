@interface INSetLabeledSettingIntent
- (INSetLabeledSettingIntent)initWithSettingMetadata:(id)metadata labeledValue:(id)value temporalEventTrigger:(id)trigger;
- (INSettingMetadata)settingMetadata;
- (INTemporalEventTrigger)temporalEventTrigger;
- (NSString)labeledValue;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setLabeledValue:(id)value;
- (void)setSettingMetadata:(id)metadata;
- (void)setTemporalEventTrigger:(id)trigger;
@end

@implementation INSetLabeledSettingIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INSetLabeledSettingIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"settingMetadata";
  settingMetadata = [(INSetLabeledSettingIntent *)self settingMetadata];
  null = settingMetadata;
  if (!settingMetadata)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"labeledValue";
  labeledValue = [(INSetLabeledSettingIntent *)self labeledValue];
  null2 = labeledValue;
  if (!labeledValue)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"temporalEventTrigger";
  temporalEventTrigger = [(INSetLabeledSettingIntent *)self temporalEventTrigger];
  null3 = temporalEventTrigger;
  if (!temporalEventTrigger)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (!temporalEventTrigger)
  {
  }

  if (!labeledValue)
  {
  }

  if (!settingMetadata)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setTemporalEventTrigger:(id)trigger
{
  triggerCopy = trigger;
  _typedBackingStore = [(INSetLabeledSettingIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTemporalEventTrigger(triggerCopy);

  [_typedBackingStore setTemporalEventTrigger:v5];
}

- (INTemporalEventTrigger)temporalEventTrigger
{
  _typedBackingStore = [(INSetLabeledSettingIntent *)self _typedBackingStore];
  temporalEventTrigger = [_typedBackingStore temporalEventTrigger];
  v4 = INIntentSlotValueTransformFromTemporalEventTrigger(temporalEventTrigger);

  return v4;
}

- (void)setLabeledValue:(id)value
{
  valueCopy = value;
  _typedBackingStore = [(INSetLabeledSettingIntent *)self _typedBackingStore];
  [_typedBackingStore setLabeledValue:valueCopy];
}

- (NSString)labeledValue
{
  _typedBackingStore = [(INSetLabeledSettingIntent *)self _typedBackingStore];
  labeledValue = [_typedBackingStore labeledValue];
  v4 = [labeledValue copy];

  return v4;
}

- (void)setSettingMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSetLabeledSettingIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToSettingMetadata(metadataCopy);

  [_typedBackingStore setSettingMetadata:v5];
}

- (INSettingMetadata)settingMetadata
{
  _typedBackingStore = [(INSetLabeledSettingIntent *)self _typedBackingStore];
  settingMetadata = [_typedBackingStore settingMetadata];
  v4 = INIntentSlotValueTransformFromSettingMetadata(settingMetadata);

  return v4;
}

- (INSetLabeledSettingIntent)initWithSettingMetadata:(id)metadata labeledValue:(id)value temporalEventTrigger:(id)trigger
{
  metadataCopy = metadata;
  valueCopy = value;
  triggerCopy = trigger;
  v14.receiver = self;
  v14.super_class = INSetLabeledSettingIntent;
  v11 = [(INIntent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(INSetLabeledSettingIntent *)v11 setSettingMetadata:metadataCopy];
    [(INSetLabeledSettingIntent *)v12 setLabeledValue:valueCopy];
    [(INSetLabeledSettingIntent *)v12 setTemporalEventTrigger:triggerCopy];
  }

  return v12;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSetLabeledSettingIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSetLabeledSettingIntent *)self _typedBackingStore];
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