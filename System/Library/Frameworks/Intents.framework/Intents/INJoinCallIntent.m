@interface INJoinCallIntent
- (INCallGroupConversation)groupConversation;
- (INCallGroupConversationFilter)groupConversationFilter;
- (INJoinCallIntent)initWithGroupConversationFilter:(id)a3 groupConversation:(id)a4;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setGroupConversation:(id)a3;
- (void)setGroupConversationFilter:(id)a3;
@end

@implementation INJoinCallIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INJoinCallIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"groupConversationFilter";
  v3 = [(INJoinCallIntent *)self groupConversationFilter];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"groupConversation";
  v11[0] = v4;
  v5 = [(INJoinCallIntent *)self groupConversation];
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

- (void)setGroupConversation:(id)a3
{
  v4 = a3;
  v6 = [(INJoinCallIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToCallGroupConversation(v4);

  [v6 setGroupConversation:v5];
}

- (INCallGroupConversation)groupConversation
{
  v2 = [(INJoinCallIntent *)self _typedBackingStore];
  v3 = [v2 groupConversation];
  v4 = INIntentSlotValueTransformFromCallGroupConversation(v3);

  return v4;
}

- (void)setGroupConversationFilter:(id)a3
{
  v4 = a3;
  v6 = [(INJoinCallIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToCallGroupConversationFilter(v4);

  [v6 setGroupConversationFilter:v5];
}

- (INCallGroupConversationFilter)groupConversationFilter
{
  v2 = [(INJoinCallIntent *)self _typedBackingStore];
  v3 = [v2 groupConversationFilter];
  v4 = INIntentSlotValueTransformFromCallGroupConversationFilter(v3);

  return v4;
}

- (INJoinCallIntent)initWithGroupConversationFilter:(id)a3 groupConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = INJoinCallIntent;
  v8 = [(INIntent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(INJoinCallIntent *)v8 setGroupConversationFilter:v6];
    [(INJoinCallIntent *)v9 setGroupConversation:v7];
  }

  return v9;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INJoinCallIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INJoinCallIntent *)self _typedBackingStore];
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