@interface INSetLabeledSettingIntent
- (INSetLabeledSettingIntent)initWithSettingMetadata:(id)a3 labeledValue:(id)a4 temporalEventTrigger:(id)a5;
- (INSettingMetadata)settingMetadata;
- (INTemporalEventTrigger)temporalEventTrigger;
- (NSString)labeledValue;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setLabeledValue:(id)a3;
- (void)setSettingMetadata:(id)a3;
- (void)setTemporalEventTrigger:(id)a3;
@end

@implementation INSetLabeledSettingIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INSetLabeledSettingIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"settingMetadata";
  v3 = [(INSetLabeledSettingIntent *)self settingMetadata];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v4;
  v12[1] = @"labeledValue";
  v5 = [(INSetLabeledSettingIntent *)self labeledValue];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v6;
  v12[2] = @"temporalEventTrigger";
  v7 = [(INSetLabeledSettingIntent *)self temporalEventTrigger];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (!v7)
  {
  }

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setTemporalEventTrigger:(id)a3
{
  v4 = a3;
  v6 = [(INSetLabeledSettingIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTemporalEventTrigger(v4);

  [v6 setTemporalEventTrigger:v5];
}

- (INTemporalEventTrigger)temporalEventTrigger
{
  v2 = [(INSetLabeledSettingIntent *)self _typedBackingStore];
  v3 = [v2 temporalEventTrigger];
  v4 = INIntentSlotValueTransformFromTemporalEventTrigger(v3);

  return v4;
}

- (void)setLabeledValue:(id)a3
{
  v4 = a3;
  v5 = [(INSetLabeledSettingIntent *)self _typedBackingStore];
  [v5 setLabeledValue:v4];
}

- (NSString)labeledValue
{
  v2 = [(INSetLabeledSettingIntent *)self _typedBackingStore];
  v3 = [v2 labeledValue];
  v4 = [v3 copy];

  return v4;
}

- (void)setSettingMetadata:(id)a3
{
  v4 = a3;
  v6 = [(INSetLabeledSettingIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToSettingMetadata(v4);

  [v6 setSettingMetadata:v5];
}

- (INSettingMetadata)settingMetadata
{
  v2 = [(INSetLabeledSettingIntent *)self _typedBackingStore];
  v3 = [v2 settingMetadata];
  v4 = INIntentSlotValueTransformFromSettingMetadata(v3);

  return v4;
}

- (INSetLabeledSettingIntent)initWithSettingMetadata:(id)a3 labeledValue:(id)a4 temporalEventTrigger:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = INSetLabeledSettingIntent;
  v11 = [(INIntent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(INSetLabeledSettingIntent *)v11 setSettingMetadata:v8];
    [(INSetLabeledSettingIntent *)v12 setLabeledValue:v9];
    [(INSetLabeledSettingIntent *)v12 setTemporalEventTrigger:v10];
  }

  return v12;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSetLabeledSettingIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INSetLabeledSettingIntent *)self _typedBackingStore];
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