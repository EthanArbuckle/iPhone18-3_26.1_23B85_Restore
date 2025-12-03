@interface INSearchForContactIntent
- (INSearchForContactIntent)initWithContactIdentifiers:(id)identifiers;
- (NSArray)contactIdentifiers;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setContactIdentifiers:(id)identifiers;
@end

@implementation INSearchForContactIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INSearchForContactIntent *)self _typedBackingStore];
  v11 = idCopy;
  v8 = [_typedBackingStore copy];
  contactIdentifiers = [_typedBackingStore contactIdentifiers];
  v10 = INIntentSlotValueRedactedStringsFromStrings(contactIdentifiers, options, v11);

  [v8 setContactIdentifiers:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"contactIdentifiers";
  contactIdentifiers = [(INSearchForContactIntent *)self contactIdentifiers];
  null = contactIdentifiers;
  if (!contactIdentifiers)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!contactIdentifiers)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setContactIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  _typedBackingStore = [(INSearchForContactIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToStrings(identifiersCopy);

  [_typedBackingStore setContactIdentifiers:v5];
}

- (NSArray)contactIdentifiers
{
  _typedBackingStore = [(INSearchForContactIntent *)self _typedBackingStore];
  contactIdentifiers = [_typedBackingStore contactIdentifiers];
  v4 = INIntentSlotValueTransformFromStrings(contactIdentifiers);

  return v4;
}

- (INSearchForContactIntent)initWithContactIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v8.receiver = self;
  v8.super_class = INSearchForContactIntent;
  v5 = [(INIntent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(INSearchForContactIntent *)v5 setContactIdentifiers:identifiersCopy];
  }

  return v6;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSearchForContactIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSearchForContactIntent *)self _typedBackingStore];
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