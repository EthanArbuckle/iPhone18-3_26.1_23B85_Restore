@interface INPlayAudioMessageIntent
- (INPlayAudioMessageIntent)initWithMessageIdentifier:(id)identifier;
- (NSString)messageIdentifier;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setMessageIdentifier:(id)identifier;
@end

@implementation INPlayAudioMessageIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INPlayAudioMessageIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"messageIdentifier";
  messageIdentifier = [(INPlayAudioMessageIntent *)self messageIdentifier];
  null = messageIdentifier;
  if (!messageIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!messageIdentifier)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setMessageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _typedBackingStore = [(INPlayAudioMessageIntent *)self _typedBackingStore];
  [_typedBackingStore setMessageIdentifier:identifierCopy];
}

- (NSString)messageIdentifier
{
  _typedBackingStore = [(INPlayAudioMessageIntent *)self _typedBackingStore];
  messageIdentifier = [_typedBackingStore messageIdentifier];
  v4 = [messageIdentifier copy];

  return v4;
}

- (INPlayAudioMessageIntent)initWithMessageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8.receiver = self;
  v8.super_class = INPlayAudioMessageIntent;
  v5 = [(INIntent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(INPlayAudioMessageIntent *)v5 setMessageIdentifier:identifierCopy];
  }

  return v6;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INPlayAudioMessageIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INPlayAudioMessageIntent *)self _typedBackingStore];
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