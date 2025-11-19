@interface INSetTemporalSettingIntent
- (INDateComponentsRange)timeValue;
- (INSetTemporalSettingIntent)initWithSettingMetadata:(id)a3 timeValue:(id)a4 temporalEventTrigger:(id)a5 action:(int64_t)a6;
- (INSettingMetadata)settingMetadata;
- (INTemporalEventTrigger)temporalEventTrigger;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)action;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setAction:(int64_t)a3;
- (void)setSettingMetadata:(id)a3;
- (void)setTemporalEventTrigger:(id)a3;
- (void)setTimeValue:(id)a3;
@end

@implementation INSetTemporalSettingIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INSetTemporalSettingIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v16[4] = *MEMORY[0x1E69E9840];
  v15[0] = @"settingMetadata";
  v3 = [(INSetTemporalSettingIntent *)self settingMetadata];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = v4;
  v15[1] = @"timeValue";
  v5 = [(INSetTemporalSettingIntent *)self timeValue];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = v6;
  v15[2] = @"temporalEventTrigger";
  v7 = [(INSetTemporalSettingIntent *)self temporalEventTrigger];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = v8;
  v15[3] = @"action";
  v9 = [(INSetTemporalSettingIntent *)self action];
  if ((v9 - 1) > 2)
  {
    v10 = @"unknown";
  }

  else
  {
    v10 = *(&off_1E7287CF8 + v9 - 1);
  }

  v11 = v10;
  v16[3] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];

  if (!v7)
  {
  }

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)setAction:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INSetTemporalSettingIntent *)self _typedBackingStore];
  v5 = v4;
  if (v3 > 2)
  {
    [v4 setHasAction:0];
  }

  else
  {
    [v4 setAction:?];
  }
}

- (int64_t)action
{
  v3 = [(INSetTemporalSettingIntent *)self _typedBackingStore];
  v4 = [v3 hasAction];
  v5 = [(INSetTemporalSettingIntent *)self _typedBackingStore];
  v6 = [v5 action];
  if (((v6 - 1 < 3) & v4) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setTemporalEventTrigger:(id)a3
{
  v4 = a3;
  v6 = [(INSetTemporalSettingIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTemporalEventTrigger(v4);

  [v6 setTemporalEventTrigger:v5];
}

- (INTemporalEventTrigger)temporalEventTrigger
{
  v2 = [(INSetTemporalSettingIntent *)self _typedBackingStore];
  v3 = [v2 temporalEventTrigger];
  v4 = INIntentSlotValueTransformFromTemporalEventTrigger(v3);

  return v4;
}

- (void)setTimeValue:(id)a3
{
  v4 = a3;
  v6 = [(INSetTemporalSettingIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRangeValue(v4);

  [v6 setTimeValue:v5];
}

- (INDateComponentsRange)timeValue
{
  v2 = [(INSetTemporalSettingIntent *)self _typedBackingStore];
  v3 = [v2 timeValue];
  v4 = INIntentSlotValueTransformFromDateTimeRangeValue(v3);

  return v4;
}

- (void)setSettingMetadata:(id)a3
{
  v4 = a3;
  v6 = [(INSetTemporalSettingIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToSettingMetadata(v4);

  [v6 setSettingMetadata:v5];
}

- (INSettingMetadata)settingMetadata
{
  v2 = [(INSetTemporalSettingIntent *)self _typedBackingStore];
  v3 = [v2 settingMetadata];
  v4 = INIntentSlotValueTransformFromSettingMetadata(v3);

  return v4;
}

- (INSetTemporalSettingIntent)initWithSettingMetadata:(id)a3 timeValue:(id)a4 temporalEventTrigger:(id)a5 action:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = INSetTemporalSettingIntent;
  v13 = [(INIntent *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(INSetTemporalSettingIntent *)v13 setSettingMetadata:v10];
    [(INSetTemporalSettingIntent *)v14 setTimeValue:v11];
    [(INSetTemporalSettingIntent *)v14 setTemporalEventTrigger:v12];
    [(INSetTemporalSettingIntent *)v14 setAction:a6];
  }

  return v14;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSetTemporalSettingIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INSetTemporalSettingIntent *)self _typedBackingStore];
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