@interface INRequestRideIntent
- (CLPlacemark)dropOffLocation;
- (CLPlacemark)pickupLocation;
- (INDateComponentsRange)scheduledPickupTime;
- (INPaymentMethod)paymentMethod;
- (INRequestRideIntent)initWithPickupLocation:(CLPlacemark *)pickupLocation dropOffLocation:(CLPlacemark *)dropOffLocation rideOptionName:(INSpeakableString *)rideOptionName partySize:(NSNumber *)partySize paymentMethod:(INPaymentMethod *)paymentMethod scheduledPickupTime:(INDateComponentsRange *)scheduledPickupTime;
- (INSpeakableString)rideOptionName;
- (NSNumber)partySize;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setDropOffLocation:(id)a3;
- (void)setPartySize:(id)a3;
- (void)setPaymentMethod:(id)a3;
- (void)setPickupLocation:(id)a3;
- (void)setRideOptionName:(id)a3;
- (void)setScheduledPickupTime:(id)a3;
@end

@implementation INRequestRideIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INRequestRideIntent *)self _typedBackingStore];
  v19 = v6;
  v8 = [v7 copy];
  v9 = [v7 pickupLocation];
  v10 = INIntentSlotValueRedactedLocationFromLocation(v9, a3, v19);
  [v8 setPickupLocation:v10];

  v11 = [v7 dropOffLocation];
  v12 = INIntentSlotValueRedactedLocationFromLocation(v11, a3, v19);
  [v8 setDropOffLocation:v12];

  v13 = [v7 partySize];
  v14 = INIntentSlotValueRedactedIntegerFromInteger(v13, a3);
  [v8 setPartySize:v14];

  v15 = [v7 paymentMethod];
  v16 = INIntentSlotValueRedactedPaymentMethodFromPaymentMethod(v15, a3, v19);
  [v8 setPaymentMethod:v16];

  v17 = [v7 scheduledPickupTime];
  v18 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(v17, a3);

  [v8 setScheduledPickupTime:v18];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v22[6] = *MEMORY[0x1E69E9840];
  v21[0] = @"pickupLocation";
  v3 = [(INRequestRideIntent *)self pickupLocation];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v3;
  v22[0] = v3;
  v21[1] = @"dropOffLocation";
  v5 = [(INRequestRideIntent *)self dropOffLocation];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v5;
  v22[1] = v5;
  v21[2] = @"rideOptionName";
  v7 = [(INRequestRideIntent *)self rideOptionName];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v22[2] = v7;
  v21[3] = @"partySize";
  v9 = [(INRequestRideIntent *)self partySize];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v22[3] = v10;
  v21[4] = @"paymentMethod";
  v11 = [(INRequestRideIntent *)self paymentMethod];
  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v22[4] = v12;
  v21[5] = @"scheduledPickupTime";
  v13 = [(INRequestRideIntent *)self scheduledPickupTime];
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v22[5] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:6];
  if (!v13)
  {
  }

  if (!v11)
  {
  }

  if (!v9)
  {
  }

  if (!v8)
  {
  }

  if (!v6)
  {
  }

  if (!v4)
  {
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)setScheduledPickupTime:(id)a3
{
  v4 = a3;
  v6 = [(INRequestRideIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(v4);

  [v6 setScheduledPickupTime:v5];
}

- (INDateComponentsRange)scheduledPickupTime
{
  v2 = [(INRequestRideIntent *)self _typedBackingStore];
  v3 = [v2 scheduledPickupTime];
  v4 = INIntentSlotValueTransformFromDateTimeRange(v3);

  return v4;
}

- (void)setPaymentMethod:(id)a3
{
  v4 = a3;
  v6 = [(INRequestRideIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToPaymentMethod(v4);

  [v6 setPaymentMethod:v5];
}

- (INPaymentMethod)paymentMethod
{
  v2 = [(INRequestRideIntent *)self _typedBackingStore];
  v3 = [v2 paymentMethod];
  v4 = INIntentSlotValueTransformFromPaymentMethod(v3);

  return v4;
}

- (void)setPartySize:(id)a3
{
  v4 = a3;
  v6 = [(INRequestRideIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToInteger(v4);

  [v6 setPartySize:v5];
}

- (NSNumber)partySize
{
  v2 = [(INRequestRideIntent *)self _typedBackingStore];
  v3 = [v2 partySize];
  v4 = INIntentSlotValueTransformFromInteger(v3);

  return v4;
}

- (void)setRideOptionName:(id)a3
{
  v4 = a3;
  v6 = [(INRequestRideIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(v4);

  [v6 setRideOptionName:v5];
}

- (INSpeakableString)rideOptionName
{
  v2 = [(INRequestRideIntent *)self _typedBackingStore];
  v3 = [v2 rideOptionName];
  v4 = INIntentSlotValueTransformFromDataString(v3);

  return v4;
}

- (void)setDropOffLocation:(id)a3
{
  v4 = a3;
  v6 = [(INRequestRideIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToLocation(v4);

  [v6 setDropOffLocation:v5];
}

- (CLPlacemark)dropOffLocation
{
  v2 = [(INRequestRideIntent *)self _typedBackingStore];
  v3 = [v2 dropOffLocation];
  v4 = INIntentSlotValueTransformFromLocation(v3);

  return v4;
}

- (void)setPickupLocation:(id)a3
{
  v4 = a3;
  v6 = [(INRequestRideIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToLocation(v4);

  [v6 setPickupLocation:v5];
}

- (CLPlacemark)pickupLocation
{
  v2 = [(INRequestRideIntent *)self _typedBackingStore];
  v3 = [v2 pickupLocation];
  v4 = INIntentSlotValueTransformFromLocation(v3);

  return v4;
}

- (INRequestRideIntent)initWithPickupLocation:(CLPlacemark *)pickupLocation dropOffLocation:(CLPlacemark *)dropOffLocation rideOptionName:(INSpeakableString *)rideOptionName partySize:(NSNumber *)partySize paymentMethod:(INPaymentMethod *)paymentMethod scheduledPickupTime:(INDateComponentsRange *)scheduledPickupTime
{
  v14 = pickupLocation;
  v15 = dropOffLocation;
  v16 = rideOptionName;
  v17 = partySize;
  v18 = paymentMethod;
  v19 = scheduledPickupTime;
  v23.receiver = self;
  v23.super_class = INRequestRideIntent;
  v20 = [(INIntent *)&v23 init];
  v21 = v20;
  if (v20)
  {
    [(INRequestRideIntent *)v20 setPickupLocation:v14];
    [(INRequestRideIntent *)v21 setDropOffLocation:v15];
    [(INRequestRideIntent *)v21 setRideOptionName:v16];
    [(INRequestRideIntent *)v21 setPartySize:v17];
    [(INRequestRideIntent *)v21 setPaymentMethod:v18];
    [(INRequestRideIntent *)v21 setScheduledPickupTime:v19];
  }

  return v21;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INRequestRideIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INRequestRideIntent *)self _typedBackingStore];
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