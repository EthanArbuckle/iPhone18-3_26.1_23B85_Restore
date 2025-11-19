@interface INPlayMessageSoundIntent
- (INPlayMessageSoundIntent)initWithSoundType:(int64_t)a3 messageIdentifier:(id)a4;
- (NSString)messageIdentifier;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)soundType;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setMessageIdentifier:(id)a3;
- (void)setSoundType:(int64_t)a3;
@end

@implementation INPlayMessageSoundIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INPlayMessageSoundIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"soundType";
  v3 = [(INPlayMessageSoundIntent *)self soundType];
  v4 = @"unknown";
  if (v3 == 1)
  {
    v4 = @"outgoingMessage";
  }

  v5 = v4;
  v11[1] = @"messageIdentifier";
  v12[0] = v5;
  v6 = [(INPlayMessageSoundIntent *)self messageIdentifier];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (!v6)
  {
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)setMessageIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(INPlayMessageSoundIntent *)self _typedBackingStore];
  [v5 setMessageIdentifier:v4];
}

- (NSString)messageIdentifier
{
  v2 = [(INPlayMessageSoundIntent *)self _typedBackingStore];
  v3 = [v2 messageIdentifier];
  v4 = [v3 copy];

  return v4;
}

- (void)setSoundType:(int64_t)a3
{
  v4 = [(INPlayMessageSoundIntent *)self _typedBackingStore];
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
  v3 = [(INPlayMessageSoundIntent *)self _typedBackingStore];
  LODWORD(v4) = [v3 hasSoundType];
  v5 = [(INPlayMessageSoundIntent *)self _typedBackingStore];
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

- (INPlayMessageSoundIntent)initWithSoundType:(int64_t)a3 messageIdentifier:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = INPlayMessageSoundIntent;
  v7 = [(INIntent *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(INPlayMessageSoundIntent *)v7 setSoundType:a3];
    [(INPlayMessageSoundIntent *)v8 setMessageIdentifier:v6];
  }

  return v8;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INPlayMessageSoundIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INPlayMessageSoundIntent *)self _typedBackingStore];
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