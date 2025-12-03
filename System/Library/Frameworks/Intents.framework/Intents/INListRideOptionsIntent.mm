@interface INListRideOptionsIntent
- (CLPlacemark)dropOffLocation;
- (CLPlacemark)pickupLocation;
- (INListRideOptionsIntent)initWithPickupLocation:(CLPlacemark *)pickupLocation dropOffLocation:(CLPlacemark *)dropOffLocation;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setDropOffLocation:(id)location;
- (void)setPickupLocation:(id)location;
@end

@implementation INListRideOptionsIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INListRideOptionsIntent *)self _typedBackingStore];
  v13 = idCopy;
  v8 = [_typedBackingStore copy];
  pickupLocation = [_typedBackingStore pickupLocation];
  v10 = INIntentSlotValueRedactedLocationFromLocation(pickupLocation, options, v13);
  [v8 setPickupLocation:v10];

  dropOffLocation = [_typedBackingStore dropOffLocation];
  v12 = INIntentSlotValueRedactedLocationFromLocation(dropOffLocation, options, v13);

  [v8 setDropOffLocation:v12];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"pickupLocation";
  pickupLocation = [(INListRideOptionsIntent *)self pickupLocation];
  null = pickupLocation;
  if (!pickupLocation)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"dropOffLocation";
  v11[0] = null;
  dropOffLocation = [(INListRideOptionsIntent *)self dropOffLocation];
  null2 = dropOffLocation;
  if (!dropOffLocation)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!dropOffLocation)
  {
  }

  if (!pickupLocation)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)setDropOffLocation:(id)location
{
  locationCopy = location;
  _typedBackingStore = [(INListRideOptionsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToLocation(locationCopy);

  [_typedBackingStore setDropOffLocation:v5];
}

- (CLPlacemark)dropOffLocation
{
  _typedBackingStore = [(INListRideOptionsIntent *)self _typedBackingStore];
  dropOffLocation = [_typedBackingStore dropOffLocation];
  v4 = INIntentSlotValueTransformFromLocation(dropOffLocation);

  return v4;
}

- (void)setPickupLocation:(id)location
{
  locationCopy = location;
  _typedBackingStore = [(INListRideOptionsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToLocation(locationCopy);

  [_typedBackingStore setPickupLocation:v5];
}

- (CLPlacemark)pickupLocation
{
  _typedBackingStore = [(INListRideOptionsIntent *)self _typedBackingStore];
  pickupLocation = [_typedBackingStore pickupLocation];
  v4 = INIntentSlotValueTransformFromLocation(pickupLocation);

  return v4;
}

- (INListRideOptionsIntent)initWithPickupLocation:(CLPlacemark *)pickupLocation dropOffLocation:(CLPlacemark *)dropOffLocation
{
  v6 = pickupLocation;
  v7 = dropOffLocation;
  v11.receiver = self;
  v11.super_class = INListRideOptionsIntent;
  v8 = [(INIntent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(INListRideOptionsIntent *)v8 setPickupLocation:v6];
    [(INListRideOptionsIntent *)v9 setDropOffLocation:v7];
  }

  return v9;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INListRideOptionsIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INListRideOptionsIntent *)self _typedBackingStore];
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