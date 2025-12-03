@interface INReportIncidentIntent
- (CLPlacemark)userLocation;
- (INReportIncidentIntent)initWithIncidentType:(id)type startTime:(id)time isClear:(id)clear userLocation:(id)location additionalDetails:(id)details;
- (NSNumber)isClear;
- (NSNumber)startTime;
- (NSString)additionalDetails;
- (NSString)incidentType;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setAdditionalDetails:(id)details;
- (void)setIncidentType:(id)type;
- (void)setIsClear:(id)clear;
- (void)setStartTime:(id)time;
- (void)setUserLocation:(id)location;
@end

@implementation INReportIncidentIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INReportIncidentIntent *)self _typedBackingStore];
  v13 = idCopy;
  v8 = [_typedBackingStore copy];
  userLocation = [_typedBackingStore userLocation];
  v10 = INIntentSlotValueRedactedLocationFromLocation(userLocation, options, v13);
  [v8 setUserLocation:v10];

  additionalDetails = [_typedBackingStore additionalDetails];
  v12 = INIntentSlotValueRedactedStringFromString(additionalDetails, options, v13);

  [v8 setAdditionalDetails:v12];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v18[5] = *MEMORY[0x1E69E9840];
  v17[0] = @"incidentType";
  incidentType = [(INReportIncidentIntent *)self incidentType];
  v4 = incidentType;
  if (!incidentType)
  {
    incidentType = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = incidentType;
  v17[1] = @"startTime";
  startTime = [(INReportIncidentIntent *)self startTime];
  null = startTime;
  if (!startTime)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = null;
  v17[2] = @"isClear";
  isClear = [(INReportIncidentIntent *)self isClear];
  null2 = isClear;
  if (!isClear)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = null2;
  v17[3] = @"userLocation";
  userLocation = [(INReportIncidentIntent *)self userLocation];
  null3 = userLocation;
  if (!userLocation)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = null3;
  v17[4] = @"additionalDetails";
  additionalDetails = [(INReportIncidentIntent *)self additionalDetails];
  null4 = additionalDetails;
  if (!additionalDetails)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v18[4] = null4;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];
  if (!additionalDetails)
  {
  }

  if (!userLocation)
  {
  }

  if (!isClear)
  {
  }

  if (!startTime)
  {
  }

  if (!v4)
  {
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)setAdditionalDetails:(id)details
{
  detailsCopy = details;
  _typedBackingStore = [(INReportIncidentIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToString(detailsCopy);

  [_typedBackingStore setAdditionalDetails:v5];
}

- (NSString)additionalDetails
{
  _typedBackingStore = [(INReportIncidentIntent *)self _typedBackingStore];
  additionalDetails = [_typedBackingStore additionalDetails];
  v4 = INIntentSlotValueTransformFromString(additionalDetails);

  return v4;
}

- (void)setUserLocation:(id)location
{
  locationCopy = location;
  _typedBackingStore = [(INReportIncidentIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToLocation(locationCopy);

  [_typedBackingStore setUserLocation:v5];
}

- (CLPlacemark)userLocation
{
  _typedBackingStore = [(INReportIncidentIntent *)self _typedBackingStore];
  userLocation = [_typedBackingStore userLocation];
  v4 = INIntentSlotValueTransformFromLocation(userLocation);

  return v4;
}

- (void)setIsClear:(id)clear
{
  clearCopy = clear;
  _typedBackingStore = [(INReportIncidentIntent *)self _typedBackingStore];
  if (clearCopy)
  {
    [_typedBackingStore setIsClear:{objc_msgSend(clearCopy, "BOOLValue")}];
  }

  else
  {
    [_typedBackingStore setHasIsClear:0];
  }
}

- (NSNumber)isClear
{
  _typedBackingStore = [(INReportIncidentIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasIsClear])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INReportIncidentIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(_typedBackingStore2, "isClear")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setStartTime:(id)time
{
  timeCopy = time;
  _typedBackingStore = [(INReportIncidentIntent *)self _typedBackingStore];
  if (timeCopy)
  {
    [timeCopy doubleValue];
    [_typedBackingStore setStartTime:?];
  }

  else
  {
    [_typedBackingStore setHasStartTime:0];
  }
}

- (NSNumber)startTime
{
  _typedBackingStore = [(INReportIncidentIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasStartTime])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INReportIncidentIntent *)self _typedBackingStore];
    [_typedBackingStore2 startTime];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setIncidentType:(id)type
{
  typeCopy = type;
  _typedBackingStore = [(INReportIncidentIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToSupportedTrafficIncidentType(typeCopy);

  [_typedBackingStore setIncidentType:v5];
}

- (NSString)incidentType
{
  _typedBackingStore = [(INReportIncidentIntent *)self _typedBackingStore];
  incidentType = [_typedBackingStore incidentType];
  v4 = INIntentSlotValueTransformFromSupportedTrafficIncidentType(incidentType);

  return v4;
}

- (INReportIncidentIntent)initWithIncidentType:(id)type startTime:(id)time isClear:(id)clear userLocation:(id)location additionalDetails:(id)details
{
  typeCopy = type;
  timeCopy = time;
  clearCopy = clear;
  locationCopy = location;
  detailsCopy = details;
  v20.receiver = self;
  v20.super_class = INReportIncidentIntent;
  v17 = [(INIntent *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(INReportIncidentIntent *)v17 setIncidentType:typeCopy];
    [(INReportIncidentIntent *)v18 setStartTime:timeCopy];
    [(INReportIncidentIntent *)v18 setIsClear:clearCopy];
    [(INReportIncidentIntent *)v18 setUserLocation:locationCopy];
    [(INReportIncidentIntent *)v18 setAdditionalDetails:detailsCopy];
  }

  return v18;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INReportIncidentIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INReportIncidentIntent *)self _typedBackingStore];
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