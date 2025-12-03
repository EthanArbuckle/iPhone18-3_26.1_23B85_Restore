@interface INPlayMessageSoundIntent
- (INPlayMessageSoundIntent)initWithSoundType:(int64_t)type messageIdentifier:(id)identifier;
- (NSString)messageIdentifier;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)soundType;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setMessageIdentifier:(id)identifier;
- (void)setSoundType:(int64_t)type;
@end

@implementation INPlayMessageSoundIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INPlayMessageSoundIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"soundType";
  soundType = [(INPlayMessageSoundIntent *)self soundType];
  v4 = @"unknown";
  if (soundType == 1)
  {
    v4 = @"outgoingMessage";
  }

  v5 = v4;
  v11[1] = @"messageIdentifier";
  v12[0] = v5;
  messageIdentifier = [(INPlayMessageSoundIntent *)self messageIdentifier];
  null = messageIdentifier;
  if (!messageIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (!messageIdentifier)
  {
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)setMessageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _typedBackingStore = [(INPlayMessageSoundIntent *)self _typedBackingStore];
  [_typedBackingStore setMessageIdentifier:identifierCopy];
}

- (NSString)messageIdentifier
{
  _typedBackingStore = [(INPlayMessageSoundIntent *)self _typedBackingStore];
  messageIdentifier = [_typedBackingStore messageIdentifier];
  v4 = [messageIdentifier copy];

  return v4;
}

- (void)setSoundType:(int64_t)type
{
  _typedBackingStore = [(INPlayMessageSoundIntent *)self _typedBackingStore];
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
  _typedBackingStore = [(INPlayMessageSoundIntent *)self _typedBackingStore];
  LODWORD(v4) = [_typedBackingStore hasSoundType];
  _typedBackingStore2 = [(INPlayMessageSoundIntent *)self _typedBackingStore];
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

- (INPlayMessageSoundIntent)initWithSoundType:(int64_t)type messageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = INPlayMessageSoundIntent;
  v7 = [(INIntent *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(INPlayMessageSoundIntent *)v7 setSoundType:type];
    [(INPlayMessageSoundIntent *)v8 setMessageIdentifier:identifierCopy];
  }

  return v8;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INPlayMessageSoundIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INPlayMessageSoundIntent *)self _typedBackingStore];
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