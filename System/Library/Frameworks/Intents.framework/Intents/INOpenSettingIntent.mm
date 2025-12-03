@interface INOpenSettingIntent
- (INOpenSettingIntent)initWithSettingMetadata:(id)metadata searchQuery:(id)query;
- (INSettingMetadata)settingMetadata;
- (INSpeakableString)searchQuery;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setSearchQuery:(id)query;
- (void)setSettingMetadata:(id)metadata;
@end

@implementation INOpenSettingIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INOpenSettingIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"settingMetadata";
  settingMetadata = [(INOpenSettingIntent *)self settingMetadata];
  null = settingMetadata;
  if (!settingMetadata)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"searchQuery";
  v11[0] = null;
  searchQuery = [(INOpenSettingIntent *)self searchQuery];
  null2 = searchQuery;
  if (!searchQuery)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!searchQuery)
  {
  }

  if (!settingMetadata)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)setSearchQuery:(id)query
{
  queryCopy = query;
  _typedBackingStore = [(INOpenSettingIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(queryCopy);

  [_typedBackingStore setSearchQuery:v5];
}

- (INSpeakableString)searchQuery
{
  _typedBackingStore = [(INOpenSettingIntent *)self _typedBackingStore];
  searchQuery = [_typedBackingStore searchQuery];
  v4 = INIntentSlotValueTransformFromDataString(searchQuery);

  return v4;
}

- (void)setSettingMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INOpenSettingIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToSettingMetadata(metadataCopy);

  [_typedBackingStore setSettingMetadata:v5];
}

- (INSettingMetadata)settingMetadata
{
  _typedBackingStore = [(INOpenSettingIntent *)self _typedBackingStore];
  settingMetadata = [_typedBackingStore settingMetadata];
  v4 = INIntentSlotValueTransformFromSettingMetadata(settingMetadata);

  return v4;
}

- (INOpenSettingIntent)initWithSettingMetadata:(id)metadata searchQuery:(id)query
{
  metadataCopy = metadata;
  queryCopy = query;
  v11.receiver = self;
  v11.super_class = INOpenSettingIntent;
  v8 = [(INIntent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(INOpenSettingIntent *)v8 setSettingMetadata:metadataCopy];
    [(INOpenSettingIntent *)v9 setSearchQuery:queryCopy];
  }

  return v9;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INOpenSettingIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INOpenSettingIntent *)self _typedBackingStore];
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