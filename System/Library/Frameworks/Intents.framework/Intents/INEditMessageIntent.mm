@interface INEditMessageIntent
- (INEditMessageIntent)initWithMessageIdentifier:(NSString *)messageIdentifier editedContent:(NSString *)editedContent;
- (NSString)editedContent;
- (NSString)messageIdentifier;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_redactedDictionaryRepresentation;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setEditedContent:(id)content;
- (void)setMessageIdentifier:(id)identifier;
@end

@implementation INEditMessageIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INEditMessageIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"messageIdentifier";
  messageIdentifier = [(INEditMessageIntent *)self messageIdentifier];
  null = messageIdentifier;
  if (!messageIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"editedContent";
  v11[0] = null;
  editedContent = [(INEditMessageIntent *)self editedContent];
  null2 = editedContent;
  if (!editedContent)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!editedContent)
  {
  }

  if (!messageIdentifier)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_redactedDictionaryRepresentation
{
  _dictionaryRepresentation = [(INEditMessageIntent *)self _dictionaryRepresentation];
  v3 = [_dictionaryRepresentation mutableCopy];

  [v3 setObject:@"<redacted>" forKey:@"editedContent"];

  return v3;
}

- (void)setEditedContent:(id)content
{
  contentCopy = content;
  _typedBackingStore = [(INEditMessageIntent *)self _typedBackingStore];
  [_typedBackingStore setEditedContent:contentCopy];
}

- (NSString)editedContent
{
  _typedBackingStore = [(INEditMessageIntent *)self _typedBackingStore];
  editedContent = [_typedBackingStore editedContent];
  v4 = [editedContent copy];

  return v4;
}

- (void)setMessageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _typedBackingStore = [(INEditMessageIntent *)self _typedBackingStore];
  [_typedBackingStore setMessageIdentifier:identifierCopy];
}

- (NSString)messageIdentifier
{
  _typedBackingStore = [(INEditMessageIntent *)self _typedBackingStore];
  messageIdentifier = [_typedBackingStore messageIdentifier];
  v4 = [messageIdentifier copy];

  return v4;
}

- (INEditMessageIntent)initWithMessageIdentifier:(NSString *)messageIdentifier editedContent:(NSString *)editedContent
{
  v6 = messageIdentifier;
  v7 = editedContent;
  v11.receiver = self;
  v11.super_class = INEditMessageIntent;
  v8 = [(INIntent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(INEditMessageIntent *)v8 setMessageIdentifier:v6];
    [(INEditMessageIntent *)v9 setEditedContent:v7];
  }

  return v9;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INEditMessageIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INEditMessageIntent *)self _typedBackingStore];
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