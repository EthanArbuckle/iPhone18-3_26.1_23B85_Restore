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
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setDropOffLocation:(id)location;
- (void)setPartySize:(id)size;
- (void)setPaymentMethod:(id)method;
- (void)setPickupLocation:(id)location;
- (void)setRideOptionName:(id)name;
- (void)setScheduledPickupTime:(id)time;
@end

@implementation INRequestRideIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INRequestRideIntent *)self _typedBackingStore];
  v19 = idCopy;
  v8 = [_typedBackingStore copy];
  pickupLocation = [_typedBackingStore pickupLocation];
  v10 = INIntentSlotValueRedactedLocationFromLocation(pickupLocation, options, v19);
  [v8 setPickupLocation:v10];

  dropOffLocation = [_typedBackingStore dropOffLocation];
  v12 = INIntentSlotValueRedactedLocationFromLocation(dropOffLocation, options, v19);
  [v8 setDropOffLocation:v12];

  partySize = [_typedBackingStore partySize];
  v14 = INIntentSlotValueRedactedIntegerFromInteger(partySize, options);
  [v8 setPartySize:v14];

  paymentMethod = [_typedBackingStore paymentMethod];
  v16 = INIntentSlotValueRedactedPaymentMethodFromPaymentMethod(paymentMethod, options, v19);
  [v8 setPaymentMethod:v16];

  scheduledPickupTime = [_typedBackingStore scheduledPickupTime];
  v18 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(scheduledPickupTime, options);

  [v8 setScheduledPickupTime:v18];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v22[6] = *MEMORY[0x1E69E9840];
  v21[0] = @"pickupLocation";
  pickupLocation = [(INRequestRideIntent *)self pickupLocation];
  v4 = pickupLocation;
  if (!pickupLocation)
  {
    pickupLocation = [MEMORY[0x1E695DFB0] null];
  }

  v20 = pickupLocation;
  v22[0] = pickupLocation;
  v21[1] = @"dropOffLocation";
  dropOffLocation = [(INRequestRideIntent *)self dropOffLocation];
  v6 = dropOffLocation;
  if (!dropOffLocation)
  {
    dropOffLocation = [MEMORY[0x1E695DFB0] null];
  }

  v19 = dropOffLocation;
  v22[1] = dropOffLocation;
  v21[2] = @"rideOptionName";
  rideOptionName = [(INRequestRideIntent *)self rideOptionName];
  v8 = rideOptionName;
  if (!rideOptionName)
  {
    rideOptionName = [MEMORY[0x1E695DFB0] null];
  }

  v22[2] = rideOptionName;
  v21[3] = @"partySize";
  partySize = [(INRequestRideIntent *)self partySize];
  null = partySize;
  if (!partySize)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v22[3] = null;
  v21[4] = @"paymentMethod";
  paymentMethod = [(INRequestRideIntent *)self paymentMethod];
  null2 = paymentMethod;
  if (!paymentMethod)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v22[4] = null2;
  v21[5] = @"scheduledPickupTime";
  scheduledPickupTime = [(INRequestRideIntent *)self scheduledPickupTime];
  null3 = scheduledPickupTime;
  if (!scheduledPickupTime)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v22[5] = null3;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:6];
  if (!scheduledPickupTime)
  {
  }

  if (!paymentMethod)
  {
  }

  if (!partySize)
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

- (void)setScheduledPickupTime:(id)time
{
  timeCopy = time;
  _typedBackingStore = [(INRequestRideIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(timeCopy);

  [_typedBackingStore setScheduledPickupTime:v5];
}

- (INDateComponentsRange)scheduledPickupTime
{
  _typedBackingStore = [(INRequestRideIntent *)self _typedBackingStore];
  scheduledPickupTime = [_typedBackingStore scheduledPickupTime];
  v4 = INIntentSlotValueTransformFromDateTimeRange(scheduledPickupTime);

  return v4;
}

- (void)setPaymentMethod:(id)method
{
  methodCopy = method;
  _typedBackingStore = [(INRequestRideIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToPaymentMethod(methodCopy);

  [_typedBackingStore setPaymentMethod:v5];
}

- (INPaymentMethod)paymentMethod
{
  _typedBackingStore = [(INRequestRideIntent *)self _typedBackingStore];
  paymentMethod = [_typedBackingStore paymentMethod];
  v4 = INIntentSlotValueTransformFromPaymentMethod(paymentMethod);

  return v4;
}

- (void)setPartySize:(id)size
{
  sizeCopy = size;
  _typedBackingStore = [(INRequestRideIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToInteger(sizeCopy);

  [_typedBackingStore setPartySize:v5];
}

- (NSNumber)partySize
{
  _typedBackingStore = [(INRequestRideIntent *)self _typedBackingStore];
  partySize = [_typedBackingStore partySize];
  v4 = INIntentSlotValueTransformFromInteger(partySize);

  return v4;
}

- (void)setRideOptionName:(id)name
{
  nameCopy = name;
  _typedBackingStore = [(INRequestRideIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(nameCopy);

  [_typedBackingStore setRideOptionName:v5];
}

- (INSpeakableString)rideOptionName
{
  _typedBackingStore = [(INRequestRideIntent *)self _typedBackingStore];
  rideOptionName = [_typedBackingStore rideOptionName];
  v4 = INIntentSlotValueTransformFromDataString(rideOptionName);

  return v4;
}

- (void)setDropOffLocation:(id)location
{
  locationCopy = location;
  _typedBackingStore = [(INRequestRideIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToLocation(locationCopy);

  [_typedBackingStore setDropOffLocation:v5];
}

- (CLPlacemark)dropOffLocation
{
  _typedBackingStore = [(INRequestRideIntent *)self _typedBackingStore];
  dropOffLocation = [_typedBackingStore dropOffLocation];
  v4 = INIntentSlotValueTransformFromLocation(dropOffLocation);

  return v4;
}

- (void)setPickupLocation:(id)location
{
  locationCopy = location;
  _typedBackingStore = [(INRequestRideIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToLocation(locationCopy);

  [_typedBackingStore setPickupLocation:v5];
}

- (CLPlacemark)pickupLocation
{
  _typedBackingStore = [(INRequestRideIntent *)self _typedBackingStore];
  pickupLocation = [_typedBackingStore pickupLocation];
  v4 = INIntentSlotValueTransformFromLocation(pickupLocation);

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

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INRequestRideIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INRequestRideIntent *)self _typedBackingStore];
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