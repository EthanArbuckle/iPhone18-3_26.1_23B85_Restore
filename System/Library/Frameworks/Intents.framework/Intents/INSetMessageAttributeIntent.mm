@interface INSetMessageAttributeIntent
- (INMessageAttribute)attribute;
- (INSetMessageAttributeIntent)initWithIdentifiers:(NSArray *)identifiers attribute:(INMessageAttribute)attribute;
- (NSArray)identifiers;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setAttribute:(int64_t)attribute;
- (void)setIdentifiers:(id)identifiers;
@end

@implementation INSetMessageAttributeIntent

- (id)_metadata
{
  _typedBackingStore = [(INSetMessageAttributeIntent *)self _typedBackingStore];
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

- (id)_dictionaryRepresentation
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"identifiers";
  identifiers = [(INSetMessageAttributeIntent *)self identifiers];
  null = identifiers;
  if (!identifiers)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = @"attribute";
  v12[0] = null;
  attribute = [(INSetMessageAttributeIntent *)self attribute];
  if ((attribute - 1) > 4)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E72806E0[attribute - 1];
  }

  v7 = v6;
  v12[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  if (!identifiers)
  {
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (NSArray)identifiers
{
  _typedBackingStore = [(INSetMessageAttributeIntent *)self _typedBackingStore];
  identifiers = [_typedBackingStore identifiers];

  if (identifiers)
  {
    v4 = [identifiers copy];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (INMessageAttribute)attribute
{
  _typedBackingStore = [(INSetMessageAttributeIntent *)self _typedBackingStore];
  hasAttribute = [_typedBackingStore hasAttribute];
  _typedBackingStore2 = [(INSetMessageAttributeIntent *)self _typedBackingStore];
  attribute = [_typedBackingStore2 attribute];
  if (((attribute - 1 < 5) & hasAttribute) != 0)
  {
    v7 = attribute;
  }

  else
  {
    v7 = INMessageAttributeUnknown;
  }

  return v7;
}

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INSetMessageAttributeIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (void)setAttribute:(int64_t)attribute
{
  v3 = attribute - 1;
  _typedBackingStore = [(INSetMessageAttributeIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (v3 > 4)
  {
    [_typedBackingStore setHasAttribute:0];
  }

  else
  {
    [_typedBackingStore setAttribute:?];
  }
}

- (void)setIdentifiers:(id)identifiers
{
  v19 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  _typedBackingStore = [(INSetMessageAttributeIntent *)self _typedBackingStore];
  [_typedBackingStore clearIdentifiers];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = identifiersCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        _typedBackingStore2 = [(INSetMessageAttributeIntent *)self _typedBackingStore];
        [_typedBackingStore2 addIdentifier:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (INSetMessageAttributeIntent)initWithIdentifiers:(NSArray *)identifiers attribute:(INMessageAttribute)attribute
{
  v6 = identifiers;
  v10.receiver = self;
  v10.super_class = INSetMessageAttributeIntent;
  v7 = [(INIntent *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(INSetMessageAttributeIntent *)v7 setIdentifiers:v6];
    [(INSetMessageAttributeIntent *)v8 setAttribute:attribute];
  }

  return v8;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSetMessageAttributeIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

@end