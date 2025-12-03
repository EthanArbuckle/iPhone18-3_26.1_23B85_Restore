@interface INAddCallParticipantIntent
- (INAddCallParticipantIntent)initWithParticipants:(id)participants;
- (NSArray)participants;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setParticipants:(id)participants;
@end

@implementation INAddCallParticipantIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INAddCallParticipantIntent *)self _typedBackingStore];
  v11 = idCopy;
  v8 = [_typedBackingStore copy];
  participants = [_typedBackingStore participants];
  v10 = INIntentSlotValueRedactedContactsFromContacts(participants, options, v11);

  [v8 setParticipants:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"participants";
  participants = [(INAddCallParticipantIntent *)self participants];
  null = participants;
  if (!participants)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!participants)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setParticipants:(id)participants
{
  participantsCopy = participants;
  _typedBackingStore = [(INAddCallParticipantIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToContacts(participantsCopy);

  [_typedBackingStore setParticipants:v5];
}

- (NSArray)participants
{
  _typedBackingStore = [(INAddCallParticipantIntent *)self _typedBackingStore];
  participants = [_typedBackingStore participants];
  v4 = INIntentSlotValueTransformFromContacts(participants);

  return v4;
}

- (INAddCallParticipantIntent)initWithParticipants:(id)participants
{
  participantsCopy = participants;
  v8.receiver = self;
  v8.super_class = INAddCallParticipantIntent;
  v5 = [(INIntent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(INAddCallParticipantIntent *)v5 setParticipants:participantsCopy];
  }

  return v6;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INAddCallParticipantIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INAddCallParticipantIntent *)self _typedBackingStore];
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