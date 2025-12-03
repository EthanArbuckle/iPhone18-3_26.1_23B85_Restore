@interface INPlayVoicemailIntent
- (INPlayVoicemailIntent)initWithCallRecordIdentifier:(id)identifier;
- (NSString)callRecordIdentifier;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setCallRecordIdentifier:(id)identifier;
@end

@implementation INPlayVoicemailIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INPlayVoicemailIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"callRecordIdentifier";
  callRecordIdentifier = [(INPlayVoicemailIntent *)self callRecordIdentifier];
  null = callRecordIdentifier;
  if (!callRecordIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!callRecordIdentifier)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setCallRecordIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _typedBackingStore = [(INPlayVoicemailIntent *)self _typedBackingStore];
  [_typedBackingStore setCallRecordIdentifier:identifierCopy];
}

- (NSString)callRecordIdentifier
{
  _typedBackingStore = [(INPlayVoicemailIntent *)self _typedBackingStore];
  callRecordIdentifier = [_typedBackingStore callRecordIdentifier];
  v4 = [callRecordIdentifier copy];

  return v4;
}

- (INPlayVoicemailIntent)initWithCallRecordIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8.receiver = self;
  v8.super_class = INPlayVoicemailIntent;
  v5 = [(INIntent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(INPlayVoicemailIntent *)v5 setCallRecordIdentifier:identifierCopy];
  }

  return v6;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INPlayVoicemailIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INPlayVoicemailIntent *)self _typedBackingStore];
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