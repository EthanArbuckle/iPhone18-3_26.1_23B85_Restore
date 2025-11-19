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
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setCarName:(id)a3;
- (void)setEnableCooling:(id)a3;
- (void)setEnableHeating:(id)a3;
- (void)setEnableMassage:(id)a3;
- (void)setLevel:(id)a3;
- (void)setRelativeLevelSetting:(int64_t)a3;
- (void)setSeat:(int64_t)a3;
@end

@implementation INSetSeatSettingsInCarIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  v11 = v6;
  v8 = [v7 copy];
  v9 = [v7 level];
  v10 = INIntentSlotValueRedactedIntegerFromInteger(v9, a3);

  [v8 setLevel:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v26[7] = *MEMORY[0x1E69E9840];
  v25[0] = @"enableHeating";
  v3 = [(INSetSeatSettingsInCarIntent *)self enableHeating];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v3;
  v26[0] = v3;
  v25[1] = @"enableCooling";
  v5 = [(INSetSeatSettingsInCarIntent *)self enableCooling];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v5;
  v26[1] = v5;
  v25[2] = @"enableMassage";
  v7 = [(INSetSeatSettingsInCarIntent *)self enableMassage];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = v7;
  v25[3] = @"seat";
  v9 = [(INSetSeatSettingsInCarIntent *)self seat];
  if ((v9 - 1) > 0xB)
  {
    v10 = @"unknown";
  }

  else
  {
    v10 = off_1E727EFE0[v9 - 1];
  }

  v11 = v10;
  v26[3] = v11;
  v25[4] = @"level";
  v12 = [(INSetSeatSettingsInCarIntent *)self level];
  v13 = v12;
  if (!v12)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = v13;
  v25[5] = @"relativeLevelSetting";
  v14 = [(INSetSeatSettingsInCarIntent *)self relativeLevelSetting];
  if ((v14 - 1) > 3)
  {
    v15 = @"unknown";
  }

  else
  {
    v15 = off_1E7285318[v14 - 1];
  }

  v16 = v15;
  v26[5] = v16;
  v25[6] = @"carName";
  v17 = [(INSetSeatSettingsInCarIntent *)self carName];
  v18 = v17;
  if (!v17)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v26[6] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:7];
  if (!v17)
  {
  }

  if (!v12)
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

- (void)setCarName:(id)a3
{
  v4 = a3;
  v6 = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(v4);

  [v6 setCarName:v5];
}

- (INSpeakableString)carName
{
  v2 = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  v3 = [v2 carName];
  v4 = INIntentSlotValueTransformFromDataString(v3);

  return v4;
}

- (void)setRelativeLevelSetting:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  v5 = v4;
  if (v3 > 3)
  {
    [v4 setHasRelativeLevelSetting:0];
  }

  else
  {
    [v4 setRelativeLevelSetting:?];
  }
}

- (INRelativeSetting)relativeLevelSetting
{
  v3 = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  v4 = [v3 hasRelativeLevelSetting];
  v5 = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  v6 = [v5 relativeLevelSetting];
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

- (void)setLevel:(id)a3
{
  v4 = a3;
  v6 = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToInteger(v4);

  [v6 setLevel:v5];
}

- (NSNumber)level
{
  v2 = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  v3 = [v2 level];
  v4 = INIntentSlotValueTransformFromInteger(v3);

  return v4;
}

- (void)setSeat:(int64_t)a3
{
  v3 = 0x7FFFFFFFLL;
  if ((a3 - 1) <= 0xB)
  {
    v3 = dword_18EE5E5FC[a3 - 1];
  }

  v4 = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  v5 = v4;
  if (v3 == 0x7FFFFFFF)
  {
    [v4 setHasSeat:0];
  }

  else
  {
    [v4 setSeat:v3];
  }
}

- (INCarSeat)seat
{
  v3 = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  v4 = [v3 hasSeat];
  v5 = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  v6 = [v5 seat];
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

- (void)setEnableMassage:(id)a3
{
  v5 = a3;
  v4 = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  if (v5)
  {
    [v4 setEnableMassage:{objc_msgSend(v5, "BOOLValue")}];
  }

  else
  {
    [v4 setHasEnableMassage:0];
  }
}

- (NSNumber)enableMassage
{
  v3 = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  if ([v3 hasEnableMassage])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "enableMassage")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setEnableCooling:(id)a3
{
  v5 = a3;
  v4 = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  if (v5)
  {
    [v4 setEnableCooling:{objc_msgSend(v5, "BOOLValue")}];
  }

  else
  {
    [v4 setHasEnableCooling:0];
  }
}

- (NSNumber)enableCooling
{
  v3 = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  if ([v3 hasEnableCooling])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "enableCooling")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setEnableHeating:(id)a3
{
  v5 = a3;
  v4 = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  if (v5)
  {
    [v4 setEnableHeating:{objc_msgSend(v5, "BOOLValue")}];
  }

  else
  {
    [v4 setHasEnableHeating:0];
  }
}

- (NSNumber)enableHeating
{
  v3 = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  if ([v3 hasEnableHeating])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "enableHeating")}];
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

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INSetSeatSettingsInCarIntent *)self _typedBackingStore];
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