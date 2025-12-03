@interface INSetProfileInCarIntent
- (INSetProfileInCarIntent)initWithProfileNumber:(NSNumber *)profileNumber profileName:(NSString *)profileName defaultProfile:(NSNumber *)defaultProfile carName:(INSpeakableString *)carName;
- (INSpeakableString)carName;
- (NSNumber)defaultProfile;
- (NSNumber)profileNumber;
- (NSString)profileName;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setCarName:(id)name;
- (void)setDefaultProfile:(id)profile;
- (void)setProfileName:(id)name;
- (void)setProfileNumber:(id)number;
@end

@implementation INSetProfileInCarIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INSetProfileInCarIntent *)self _typedBackingStore];
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
  v15[4] = *MEMORY[0x1E69E9840];
  v14[0] = @"profileNumber";
  profileNumber = [(INSetProfileInCarIntent *)self profileNumber];
  null = profileNumber;
  if (!profileNumber)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"profileName";
  profileName = [(INSetProfileInCarIntent *)self profileName];
  null2 = profileName;
  if (!profileName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"defaultProfile";
  defaultProfile = [(INSetProfileInCarIntent *)self defaultProfile];
  null3 = defaultProfile;
  if (!defaultProfile)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v14[3] = @"carName";
  carName = [(INSetProfileInCarIntent *)self carName];
  null4 = carName;
  if (!carName)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = null4;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (!carName)
  {
  }

  if (!defaultProfile)
  {
  }

  if (!profileName)
  {
  }

  if (!profileNumber)
  {
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)setCarName:(id)name
{
  nameCopy = name;
  _typedBackingStore = [(INSetProfileInCarIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(nameCopy);

  [_typedBackingStore setCarName:v5];
}

- (INSpeakableString)carName
{
  _typedBackingStore = [(INSetProfileInCarIntent *)self _typedBackingStore];
  carName = [_typedBackingStore carName];
  v4 = INIntentSlotValueTransformFromDataString(carName);

  return v4;
}

- (void)setDefaultProfile:(id)profile
{
  profileCopy = profile;
  _typedBackingStore = [(INSetProfileInCarIntent *)self _typedBackingStore];
  if (profileCopy)
  {
    [_typedBackingStore setDefaultProfile:{objc_msgSend(profileCopy, "BOOLValue")}];
  }

  else
  {
    [_typedBackingStore setHasDefaultProfile:0];
  }
}

- (NSNumber)defaultProfile
{
  _typedBackingStore = [(INSetProfileInCarIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasDefaultProfile])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INSetProfileInCarIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(_typedBackingStore2, "defaultProfile")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setProfileName:(id)name
{
  nameCopy = name;
  _typedBackingStore = [(INSetProfileInCarIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToString(nameCopy);

  [_typedBackingStore setProfileName:v5];
}

- (NSString)profileName
{
  _typedBackingStore = [(INSetProfileInCarIntent *)self _typedBackingStore];
  profileName = [_typedBackingStore profileName];
  v4 = INIntentSlotValueTransformFromString(profileName);

  return v4;
}

- (void)setProfileNumber:(id)number
{
  numberCopy = number;
  _typedBackingStore = [(INSetProfileInCarIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToInteger(numberCopy);

  [_typedBackingStore setProfileNumber:v5];
}

- (NSNumber)profileNumber
{
  _typedBackingStore = [(INSetProfileInCarIntent *)self _typedBackingStore];
  profileNumber = [_typedBackingStore profileNumber];
  v4 = INIntentSlotValueTransformFromInteger(profileNumber);

  return v4;
}

- (INSetProfileInCarIntent)initWithProfileNumber:(NSNumber *)profileNumber profileName:(NSString *)profileName defaultProfile:(NSNumber *)defaultProfile carName:(INSpeakableString *)carName
{
  v10 = profileNumber;
  v11 = profileName;
  v12 = defaultProfile;
  v13 = carName;
  v17.receiver = self;
  v17.super_class = INSetProfileInCarIntent;
  v14 = [(INIntent *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(INSetProfileInCarIntent *)v14 setProfileNumber:v10];
    [(INSetProfileInCarIntent *)v15 setProfileName:v11];
    [(INSetProfileInCarIntent *)v15 setDefaultProfile:v12];
    [(INSetProfileInCarIntent *)v15 setCarName:v13];
  }

  return v15;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSetProfileInCarIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSetProfileInCarIntent *)self _typedBackingStore];
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