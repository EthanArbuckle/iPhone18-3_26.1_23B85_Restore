@interface INAddCallParticipantIntent
- (INAddCallParticipantIntent)initWithParticipants:(id)a3;
- (NSArray)participants;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setParticipants:(id)a3;
@end

@implementation INAddCallParticipantIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INAddCallParticipantIntent *)self _typedBackingStore];
  v11 = v6;
  v8 = [v7 copy];
  v9 = [v7 participants];
  v10 = INIntentSlotValueRedactedContactsFromContacts(v9, a3, v11);

  [v8 setParticipants:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"participants";
  v2 = [(INAddCallParticipantIntent *)self participants];
  v3 = v2;
  if (!v2)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!v2)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setParticipants:(id)a3
{
  v4 = a3;
  v6 = [(INAddCallParticipantIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToContacts(v4);

  [v6 setParticipants:v5];
}

- (NSArray)participants
{
  v2 = [(INAddCallParticipantIntent *)self _typedBackingStore];
  v3 = [v2 participants];
  v4 = INIntentSlotValueTransformFromContacts(v3);

  return v4;
}

- (INAddCallParticipantIntent)initWithParticipants:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = INAddCallParticipantIntent;
  v5 = [(INIntent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(INAddCallParticipantIntent *)v5 setParticipants:v4];
  }

  return v6;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INAddCallParticipantIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INAddCallParticipantIntent *)self _typedBackingStore];
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