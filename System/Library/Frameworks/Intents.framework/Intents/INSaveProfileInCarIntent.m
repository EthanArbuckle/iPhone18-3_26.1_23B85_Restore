@interface INSaveProfileInCarIntent
- (INSaveProfileInCarIntent)initWithProfileNumber:(NSNumber *)profileNumber profileName:(NSString *)profileName;
- (NSNumber)profileNumber;
- (NSString)profileName;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setProfileName:(id)a3;
- (void)setProfileNumber:(id)a3;
@end

@implementation INSaveProfileInCarIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INSaveProfileInCarIntent *)self _typedBackingStore];
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
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"profileNumber";
  v3 = [(INSaveProfileInCarIntent *)self profileNumber];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"profileName";
  v11[0] = v4;
  v5 = [(INSaveProfileInCarIntent *)self profileName];
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

- (void)setProfileName:(id)a3
{
  v4 = a3;
  v6 = [(INSaveProfileInCarIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToString(v4);

  [v6 setProfileName:v5];
}

- (NSString)profileName
{
  v2 = [(INSaveProfileInCarIntent *)self _typedBackingStore];
  v3 = [v2 profileName];
  v4 = INIntentSlotValueTransformFromString(v3);

  return v4;
}

- (void)setProfileNumber:(id)a3
{
  v4 = a3;
  v6 = [(INSaveProfileInCarIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToInteger(v4);

  [v6 setProfileNumber:v5];
}

- (NSNumber)profileNumber
{
  v2 = [(INSaveProfileInCarIntent *)self _typedBackingStore];
  v3 = [v2 profileNumber];
  v4 = INIntentSlotValueTransformFromInteger(v3);

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

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSaveProfileInCarIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INSaveProfileInCarIntent *)self _typedBackingStore];
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