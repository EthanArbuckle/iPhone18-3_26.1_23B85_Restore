@interface INGetReservationDetailsIntent
- (INGetReservationDetailsIntent)initWithReservationContainerReference:(INSpeakableString *)reservationContainerReference reservationItemReferences:(NSArray *)reservationItemReferences;
- (INSpeakableString)reservationContainerReference;
- (NSArray)reservationItemReferences;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setReservationContainerReference:(id)reference;
- (void)setReservationItemReferences:(id)references;
@end

@implementation INGetReservationDetailsIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INGetReservationDetailsIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"reservationContainerReference";
  reservationContainerReference = [(INGetReservationDetailsIntent *)self reservationContainerReference];
  null = reservationContainerReference;
  if (!reservationContainerReference)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"reservationItemReferences";
  v11[0] = null;
  reservationItemReferences = [(INGetReservationDetailsIntent *)self reservationItemReferences];
  null2 = reservationItemReferences;
  if (!reservationItemReferences)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!reservationItemReferences)
  {
  }

  if (!reservationContainerReference)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)setReservationItemReferences:(id)references
{
  referencesCopy = references;
  _typedBackingStore = [(INGetReservationDetailsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataStrings(referencesCopy);

  [_typedBackingStore setReservationItemReferences:v5];
}

- (NSArray)reservationItemReferences
{
  _typedBackingStore = [(INGetReservationDetailsIntent *)self _typedBackingStore];
  reservationItemReferences = [_typedBackingStore reservationItemReferences];
  v4 = INIntentSlotValueTransformFromDataStrings(reservationItemReferences);

  return v4;
}

- (void)setReservationContainerReference:(id)reference
{
  referenceCopy = reference;
  _typedBackingStore = [(INGetReservationDetailsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(referenceCopy);

  [_typedBackingStore setReservationContainerReference:v5];
}

- (INSpeakableString)reservationContainerReference
{
  _typedBackingStore = [(INGetReservationDetailsIntent *)self _typedBackingStore];
  reservationContainerReference = [_typedBackingStore reservationContainerReference];
  v4 = INIntentSlotValueTransformFromDataString(reservationContainerReference);

  return v4;
}

- (INGetReservationDetailsIntent)initWithReservationContainerReference:(INSpeakableString *)reservationContainerReference reservationItemReferences:(NSArray *)reservationItemReferences
{
  v6 = reservationContainerReference;
  v7 = reservationItemReferences;
  v11.receiver = self;
  v11.super_class = INGetReservationDetailsIntent;
  v8 = [(INIntent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(INGetReservationDetailsIntent *)v8 setReservationContainerReference:v6];
    [(INGetReservationDetailsIntent *)v9 setReservationItemReferences:v7];
  }

  return v9;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INGetReservationDetailsIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INGetReservationDetailsIntent *)self _typedBackingStore];
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