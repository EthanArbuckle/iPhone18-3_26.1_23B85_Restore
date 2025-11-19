@interface INSetDefrosterSettingsInCarIntent
- (INCarDefroster)defroster;
- (INSetDefrosterSettingsInCarIntent)initWithEnable:(NSNumber *)enable defroster:(INCarDefroster)defroster carName:(INSpeakableString *)carName;
- (INSpeakableString)carName;
- (NSNumber)enable;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setCarName:(id)a3;
- (void)setDefroster:(int64_t)a3;
- (void)setEnable:(id)a3;
@end

@implementation INSetDefrosterSettingsInCarIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INSetDefrosterSettingsInCarIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v14[3] = *MEMORY[0x1E69E9840];
  v13[0] = @"enable";
  v3 = [(INSetDefrosterSettingsInCarIntent *)self enable];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = v4;
  v13[1] = @"defroster";
  v5 = [(INSetDefrosterSettingsInCarIntent *)self defroster];
  if ((v5 - 1) > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E7282658[v5 - 1];
  }

  v7 = v6;
  v14[1] = v7;
  v13[2] = @"carName";
  v8 = [(INSetDefrosterSettingsInCarIntent *)self carName];
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

- (void)setCarName:(id)a3
{
  v4 = a3;
  v6 = [(INSetDefrosterSettingsInCarIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(v4);

  [v6 setCarName:v5];
}

- (INSpeakableString)carName
{
  v2 = [(INSetDefrosterSettingsInCarIntent *)self _typedBackingStore];
  v3 = [v2 carName];
  v4 = INIntentSlotValueTransformFromDataString(v3);

  return v4;
}

- (void)setDefroster:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INSetDefrosterSettingsInCarIntent *)self _typedBackingStore];
  v5 = v4;
  if (v3 > 2)
  {
    [v4 setHasDefroster:0];
  }

  else
  {
    [v4 setDefroster:?];
  }
}

- (INCarDefroster)defroster
{
  v3 = [(INSetDefrosterSettingsInCarIntent *)self _typedBackingStore];
  v4 = [v3 hasDefroster];
  v5 = [(INSetDefrosterSettingsInCarIntent *)self _typedBackingStore];
  v6 = [v5 defroster];
  if (((v6 - 1 < 3) & v4) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = INCarDefrosterUnknown;
  }

  return v7;
}

- (void)setEnable:(id)a3
{
  v5 = a3;
  v4 = [(INSetDefrosterSettingsInCarIntent *)self _typedBackingStore];
  if (v5)
  {
    [v4 setEnable:{objc_msgSend(v5, "BOOLValue")}];
  }

  else
  {
    [v4 setHasEnable:0];
  }
}

- (NSNumber)enable
{
  v3 = [(INSetDefrosterSettingsInCarIntent *)self _typedBackingStore];
  if ([v3 hasEnable])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INSetDefrosterSettingsInCarIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "enable")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (INSetDefrosterSettingsInCarIntent)initWithEnable:(NSNumber *)enable defroster:(INCarDefroster)defroster carName:(INSpeakableString *)carName
{
  v8 = enable;
  v9 = carName;
  v13.receiver = self;
  v13.super_class = INSetDefrosterSettingsInCarIntent;
  v10 = [(INIntent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(INSetDefrosterSettingsInCarIntent *)v10 setEnable:v8];
    [(INSetDefrosterSettingsInCarIntent *)v11 setDefroster:defroster];
    [(INSetDefrosterSettingsInCarIntent *)v11 setCarName:v9];
  }

  return v11;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSetDefrosterSettingsInCarIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INSetDefrosterSettingsInCarIntent *)self _typedBackingStore];
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