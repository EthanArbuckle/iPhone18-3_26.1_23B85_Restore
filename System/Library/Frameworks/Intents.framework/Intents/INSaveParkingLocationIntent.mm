@interface INSaveParkingLocationIntent
- (CLPlacemark)parkingLocation;
- (INSaveParkingLocationIntent)initWithParkingLocation:(id)location parkingNote:(id)note;
- (NSString)parkingNote;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setParkingLocation:(id)location;
- (void)setParkingNote:(id)note;
@end

@implementation INSaveParkingLocationIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INSaveParkingLocationIntent *)self _typedBackingStore];
  v13 = idCopy;
  v8 = [_typedBackingStore copy];
  parkingLocation = [_typedBackingStore parkingLocation];
  v10 = INIntentSlotValueRedactedLocationFromLocation(parkingLocation, options, v13);
  [v8 setParkingLocation:v10];

  parkingNote = [_typedBackingStore parkingNote];
  v12 = INIntentSlotValueRedactedStringFromString(parkingNote, options, v13);

  [v8 setParkingNote:v12];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"parkingLocation";
  parkingLocation = [(INSaveParkingLocationIntent *)self parkingLocation];
  null = parkingLocation;
  if (!parkingLocation)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"parkingNote";
  v11[0] = null;
  parkingNote = [(INSaveParkingLocationIntent *)self parkingNote];
  null2 = parkingNote;
  if (!parkingNote)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!parkingNote)
  {
  }

  if (!parkingLocation)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)setParkingNote:(id)note
{
  noteCopy = note;
  _typedBackingStore = [(INSaveParkingLocationIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToString(noteCopy);

  [_typedBackingStore setParkingNote:v5];
}

- (NSString)parkingNote
{
  _typedBackingStore = [(INSaveParkingLocationIntent *)self _typedBackingStore];
  parkingNote = [_typedBackingStore parkingNote];
  v4 = INIntentSlotValueTransformFromString(parkingNote);

  return v4;
}

- (void)setParkingLocation:(id)location
{
  locationCopy = location;
  _typedBackingStore = [(INSaveParkingLocationIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToLocation(locationCopy);

  [_typedBackingStore setParkingLocation:v5];
}

- (CLPlacemark)parkingLocation
{
  _typedBackingStore = [(INSaveParkingLocationIntent *)self _typedBackingStore];
  parkingLocation = [_typedBackingStore parkingLocation];
  v4 = INIntentSlotValueTransformFromLocation(parkingLocation);

  return v4;
}

- (INSaveParkingLocationIntent)initWithParkingLocation:(id)location parkingNote:(id)note
{
  locationCopy = location;
  noteCopy = note;
  v11.receiver = self;
  v11.super_class = INSaveParkingLocationIntent;
  v8 = [(INIntent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(INSaveParkingLocationIntent *)v8 setParkingLocation:locationCopy];
    [(INSaveParkingLocationIntent *)v9 setParkingNote:noteCopy];
  }

  return v9;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSaveParkingLocationIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSaveParkingLocationIntent *)self _typedBackingStore];
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