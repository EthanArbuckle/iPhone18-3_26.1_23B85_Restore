@interface INSaveHealthSampleIntent
- (HKUnit)unit;
- (INDateComponentsRange)recordDate;
- (INSaveHealthSampleIntent)initWithRecordDate:(id)a3 objectType:(int64_t)a4 values:(id)a5 unit:(id)a6 sampleMetadatas:(id)a7;
- (NSArray)sampleMetadatas;
- (NSArray)values;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)objectType;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setObjectType:(int64_t)a3;
- (void)setRecordDate:(id)a3;
- (void)setSampleMetadatas:(id)a3;
- (void)setUnit:(id)a3;
- (void)setValues:(id)a3;
@end

@implementation INSaveHealthSampleIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INSaveHealthSampleIntent *)self _typedBackingStore];
  v11 = v6;
  v8 = [v7 copy];
  v9 = [v7 recordDate];
  v10 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(v9, a3);

  [v8 setRecordDate:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v18[5] = *MEMORY[0x1E69E9840];
  v17[0] = @"recordDate";
  v3 = [(INSaveHealthSampleIntent *)self recordDate];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = v4;
  v17[1] = @"objectType";
  v5 = [(INSaveHealthSampleIntent *)self objectType];
  if ((v5 - 1) > 0x49)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E727FAC8[v5 - 1];
  }

  v7 = v6;
  v18[1] = v7;
  v17[2] = @"values";
  v8 = [(INSaveHealthSampleIntent *)self values];
  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = v9;
  v17[3] = @"unit";
  v10 = [(INSaveHealthSampleIntent *)self unit];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = v11;
  v17[4] = @"sampleMetadatas";
  v12 = [(INSaveHealthSampleIntent *)self sampleMetadatas];
  v13 = v12;
  if (!v12)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v18[4] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];
  if (!v12)
  {
  }

  if (!v10)
  {
  }

  if (!v8)
  {
  }

  if (!v3)
  {
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)setSampleMetadatas:(id)a3
{
  v4 = a3;
  v6 = [(INSaveHealthSampleIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToWellnessMetadataPairs(v4);

  [v6 setSampleMetadatas:v5];
}

- (NSArray)sampleMetadatas
{
  v2 = [(INSaveHealthSampleIntent *)self _typedBackingStore];
  v3 = [v2 sampleMetadatas];
  v4 = INIntentSlotValueTransformFromWellnessMetadataPairs(v3);

  return v4;
}

- (void)setUnit:(id)a3
{
  v4 = a3;
  v6 = [(INSaveHealthSampleIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToWellnessUnitType(v4);

  [v6 setUnit:v5];
}

- (HKUnit)unit
{
  v2 = [(INSaveHealthSampleIntent *)self _typedBackingStore];
  v3 = [v2 unit];
  v4 = INIntentSlotValueTransformFromWellnessUnitType(v3);

  return v4;
}

- (void)setValues:(id)a3
{
  v4 = a3;
  v6 = [(INSaveHealthSampleIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToWellnessValues(v4);

  [v6 setValues:v5];
}

- (NSArray)values
{
  v2 = [(INSaveHealthSampleIntent *)self _typedBackingStore];
  v3 = [v2 values];
  v4 = INIntentSlotValueTransformFromWellnessValues(v3);

  return v4;
}

- (void)setObjectType:(int64_t)a3
{
  v4 = [(INSaveHealthSampleIntent *)self _typedBackingStore];
  v5 = v4;
  if (a3 > 0x4A)
  {
    [v4 setHasObjectType:0];
  }

  else
  {
    [v4 setObjectType:a3];
  }
}

- (int64_t)objectType
{
  v3 = [(INSaveHealthSampleIntent *)self _typedBackingStore];
  v4 = [v3 hasObjectType];
  v5 = [(INSaveHealthSampleIntent *)self _typedBackingStore];
  v6 = [v5 objectType];
  if (((v6 - 1 < 0x4A) & v4) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setRecordDate:(id)a3
{
  v4 = a3;
  v6 = [(INSaveHealthSampleIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(v4);

  [v6 setRecordDate:v5];
}

- (INDateComponentsRange)recordDate
{
  v2 = [(INSaveHealthSampleIntent *)self _typedBackingStore];
  v3 = [v2 recordDate];
  v4 = INIntentSlotValueTransformFromDateTimeRange(v3);

  return v4;
}

- (INSaveHealthSampleIntent)initWithRecordDate:(id)a3 objectType:(int64_t)a4 values:(id)a5 unit:(id)a6 sampleMetadatas:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = INSaveHealthSampleIntent;
  v16 = [(INIntent *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(INSaveHealthSampleIntent *)v16 setRecordDate:v12];
    [(INSaveHealthSampleIntent *)v17 setObjectType:a4];
    [(INSaveHealthSampleIntent *)v17 setValues:v13];
    [(INSaveHealthSampleIntent *)v17 setUnit:v14];
    [(INSaveHealthSampleIntent *)v17 setSampleMetadatas:v15];
  }

  return v17;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSaveHealthSampleIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INSaveHealthSampleIntent *)self _typedBackingStore];
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