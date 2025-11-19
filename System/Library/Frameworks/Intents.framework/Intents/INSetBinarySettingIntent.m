@interface INSetBinarySettingIntent
- (INSetBinarySettingIntent)initWithSettingMetadata:(id)a3 binaryValue:(int64_t)a4 temporalEventTrigger:(id)a5;
- (INSettingMetadata)settingMetadata;
- (INTemporalEventTrigger)temporalEventTrigger;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)binaryValue;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setBinaryValue:(int64_t)a3;
- (void)setSettingMetadata:(id)a3;
- (void)setTemporalEventTrigger:(id)a3;
@end

@implementation INSetBinarySettingIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INSetBinarySettingIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v14[3] = *MEMORY[0x1E69E9840];
  v13[0] = @"settingMetadata";
  v3 = [(INSetBinarySettingIntent *)self settingMetadata];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = v4;
  v13[1] = @"binaryValue";
  v5 = [(INSetBinarySettingIntent *)self binaryValue];
  if ((v5 - 1) > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = *(&off_1E7287C40 + v5 - 1);
  }

  v7 = v6;
  v14[1] = v7;
  v13[2] = @"temporalEventTrigger";
  v8 = [(INSetBinarySettingIntent *)self temporalEventTrigger];
  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  if (!v8)
  {
  }

  if (!v3)
  {
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)setTemporalEventTrigger:(id)a3
{
  v4 = a3;
  v6 = [(INSetBinarySettingIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTemporalEventTrigger(v4);

  [v6 setTemporalEventTrigger:v5];
}

- (INTemporalEventTrigger)temporalEventTrigger
{
  v2 = [(INSetBinarySettingIntent *)self _typedBackingStore];
  v3 = [v2 temporalEventTrigger];
  v4 = INIntentSlotValueTransformFromTemporalEventTrigger(v3);

  return v4;
}

- (void)setBinaryValue:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INSetBinarySettingIntent *)self _typedBackingStore];
  v5 = v4;
  if (v3 > 2)
  {
    [v4 setHasBinaryValue:0];
  }

  else
  {
    [v4 setBinaryValue:?];
  }
}

- (int64_t)binaryValue
{
  v3 = [(INSetBinarySettingIntent *)self _typedBackingStore];
  v4 = [v3 hasBinaryValue];
  v5 = [(INSetBinarySettingIntent *)self _typedBackingStore];
  v6 = [v5 binaryValue];
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

- (void)setSettingMetadata:(id)a3
{
  v4 = a3;
  v6 = [(INSetBinarySettingIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToSettingMetadata(v4);

  [v6 setSettingMetadata:v5];
}

- (INSettingMetadata)settingMetadata
{
  v2 = [(INSetBinarySettingIntent *)self _typedBackingStore];
  v3 = [v2 settingMetadata];
  v4 = INIntentSlotValueTransformFromSettingMetadata(v3);

  return v4;
}

- (INSetBinarySettingIntent)initWithSettingMetadata:(id)a3 binaryValue:(int64_t)a4 temporalEventTrigger:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = INSetBinarySettingIntent;
  v10 = [(INIntent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(INSetBinarySettingIntent *)v10 setSettingMetadata:v8];
    [(INSetBinarySettingIntent *)v11 setBinaryValue:a4];
    [(INSetBinarySettingIntent *)v11 setTemporalEventTrigger:v9];
  }

  return v11;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSetBinarySettingIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INSetBinarySettingIntent *)self _typedBackingStore];
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