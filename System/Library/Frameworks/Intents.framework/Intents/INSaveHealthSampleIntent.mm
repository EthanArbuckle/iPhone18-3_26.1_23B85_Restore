@interface INSaveHealthSampleIntent
- (HKUnit)unit;
- (INDateComponentsRange)recordDate;
- (INSaveHealthSampleIntent)initWithRecordDate:(id)date objectType:(int64_t)type values:(id)values unit:(id)unit sampleMetadatas:(id)metadatas;
- (NSArray)sampleMetadatas;
- (NSArray)values;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)objectType;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setObjectType:(int64_t)type;
- (void)setRecordDate:(id)date;
- (void)setSampleMetadatas:(id)metadatas;
- (void)setUnit:(id)unit;
- (void)setValues:(id)values;
@end

@implementation INSaveHealthSampleIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INSaveHealthSampleIntent *)self _typedBackingStore];
  v11 = idCopy;
  v8 = [_typedBackingStore copy];
  recordDate = [_typedBackingStore recordDate];
  v10 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(recordDate, options);

  [v8 setRecordDate:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v18[5] = *MEMORY[0x1E69E9840];
  v17[0] = @"recordDate";
  recordDate = [(INSaveHealthSampleIntent *)self recordDate];
  null = recordDate;
  if (!recordDate)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = null;
  v17[1] = @"objectType";
  objectType = [(INSaveHealthSampleIntent *)self objectType];
  if ((objectType - 1) > 0x49)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E727FAC8[objectType - 1];
  }

  v7 = v6;
  v18[1] = v7;
  v17[2] = @"values";
  values = [(INSaveHealthSampleIntent *)self values];
  null2 = values;
  if (!values)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = null2;
  v17[3] = @"unit";
  unit = [(INSaveHealthSampleIntent *)self unit];
  null3 = unit;
  if (!unit)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = null3;
  v17[4] = @"sampleMetadatas";
  sampleMetadatas = [(INSaveHealthSampleIntent *)self sampleMetadatas];
  null4 = sampleMetadatas;
  if (!sampleMetadatas)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v18[4] = null4;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];
  if (!sampleMetadatas)
  {
  }

  if (!unit)
  {
  }

  if (!values)
  {
  }

  if (!recordDate)
  {
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)setSampleMetadatas:(id)metadatas
{
  metadatasCopy = metadatas;
  _typedBackingStore = [(INSaveHealthSampleIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToWellnessMetadataPairs(metadatasCopy);

  [_typedBackingStore setSampleMetadatas:v5];
}

- (NSArray)sampleMetadatas
{
  _typedBackingStore = [(INSaveHealthSampleIntent *)self _typedBackingStore];
  sampleMetadatas = [_typedBackingStore sampleMetadatas];
  v4 = INIntentSlotValueTransformFromWellnessMetadataPairs(sampleMetadatas);

  return v4;
}

- (void)setUnit:(id)unit
{
  unitCopy = unit;
  _typedBackingStore = [(INSaveHealthSampleIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToWellnessUnitType(unitCopy);

  [_typedBackingStore setUnit:v5];
}

- (HKUnit)unit
{
  _typedBackingStore = [(INSaveHealthSampleIntent *)self _typedBackingStore];
  unit = [_typedBackingStore unit];
  v4 = INIntentSlotValueTransformFromWellnessUnitType(unit);

  return v4;
}

- (void)setValues:(id)values
{
  valuesCopy = values;
  _typedBackingStore = [(INSaveHealthSampleIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToWellnessValues(valuesCopy);

  [_typedBackingStore setValues:v5];
}

- (NSArray)values
{
  _typedBackingStore = [(INSaveHealthSampleIntent *)self _typedBackingStore];
  values = [_typedBackingStore values];
  v4 = INIntentSlotValueTransformFromWellnessValues(values);

  return v4;
}

- (void)setObjectType:(int64_t)type
{
  _typedBackingStore = [(INSaveHealthSampleIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (type > 0x4A)
  {
    [_typedBackingStore setHasObjectType:0];
  }

  else
  {
    [_typedBackingStore setObjectType:type];
  }
}

- (int64_t)objectType
{
  _typedBackingStore = [(INSaveHealthSampleIntent *)self _typedBackingStore];
  hasObjectType = [_typedBackingStore hasObjectType];
  _typedBackingStore2 = [(INSaveHealthSampleIntent *)self _typedBackingStore];
  objectType = [_typedBackingStore2 objectType];
  if (((objectType - 1 < 0x4A) & hasObjectType) != 0)
  {
    v7 = objectType;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setRecordDate:(id)date
{
  dateCopy = date;
  _typedBackingStore = [(INSaveHealthSampleIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(dateCopy);

  [_typedBackingStore setRecordDate:v5];
}

- (INDateComponentsRange)recordDate
{
  _typedBackingStore = [(INSaveHealthSampleIntent *)self _typedBackingStore];
  recordDate = [_typedBackingStore recordDate];
  v4 = INIntentSlotValueTransformFromDateTimeRange(recordDate);

  return v4;
}

- (INSaveHealthSampleIntent)initWithRecordDate:(id)date objectType:(int64_t)type values:(id)values unit:(id)unit sampleMetadatas:(id)metadatas
{
  dateCopy = date;
  valuesCopy = values;
  unitCopy = unit;
  metadatasCopy = metadatas;
  v19.receiver = self;
  v19.super_class = INSaveHealthSampleIntent;
  v16 = [(INIntent *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(INSaveHealthSampleIntent *)v16 setRecordDate:dateCopy];
    [(INSaveHealthSampleIntent *)v17 setObjectType:type];
    [(INSaveHealthSampleIntent *)v17 setValues:valuesCopy];
    [(INSaveHealthSampleIntent *)v17 setUnit:unitCopy];
    [(INSaveHealthSampleIntent *)v17 setSampleMetadatas:metadatasCopy];
  }

  return v17;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSaveHealthSampleIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSaveHealthSampleIntent *)self _typedBackingStore];
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