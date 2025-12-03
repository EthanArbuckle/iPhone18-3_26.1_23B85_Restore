@interface INHangUpCallIntent
- (INHangUpCallIntent)initWithCallIdentifier:(NSString *)callIdentifier;
- (NSString)callIdentifier;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setCallIdentifier:(id)identifier;
@end

@implementation INHangUpCallIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INHangUpCallIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"callIdentifier";
  callIdentifier = [(INHangUpCallIntent *)self callIdentifier];
  null = callIdentifier;
  if (!callIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!callIdentifier)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setCallIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _typedBackingStore = [(INHangUpCallIntent *)self _typedBackingStore];
  [_typedBackingStore setCallIdentifier:identifierCopy];
}

- (NSString)callIdentifier
{
  _typedBackingStore = [(INHangUpCallIntent *)self _typedBackingStore];
  callIdentifier = [_typedBackingStore callIdentifier];
  v4 = [callIdentifier copy];

  return v4;
}

- (INHangUpCallIntent)initWithCallIdentifier:(NSString *)callIdentifier
{
  v4 = callIdentifier;
  v8.receiver = self;
  v8.super_class = INHangUpCallIntent;
  v5 = [(INIntent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(INHangUpCallIntent *)v5 setCallIdentifier:v4];
  }

  return v6;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INHangUpCallIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INHangUpCallIntent *)self _typedBackingStore];
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