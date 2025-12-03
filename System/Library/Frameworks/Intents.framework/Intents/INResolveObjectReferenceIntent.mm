@interface INResolveObjectReferenceIntent
- (INResolveObjectReferenceIntent)initWithReference:(id)reference;
- (NSData)reference;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setReference:(id)reference;
@end

@implementation INResolveObjectReferenceIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INResolveObjectReferenceIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"reference";
  reference = [(INResolveObjectReferenceIntent *)self reference];
  null = reference;
  if (!reference)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!reference)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setReference:(id)reference
{
  referenceCopy = reference;
  _typedBackingStore = [(INResolveObjectReferenceIntent *)self _typedBackingStore];
  [_typedBackingStore setReference:referenceCopy];
}

- (NSData)reference
{
  _typedBackingStore = [(INResolveObjectReferenceIntent *)self _typedBackingStore];
  reference = [_typedBackingStore reference];
  v4 = [reference copy];

  return v4;
}

- (INResolveObjectReferenceIntent)initWithReference:(id)reference
{
  referenceCopy = reference;
  v8.receiver = self;
  v8.super_class = INResolveObjectReferenceIntent;
  v5 = [(INIntent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(INResolveObjectReferenceIntent *)v5 setReference:referenceCopy];
  }

  return v6;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INResolveObjectReferenceIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INResolveObjectReferenceIntent *)self _typedBackingStore];
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