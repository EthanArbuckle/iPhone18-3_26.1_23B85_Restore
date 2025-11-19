@interface INActivateCarSignalIntent
- (INActivateCarSignalIntent)initWithCarName:(INSpeakableString *)carName signals:(INCarSignalOptions)signals;
- (INCarSignalOptions)signals;
- (INSpeakableString)carName;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setCarName:(id)a3;
- (void)setSignals:(unint64_t)a3;
@end

@implementation INActivateCarSignalIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INActivateCarSignalIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"carName";
  v3 = [(INActivateCarSignalIntent *)self carName];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"signals";
  v11[0] = v4;
  v5 = INCarSignalOptionsGetNames([(INActivateCarSignalIntent *)self signals]);
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)setSignals:(unint64_t)a3
{
  v5 = [(INActivateCarSignalIntent *)self _typedBackingStore];
  [v5 clearSignals];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__INActivateCarSignalIntent_setSignals___block_invoke;
  v6[3] = &unk_1E7288628;
  v6[4] = self;
  INCarSignalOptionsEnumerateBackingTypes(a3, v6);
}

void __40__INActivateCarSignalIntent_setSignals___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _typedBackingStore];
  [v3 addSignals:a2];
}

- (INCarSignalOptions)signals
{
  v3 = [(INActivateCarSignalIntent *)self _typedBackingStore];
  v4 = [v3 signalsCount];

  v5 = 0;
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = [(INActivateCarSignalIntent *)self _typedBackingStore];
      v8 = [v7 signalsAtIndex:i];
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

- (void)setCarName:(id)a3
{
  v4 = a3;
  v6 = [(INActivateCarSignalIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(v4);

  [v6 setCarName:v5];
}

- (INSpeakableString)carName
{
  v2 = [(INActivateCarSignalIntent *)self _typedBackingStore];
  v3 = [v2 carName];
  v4 = INIntentSlotValueTransformFromDataString(v3);

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

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INActivateCarSignalIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INActivateCarSignalIntent *)self _typedBackingStore];
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