@interface INDeleteEventIntent
- (INDeleteEventIntent)initWithTargetEventIdentifier:(id)identifier deleteAllOccurrences:(id)occurrences;
- (NSNumber)deleteAllOccurrences;
- (NSString)targetEventIdentifier;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setDeleteAllOccurrences:(id)occurrences;
- (void)setTargetEventIdentifier:(id)identifier;
@end

@implementation INDeleteEventIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INDeleteEventIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"targetEventIdentifier";
  targetEventIdentifier = [(INDeleteEventIntent *)self targetEventIdentifier];
  null = targetEventIdentifier;
  if (!targetEventIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"deleteAllOccurrences";
  v11[0] = null;
  deleteAllOccurrences = [(INDeleteEventIntent *)self deleteAllOccurrences];
  null2 = deleteAllOccurrences;
  if (!deleteAllOccurrences)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!deleteAllOccurrences)
  {
  }

  if (!targetEventIdentifier)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)setDeleteAllOccurrences:(id)occurrences
{
  occurrencesCopy = occurrences;
  _typedBackingStore = [(INDeleteEventIntent *)self _typedBackingStore];
  if (occurrencesCopy)
  {
    [_typedBackingStore setDeleteAllOccurrences:{objc_msgSend(occurrencesCopy, "BOOLValue")}];
  }

  else
  {
    [_typedBackingStore setHasDeleteAllOccurrences:0];
  }
}

- (NSNumber)deleteAllOccurrences
{
  _typedBackingStore = [(INDeleteEventIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasDeleteAllOccurrences])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INDeleteEventIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(_typedBackingStore2, "deleteAllOccurrences")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setTargetEventIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _typedBackingStore = [(INDeleteEventIntent *)self _typedBackingStore];
  [_typedBackingStore setTargetEventIdentifier:identifierCopy];
}

- (NSString)targetEventIdentifier
{
  _typedBackingStore = [(INDeleteEventIntent *)self _typedBackingStore];
  targetEventIdentifier = [_typedBackingStore targetEventIdentifier];
  v4 = [targetEventIdentifier copy];

  return v4;
}

- (INDeleteEventIntent)initWithTargetEventIdentifier:(id)identifier deleteAllOccurrences:(id)occurrences
{
  identifierCopy = identifier;
  occurrencesCopy = occurrences;
  v11.receiver = self;
  v11.super_class = INDeleteEventIntent;
  v8 = [(INIntent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(INDeleteEventIntent *)v8 setTargetEventIdentifier:identifierCopy];
    [(INDeleteEventIntent *)v9 setDeleteAllOccurrences:occurrencesCopy];
  }

  return v9;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INDeleteEventIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INDeleteEventIntent *)self _typedBackingStore];
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