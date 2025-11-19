@interface INReportIncidentIntent
- (CLPlacemark)userLocation;
- (INReportIncidentIntent)initWithIncidentType:(id)a3 startTime:(id)a4 isClear:(id)a5 userLocation:(id)a6 additionalDetails:(id)a7;
- (NSNumber)isClear;
- (NSNumber)startTime;
- (NSString)additionalDetails;
- (NSString)incidentType;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setAdditionalDetails:(id)a3;
- (void)setIncidentType:(id)a3;
- (void)setIsClear:(id)a3;
- (void)setStartTime:(id)a3;
- (void)setUserLocation:(id)a3;
@end

@implementation INReportIncidentIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INReportIncidentIntent *)self _typedBackingStore];
  v13 = v6;
  v8 = [v7 copy];
  v9 = [v7 userLocation];
  v10 = INIntentSlotValueRedactedLocationFromLocation(v9, a3, v13);
  [v8 setUserLocation:v10];

  v11 = [v7 additionalDetails];
  v12 = INIntentSlotValueRedactedStringFromString(v11, a3, v13);

  [v8 setAdditionalDetails:v12];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v18[5] = *MEMORY[0x1E69E9840];
  v17[0] = @"incidentType";
  v3 = [(INReportIncidentIntent *)self incidentType];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = v3;
  v17[1] = @"startTime";
  v5 = [(INReportIncidentIntent *)self startTime];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = v6;
  v17[2] = @"isClear";
  v7 = [(INReportIncidentIntent *)self isClear];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = v8;
  v17[3] = @"userLocation";
  v9 = [(INReportIncidentIntent *)self userLocation];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = v10;
  v17[4] = @"additionalDetails";
  v11 = [(INReportIncidentIntent *)self additionalDetails];
  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v18[4] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];
  if (!v11)
  {
  }

  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if (!v5)
  {
  }

  if (!v4)
  {
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)setAdditionalDetails:(id)a3
{
  v4 = a3;
  v6 = [(INReportIncidentIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToString(v4);

  [v6 setAdditionalDetails:v5];
}

- (NSString)additionalDetails
{
  v2 = [(INReportIncidentIntent *)self _typedBackingStore];
  v3 = [v2 additionalDetails];
  v4 = INIntentSlotValueTransformFromString(v3);

  return v4;
}

- (void)setUserLocation:(id)a3
{
  v4 = a3;
  v6 = [(INReportIncidentIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToLocation(v4);

  [v6 setUserLocation:v5];
}

- (CLPlacemark)userLocation
{
  v2 = [(INReportIncidentIntent *)self _typedBackingStore];
  v3 = [v2 userLocation];
  v4 = INIntentSlotValueTransformFromLocation(v3);

  return v4;
}

- (void)setIsClear:(id)a3
{
  v5 = a3;
  v4 = [(INReportIncidentIntent *)self _typedBackingStore];
  if (v5)
  {
    [v4 setIsClear:{objc_msgSend(v5, "BOOLValue")}];
  }

  else
  {
    [v4 setHasIsClear:0];
  }
}

- (NSNumber)isClear
{
  v3 = [(INReportIncidentIntent *)self _typedBackingStore];
  if ([v3 hasIsClear])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INReportIncidentIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "isClear")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setStartTime:(id)a3
{
  v5 = a3;
  v4 = [(INReportIncidentIntent *)self _typedBackingStore];
  if (v5)
  {
    [v5 doubleValue];
    [v4 setStartTime:?];
  }

  else
  {
    [v4 setHasStartTime:0];
  }
}

- (NSNumber)startTime
{
  v3 = [(INReportIncidentIntent *)self _typedBackingStore];
  if ([v3 hasStartTime])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INReportIncidentIntent *)self _typedBackingStore];
    [v5 startTime];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setIncidentType:(id)a3
{
  v4 = a3;
  v6 = [(INReportIncidentIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToSupportedTrafficIncidentType(v4);

  [v6 setIncidentType:v5];
}

- (NSString)incidentType
{
  v2 = [(INReportIncidentIntent *)self _typedBackingStore];
  v3 = [v2 incidentType];
  v4 = INIntentSlotValueTransformFromSupportedTrafficIncidentType(v3);

  return v4;
}

- (INReportIncidentIntent)initWithIncidentType:(id)a3 startTime:(id)a4 isClear:(id)a5 userLocation:(id)a6 additionalDetails:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = INReportIncidentIntent;
  v17 = [(INIntent *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(INReportIncidentIntent *)v17 setIncidentType:v12];
    [(INReportIncidentIntent *)v18 setStartTime:v13];
    [(INReportIncidentIntent *)v18 setIsClear:v14];
    [(INReportIncidentIntent *)v18 setUserLocation:v15];
    [(INReportIncidentIntent *)v18 setAdditionalDetails:v16];
  }

  return v18;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INReportIncidentIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INReportIncidentIntent *)self _typedBackingStore];
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