@interface INSetSeatSettingsInCarIntent
- (INCarSeat)seat;
- (INRelativeSetting)relativeLevelSetting;
- (INSetSeatSettingsInCarIntent)initWithEnableHeating:(NSNumber *)enableHeating enableCooling:(NSNumber *)enableCooling enableMassage:(NSNumber *)enableMassage seat:(INCarSeat)seat level:(NSNumber *)level relativeLevelSetting:(INRelativeSetting)relativeLevelSetting carName:(INSpeakableString *)carName;
- (INSpeakableString)carName;
- (NSNumber)enableCooling;
- (NSNumber)enableHeating;
- (NSNumber)enableMassage;
- (NSNumber)level;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setCarName:(id)name;
- (void)setEnableCooling:(id)cooling;
- (void)setEnableHeating:(id)heating;
- (void)setEnableMassage:(id)massage;
- (void)setLevel:(id)level;
- (void)setRelativeLevelSetting:(int64_t)setting;
- (void)setSeat:(int64_t)seat;
@end

@implementation INSetSeatSettingsInCarIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  v11 = idCopy;
  v8 = [_typedBackingStore copy];
  level = [_typedBackingStore level];
  v10 = INIntentSlotValueRedactedIntegerFromInteger(level, options);

  [v8 setLevel:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v26[7] = *MEMORY[0x1E69E9840];
  v25[0] = @"enableHeating";
  enableHeating = [(INSetSeatSettingsInCarIntent *)self enableHeating];
  v4 = enableHeating;
  if (!enableHeating)
  {
    enableHeating = [MEMORY[0x1E695DFB0] null];
  }

  v24 = enableHeating;
  v26[0] = enableHeating;
  v25[1] = @"enableCooling";
  enableCooling = [(INSetSeatSettingsInCarIntent *)self enableCooling];
  v6 = enableCooling;
  if (!enableCooling)
  {
    enableCooling = [MEMORY[0x1E695DFB0] null];
  }

  v23 = enableCooling;
  v26[1] = enableCooling;
  v25[2] = @"enableMassage";
  enableMassage = [(INSetSeatSettingsInCarIntent *)self enableMassage];
  v8 = enableMassage;
  if (!enableMassage)
  {
    enableMassage = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = enableMassage;
  v25[3] = @"seat";
  seat = [(INSetSeatSettingsInCarIntent *)self seat];
  if ((seat - 1) > 0xB)
  {
    v10 = @"unknown";
  }

  else
  {
    v10 = off_1E727EFE0[seat - 1];
  }

  v11 = v10;
  v26[3] = v11;
  v25[4] = @"level";
  level = [(INSetSeatSettingsInCarIntent *)self level];
  null = level;
  if (!level)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null;
  v25[5] = @"relativeLevelSetting";
  relativeLevelSetting = [(INSetSeatSettingsInCarIntent *)self relativeLevelSetting];
  if ((relativeLevelSetting - 1) > 3)
  {
    v15 = @"unknown";
  }

  else
  {
    v15 = off_1E7285318[relativeLevelSetting - 1];
  }

  v16 = v15;
  v26[5] = v16;
  v25[6] = @"carName";
  carName = [(INSetSeatSettingsInCarIntent *)self carName];
  null2 = carName;
  if (!carName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26[6] = null2;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:7];
  if (!carName)
  {
  }

  if (!level)
  {
  }

  if (!v8)
  {
  }

  if (!v6)
  {
  }

  if (!v4)
  {
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (void)setCarName:(id)name
{
  nameCopy = name;
  _typedBackingStore = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(nameCopy);

  [_typedBackingStore setCarName:v5];
}

- (INSpeakableString)carName
{
  _typedBackingStore = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  carName = [_typedBackingStore carName];
  v4 = INIntentSlotValueTransformFromDataString(carName);

  return v4;
}

- (void)setRelativeLevelSetting:(int64_t)setting
{
  v3 = setting - 1;
  _typedBackingStore = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (v3 > 3)
  {
    [_typedBackingStore setHasRelativeLevelSetting:0];
  }

  else
  {
    [_typedBackingStore setRelativeLevelSetting:?];
  }
}

- (INRelativeSetting)relativeLevelSetting
{
  _typedBackingStore = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  hasRelativeLevelSetting = [_typedBackingStore hasRelativeLevelSetting];
  _typedBackingStore2 = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  relativeLevelSetting = [_typedBackingStore2 relativeLevelSetting];
  if (((relativeLevelSetting - 1 < 4) & hasRelativeLevelSetting) != 0)
  {
    v7 = relativeLevelSetting;
  }

  else
  {
    v7 = INRelativeSettingUnknown;
  }

  return v7;
}

- (void)setLevel:(id)level
{
  levelCopy = level;
  _typedBackingStore = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToInteger(levelCopy);

  [_typedBackingStore setLevel:v5];
}

- (NSNumber)level
{
  _typedBackingStore = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  level = [_typedBackingStore level];
  v4 = INIntentSlotValueTransformFromInteger(level);

  return v4;
}

- (void)setSeat:(int64_t)seat
{
  v3 = 0x7FFFFFFFLL;
  if ((seat - 1) <= 0xB)
  {
    v3 = dword_18EE5E5FC[seat - 1];
  }

  _typedBackingStore = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (v3 == 0x7FFFFFFF)
  {
    [_typedBackingStore setHasSeat:0];
  }

  else
  {
    [_typedBackingStore setSeat:v3];
  }
}

- (INCarSeat)seat
{
  _typedBackingStore = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  hasSeat = [_typedBackingStore hasSeat];
  _typedBackingStore2 = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  seat = [_typedBackingStore2 seat];
  if (hasSeat && (seat - 1) <= 0x15)
  {
    v7 = qword_18EE5E630[seat - 1];
  }

  else
  {
    v7 = INCarSeatUnknown;
  }

  return v7;
}

- (void)setEnableMassage:(id)massage
{
  massageCopy = massage;
  _typedBackingStore = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  if (massageCopy)
  {
    [_typedBackingStore setEnableMassage:{objc_msgSend(massageCopy, "BOOLValue")}];
  }

  else
  {
    [_typedBackingStore setHasEnableMassage:0];
  }
}

- (NSNumber)enableMassage
{
  _typedBackingStore = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasEnableMassage])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(_typedBackingStore2, "enableMassage")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setEnableCooling:(id)cooling
{
  coolingCopy = cooling;
  _typedBackingStore = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  if (coolingCopy)
  {
    [_typedBackingStore setEnableCooling:{objc_msgSend(coolingCopy, "BOOLValue")}];
  }

  else
  {
    [_typedBackingStore setHasEnableCooling:0];
  }
}

- (NSNumber)enableCooling
{
  _typedBackingStore = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasEnableCooling])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(_typedBackingStore2, "enableCooling")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setEnableHeating:(id)heating
{
  heatingCopy = heating;
  _typedBackingStore = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  if (heatingCopy)
  {
    [_typedBackingStore setEnableHeating:{objc_msgSend(heatingCopy, "BOOLValue")}];
  }

  else
  {
    [_typedBackingStore setHasEnableHeating:0];
  }
}

- (NSNumber)enableHeating
{
  _typedBackingStore = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasEnableHeating])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(_typedBackingStore2, "enableHeating")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (INSetSeatSettingsInCarIntent)initWithEnableHeating:(NSNumber *)enableHeating enableCooling:(NSNumber *)enableCooling enableMassage:(NSNumber *)enableMassage seat:(INCarSeat)seat level:(NSNumber *)level relativeLevelSetting:(INRelativeSetting)relativeLevelSetting carName:(INSpeakableString *)carName
{
  v15 = enableHeating;
  v16 = enableCooling;
  v17 = enableMassage;
  v18 = level;
  v19 = carName;
  v23.receiver = self;
  v23.super_class = INSetSeatSettingsInCarIntent;
  v20 = [(INIntent *)&v23 init];
  v21 = v20;
  if (v20)
  {
    [(INSetSeatSettingsInCarIntent *)v20 setEnableHeating:v15];
    [(INSetSeatSettingsInCarIntent *)v21 setEnableCooling:v16];
    [(INSetSeatSettingsInCarIntent *)v21 setEnableMassage:v17];
    [(INSetSeatSettingsInCarIntent *)v21 setSeat:seat];
    [(INSetSeatSettingsInCarIntent *)v21 setLevel:v18];
    [(INSetSeatSettingsInCarIntent *)v21 setRelativeLevelSetting:relativeLevelSetting];
    [(INSetSeatSettingsInCarIntent *)v21 setCarName:v19];
  }

  return v21;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
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