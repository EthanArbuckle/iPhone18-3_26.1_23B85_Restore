@interface INSetRadioStationIntent
- (INRadioType)radioType;
- (INSetRadioStationIntent)initWithRadioType:(INRadioType)radioType frequency:(NSNumber *)frequency stationName:(NSString *)stationName channel:(NSString *)channel presetNumber:(NSNumber *)presetNumber;
- (NSNumber)frequency;
- (NSNumber)presetNumber;
- (NSString)channel;
- (NSString)stationName;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setChannel:(id)a3;
- (void)setFrequency:(id)a3;
- (void)setPresetNumber:(id)a3;
- (void)setRadioType:(int64_t)a3;
- (void)setStationName:(id)a3;
@end

@implementation INSetRadioStationIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INSetRadioStationIntent *)self _typedBackingStore];
  v17 = v6;
  v8 = [v7 copy];
  v9 = [v7 frequency];
  v10 = INIntentSlotValueRedactedDoubleFromDouble(v9, a3);
  [v8 setFrequency:v10];

  v11 = [v7 stationName];
  v12 = INIntentSlotValueRedactedStringFromString(v11, a3, v17);
  [v8 setStationName:v12];

  v13 = [v7 channel];
  v14 = INIntentSlotValueRedactedStringFromString(v13, a3, v17);
  [v8 setChannel:v14];

  v15 = [v7 presetNumber];
  v16 = INIntentSlotValueRedactedIntegerFromInteger(v15, a3);

  [v8 setPresetNumber:v16];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v18[5] = *MEMORY[0x1E69E9840];
  v17[0] = @"radioType";
  v3 = [(INSetRadioStationIntent *)self radioType];
  if ((v3 - 1) > 4)
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = off_1E727FE08[v3 - 1];
  }

  v5 = v4;
  v18[0] = v5;
  v17[1] = @"frequency";
  v6 = [(INSetRadioStationIntent *)self frequency];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = v7;
  v17[2] = @"stationName";
  v8 = [(INSetRadioStationIntent *)self stationName];
  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = v9;
  v17[3] = @"channel";
  v10 = [(INSetRadioStationIntent *)self channel];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = v11;
  v17[4] = @"presetNumber";
  v12 = [(INSetRadioStationIntent *)self presetNumber];
  v13 = v12;
  if (!v12)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v18[4] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];
  if (!v12)
  {
  }

  if (!v10)
  {
  }

  if (!v8)
  {
  }

  if (!v6)
  {
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)setPresetNumber:(id)a3
{
  v4 = a3;
  v6 = [(INSetRadioStationIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToInteger(v4);

  [v6 setPresetNumber:v5];
}

- (NSNumber)presetNumber
{
  v2 = [(INSetRadioStationIntent *)self _typedBackingStore];
  v3 = [v2 presetNumber];
  v4 = INIntentSlotValueTransformFromInteger(v3);

  return v4;
}

- (void)setChannel:(id)a3
{
  v4 = a3;
  v6 = [(INSetRadioStationIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToString(v4);

  [v6 setChannel:v5];
}

- (NSString)channel
{
  v2 = [(INSetRadioStationIntent *)self _typedBackingStore];
  v3 = [v2 channel];
  v4 = INIntentSlotValueTransformFromString(v3);

  return v4;
}

- (void)setStationName:(id)a3
{
  v4 = a3;
  v6 = [(INSetRadioStationIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToString(v4);

  [v6 setStationName:v5];
}

- (NSString)stationName
{
  v2 = [(INSetRadioStationIntent *)self _typedBackingStore];
  v3 = [v2 stationName];
  v4 = INIntentSlotValueTransformFromString(v3);

  return v4;
}

- (void)setFrequency:(id)a3
{
  v4 = a3;
  v6 = [(INSetRadioStationIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDouble(v4);

  [v6 setFrequency:v5];
}

- (NSNumber)frequency
{
  v2 = [(INSetRadioStationIntent *)self _typedBackingStore];
  v3 = [v2 frequency];
  v4 = INIntentSlotValueTransformFromDouble(v3);

  return v4;
}

- (void)setRadioType:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INSetRadioStationIntent *)self _typedBackingStore];
  v5 = v4;
  if (v3 > 4)
  {
    [v4 setHasRadioType:0];
  }

  else
  {
    [v4 setRadioType:?];
  }
}

- (INRadioType)radioType
{
  v3 = [(INSetRadioStationIntent *)self _typedBackingStore];
  v4 = [v3 hasRadioType];
  v5 = [(INSetRadioStationIntent *)self _typedBackingStore];
  v6 = [v5 radioType];
  if (((v6 - 1 < 5) & v4) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = INRadioTypeUnknown;
  }

  return v7;
}

- (INSetRadioStationIntent)initWithRadioType:(INRadioType)radioType frequency:(NSNumber *)frequency stationName:(NSString *)stationName channel:(NSString *)channel presetNumber:(NSNumber *)presetNumber
{
  v12 = frequency;
  v13 = stationName;
  v14 = channel;
  v15 = presetNumber;
  v19.receiver = self;
  v19.super_class = INSetRadioStationIntent;
  v16 = [(INIntent *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(INSetRadioStationIntent *)v16 setRadioType:radioType];
    [(INSetRadioStationIntent *)v17 setFrequency:v12];
    [(INSetRadioStationIntent *)v17 setStationName:v13];
    [(INSetRadioStationIntent *)v17 setChannel:v14];
    [(INSetRadioStationIntent *)v17 setPresetNumber:v15];
  }

  return v17;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSetRadioStationIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INSetRadioStationIntent *)self _typedBackingStore];
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