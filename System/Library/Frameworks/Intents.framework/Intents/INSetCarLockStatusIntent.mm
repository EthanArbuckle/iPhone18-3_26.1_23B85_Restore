@interface INSetCarLockStatusIntent
- (INSetCarLockStatusIntent)initWithLocked:(NSNumber *)locked carName:(INSpeakableString *)carName;
- (INSpeakableString)carName;
- (NSNumber)locked;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setCarName:(id)a3;
- (void)setLocked:(id)a3;
@end

@implementation INSetCarLockStatusIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INSetCarLockStatusIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"locked";
  v3 = [(INSetCarLockStatusIntent *)self locked];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"carName";
  v11[0] = v4;
  v5 = [(INSetCarLockStatusIntent *)self carName];
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

- (void)setCarName:(id)a3
{
  v4 = a3;
  v6 = [(INSetCarLockStatusIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(v4);

  [v6 setCarName:v5];
}

- (INSpeakableString)carName
{
  v2 = [(INSetCarLockStatusIntent *)self _typedBackingStore];
  v3 = [v2 carName];
  v4 = INIntentSlotValueTransformFromDataString(v3);

  return v4;
}

- (void)setLocked:(id)a3
{
  v5 = a3;
  v4 = [(INSetCarLockStatusIntent *)self _typedBackingStore];
  if (v5)
  {
    [v4 setLocked:{objc_msgSend(v5, "BOOLValue")}];
  }

  else
  {
    [v4 setHasLocked:0];
  }
}

- (NSNumber)locked
{
  v3 = [(INSetCarLockStatusIntent *)self _typedBackingStore];
  if ([v3 hasLocked])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INSetCarLockStatusIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "locked")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (INSetCarLockStatusIntent)initWithLocked:(NSNumber *)locked carName:(INSpeakableString *)carName
{
  v6 = locked;
  v7 = carName;
  v11.receiver = self;
  v11.super_class = INSetCarLockStatusIntent;
  v8 = [(INIntent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(INSetCarLockStatusIntent *)v8 setLocked:v6];
    [(INSetCarLockStatusIntent *)v9 setCarName:v7];
  }

  return v9;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSetCarLockStatusIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INSetCarLockStatusIntent *)self _typedBackingStore];
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