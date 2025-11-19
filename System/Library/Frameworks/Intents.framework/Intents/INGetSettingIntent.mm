@interface INGetSettingIntent
- (INGetSettingIntent)initWithSettingMetadata:(id)a3 confirmationValue:(int64_t)a4;
- (INSettingMetadata)settingMetadata;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)confirmationValue;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setConfirmationValue:(int64_t)a3;
- (void)setSettingMetadata:(id)a3;
@end

@implementation INGetSettingIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INGetSettingIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"settingMetadata";
  v3 = [(INGetSettingIntent *)self settingMetadata];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = @"confirmationValue";
  v12[0] = v4;
  v5 = [(INGetSettingIntent *)self confirmationValue];
  if ((v5 - 1) > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = *(&off_1E7287C40 + v5 - 1);
  }

  v7 = v6;
  v12[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  if (!v3)
  {
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)setConfirmationValue:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INGetSettingIntent *)self _typedBackingStore];
  v5 = v4;
  if (v3 > 2)
  {
    [v4 setHasConfirmationValue:0];
  }

  else
  {
    [v4 setConfirmationValue:?];
  }
}

- (int64_t)confirmationValue
{
  v3 = [(INGetSettingIntent *)self _typedBackingStore];
  v4 = [v3 hasConfirmationValue];
  v5 = [(INGetSettingIntent *)self _typedBackingStore];
  v6 = [v5 confirmationValue];
  if (((v6 - 1 < 3) & v4) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setSettingMetadata:(id)a3
{
  v4 = a3;
  v6 = [(INGetSettingIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToSettingMetadata(v4);

  [v6 setSettingMetadata:v5];
}

- (INSettingMetadata)settingMetadata
{
  v2 = [(INGetSettingIntent *)self _typedBackingStore];
  v3 = [v2 settingMetadata];
  v4 = INIntentSlotValueTransformFromSettingMetadata(v3);

  return v4;
}

- (INGetSettingIntent)initWithSettingMetadata:(id)a3 confirmationValue:(int64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = INGetSettingIntent;
  v7 = [(INIntent *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(INGetSettingIntent *)v7 setSettingMetadata:v6];
    [(INGetSettingIntent *)v8 setConfirmationValue:a4];
  }

  return v8;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INGetSettingIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INGetSettingIntent *)self _typedBackingStore];
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