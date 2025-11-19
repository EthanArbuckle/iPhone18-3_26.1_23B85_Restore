@interface INSetNumericSettingIntent
- (INNumericSettingValue)numericValue;
- (INSetNumericSettingIntent)initWithSettingMetadata:(id)a3 numericValue:(id)a4 boundedValue:(int64_t)a5 action:(int64_t)a6 temporalEventTrigger:(id)a7;
- (INSettingMetadata)settingMetadata;
- (INTemporalEventTrigger)temporalEventTrigger;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)action;
- (int64_t)boundedValue;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setAction:(int64_t)a3;
- (void)setBoundedValue:(int64_t)a3;
- (void)setNumericValue:(id)a3;
- (void)setSettingMetadata:(id)a3;
- (void)setTemporalEventTrigger:(id)a3;
@end

@implementation INSetNumericSettingIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INSetNumericSettingIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v19[5] = *MEMORY[0x1E69E9840];
  v18[0] = @"settingMetadata";
  v3 = [(INSetNumericSettingIntent *)self settingMetadata];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v19[0] = v4;
  v18[1] = @"numericValue";
  v5 = [(INSetNumericSettingIntent *)self numericValue];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = v6;
  v18[2] = @"boundedValue";
  v7 = [(INSetNumericSettingIntent *)self boundedValue];
  if ((v7 - 1) > 2)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_1E7287E78[v7 - 1];
  }

  v9 = v8;
  v19[2] = v9;
  v18[3] = @"action";
  v10 = [(INSetNumericSettingIntent *)self action];
  if ((v10 - 1) > 2)
  {
    v11 = @"unknown";
  }

  else
  {
    v11 = *(&off_1E7287CF8 + v10 - 1);
  }

  v12 = v11;
  v19[3] = v12;
  v18[4] = @"temporalEventTrigger";
  v13 = [(INSetNumericSettingIntent *)self temporalEventTrigger];
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v19[4] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:5];
  if (!v13)
  {
  }

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)setTemporalEventTrigger:(id)a3
{
  v4 = a3;
  v6 = [(INSetNumericSettingIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTemporalEventTrigger(v4);

  [v6 setTemporalEventTrigger:v5];
}

- (INTemporalEventTrigger)temporalEventTrigger
{
  v2 = [(INSetNumericSettingIntent *)self _typedBackingStore];
  v3 = [v2 temporalEventTrigger];
  v4 = INIntentSlotValueTransformFromTemporalEventTrigger(v3);

  return v4;
}

- (void)setAction:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INSetNumericSettingIntent *)self _typedBackingStore];
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
  v3 = [(INSetNumericSettingIntent *)self _typedBackingStore];
  v4 = [v3 hasAction];
  v5 = [(INSetNumericSettingIntent *)self _typedBackingStore];
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

- (void)setBoundedValue:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INSetNumericSettingIntent *)self _typedBackingStore];
  v5 = v4;
  if (v3 > 2)
  {
    [v4 setHasBoundedValue:0];
  }

  else
  {
    [v4 setBoundedValue:?];
  }
}

- (int64_t)boundedValue
{
  v3 = [(INSetNumericSettingIntent *)self _typedBackingStore];
  v4 = [v3 hasBoundedValue];
  v5 = [(INSetNumericSettingIntent *)self _typedBackingStore];
  v6 = [v5 boundedValue];
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

- (void)setNumericValue:(id)a3
{
  v4 = a3;
  v6 = [(INSetNumericSettingIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToNumericSettingValue(v4);

  [v6 setNumericValue:v5];
}

- (INNumericSettingValue)numericValue
{
  v2 = [(INSetNumericSettingIntent *)self _typedBackingStore];
  v3 = [v2 numericValue];
  v4 = INIntentSlotValueTransformFromNumericSettingValue(v3);

  return v4;
}

- (void)setSettingMetadata:(id)a3
{
  v4 = a3;
  v6 = [(INSetNumericSettingIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToSettingMetadata(v4);

  [v6 setSettingMetadata:v5];
}

- (INSettingMetadata)settingMetadata
{
  v2 = [(INSetNumericSettingIntent *)self _typedBackingStore];
  v3 = [v2 settingMetadata];
  v4 = INIntentSlotValueTransformFromSettingMetadata(v3);

  return v4;
}

- (INSetNumericSettingIntent)initWithSettingMetadata:(id)a3 numericValue:(id)a4 boundedValue:(int64_t)a5 action:(int64_t)a6 temporalEventTrigger:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = INSetNumericSettingIntent;
  v15 = [(INIntent *)&v18 init];
  v16 = v15;
  if (v15)
  {
    [(INSetNumericSettingIntent *)v15 setSettingMetadata:v12];
    [(INSetNumericSettingIntent *)v16 setNumericValue:v13];
    [(INSetNumericSettingIntent *)v16 setBoundedValue:a5];
    [(INSetNumericSettingIntent *)v16 setAction:a6];
    [(INSetNumericSettingIntent *)v16 setTemporalEventTrigger:v14];
  }

  return v16;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSetNumericSettingIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INSetNumericSettingIntent *)self _typedBackingStore];
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