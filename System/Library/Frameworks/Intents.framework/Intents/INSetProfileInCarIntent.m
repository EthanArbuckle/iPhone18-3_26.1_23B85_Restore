@interface INSetProfileInCarIntent
- (INSetProfileInCarIntent)initWithProfileNumber:(NSNumber *)profileNumber profileName:(NSString *)profileName defaultProfile:(NSNumber *)defaultProfile carName:(INSpeakableString *)carName;
- (INSpeakableString)carName;
- (NSNumber)defaultProfile;
- (NSNumber)profileNumber;
- (NSString)profileName;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setCarName:(id)a3;
- (void)setDefaultProfile:(id)a3;
- (void)setProfileName:(id)a3;
- (void)setProfileNumber:(id)a3;
@end

@implementation INSetProfileInCarIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INSetProfileInCarIntent *)self _typedBackingStore];
  v13 = v6;
  v8 = [v7 copy];
  v9 = [v7 profileNumber];
  v10 = INIntentSlotValueRedactedIntegerFromInteger(v9, a3);
  [v8 setProfileNumber:v10];

  v11 = [v7 profileName];
  v12 = INIntentSlotValueRedactedStringFromString(v11, a3, v13);

  [v8 setProfileName:v12];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v15[4] = *MEMORY[0x1E69E9840];
  v14[0] = @"profileNumber";
  v3 = [(INSetProfileInCarIntent *)self profileNumber];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v4;
  v14[1] = @"profileName";
  v5 = [(INSetProfileInCarIntent *)self profileName];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v6;
  v14[2] = @"defaultProfile";
  v7 = [(INSetProfileInCarIntent *)self defaultProfile];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v8;
  v14[3] = @"carName";
  v9 = [(INSetProfileInCarIntent *)self carName];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)setCarName:(id)a3
{
  v4 = a3;
  v6 = [(INSetProfileInCarIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(v4);

  [v6 setCarName:v5];
}

- (INSpeakableString)carName
{
  v2 = [(INSetProfileInCarIntent *)self _typedBackingStore];
  v3 = [v2 carName];
  v4 = INIntentSlotValueTransformFromDataString(v3);

  return v4;
}

- (void)setDefaultProfile:(id)a3
{
  v5 = a3;
  v4 = [(INSetProfileInCarIntent *)self _typedBackingStore];
  if (v5)
  {
    [v4 setDefaultProfile:{objc_msgSend(v5, "BOOLValue")}];
  }

  else
  {
    [v4 setHasDefaultProfile:0];
  }
}

- (NSNumber)defaultProfile
{
  v3 = [(INSetProfileInCarIntent *)self _typedBackingStore];
  if ([v3 hasDefaultProfile])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INSetProfileInCarIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "defaultProfile")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setProfileName:(id)a3
{
  v4 = a3;
  v6 = [(INSetProfileInCarIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToString(v4);

  [v6 setProfileName:v5];
}

- (NSString)profileName
{
  v2 = [(INSetProfileInCarIntent *)self _typedBackingStore];
  v3 = [v2 profileName];
  v4 = INIntentSlotValueTransformFromString(v3);

  return v4;
}

- (void)setProfileNumber:(id)a3
{
  v4 = a3;
  v6 = [(INSetProfileInCarIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToInteger(v4);

  [v6 setProfileNumber:v5];
}

- (NSNumber)profileNumber
{
  v2 = [(INSetProfileInCarIntent *)self _typedBackingStore];
  v3 = [v2 profileNumber];
  v4 = INIntentSlotValueTransformFromInteger(v3);

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

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSetProfileInCarIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INSetProfileInCarIntent *)self _typedBackingStore];
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