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
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setChannel:(id)channel;
- (void)setFrequency:(id)frequency;
- (void)setPresetNumber:(id)number;
- (void)setRadioType:(int64_t)type;
- (void)setStationName:(id)name;
@end

@implementation INSetRadioStationIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INSetRadioStationIntent *)self _typedBackingStore];
  v17 = idCopy;
  v8 = [_typedBackingStore copy];
  frequency = [_typedBackingStore frequency];
  v10 = INIntentSlotValueRedactedDoubleFromDouble(frequency, options);
  [v8 setFrequency:v10];

  stationName = [_typedBackingStore stationName];
  v12 = INIntentSlotValueRedactedStringFromString(stationName, options, v17);
  [v8 setStationName:v12];

  channel = [_typedBackingStore channel];
  v14 = INIntentSlotValueRedactedStringFromString(channel, options, v17);
  [v8 setChannel:v14];

  presetNumber = [_typedBackingStore presetNumber];
  v16 = INIntentSlotValueRedactedIntegerFromInteger(presetNumber, options);

  [v8 setPresetNumber:v16];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v18[5] = *MEMORY[0x1E69E9840];
  v17[0] = @"radioType";
  radioType = [(INSetRadioStationIntent *)self radioType];
  if ((radioType - 1) > 4)
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = off_1E727FE08[radioType - 1];
  }

  v5 = v4;
  v18[0] = v5;
  v17[1] = @"frequency";
  frequency = [(INSetRadioStationIntent *)self frequency];
  null = frequency;
  if (!frequency)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = null;
  v17[2] = @"stationName";
  stationName = [(INSetRadioStationIntent *)self stationName];
  null2 = stationName;
  if (!stationName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = null2;
  v17[3] = @"channel";
  channel = [(INSetRadioStationIntent *)self channel];
  null3 = channel;
  if (!channel)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = null3;
  v17[4] = @"presetNumber";
  presetNumber = [(INSetRadioStationIntent *)self presetNumber];
  null4 = presetNumber;
  if (!presetNumber)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v18[4] = null4;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];
  if (!presetNumber)
  {
  }

  if (!channel)
  {
  }

  if (!stationName)
  {
  }

  if (!frequency)
  {
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)setPresetNumber:(id)number
{
  numberCopy = number;
  _typedBackingStore = [(INSetRadioStationIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToInteger(numberCopy);

  [_typedBackingStore setPresetNumber:v5];
}

- (NSNumber)presetNumber
{
  _typedBackingStore = [(INSetRadioStationIntent *)self _typedBackingStore];
  presetNumber = [_typedBackingStore presetNumber];
  v4 = INIntentSlotValueTransformFromInteger(presetNumber);

  return v4;
}

- (void)setChannel:(id)channel
{
  channelCopy = channel;
  _typedBackingStore = [(INSetRadioStationIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToString(channelCopy);

  [_typedBackingStore setChannel:v5];
}

- (NSString)channel
{
  _typedBackingStore = [(INSetRadioStationIntent *)self _typedBackingStore];
  channel = [_typedBackingStore channel];
  v4 = INIntentSlotValueTransformFromString(channel);

  return v4;
}

- (void)setStationName:(id)name
{
  nameCopy = name;
  _typedBackingStore = [(INSetRadioStationIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToString(nameCopy);

  [_typedBackingStore setStationName:v5];
}

- (NSString)stationName
{
  _typedBackingStore = [(INSetRadioStationIntent *)self _typedBackingStore];
  stationName = [_typedBackingStore stationName];
  v4 = INIntentSlotValueTransformFromString(stationName);

  return v4;
}

- (void)setFrequency:(id)frequency
{
  frequencyCopy = frequency;
  _typedBackingStore = [(INSetRadioStationIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDouble(frequencyCopy);

  [_typedBackingStore setFrequency:v5];
}

- (NSNumber)frequency
{
  _typedBackingStore = [(INSetRadioStationIntent *)self _typedBackingStore];
  frequency = [_typedBackingStore frequency];
  v4 = INIntentSlotValueTransformFromDouble(frequency);

  return v4;
}

- (void)setRadioType:(int64_t)type
{
  v3 = type - 1;
  _typedBackingStore = [(INSetRadioStationIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (v3 > 4)
  {
    [_typedBackingStore setHasRadioType:0];
  }

  else
  {
    [_typedBackingStore setRadioType:?];
  }
}

- (INRadioType)radioType
{
  _typedBackingStore = [(INSetRadioStationIntent *)self _typedBackingStore];
  hasRadioType = [_typedBackingStore hasRadioType];
  _typedBackingStore2 = [(INSetRadioStationIntent *)self _typedBackingStore];
  radioType = [_typedBackingStore2 radioType];
  if (((radioType - 1 < 5) & hasRadioType) != 0)
  {
    v7 = radioType;
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

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSetRadioStationIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSetRadioStationIntent *)self _typedBackingStore];
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