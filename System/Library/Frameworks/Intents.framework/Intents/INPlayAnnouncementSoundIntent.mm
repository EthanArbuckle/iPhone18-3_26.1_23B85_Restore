@interface INPlayAnnouncementSoundIntent
- (INPlayAnnouncementSoundIntent)initWithSoundType:(int64_t)a3;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)soundType;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setSoundType:(int64_t)a3;
@end

@implementation INPlayAnnouncementSoundIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INPlayAnnouncementSoundIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"soundType";
  v2 = [(INPlayAnnouncementSoundIntent *)self soundType];
  v3 = @"unknown";
  if (v2 == 1)
  {
    v3 = @"announcementSent";
  }

  v4 = v3;
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)setSoundType:(int64_t)a3
{
  v4 = [(INPlayAnnouncementSoundIntent *)self _typedBackingStore];
  v5 = v4;
  if (a3 == 1)
  {
    [v4 setSoundType:1];
  }

  else
  {
    [v4 setHasSoundType:0];
  }
}

- (int64_t)soundType
{
  v3 = [(INPlayAnnouncementSoundIntent *)self _typedBackingStore];
  LODWORD(v4) = [v3 hasSoundType];
  v5 = [(INPlayAnnouncementSoundIntent *)self _typedBackingStore];
  if ([v5 soundType] == 1)
  {
    v4 = v4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (INPlayAnnouncementSoundIntent)initWithSoundType:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = INPlayAnnouncementSoundIntent;
  v4 = [(INIntent *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(INPlayAnnouncementSoundIntent *)v4 setSoundType:a3];
  }

  return v5;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INPlayAnnouncementSoundIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INPlayAnnouncementSoundIntent *)self _typedBackingStore];
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