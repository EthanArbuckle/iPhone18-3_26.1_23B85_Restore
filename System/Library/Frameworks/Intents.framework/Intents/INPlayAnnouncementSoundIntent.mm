@interface INPlayAnnouncementSoundIntent
- (INPlayAnnouncementSoundIntent)initWithSoundType:(int64_t)type;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)soundType;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setSoundType:(int64_t)type;
@end

@implementation INPlayAnnouncementSoundIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INPlayAnnouncementSoundIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"soundType";
  soundType = [(INPlayAnnouncementSoundIntent *)self soundType];
  v3 = @"unknown";
  if (soundType == 1)
  {
    v3 = @"announcementSent";
  }

  v4 = v3;
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)setSoundType:(int64_t)type
{
  _typedBackingStore = [(INPlayAnnouncementSoundIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (type == 1)
  {
    [_typedBackingStore setSoundType:1];
  }

  else
  {
    [_typedBackingStore setHasSoundType:0];
  }
}

- (int64_t)soundType
{
  _typedBackingStore = [(INPlayAnnouncementSoundIntent *)self _typedBackingStore];
  LODWORD(v4) = [_typedBackingStore hasSoundType];
  _typedBackingStore2 = [(INPlayAnnouncementSoundIntent *)self _typedBackingStore];
  if ([_typedBackingStore2 soundType] == 1)
  {
    v4 = v4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (INPlayAnnouncementSoundIntent)initWithSoundType:(int64_t)type
{
  v7.receiver = self;
  v7.super_class = INPlayAnnouncementSoundIntent;
  v4 = [(INIntent *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(INPlayAnnouncementSoundIntent *)v4 setSoundType:type];
  }

  return v5;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INPlayAnnouncementSoundIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INPlayAnnouncementSoundIntent *)self _typedBackingStore];
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