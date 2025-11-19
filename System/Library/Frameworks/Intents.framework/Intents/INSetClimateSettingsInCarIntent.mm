@interface INSetClimateSettingsInCarIntent
- (INCarAirCirculationMode)airCirculationMode;
- (INCarSeat)climateZone;
- (INRelativeSetting)relativeFanSpeedSetting;
- (INRelativeSetting)relativeTemperatureSetting;
- (INSetClimateSettingsInCarIntent)initWithEnableFan:(NSNumber *)enableFan enableAirConditioner:(NSNumber *)enableAirConditioner enableClimateControl:(NSNumber *)enableClimateControl enableAutoMode:(NSNumber *)enableAutoMode airCirculationMode:(INCarAirCirculationMode)airCirculationMode fanSpeedIndex:(NSNumber *)fanSpeedIndex fanSpeedPercentage:(NSNumber *)fanSpeedPercentage relativeFanSpeedSetting:(INRelativeSetting)relativeFanSpeedSetting temperature:(NSMeasurement *)temperature relativeTemperatureSetting:(INRelativeSetting)relativeTemperatureSetting climateZone:(INCarSeat)climateZone carName:(INSpeakableString *)carName;
- (INSpeakableString)carName;
- (NSMeasurement)temperature;
- (NSNumber)enableAirConditioner;
- (NSNumber)enableAutoMode;
- (NSNumber)enableClimateControl;
- (NSNumber)enableFan;
- (NSNumber)fanSpeedIndex;
- (NSNumber)fanSpeedPercentage;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setAirCirculationMode:(int64_t)a3;
- (void)setCarName:(id)a3;
- (void)setClimateZone:(int64_t)a3;
- (void)setEnableAirConditioner:(id)a3;
- (void)setEnableAutoMode:(id)a3;
- (void)setEnableClimateControl:(id)a3;
- (void)setEnableFan:(id)a3;
- (void)setFanSpeedIndex:(id)a3;
- (void)setFanSpeedPercentage:(id)a3;
- (void)setRelativeFanSpeedSetting:(int64_t)a3;
- (void)setRelativeTemperatureSetting:(int64_t)a3;
- (void)setTemperature:(id)a3;
@end

@implementation INSetClimateSettingsInCarIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v15 = v6;
  v8 = [v7 copy];
  v9 = [v7 fanSpeedIndex];
  v10 = INIntentSlotValueRedactedIntegerFromInteger(v9, a3);
  [v8 setFanSpeedIndex:v10];

  v11 = [v7 fanSpeedPercentage];
  v12 = INIntentSlotValueRedactedDoubleFromDouble(v11, a3);
  [v8 setFanSpeedPercentage:v12];

  v13 = [v7 temperature];
  v14 = INIntentSlotValueRedactedTemperatureFromTemperature(v13, a3, v15);

  [v8 setTemperature:v14];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v44[12] = *MEMORY[0x1E69E9840];
  v43[0] = @"enableFan";
  v3 = [(INSetClimateSettingsInCarIntent *)self enableFan];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v3;
  v44[0] = v3;
  v43[1] = @"enableAirConditioner";
  v5 = [(INSetClimateSettingsInCarIntent *)self enableAirConditioner];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v5;
  v44[1] = v5;
  v43[2] = @"enableClimateControl";
  v7 = [(INSetClimateSettingsInCarIntent *)self enableClimateControl];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = v6;
  v35 = v7;
  v44[2] = v7;
  v43[3] = @"enableAutoMode";
  v9 = [(INSetClimateSettingsInCarIntent *)self enableAutoMode];
  v10 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v9;
  v44[3] = v9;
  v43[4] = @"airCirculationMode";
  v11 = [(INSetClimateSettingsInCarIntent *)self airCirculationMode];
  v12 = @"unknown";
  if (v11 == INCarAirCirculationModeRecirculateAir)
  {
    v12 = @"recirculateAir";
  }

  if (v11 == INCarAirCirculationModeFreshAir)
  {
    v12 = @"freshAir";
  }

  v39 = v12;
  v44[4] = v39;
  v43[5] = @"fanSpeedIndex";
  v13 = [(INSetClimateSettingsInCarIntent *)self fanSpeedIndex];
  v14 = v13;
  if (!v13)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v8;
  v33 = v13;
  v44[5] = v13;
  v43[6] = @"fanSpeedPercentage";
  v15 = [(INSetClimateSettingsInCarIntent *)self fanSpeedPercentage];
  v16 = v15;
  if (!v15)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v15;
  v44[6] = v15;
  v43[7] = @"relativeFanSpeedSetting";
  v17 = [(INSetClimateSettingsInCarIntent *)self relativeFanSpeedSetting];
  v42 = v4;
  if ((v17 - 1) > 3)
  {
    v18 = @"unknown";
  }

  else
  {
    v18 = off_1E7285318[v17 - 1];
  }

  v19 = v18;
  v44[7] = v19;
  v43[8] = @"temperature";
  v20 = [(INSetClimateSettingsInCarIntent *)self temperature];
  v21 = v20;
  if (!v20)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v44[8] = v21;
  v43[9] = @"relativeTemperatureSetting";
  v22 = [(INSetClimateSettingsInCarIntent *)self relativeTemperatureSetting];
  if ((v22 - 1) > 3)
  {
    v23 = @"unknown";
  }

  else
  {
    v23 = off_1E7285318[v22 - 1];
  }

  v24 = v23;
  v44[9] = v24;
  v43[10] = @"climateZone";
  v25 = [(INSetClimateSettingsInCarIntent *)self climateZone];
  if ((v25 - 1) > 0xB)
  {
    v26 = @"unknown";
  }

  else
  {
    v26 = off_1E727EFE0[v25 - 1];
  }

  v27 = v26;
  v44[10] = v27;
  v43[11] = @"carName";
  v28 = [(INSetClimateSettingsInCarIntent *)self carName];
  v29 = v28;
  if (!v28)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v44[11] = v29;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:12];
  if (!v28)
  {
  }

  if (!v20)
  {
  }

  if (!v16)
  {
  }

  if (!v14)
  {
  }

  if (!v10)
  {
  }

  if (!v40)
  {
  }

  if (!v41)
  {
  }

  if (!v42)
  {
  }

  v30 = *MEMORY[0x1E69E9840];

  return v38;
}

- (void)setCarName:(id)a3
{
  v4 = a3;
  v6 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(v4);

  [v6 setCarName:v5];
}

- (INSpeakableString)carName
{
  v2 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v3 = [v2 carName];
  v4 = INIntentSlotValueTransformFromDataString(v3);

  return v4;
}

- (void)setClimateZone:(int64_t)a3
{
  v3 = 0x7FFFFFFFLL;
  if ((a3 - 1) <= 0xB)
  {
    v3 = dword_18EE5E5FC[a3 - 1];
  }

  v4 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v5 = v4;
  if (v3 == 0x7FFFFFFF)
  {
    [v4 setHasClimateZone:0];
  }

  else
  {
    [v4 setClimateZone:v3];
  }
}

- (INCarSeat)climateZone
{
  v3 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v4 = [v3 hasClimateZone];
  v5 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v6 = [v5 climateZone];
  if (v4 && (v6 - 1) <= 0x15)
  {
    v7 = qword_18EE5E630[v6 - 1];
  }

  else
  {
    v7 = INCarSeatUnknown;
  }

  return v7;
}

- (void)setRelativeTemperatureSetting:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v5 = v4;
  if (v3 > 3)
  {
    [v4 setHasRelativeTemperatureSetting:0];
  }

  else
  {
    [v4 setRelativeTemperatureSetting:?];
  }
}

- (INRelativeSetting)relativeTemperatureSetting
{
  v3 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v4 = [v3 hasRelativeTemperatureSetting];
  v5 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v6 = [v5 relativeTemperatureSetting];
  if (((v6 - 1 < 4) & v4) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = INRelativeSettingUnknown;
  }

  return v7;
}

- (void)setTemperature:(id)a3
{
  v4 = a3;
  v6 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTemperature(v4);

  [v6 setTemperature:v5];
}

- (NSMeasurement)temperature
{
  v2 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v3 = [v2 temperature];
  v4 = INIntentSlotValueTransformFromTemperature(v3);

  return v4;
}

- (void)setRelativeFanSpeedSetting:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v5 = v4;
  if (v3 > 3)
  {
    [v4 setHasRelativeFanSpeedSetting:0];
  }

  else
  {
    [v4 setRelativeFanSpeedSetting:?];
  }
}

- (INRelativeSetting)relativeFanSpeedSetting
{
  v3 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v4 = [v3 hasRelativeFanSpeedSetting];
  v5 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v6 = [v5 relativeFanSpeedSetting];
  if (((v6 - 1 < 4) & v4) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = INRelativeSettingUnknown;
  }

  return v7;
}

- (void)setFanSpeedPercentage:(id)a3
{
  v4 = a3;
  v6 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDouble(v4);

  [v6 setFanSpeedPercentage:v5];
}

- (NSNumber)fanSpeedPercentage
{
  v2 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v3 = [v2 fanSpeedPercentage];
  v4 = INIntentSlotValueTransformFromDouble(v3);

  return v4;
}

- (void)setFanSpeedIndex:(id)a3
{
  v4 = a3;
  v6 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToInteger(v4);

  [v6 setFanSpeedIndex:v5];
}

- (NSNumber)fanSpeedIndex
{
  v2 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v3 = [v2 fanSpeedIndex];
  v4 = INIntentSlotValueTransformFromInteger(v3);

  return v4;
}

- (void)setAirCirculationMode:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (a3 == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v6 = v5;
  if (v4 == 0x7FFFFFFF)
  {
    [v5 setHasAirCirculationMode:0];
  }

  else
  {
    [v5 setAirCirculationMode:v4];
  }
}

- (INCarAirCirculationMode)airCirculationMode
{
  v3 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v4 = [v3 hasAirCirculationMode];
  v5 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v6 = [v5 airCirculationMode];
  v7 = 2 * (v6 == 2);
  if (v6 == 1)
  {
    v7 = 1;
  }

  if (v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = INCarAirCirculationModeUnknown;
  }

  return v8;
}

- (void)setEnableAutoMode:(id)a3
{
  v5 = a3;
  v4 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  if (v5)
  {
    [v4 setEnableAutoMode:{objc_msgSend(v5, "BOOLValue")}];
  }

  else
  {
    [v4 setHasEnableAutoMode:0];
  }
}

- (NSNumber)enableAutoMode
{
  v3 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  if ([v3 hasEnableAutoMode])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "enableAutoMode")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setEnableClimateControl:(id)a3
{
  v5 = a3;
  v4 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  if (v5)
  {
    [v4 setEnableClimateControl:{objc_msgSend(v5, "BOOLValue")}];
  }

  else
  {
    [v4 setHasEnableClimateControl:0];
  }
}

- (NSNumber)enableClimateControl
{
  v3 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  if ([v3 hasEnableClimateControl])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "enableClimateControl")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setEnableAirConditioner:(id)a3
{
  v5 = a3;
  v4 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  if (v5)
  {
    [v4 setEnableAirConditioner:{objc_msgSend(v5, "BOOLValue")}];
  }

  else
  {
    [v4 setHasEnableAirConditioner:0];
  }
}

- (NSNumber)enableAirConditioner
{
  v3 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  if ([v3 hasEnableAirConditioner])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "enableAirConditioner")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setEnableFan:(id)a3
{
  v5 = a3;
  v4 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  if (v5)
  {
    [v4 setEnableFan:{objc_msgSend(v5, "BOOLValue")}];
  }

  else
  {
    [v4 setHasEnableFan:0];
  }
}

- (NSNumber)enableFan
{
  v3 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  if ([v3 hasEnableFan])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "enableFan")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (INSetClimateSettingsInCarIntent)initWithEnableFan:(NSNumber *)enableFan enableAirConditioner:(NSNumber *)enableAirConditioner enableClimateControl:(NSNumber *)enableClimateControl enableAutoMode:(NSNumber *)enableAutoMode airCirculationMode:(INCarAirCirculationMode)airCirculationMode fanSpeedIndex:(NSNumber *)fanSpeedIndex fanSpeedPercentage:(NSNumber *)fanSpeedPercentage relativeFanSpeedSetting:(INRelativeSetting)relativeFanSpeedSetting temperature:(NSMeasurement *)temperature relativeTemperatureSetting:(INRelativeSetting)relativeTemperatureSetting climateZone:(INCarSeat)climateZone carName:(INSpeakableString *)carName
{
  v30 = enableFan;
  v19 = enableAirConditioner;
  v20 = enableClimateControl;
  v21 = enableAutoMode;
  v22 = fanSpeedIndex;
  v23 = fanSpeedPercentage;
  v24 = temperature;
  v25 = carName;
  v31.receiver = self;
  v31.super_class = INSetClimateSettingsInCarIntent;
  v26 = [(INIntent *)&v31 init];
  v27 = v26;
  if (v26)
  {
    [(INSetClimateSettingsInCarIntent *)v26 setEnableFan:v30];
    [(INSetClimateSettingsInCarIntent *)v27 setEnableAirConditioner:v19];
    [(INSetClimateSettingsInCarIntent *)v27 setEnableClimateControl:v20];
    [(INSetClimateSettingsInCarIntent *)v27 setEnableAutoMode:v21];
    [(INSetClimateSettingsInCarIntent *)v27 setAirCirculationMode:airCirculationMode];
    [(INSetClimateSettingsInCarIntent *)v27 setFanSpeedIndex:v22];
    [(INSetClimateSettingsInCarIntent *)v27 setFanSpeedPercentage:v23];
    [(INSetClimateSettingsInCarIntent *)v27 setRelativeFanSpeedSetting:relativeFanSpeedSetting];
    [(INSetClimateSettingsInCarIntent *)v27 setTemperature:v24];
    [(INSetClimateSettingsInCarIntent *)v27 setRelativeTemperatureSetting:relativeTemperatureSetting];
    [(INSetClimateSettingsInCarIntent *)v27 setClimateZone:climateZone];
    [(INSetClimateSettingsInCarIntent *)v27 setCarName:v25];
  }

  return v27;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
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