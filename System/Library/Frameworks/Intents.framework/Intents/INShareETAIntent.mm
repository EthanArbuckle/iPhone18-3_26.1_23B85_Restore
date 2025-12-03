@interface INShareETAIntent
- (INShareETAIntent)initWithRecipients:(id)recipients;
- (NSArray)recipients;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setRecipients:(id)recipients;
@end

@implementation INShareETAIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INShareETAIntent *)self _typedBackingStore];
  v11 = idCopy;
  v8 = [_typedBackingStore copy];
  recipients = [_typedBackingStore recipients];
  v10 = INIntentSlotValueRedactedContactsFromContacts(recipients, options, v11);

  [v8 setRecipients:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"recipients";
  recipients = [(INShareETAIntent *)self recipients];
  null = recipients;
  if (!recipients)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!recipients)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setRecipients:(id)recipients
{
  recipientsCopy = recipients;
  _typedBackingStore = [(INShareETAIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToContacts(recipientsCopy);

  [_typedBackingStore setRecipients:v5];
}

- (NSArray)recipients
{
  _typedBackingStore = [(INShareETAIntent *)self _typedBackingStore];
  recipients = [_typedBackingStore recipients];
  v4 = INIntentSlotValueTransformFromContacts(recipients);

  return v4;
}

- (INShareETAIntent)initWithRecipients:(id)recipients
{
  recipientsCopy = recipients;
  v8.receiver = self;
  v8.super_class = INShareETAIntent;
  v5 = [(INIntent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(INShareETAIntent *)v5 setRecipients:recipientsCopy];
  }

  return v6;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INShareETAIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INShareETAIntent *)self _typedBackingStore];
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