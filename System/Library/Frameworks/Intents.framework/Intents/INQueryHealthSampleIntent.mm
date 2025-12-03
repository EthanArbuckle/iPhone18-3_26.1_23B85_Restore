@interface INQueryHealthSampleIntent
- (HKUnit)unit;
- (INQueryHealthSampleIntent)initWithObjectType:(int64_t)type recordDates:(id)dates unit:(id)unit questionType:(int64_t)questionType thresholdValues:(id)values expectedResultType:(int64_t)resultType;
- (NSArray)recordDates;
- (NSArray)thresholdValues;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)expectedResultType;
- (int64_t)objectType;
- (int64_t)questionType;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setExpectedResultType:(int64_t)type;
- (void)setObjectType:(int64_t)type;
- (void)setQuestionType:(int64_t)type;
- (void)setRecordDates:(id)dates;
- (void)setThresholdValues:(id)values;
- (void)setUnit:(id)unit;
@end

@implementation INQueryHealthSampleIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  v11 = idCopy;
  v8 = [_typedBackingStore copy];
  recordDates = [_typedBackingStore recordDates];
  v10 = INIntentSlotValueRedactedDateTimeRangesFromDateTimeRanges(recordDates, options, v11);

  [v8 setRecordDates:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v22[6] = *MEMORY[0x1E69E9840];
  v21[0] = @"objectType";
  objectType = [(INQueryHealthSampleIntent *)self objectType];
  if ((objectType - 1) > 0x49)
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = off_1E727FAC8[objectType - 1];
  }

  v5 = v4;
  v22[0] = v5;
  v21[1] = @"recordDates";
  recordDates = [(INQueryHealthSampleIntent *)self recordDates];
  null = recordDates;
  if (!recordDates)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v22[1] = null;
  v21[2] = @"unit";
  unit = [(INQueryHealthSampleIntent *)self unit];
  null2 = unit;
  if (!unit)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v22[2] = null2;
  v21[3] = @"questionType";
  questionType = [(INQueryHealthSampleIntent *)self questionType];
  if ((questionType - 1) > 6)
  {
    v11 = @"unknown";
  }

  else
  {
    v11 = off_1E7282F30[questionType - 1];
  }

  v12 = v11;
  v22[3] = v12;
  v21[4] = @"thresholdValues";
  thresholdValues = [(INQueryHealthSampleIntent *)self thresholdValues];
  null3 = thresholdValues;
  if (!thresholdValues)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v22[4] = null3;
  v21[5] = @"expectedResultType";
  expectedResultType = [(INQueryHealthSampleIntent *)self expectedResultType];
  if ((expectedResultType - 1) > 8)
  {
    v16 = @"unknown";
  }

  else
  {
    v16 = off_1E7285448[expectedResultType - 1];
  }

  v17 = v16;
  v22[5] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:6];

  if (!thresholdValues)
  {
  }

  if (!unit)
  {
  }

  if (!recordDates)
  {
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)setExpectedResultType:(int64_t)type
{
  _typedBackingStore = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (type > 9)
  {
    [_typedBackingStore setHasExpectedResultType:0];
  }

  else
  {
    [_typedBackingStore setExpectedResultType:type];
  }
}

- (int64_t)expectedResultType
{
  _typedBackingStore = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  hasExpectedResultType = [_typedBackingStore hasExpectedResultType];
  _typedBackingStore2 = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  expectedResultType = [_typedBackingStore2 expectedResultType];
  if (((expectedResultType - 1 < 9) & hasExpectedResultType) != 0)
  {
    v7 = expectedResultType;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setThresholdValues:(id)values
{
  valuesCopy = values;
  _typedBackingStore = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToWellnessValues(valuesCopy);

  [_typedBackingStore setThresholdValues:v5];
}

- (NSArray)thresholdValues
{
  _typedBackingStore = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  thresholdValues = [_typedBackingStore thresholdValues];
  v4 = INIntentSlotValueTransformFromWellnessValues(thresholdValues);

  return v4;
}

- (void)setQuestionType:(int64_t)type
{
  _typedBackingStore = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (type > 7)
  {
    [_typedBackingStore setHasQuestionType:0];
  }

  else
  {
    [_typedBackingStore setQuestionType:type];
  }
}

- (int64_t)questionType
{
  _typedBackingStore = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  hasQuestionType = [_typedBackingStore hasQuestionType];
  _typedBackingStore2 = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  questionType = [_typedBackingStore2 questionType];
  if (((questionType - 1 < 7) & hasQuestionType) != 0)
  {
    v7 = questionType;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setUnit:(id)unit
{
  unitCopy = unit;
  _typedBackingStore = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToWellnessUnitType(unitCopy);

  [_typedBackingStore setUnit:v5];
}

- (HKUnit)unit
{
  _typedBackingStore = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  unit = [_typedBackingStore unit];
  v4 = INIntentSlotValueTransformFromWellnessUnitType(unit);

  return v4;
}

- (void)setRecordDates:(id)dates
{
  datesCopy = dates;
  _typedBackingStore = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRanges(datesCopy);

  [_typedBackingStore setRecordDates:v5];
}

- (NSArray)recordDates
{
  _typedBackingStore = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  recordDates = [_typedBackingStore recordDates];
  v4 = INIntentSlotValueTransformFromDateTimeRanges(recordDates);

  return v4;
}

- (void)setObjectType:(int64_t)type
{
  _typedBackingStore = [(INQueryHealthSampleIntent *)self _typedBackingStore];
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
  _typedBackingStore = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  hasObjectType = [_typedBackingStore hasObjectType];
  _typedBackingStore2 = [(INQueryHealthSampleIntent *)self _typedBackingStore];
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

- (INQueryHealthSampleIntent)initWithObjectType:(int64_t)type recordDates:(id)dates unit:(id)unit questionType:(int64_t)questionType thresholdValues:(id)values expectedResultType:(int64_t)resultType
{
  datesCopy = dates;
  unitCopy = unit;
  valuesCopy = values;
  v20.receiver = self;
  v20.super_class = INQueryHealthSampleIntent;
  v17 = [(INIntent *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(INQueryHealthSampleIntent *)v17 setObjectType:type];
    [(INQueryHealthSampleIntent *)v18 setRecordDates:datesCopy];
    [(INQueryHealthSampleIntent *)v18 setUnit:unitCopy];
    [(INQueryHealthSampleIntent *)v18 setQuestionType:questionType];
    [(INQueryHealthSampleIntent *)v18 setThresholdValues:valuesCopy];
    [(INQueryHealthSampleIntent *)v18 setExpectedResultType:resultType];
  }

  return v18;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INQueryHealthSampleIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INQueryHealthSampleIntent *)self _typedBackingStore];
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