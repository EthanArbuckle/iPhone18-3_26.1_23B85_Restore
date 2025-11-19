@interface INQueryHealthSampleIntent
- (HKUnit)unit;
- (INQueryHealthSampleIntent)initWithObjectType:(int64_t)a3 recordDates:(id)a4 unit:(id)a5 questionType:(int64_t)a6 thresholdValues:(id)a7 expectedResultType:(int64_t)a8;
- (NSArray)recordDates;
- (NSArray)thresholdValues;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)expectedResultType;
- (int64_t)objectType;
- (int64_t)questionType;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setExpectedResultType:(int64_t)a3;
- (void)setObjectType:(int64_t)a3;
- (void)setQuestionType:(int64_t)a3;
- (void)setRecordDates:(id)a3;
- (void)setThresholdValues:(id)a3;
- (void)setUnit:(id)a3;
@end

@implementation INQueryHealthSampleIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  v11 = v6;
  v8 = [v7 copy];
  v9 = [v7 recordDates];
  v10 = INIntentSlotValueRedactedDateTimeRangesFromDateTimeRanges(v9, a3, v11);

  [v8 setRecordDates:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v22[6] = *MEMORY[0x1E69E9840];
  v21[0] = @"objectType";
  v3 = [(INQueryHealthSampleIntent *)self objectType];
  if ((v3 - 1) > 0x49)
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = off_1E727FAC8[v3 - 1];
  }

  v5 = v4;
  v22[0] = v5;
  v21[1] = @"recordDates";
  v6 = [(INQueryHealthSampleIntent *)self recordDates];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v22[1] = v7;
  v21[2] = @"unit";
  v8 = [(INQueryHealthSampleIntent *)self unit];
  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v22[2] = v9;
  v21[3] = @"questionType";
  v10 = [(INQueryHealthSampleIntent *)self questionType];
  if ((v10 - 1) > 6)
  {
    v11 = @"unknown";
  }

  else
  {
    v11 = off_1E7282F30[v10 - 1];
  }

  v12 = v11;
  v22[3] = v12;
  v21[4] = @"thresholdValues";
  v13 = [(INQueryHealthSampleIntent *)self thresholdValues];
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v22[4] = v14;
  v21[5] = @"expectedResultType";
  v15 = [(INQueryHealthSampleIntent *)self expectedResultType];
  if ((v15 - 1) > 8)
  {
    v16 = @"unknown";
  }

  else
  {
    v16 = off_1E7285448[v15 - 1];
  }

  v17 = v16;
  v22[5] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:6];

  if (!v13)
  {
  }

  if (!v8)
  {
  }

  if (!v6)
  {
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)setExpectedResultType:(int64_t)a3
{
  v4 = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  v5 = v4;
  if (a3 > 9)
  {
    [v4 setHasExpectedResultType:0];
  }

  else
  {
    [v4 setExpectedResultType:a3];
  }
}

- (int64_t)expectedResultType
{
  v3 = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  v4 = [v3 hasExpectedResultType];
  v5 = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  v6 = [v5 expectedResultType];
  if (((v6 - 1 < 9) & v4) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setThresholdValues:(id)a3
{
  v4 = a3;
  v6 = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToWellnessValues(v4);

  [v6 setThresholdValues:v5];
}

- (NSArray)thresholdValues
{
  v2 = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  v3 = [v2 thresholdValues];
  v4 = INIntentSlotValueTransformFromWellnessValues(v3);

  return v4;
}

- (void)setQuestionType:(int64_t)a3
{
  v4 = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  v5 = v4;
  if (a3 > 7)
  {
    [v4 setHasQuestionType:0];
  }

  else
  {
    [v4 setQuestionType:a3];
  }
}

- (int64_t)questionType
{
  v3 = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  v4 = [v3 hasQuestionType];
  v5 = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  v6 = [v5 questionType];
  if (((v6 - 1 < 7) & v4) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setUnit:(id)a3
{
  v4 = a3;
  v6 = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToWellnessUnitType(v4);

  [v6 setUnit:v5];
}

- (HKUnit)unit
{
  v2 = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  v3 = [v2 unit];
  v4 = INIntentSlotValueTransformFromWellnessUnitType(v3);

  return v4;
}

- (void)setRecordDates:(id)a3
{
  v4 = a3;
  v6 = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRanges(v4);

  [v6 setRecordDates:v5];
}

- (NSArray)recordDates
{
  v2 = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  v3 = [v2 recordDates];
  v4 = INIntentSlotValueTransformFromDateTimeRanges(v3);

  return v4;
}

- (void)setObjectType:(int64_t)a3
{
  v4 = [(INQueryHealthSampleIntent *)self _typedBackingStore];
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
  v3 = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  v4 = [v3 hasObjectType];
  v5 = [(INQueryHealthSampleIntent *)self _typedBackingStore];
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

- (INQueryHealthSampleIntent)initWithObjectType:(int64_t)a3 recordDates:(id)a4 unit:(id)a5 questionType:(int64_t)a6 thresholdValues:(id)a7 expectedResultType:(int64_t)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = INQueryHealthSampleIntent;
  v17 = [(INIntent *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(INQueryHealthSampleIntent *)v17 setObjectType:a3];
    [(INQueryHealthSampleIntent *)v18 setRecordDates:v14];
    [(INQueryHealthSampleIntent *)v18 setUnit:v15];
    [(INQueryHealthSampleIntent *)v18 setQuestionType:a6];
    [(INQueryHealthSampleIntent *)v18 setThresholdValues:v16];
    [(INQueryHealthSampleIntent *)v18 setExpectedResultType:a8];
  }

  return v18;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INQueryHealthSampleIntent *)self _typedBackingStore];
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