@interface INSetRelationshipIntent
- (INModifyRelationship)targetRelationship;
- (INSetRelationshipIntent)initWithContactIdentifiers:(id)identifiers targetRelationship:(id)relationship;
- (NSArray)contactIdentifiers;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setContactIdentifiers:(id)identifiers;
- (void)setTargetRelationship:(id)relationship;
@end

@implementation INSetRelationshipIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INSetRelationshipIntent *)self _typedBackingStore];
  v11 = idCopy;
  v8 = [_typedBackingStore copy];
  contactIdentifiers = [_typedBackingStore contactIdentifiers];
  v10 = INIntentSlotValueRedactedStringsFromStrings(contactIdentifiers, options, v11);

  [v8 setContactIdentifiers:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"contactIdentifiers";
  contactIdentifiers = [(INSetRelationshipIntent *)self contactIdentifiers];
  null = contactIdentifiers;
  if (!contactIdentifiers)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"targetRelationship";
  v11[0] = null;
  targetRelationship = [(INSetRelationshipIntent *)self targetRelationship];
  null2 = targetRelationship;
  if (!targetRelationship)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!targetRelationship)
  {
  }

  if (!contactIdentifiers)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)setTargetRelationship:(id)relationship
{
  relationshipCopy = relationship;
  _typedBackingStore = [(INSetRelationshipIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToModifyRelationship(relationshipCopy);

  [_typedBackingStore setTargetRelationship:v5];
}

- (INModifyRelationship)targetRelationship
{
  _typedBackingStore = [(INSetRelationshipIntent *)self _typedBackingStore];
  targetRelationship = [_typedBackingStore targetRelationship];
  v4 = INIntentSlotValueTransformFromModifyRelationship(targetRelationship);

  return v4;
}

- (void)setContactIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  _typedBackingStore = [(INSetRelationshipIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToStrings(identifiersCopy);

  [_typedBackingStore setContactIdentifiers:v5];
}

- (NSArray)contactIdentifiers
{
  _typedBackingStore = [(INSetRelationshipIntent *)self _typedBackingStore];
  contactIdentifiers = [_typedBackingStore contactIdentifiers];
  v4 = INIntentSlotValueTransformFromStrings(contactIdentifiers);

  return v4;
}

- (INSetRelationshipIntent)initWithContactIdentifiers:(id)identifiers targetRelationship:(id)relationship
{
  identifiersCopy = identifiers;
  relationshipCopy = relationship;
  v11.receiver = self;
  v11.super_class = INSetRelationshipIntent;
  v8 = [(INIntent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(INSetRelationshipIntent *)v8 setContactIdentifiers:identifiersCopy];
    [(INSetRelationshipIntent *)v9 setTargetRelationship:relationshipCopy];
  }

  return v9;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSetRelationshipIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSetRelationshipIntent *)self _typedBackingStore];
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