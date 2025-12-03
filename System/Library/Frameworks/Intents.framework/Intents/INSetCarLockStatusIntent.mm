@interface INSetCarLockStatusIntent
- (INSetCarLockStatusIntent)initWithLocked:(NSNumber *)locked carName:(INSpeakableString *)carName;
- (INSpeakableString)carName;
- (NSNumber)locked;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setCarName:(id)name;
- (void)setLocked:(id)locked;
@end

@implementation INSetCarLockStatusIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INSetCarLockStatusIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"locked";
  locked = [(INSetCarLockStatusIntent *)self locked];
  null = locked;
  if (!locked)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"carName";
  v11[0] = null;
  carName = [(INSetCarLockStatusIntent *)self carName];
  null2 = carName;
  if (!carName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!carName)
  {
  }

  if (!locked)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)setCarName:(id)name
{
  nameCopy = name;
  _typedBackingStore = [(INSetCarLockStatusIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(nameCopy);

  [_typedBackingStore setCarName:v5];
}

- (INSpeakableString)carName
{
  _typedBackingStore = [(INSetCarLockStatusIntent *)self _typedBackingStore];
  carName = [_typedBackingStore carName];
  v4 = INIntentSlotValueTransformFromDataString(carName);

  return v4;
}

- (void)setLocked:(id)locked
{
  lockedCopy = locked;
  _typedBackingStore = [(INSetCarLockStatusIntent *)self _typedBackingStore];
  if (lockedCopy)
  {
    [_typedBackingStore setLocked:{objc_msgSend(lockedCopy, "BOOLValue")}];
  }

  else
  {
    [_typedBackingStore setHasLocked:0];
  }
}

- (NSNumber)locked
{
  _typedBackingStore = [(INSetCarLockStatusIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasLocked])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INSetCarLockStatusIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(_typedBackingStore2, "locked")}];
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

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSetCarLockStatusIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSetCarLockStatusIntent *)self _typedBackingStore];
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