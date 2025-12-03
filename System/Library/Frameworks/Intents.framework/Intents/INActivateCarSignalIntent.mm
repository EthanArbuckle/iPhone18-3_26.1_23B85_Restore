@interface INActivateCarSignalIntent
- (INActivateCarSignalIntent)initWithCarName:(INSpeakableString *)carName signals:(INCarSignalOptions)signals;
- (INCarSignalOptions)signals;
- (INSpeakableString)carName;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setCarName:(id)name;
- (void)setSignals:(unint64_t)signals;
@end

@implementation INActivateCarSignalIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INActivateCarSignalIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"carName";
  carName = [(INActivateCarSignalIntent *)self carName];
  null = carName;
  if (!carName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"signals";
  v11[0] = null;
  v5 = INCarSignalOptionsGetNames([(INActivateCarSignalIntent *)self signals]);
  null2 = v5;
  if (!v5)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!v5)
  {
  }

  if (!carName)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)setSignals:(unint64_t)signals
{
  _typedBackingStore = [(INActivateCarSignalIntent *)self _typedBackingStore];
  [_typedBackingStore clearSignals];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__INActivateCarSignalIntent_setSignals___block_invoke;
  v6[3] = &unk_1E7288628;
  v6[4] = self;
  INCarSignalOptionsEnumerateBackingTypes(signals, v6);
}

void __40__INActivateCarSignalIntent_setSignals___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _typedBackingStore];
  [v3 addSignals:a2];
}

- (INCarSignalOptions)signals
{
  _typedBackingStore = [(INActivateCarSignalIntent *)self _typedBackingStore];
  signalsCount = [_typedBackingStore signalsCount];

  v5 = 0;
  if (signalsCount)
  {
    for (i = 0; i != signalsCount; ++i)
    {
      _typedBackingStore2 = [(INActivateCarSignalIntent *)self _typedBackingStore];
      v8 = [_typedBackingStore2 signalsAtIndex:i];
      v9 = v5 | 1;
      if (v8 != 1)
      {
        v9 = v5;
      }

      if (v8 == 2)
      {
        v5 |= 2uLL;
      }

      else
      {
        v5 = v9;
      }
    }
  }

  return v5;
}

- (void)setCarName:(id)name
{
  nameCopy = name;
  _typedBackingStore = [(INActivateCarSignalIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(nameCopy);

  [_typedBackingStore setCarName:v5];
}

- (INSpeakableString)carName
{
  _typedBackingStore = [(INActivateCarSignalIntent *)self _typedBackingStore];
  carName = [_typedBackingStore carName];
  v4 = INIntentSlotValueTransformFromDataString(carName);

  return v4;
}

- (INActivateCarSignalIntent)initWithCarName:(INSpeakableString *)carName signals:(INCarSignalOptions)signals
{
  v6 = carName;
  v10.receiver = self;
  v10.super_class = INActivateCarSignalIntent;
  v7 = [(INIntent *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(INActivateCarSignalIntent *)v7 setCarName:v6];
    [(INActivateCarSignalIntent *)v8 setSignals:signals];
  }

  return v8;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INActivateCarSignalIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INActivateCarSignalIntent *)self _typedBackingStore];
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