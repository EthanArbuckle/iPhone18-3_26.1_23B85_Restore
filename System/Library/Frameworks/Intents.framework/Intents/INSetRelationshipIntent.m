@interface INSetRelationshipIntent
- (INModifyRelationship)targetRelationship;
- (INSetRelationshipIntent)initWithContactIdentifiers:(id)a3 targetRelationship:(id)a4;
- (NSArray)contactIdentifiers;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setContactIdentifiers:(id)a3;
- (void)setTargetRelationship:(id)a3;
@end

@implementation INSetRelationshipIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INSetRelationshipIntent *)self _typedBackingStore];
  v11 = v6;
  v8 = [v7 copy];
  v9 = [v7 contactIdentifiers];
  v10 = INIntentSlotValueRedactedStringsFromStrings(v9, a3, v11);

  [v8 setContactIdentifiers:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"contactIdentifiers";
  v3 = [(INSetRelationshipIntent *)self contactIdentifiers];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"targetRelationship";
  v11[0] = v4;
  v5 = [(INSetRelationshipIntent *)self targetRelationship];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)setTargetRelationship:(id)a3
{
  v4 = a3;
  v6 = [(INSetRelationshipIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToModifyRelationship(v4);

  [v6 setTargetRelationship:v5];
}

- (INModifyRelationship)targetRelationship
{
  v2 = [(INSetRelationshipIntent *)self _typedBackingStore];
  v3 = [v2 targetRelationship];
  v4 = INIntentSlotValueTransformFromModifyRelationship(v3);

  return v4;
}

- (void)setContactIdentifiers:(id)a3
{
  v4 = a3;
  v6 = [(INSetRelationshipIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToStrings(v4);

  [v6 setContactIdentifiers:v5];
}

- (NSArray)contactIdentifiers
{
  v2 = [(INSetRelationshipIntent *)self _typedBackingStore];
  v3 = [v2 contactIdentifiers];
  v4 = INIntentSlotValueTransformFromStrings(v3);

  return v4;
}

- (INSetRelationshipIntent)initWithContactIdentifiers:(id)a3 targetRelationship:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = INSetRelationshipIntent;
  v8 = [(INIntent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(INSetRelationshipIntent *)v8 setContactIdentifiers:v6];
    [(INSetRelationshipIntent *)v9 setTargetRelationship:v7];
  }

  return v9;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSetRelationshipIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INSetRelationshipIntent *)self _typedBackingStore];
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