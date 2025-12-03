@interface INSetDefrosterSettingsInCarIntent
- (INCarDefroster)defroster;
- (INSetDefrosterSettingsInCarIntent)initWithEnable:(NSNumber *)enable defroster:(INCarDefroster)defroster carName:(INSpeakableString *)carName;
- (INSpeakableString)carName;
- (NSNumber)enable;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setCarName:(id)name;
- (void)setDefroster:(int64_t)defroster;
- (void)setEnable:(id)enable;
@end

@implementation INSetDefrosterSettingsInCarIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INSetDefrosterSettingsInCarIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v14[3] = *MEMORY[0x1E69E9840];
  v13[0] = @"enable";
  enable = [(INSetDefrosterSettingsInCarIntent *)self enable];
  null = enable;
  if (!enable)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = null;
  v13[1] = @"defroster";
  defroster = [(INSetDefrosterSettingsInCarIntent *)self defroster];
  if ((defroster - 1) > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E7282658[defroster - 1];
  }

  v7 = v6;
  v14[1] = v7;
  v13[2] = @"carName";
  carName = [(INSetDefrosterSettingsInCarIntent *)self carName];
  null2 = carName;
  if (!carName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = null2;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  if (!carName)
  {
  }

  if (!enable)
  {
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)setCarName:(id)name
{
  nameCopy = name;
  _typedBackingStore = [(INSetDefrosterSettingsInCarIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(nameCopy);

  [_typedBackingStore setCarName:v5];
}

- (INSpeakableString)carName
{
  _typedBackingStore = [(INSetDefrosterSettingsInCarIntent *)self _typedBackingStore];
  carName = [_typedBackingStore carName];
  v4 = INIntentSlotValueTransformFromDataString(carName);

  return v4;
}

- (void)setDefroster:(int64_t)defroster
{
  v3 = defroster - 1;
  _typedBackingStore = [(INSetDefrosterSettingsInCarIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (v3 > 2)
  {
    [_typedBackingStore setHasDefroster:0];
  }

  else
  {
    [_typedBackingStore setDefroster:?];
  }
}

- (INCarDefroster)defroster
{
  _typedBackingStore = [(INSetDefrosterSettingsInCarIntent *)self _typedBackingStore];
  hasDefroster = [_typedBackingStore hasDefroster];
  _typedBackingStore2 = [(INSetDefrosterSettingsInCarIntent *)self _typedBackingStore];
  defroster = [_typedBackingStore2 defroster];
  if (((defroster - 1 < 3) & hasDefroster) != 0)
  {
    v7 = defroster;
  }

  else
  {
    v7 = INCarDefrosterUnknown;
  }

  return v7;
}

- (void)setEnable:(id)enable
{
  enableCopy = enable;
  _typedBackingStore = [(INSetDefrosterSettingsInCarIntent *)self _typedBackingStore];
  if (enableCopy)
  {
    [_typedBackingStore setEnable:{objc_msgSend(enableCopy, "BOOLValue")}];
  }

  else
  {
    [_typedBackingStore setHasEnable:0];
  }
}

- (NSNumber)enable
{
  _typedBackingStore = [(INSetDefrosterSettingsInCarIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasEnable])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INSetDefrosterSettingsInCarIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(_typedBackingStore2, "enable")}];
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

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSetDefrosterSettingsInCarIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSetDefrosterSettingsInCarIntent *)self _typedBackingStore];
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