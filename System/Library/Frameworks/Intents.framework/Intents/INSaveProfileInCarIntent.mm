@interface INSaveProfileInCarIntent
- (INSaveProfileInCarIntent)initWithProfileNumber:(NSNumber *)profileNumber profileName:(NSString *)profileName;
- (NSNumber)profileNumber;
- (NSString)profileName;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setProfileName:(id)name;
- (void)setProfileNumber:(id)number;
@end

@implementation INSaveProfileInCarIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INSaveProfileInCarIntent *)self _typedBackingStore];
  v13 = idCopy;
  v8 = [_typedBackingStore copy];
  profileNumber = [_typedBackingStore profileNumber];
  v10 = INIntentSlotValueRedactedIntegerFromInteger(profileNumber, options);
  [v8 setProfileNumber:v10];

  profileName = [_typedBackingStore profileName];
  v12 = INIntentSlotValueRedactedStringFromString(profileName, options, v13);

  [v8 setProfileName:v12];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"profileNumber";
  profileNumber = [(INSaveProfileInCarIntent *)self profileNumber];
  null = profileNumber;
  if (!profileNumber)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"profileName";
  v11[0] = null;
  profileName = [(INSaveProfileInCarIntent *)self profileName];
  null2 = profileName;
  if (!profileName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!profileName)
  {
  }

  if (!profileNumber)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)setProfileName:(id)name
{
  nameCopy = name;
  _typedBackingStore = [(INSaveProfileInCarIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToString(nameCopy);

  [_typedBackingStore setProfileName:v5];
}

- (NSString)profileName
{
  _typedBackingStore = [(INSaveProfileInCarIntent *)self _typedBackingStore];
  profileName = [_typedBackingStore profileName];
  v4 = INIntentSlotValueTransformFromString(profileName);

  return v4;
}

- (void)setProfileNumber:(id)number
{
  numberCopy = number;
  _typedBackingStore = [(INSaveProfileInCarIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToInteger(numberCopy);

  [_typedBackingStore setProfileNumber:v5];
}

- (NSNumber)profileNumber
{
  _typedBackingStore = [(INSaveProfileInCarIntent *)self _typedBackingStore];
  profileNumber = [_typedBackingStore profileNumber];
  v4 = INIntentSlotValueTransformFromInteger(profileNumber);

  return v4;
}

- (INSaveProfileInCarIntent)initWithProfileNumber:(NSNumber *)profileNumber profileName:(NSString *)profileName
{
  v6 = profileNumber;
  v7 = profileName;
  v11.receiver = self;
  v11.super_class = INSaveProfileInCarIntent;
  v8 = [(INIntent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(INSaveProfileInCarIntent *)v8 setProfileNumber:v6];
    [(INSaveProfileInCarIntent *)v9 setProfileName:v7];
  }

  return v9;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSaveProfileInCarIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSaveProfileInCarIntent *)self _typedBackingStore];
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