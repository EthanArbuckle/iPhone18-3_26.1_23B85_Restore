@interface INResolveObjectReferenceIntent
- (INResolveObjectReferenceIntent)initWithReference:(id)a3;
- (NSData)reference;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setReference:(id)a3;
@end

@implementation INResolveObjectReferenceIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INResolveObjectReferenceIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"reference";
  v2 = [(INResolveObjectReferenceIntent *)self reference];
  v3 = v2;
  if (!v2)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!v2)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setReference:(id)a3
{
  v4 = a3;
  v5 = [(INResolveObjectReferenceIntent *)self _typedBackingStore];
  [v5 setReference:v4];
}

- (NSData)reference
{
  v2 = [(INResolveObjectReferenceIntent *)self _typedBackingStore];
  v3 = [v2 reference];
  v4 = [v3 copy];

  return v4;
}

- (INResolveObjectReferenceIntent)initWithReference:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = INResolveObjectReferenceIntent;
  v5 = [(INIntent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(INResolveObjectReferenceIntent *)v5 setReference:v4];
  }

  return v6;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INResolveObjectReferenceIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INResolveObjectReferenceIntent *)self _typedBackingStore];
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