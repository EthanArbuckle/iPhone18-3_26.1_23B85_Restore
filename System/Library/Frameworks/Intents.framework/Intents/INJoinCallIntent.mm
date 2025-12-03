@interface INJoinCallIntent
- (INCallGroupConversation)groupConversation;
- (INCallGroupConversationFilter)groupConversationFilter;
- (INJoinCallIntent)initWithGroupConversationFilter:(id)filter groupConversation:(id)conversation;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setGroupConversation:(id)conversation;
- (void)setGroupConversationFilter:(id)filter;
@end

@implementation INJoinCallIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INJoinCallIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"groupConversationFilter";
  groupConversationFilter = [(INJoinCallIntent *)self groupConversationFilter];
  null = groupConversationFilter;
  if (!groupConversationFilter)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"groupConversation";
  v11[0] = null;
  groupConversation = [(INJoinCallIntent *)self groupConversation];
  null2 = groupConversation;
  if (!groupConversation)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!groupConversation)
  {
  }

  if (!groupConversationFilter)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)setGroupConversation:(id)conversation
{
  conversationCopy = conversation;
  _typedBackingStore = [(INJoinCallIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToCallGroupConversation(conversationCopy);

  [_typedBackingStore setGroupConversation:v5];
}

- (INCallGroupConversation)groupConversation
{
  _typedBackingStore = [(INJoinCallIntent *)self _typedBackingStore];
  groupConversation = [_typedBackingStore groupConversation];
  v4 = INIntentSlotValueTransformFromCallGroupConversation(groupConversation);

  return v4;
}

- (void)setGroupConversationFilter:(id)filter
{
  filterCopy = filter;
  _typedBackingStore = [(INJoinCallIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToCallGroupConversationFilter(filterCopy);

  [_typedBackingStore setGroupConversationFilter:v5];
}

- (INCallGroupConversationFilter)groupConversationFilter
{
  _typedBackingStore = [(INJoinCallIntent *)self _typedBackingStore];
  groupConversationFilter = [_typedBackingStore groupConversationFilter];
  v4 = INIntentSlotValueTransformFromCallGroupConversationFilter(groupConversationFilter);

  return v4;
}

- (INJoinCallIntent)initWithGroupConversationFilter:(id)filter groupConversation:(id)conversation
{
  filterCopy = filter;
  conversationCopy = conversation;
  v11.receiver = self;
  v11.super_class = INJoinCallIntent;
  v8 = [(INIntent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(INJoinCallIntent *)v8 setGroupConversationFilter:filterCopy];
    [(INJoinCallIntent *)v9 setGroupConversation:conversationCopy];
  }

  return v9;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INJoinCallIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INJoinCallIntent *)self _typedBackingStore];
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