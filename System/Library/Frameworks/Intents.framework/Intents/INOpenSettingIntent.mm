@interface INOpenSettingIntent
- (INOpenSettingIntent)initWithSettingMetadata:(id)a3 searchQuery:(id)a4;
- (INSettingMetadata)settingMetadata;
- (INSpeakableString)searchQuery;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setSearchQuery:(id)a3;
- (void)setSettingMetadata:(id)a3;
@end

@implementation INOpenSettingIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INOpenSettingIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"settingMetadata";
  v3 = [(INOpenSettingIntent *)self settingMetadata];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"searchQuery";
  v11[0] = v4;
  v5 = [(INOpenSettingIntent *)self searchQuery];
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

- (void)setSearchQuery:(id)a3
{
  v4 = a3;
  v6 = [(INOpenSettingIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(v4);

  [v6 setSearchQuery:v5];
}

- (INSpeakableString)searchQuery
{
  v2 = [(INOpenSettingIntent *)self _typedBackingStore];
  v3 = [v2 searchQuery];
  v4 = INIntentSlotValueTransformFromDataString(v3);

  return v4;
}

- (void)setSettingMetadata:(id)a3
{
  v4 = a3;
  v6 = [(INOpenSettingIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToSettingMetadata(v4);

  [v6 setSettingMetadata:v5];
}

- (INSettingMetadata)settingMetadata
{
  v2 = [(INOpenSettingIntent *)self _typedBackingStore];
  v3 = [v2 settingMetadata];
  v4 = INIntentSlotValueTransformFromSettingMetadata(v3);

  return v4;
}

- (INOpenSettingIntent)initWithSettingMetadata:(id)a3 searchQuery:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = INOpenSettingIntent;
  v8 = [(INIntent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(INOpenSettingIntent *)v8 setSettingMetadata:v6];
    [(INOpenSettingIntent *)v9 setSearchQuery:v7];
  }

  return v9;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INOpenSettingIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INOpenSettingIntent *)self _typedBackingStore];
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