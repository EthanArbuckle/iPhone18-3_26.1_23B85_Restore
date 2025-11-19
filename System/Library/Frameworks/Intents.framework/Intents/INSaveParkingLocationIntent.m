@interface INSaveParkingLocationIntent
- (CLPlacemark)parkingLocation;
- (INSaveParkingLocationIntent)initWithParkingLocation:(id)a3 parkingNote:(id)a4;
- (NSString)parkingNote;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setParkingLocation:(id)a3;
- (void)setParkingNote:(id)a3;
@end

@implementation INSaveParkingLocationIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INSaveParkingLocationIntent *)self _typedBackingStore];
  v13 = v6;
  v8 = [v7 copy];
  v9 = [v7 parkingLocation];
  v10 = INIntentSlotValueRedactedLocationFromLocation(v9, a3, v13);
  [v8 setParkingLocation:v10];

  v11 = [v7 parkingNote];
  v12 = INIntentSlotValueRedactedStringFromString(v11, a3, v13);

  [v8 setParkingNote:v12];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"parkingLocation";
  v3 = [(INSaveParkingLocationIntent *)self parkingLocation];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"parkingNote";
  v11[0] = v4;
  v5 = [(INSaveParkingLocationIntent *)self parkingNote];
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

- (void)setParkingNote:(id)a3
{
  v4 = a3;
  v6 = [(INSaveParkingLocationIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToString(v4);

  [v6 setParkingNote:v5];
}

- (NSString)parkingNote
{
  v2 = [(INSaveParkingLocationIntent *)self _typedBackingStore];
  v3 = [v2 parkingNote];
  v4 = INIntentSlotValueTransformFromString(v3);

  return v4;
}

- (void)setParkingLocation:(id)a3
{
  v4 = a3;
  v6 = [(INSaveParkingLocationIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToLocation(v4);

  [v6 setParkingLocation:v5];
}

- (CLPlacemark)parkingLocation
{
  v2 = [(INSaveParkingLocationIntent *)self _typedBackingStore];
  v3 = [v2 parkingLocation];
  v4 = INIntentSlotValueTransformFromLocation(v3);

  return v4;
}

- (INSaveParkingLocationIntent)initWithParkingLocation:(id)a3 parkingNote:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = INSaveParkingLocationIntent;
  v8 = [(INIntent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(INSaveParkingLocationIntent *)v8 setParkingLocation:v6];
    [(INSaveParkingLocationIntent *)v9 setParkingNote:v7];
  }

  return v9;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSaveParkingLocationIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INSaveParkingLocationIntent *)self _typedBackingStore];
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