@interface INGetReservationDetailsIntent
- (INGetReservationDetailsIntent)initWithReservationContainerReference:(INSpeakableString *)reservationContainerReference reservationItemReferences:(NSArray *)reservationItemReferences;
- (INSpeakableString)reservationContainerReference;
- (NSArray)reservationItemReferences;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setReservationContainerReference:(id)a3;
- (void)setReservationItemReferences:(id)a3;
@end

@implementation INGetReservationDetailsIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INGetReservationDetailsIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"reservationContainerReference";
  v3 = [(INGetReservationDetailsIntent *)self reservationContainerReference];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"reservationItemReferences";
  v11[0] = v4;
  v5 = [(INGetReservationDetailsIntent *)self reservationItemReferences];
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

- (void)setReservationItemReferences:(id)a3
{
  v4 = a3;
  v6 = [(INGetReservationDetailsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataStrings(v4);

  [v6 setReservationItemReferences:v5];
}

- (NSArray)reservationItemReferences
{
  v2 = [(INGetReservationDetailsIntent *)self _typedBackingStore];
  v3 = [v2 reservationItemReferences];
  v4 = INIntentSlotValueTransformFromDataStrings(v3);

  return v4;
}

- (void)setReservationContainerReference:(id)a3
{
  v4 = a3;
  v6 = [(INGetReservationDetailsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(v4);

  [v6 setReservationContainerReference:v5];
}

- (INSpeakableString)reservationContainerReference
{
  v2 = [(INGetReservationDetailsIntent *)self _typedBackingStore];
  v3 = [v2 reservationContainerReference];
  v4 = INIntentSlotValueTransformFromDataString(v3);

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

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INGetReservationDetailsIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INGetReservationDetailsIntent *)self _typedBackingStore];
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