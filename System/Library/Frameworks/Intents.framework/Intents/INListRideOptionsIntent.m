@interface INListRideOptionsIntent
- (CLPlacemark)dropOffLocation;
- (CLPlacemark)pickupLocation;
- (INListRideOptionsIntent)initWithPickupLocation:(CLPlacemark *)pickupLocation dropOffLocation:(CLPlacemark *)dropOffLocation;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setDropOffLocation:(id)a3;
- (void)setPickupLocation:(id)a3;
@end

@implementation INListRideOptionsIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INListRideOptionsIntent *)self _typedBackingStore];
  v13 = v6;
  v8 = [v7 copy];
  v9 = [v7 pickupLocation];
  v10 = INIntentSlotValueRedactedLocationFromLocation(v9, a3, v13);
  [v8 setPickupLocation:v10];

  v11 = [v7 dropOffLocation];
  v12 = INIntentSlotValueRedactedLocationFromLocation(v11, a3, v13);

  [v8 setDropOffLocation:v12];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"pickupLocation";
  v3 = [(INListRideOptionsIntent *)self pickupLocation];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"dropOffLocation";
  v11[0] = v4;
  v5 = [(INListRideOptionsIntent *)self dropOffLocation];
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

- (void)setDropOffLocation:(id)a3
{
  v4 = a3;
  v6 = [(INListRideOptionsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToLocation(v4);

  [v6 setDropOffLocation:v5];
}

- (CLPlacemark)dropOffLocation
{
  v2 = [(INListRideOptionsIntent *)self _typedBackingStore];
  v3 = [v2 dropOffLocation];
  v4 = INIntentSlotValueTransformFromLocation(v3);

  return v4;
}

- (void)setPickupLocation:(id)a3
{
  v4 = a3;
  v6 = [(INListRideOptionsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToLocation(v4);

  [v6 setPickupLocation:v5];
}

- (CLPlacemark)pickupLocation
{
  v2 = [(INListRideOptionsIntent *)self _typedBackingStore];
  v3 = [v2 pickupLocation];
  v4 = INIntentSlotValueTransformFromLocation(v3);

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

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INListRideOptionsIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INListRideOptionsIntent *)self _typedBackingStore];
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