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
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setAirCirculationMode:(int64_t)mode;
- (void)setCarName:(id)name;
- (void)setClimateZone:(int64_t)zone;
- (void)setEnableAirConditioner:(id)conditioner;
- (void)setEnableAutoMode:(id)mode;
- (void)setEnableClimateControl:(id)control;
- (void)setEnableFan:(id)fan;
- (void)setFanSpeedIndex:(id)index;
- (void)setFanSpeedPercentage:(id)percentage;
- (void)setRelativeFanSpeedSetting:(int64_t)setting;
- (void)setRelativeTemperatureSetting:(int64_t)setting;
- (void)setTemperature:(id)temperature;
@end

@implementation INSetClimateSettingsInCarIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v15 = idCopy;
  v8 = [_typedBackingStore copy];
  fanSpeedIndex = [_typedBackingStore fanSpeedIndex];
  v10 = INIntentSlotValueRedactedIntegerFromInteger(fanSpeedIndex, options);
  [v8 setFanSpeedIndex:v10];

  fanSpeedPercentage = [_typedBackingStore fanSpeedPercentage];
  v12 = INIntentSlotValueRedactedDoubleFromDouble(fanSpeedPercentage, options);
  [v8 setFanSpeedPercentage:v12];

  temperature = [_typedBackingStore temperature];
  v14 = INIntentSlotValueRedactedTemperatureFromTemperature(temperature, options, v15);

  [v8 setTemperature:v14];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v44[12] = *MEMORY[0x1E69E9840];
  v43[0] = @"enableFan";
  enableFan = [(INSetClimateSettingsInCarIntent *)self enableFan];
  v4 = enableFan;
  if (!enableFan)
  {
    enableFan = [MEMORY[0x1E695DFB0] null];
  }

  v37 = enableFan;
  v44[0] = enableFan;
  v43[1] = @"enableAirConditioner";
  enableAirConditioner = [(INSetClimateSettingsInCarIntent *)self enableAirConditioner];
  v6 = enableAirConditioner;
  if (!enableAirConditioner)
  {
    enableAirConditioner = [MEMORY[0x1E695DFB0] null];
  }

  v36 = enableAirConditioner;
  v44[1] = enableAirConditioner;
  v43[2] = @"enableClimateControl";
  enableClimateControl = [(INSetClimateSettingsInCarIntent *)self enableClimateControl];
  v8 = enableClimateControl;
  if (!enableClimateControl)
  {
    enableClimateControl = [MEMORY[0x1E695DFB0] null];
  }

  v41 = v6;
  v35 = enableClimateControl;
  v44[2] = enableClimateControl;
  v43[3] = @"enableAutoMode";
  enableAutoMode = [(INSetClimateSettingsInCarIntent *)self enableAutoMode];
  v10 = enableAutoMode;
  if (!enableAutoMode)
  {
    enableAutoMode = [MEMORY[0x1E695DFB0] null];
  }

  v34 = enableAutoMode;
  v44[3] = enableAutoMode;
  v43[4] = @"airCirculationMode";
  airCirculationMode = [(INSetClimateSettingsInCarIntent *)self airCirculationMode];
  v12 = @"unknown";
  if (airCirculationMode == INCarAirCirculationModeRecirculateAir)
  {
    v12 = @"recirculateAir";
  }

  if (airCirculationMode == INCarAirCirculationModeFreshAir)
  {
    v12 = @"freshAir";
  }

  v39 = v12;
  v44[4] = v39;
  v43[5] = @"fanSpeedIndex";
  fanSpeedIndex = [(INSetClimateSettingsInCarIntent *)self fanSpeedIndex];
  v14 = fanSpeedIndex;
  if (!fanSpeedIndex)
  {
    fanSpeedIndex = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v8;
  v33 = fanSpeedIndex;
  v44[5] = fanSpeedIndex;
  v43[6] = @"fanSpeedPercentage";
  fanSpeedPercentage = [(INSetClimateSettingsInCarIntent *)self fanSpeedPercentage];
  v16 = fanSpeedPercentage;
  if (!fanSpeedPercentage)
  {
    fanSpeedPercentage = [MEMORY[0x1E695DFB0] null];
  }

  v32 = fanSpeedPercentage;
  v44[6] = fanSpeedPercentage;
  v43[7] = @"relativeFanSpeedSetting";
  relativeFanSpeedSetting = [(INSetClimateSettingsInCarIntent *)self relativeFanSpeedSetting];
  v42 = v4;
  if ((relativeFanSpeedSetting - 1) > 3)
  {
    v18 = @"unknown";
  }

  else
  {
    v18 = off_1E7285318[relativeFanSpeedSetting - 1];
  }

  v19 = v18;
  v44[7] = v19;
  v43[8] = @"temperature";
  temperature = [(INSetClimateSettingsInCarIntent *)self temperature];
  null = temperature;
  if (!temperature)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v44[8] = null;
  v43[9] = @"relativeTemperatureSetting";
  relativeTemperatureSetting = [(INSetClimateSettingsInCarIntent *)self relativeTemperatureSetting];
  if ((relativeTemperatureSetting - 1) > 3)
  {
    v23 = @"unknown";
  }

  else
  {
    v23 = off_1E7285318[relativeTemperatureSetting - 1];
  }

  v24 = v23;
  v44[9] = v24;
  v43[10] = @"climateZone";
  climateZone = [(INSetClimateSettingsInCarIntent *)self climateZone];
  if ((climateZone - 1) > 0xB)
  {
    v26 = @"unknown";
  }

  else
  {
    v26 = off_1E727EFE0[climateZone - 1];
  }

  v27 = v26;
  v44[10] = v27;
  v43[11] = @"carName";
  carName = [(INSetClimateSettingsInCarIntent *)self carName];
  null2 = carName;
  if (!carName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v44[11] = null2;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:12];
  if (!carName)
  {
  }

  if (!temperature)
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

- (void)setCarName:(id)name
{
  nameCopy = name;
  _typedBackingStore = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(nameCopy);

  [_typedBackingStore setCarName:v5];
}

- (INSpeakableString)carName
{
  _typedBackingStore = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  carName = [_typedBackingStore carName];
  v4 = INIntentSlotValueTransformFromDataString(carName);

  return v4;
}

- (void)setClimateZone:(int64_t)zone
{
  v3 = 0x7FFFFFFFLL;
  if ((zone - 1) <= 0xB)
  {
    v3 = dword_18EE5E5FC[zone - 1];
  }

  _typedBackingStore = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (v3 == 0x7FFFFFFF)
  {
    [_typedBackingStore setHasClimateZone:0];
  }

  else
  {
    [_typedBackingStore setClimateZone:v3];
  }
}

- (INCarSeat)climateZone
{
  _typedBackingStore = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  hasClimateZone = [_typedBackingStore hasClimateZone];
  _typedBackingStore2 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  climateZone = [_typedBackingStore2 climateZone];
  if (hasClimateZone && (climateZone - 1) <= 0x15)
  {
    v7 = qword_18EE5E630[climateZone - 1];
  }

  else
  {
    v7 = INCarSeatUnknown;
  }

  return v7;
}

- (void)setRelativeTemperatureSetting:(int64_t)setting
{
  v3 = setting - 1;
  _typedBackingStore = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (v3 > 3)
  {
    [_typedBackingStore setHasRelativeTemperatureSetting:0];
  }

  else
  {
    [_typedBackingStore setRelativeTemperatureSetting:?];
  }
}

- (INRelativeSetting)relativeTemperatureSetting
{
  _typedBackingStore = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  hasRelativeTemperatureSetting = [_typedBackingStore hasRelativeTemperatureSetting];
  _typedBackingStore2 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  relativeTemperatureSetting = [_typedBackingStore2 relativeTemperatureSetting];
  if (((relativeTemperatureSetting - 1 < 4) & hasRelativeTemperatureSetting) != 0)
  {
    v7 = relativeTemperatureSetting;
  }

  else
  {
    v7 = INRelativeSettingUnknown;
  }

  return v7;
}

- (void)setTemperature:(id)temperature
{
  temperatureCopy = temperature;
  _typedBackingStore = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTemperature(temperatureCopy);

  [_typedBackingStore setTemperature:v5];
}

- (NSMeasurement)temperature
{
  _typedBackingStore = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  temperature = [_typedBackingStore temperature];
  v4 = INIntentSlotValueTransformFromTemperature(temperature);

  return v4;
}

- (void)setRelativeFanSpeedSetting:(int64_t)setting
{
  v3 = setting - 1;
  _typedBackingStore = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (v3 > 3)
  {
    [_typedBackingStore setHasRelativeFanSpeedSetting:0];
  }

  else
  {
    [_typedBackingStore setRelativeFanSpeedSetting:?];
  }
}

- (INRelativeSetting)relativeFanSpeedSetting
{
  _typedBackingStore = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  hasRelativeFanSpeedSetting = [_typedBackingStore hasRelativeFanSpeedSetting];
  _typedBackingStore2 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  relativeFanSpeedSetting = [_typedBackingStore2 relativeFanSpeedSetting];
  if (((relativeFanSpeedSetting - 1 < 4) & hasRelativeFanSpeedSetting) != 0)
  {
    v7 = relativeFanSpeedSetting;
  }

  else
  {
    v7 = INRelativeSettingUnknown;
  }

  return v7;
}

- (void)setFanSpeedPercentage:(id)percentage
{
  percentageCopy = percentage;
  _typedBackingStore = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDouble(percentageCopy);

  [_typedBackingStore setFanSpeedPercentage:v5];
}

- (NSNumber)fanSpeedPercentage
{
  _typedBackingStore = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  fanSpeedPercentage = [_typedBackingStore fanSpeedPercentage];
  v4 = INIntentSlotValueTransformFromDouble(fanSpeedPercentage);

  return v4;
}

- (void)setFanSpeedIndex:(id)index
{
  indexCopy = index;
  _typedBackingStore = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToInteger(indexCopy);

  [_typedBackingStore setFanSpeedIndex:v5];
}

- (NSNumber)fanSpeedIndex
{
  _typedBackingStore = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  fanSpeedIndex = [_typedBackingStore fanSpeedIndex];
  v4 = INIntentSlotValueTransformFromInteger(fanSpeedIndex);

  return v4;
}

- (void)setAirCirculationMode:(int64_t)mode
{
  if (mode == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (mode == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  _typedBackingStore = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  v6 = _typedBackingStore;
  if (v4 == 0x7FFFFFFF)
  {
    [_typedBackingStore setHasAirCirculationMode:0];
  }

  else
  {
    [_typedBackingStore setAirCirculationMode:v4];
  }
}

- (INCarAirCirculationMode)airCirculationMode
{
  _typedBackingStore = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  hasAirCirculationMode = [_typedBackingStore hasAirCirculationMode];
  _typedBackingStore2 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  airCirculationMode = [_typedBackingStore2 airCirculationMode];
  v7 = 2 * (airCirculationMode == 2);
  if (airCirculationMode == 1)
  {
    v7 = 1;
  }

  if (hasAirCirculationMode)
  {
    v8 = v7;
  }

  else
  {
    v8 = INCarAirCirculationModeUnknown;
  }

  return v8;
}

- (void)setEnableAutoMode:(id)mode
{
  modeCopy = mode;
  _typedBackingStore = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  if (modeCopy)
  {
    [_typedBackingStore setEnableAutoMode:{objc_msgSend(modeCopy, "BOOLValue")}];
  }

  else
  {
    [_typedBackingStore setHasEnableAutoMode:0];
  }
}

- (NSNumber)enableAutoMode
{
  _typedBackingStore = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasEnableAutoMode])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(_typedBackingStore2, "enableAutoMode")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setEnableClimateControl:(id)control
{
  controlCopy = control;
  _typedBackingStore = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  if (controlCopy)
  {
    [_typedBackingStore setEnableClimateControl:{objc_msgSend(controlCopy, "BOOLValue")}];
  }

  else
  {
    [_typedBackingStore setHasEnableClimateControl:0];
  }
}

- (NSNumber)enableClimateControl
{
  _typedBackingStore = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasEnableClimateControl])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(_typedBackingStore2, "enableClimateControl")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setEnableAirConditioner:(id)conditioner
{
  conditionerCopy = conditioner;
  _typedBackingStore = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  if (conditionerCopy)
  {
    [_typedBackingStore setEnableAirConditioner:{objc_msgSend(conditionerCopy, "BOOLValue")}];
  }

  else
  {
    [_typedBackingStore setHasEnableAirConditioner:0];
  }
}

- (NSNumber)enableAirConditioner
{
  _typedBackingStore = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasEnableAirConditioner])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(_typedBackingStore2, "enableAirConditioner")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setEnableFan:(id)fan
{
  fanCopy = fan;
  _typedBackingStore = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  if (fanCopy)
  {
    [_typedBackingStore setEnableFan:{objc_msgSend(fanCopy, "BOOLValue")}];
  }

  else
  {
    [_typedBackingStore setHasEnableFan:0];
  }
}

- (NSNumber)enableFan
{
  _typedBackingStore = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasEnableFan])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(_typedBackingStore2, "enableFan")}];
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

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSetClimateSettingsInCarIntent *)self _typedBackingStore];
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