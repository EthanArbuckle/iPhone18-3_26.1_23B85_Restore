@interface INSetMessageAttributeIntent
- (INMessageAttribute)attribute;
- (INSetMessageAttributeIntent)initWithIdentifiers:(NSArray *)identifiers attribute:(INMessageAttribute)attribute;
- (NSArray)identifiers;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setAttribute:(int64_t)a3;
- (void)setIdentifiers:(id)a3;
@end

@implementation INSetMessageAttributeIntent

- (id)_metadata
{
  v2 = [(INSetMessageAttributeIntent *)self _typedBackingStore];
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

- (id)_dictionaryRepresentation
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"identifiers";
  v3 = [(INSetMessageAttributeIntent *)self identifiers];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = @"attribute";
  v12[0] = v4;
  v5 = [(INSetMessageAttributeIntent *)self attribute];
  if ((v5 - 1) > 4)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E72806E0[v5 - 1];
  }

  v7 = v6;
  v12[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  if (!v3)
  {
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (NSArray)identifiers
{
  v2 = [(INSetMessageAttributeIntent *)self _typedBackingStore];
  v3 = [v2 identifiers];

  if (v3)
  {
    v4 = [v3 copy];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (INMessageAttribute)attribute
{
  v3 = [(INSetMessageAttributeIntent *)self _typedBackingStore];
  v4 = [v3 hasAttribute];
  v5 = [(INSetMessageAttributeIntent *)self _typedBackingStore];
  v6 = [v5 attribute];
  if (((v6 - 1 < 5) & v4) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = INMessageAttributeUnknown;
  }

  return v7;
}

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INSetMessageAttributeIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (void)setAttribute:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INSetMessageAttributeIntent *)self _typedBackingStore];
  v5 = v4;
  if (v3 > 4)
  {
    [v4 setHasAttribute:0];
  }

  else
  {
    [v4 setAttribute:?];
  }
}

- (void)setIdentifiers:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(INSetMessageAttributeIntent *)self _typedBackingStore];
  [v5 clearIdentifiers];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
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
        v12 = [(INSetMessageAttributeIntent *)self _typedBackingStore];
        [v12 addIdentifier:v11];

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

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSetMessageAttributeIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

@end