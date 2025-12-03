@interface INCreateAlarmIntent
- (INCreateAlarmIntent)initWithRelativeOffsetInMinutes:(id)minutes time:(id)time label:(id)label alarmRepeatScheduleOptions:(unint64_t)options;
- (INDateComponentsRange)time;
- (INSpeakableString)label;
- (NSNumber)relativeOffsetInMinutes;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (unint64_t)alarmRepeatScheduleOptions;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setAlarmRepeatScheduleOptions:(unint64_t)options;
- (void)setLabel:(id)label;
- (void)setRelativeOffsetInMinutes:(id)minutes;
- (void)setTime:(id)time;
@end

@implementation INCreateAlarmIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INCreateAlarmIntent *)self _typedBackingStore];
  v11 = idCopy;
  v8 = [_typedBackingStore copy];
  time = [_typedBackingStore time];
  v10 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(time, options);

  [v8 setTime:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v15[4] = *MEMORY[0x1E69E9840];
  v14[0] = @"relativeOffsetInMinutes";
  relativeOffsetInMinutes = [(INCreateAlarmIntent *)self relativeOffsetInMinutes];
  null = relativeOffsetInMinutes;
  if (!relativeOffsetInMinutes)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"time";
  time = [(INCreateAlarmIntent *)self time];
  null2 = time;
  if (!time)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"label";
  label = [(INCreateAlarmIntent *)self label];
  null3 = label;
  if (!label)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v14[3] = @"alarmRepeatScheduleOptions";
  v9 = INAlarmRepeatScheduleOptionsGetNames([(INCreateAlarmIntent *)self alarmRepeatScheduleOptions]);
  null4 = v9;
  if (!v9)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = null4;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (!v9)
  {
  }

  if (!label)
  {
  }

  if (!time)
  {
  }

  if (!relativeOffsetInMinutes)
  {
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)setAlarmRepeatScheduleOptions:(unint64_t)options
{
  _typedBackingStore = [(INCreateAlarmIntent *)self _typedBackingStore];
  [_typedBackingStore clearAlarmRepeatScheduleOptions];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__INCreateAlarmIntent_setAlarmRepeatScheduleOptions___block_invoke;
  v6[3] = &unk_1E7288628;
  v6[4] = self;
  INAlarmRepeatScheduleOptionsEnumerateBackingTypes(options, v6);
}

void __53__INCreateAlarmIntent_setAlarmRepeatScheduleOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _typedBackingStore];
  [v3 addAlarmRepeatScheduleOptions:a2];
}

- (unint64_t)alarmRepeatScheduleOptions
{
  v8 = 0;
  _typedBackingStore = [(INCreateAlarmIntent *)self _typedBackingStore];
  alarmRepeatScheduleOptionsCount = [_typedBackingStore alarmRepeatScheduleOptionsCount];

  if (!alarmRepeatScheduleOptionsCount)
  {
    return 0;
  }

  for (i = 0; i != alarmRepeatScheduleOptionsCount; ++i)
  {
    _typedBackingStore2 = [(INCreateAlarmIntent *)self _typedBackingStore];
    INAlarmRepeatScheduleOptionsAddBackingType(&v8, [_typedBackingStore2 alarmRepeatScheduleOptionsAtIndex:i]);
  }

  return v8;
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  _typedBackingStore = [(INCreateAlarmIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(labelCopy);

  [_typedBackingStore setLabel:v5];
}

- (INSpeakableString)label
{
  _typedBackingStore = [(INCreateAlarmIntent *)self _typedBackingStore];
  label = [_typedBackingStore label];
  v4 = INIntentSlotValueTransformFromDataString(label);

  return v4;
}

- (void)setTime:(id)time
{
  timeCopy = time;
  _typedBackingStore = [(INCreateAlarmIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(timeCopy);

  [_typedBackingStore setTime:v5];
}

- (INDateComponentsRange)time
{
  _typedBackingStore = [(INCreateAlarmIntent *)self _typedBackingStore];
  time = [_typedBackingStore time];
  v4 = INIntentSlotValueTransformFromDateTimeRange(time);

  return v4;
}

- (void)setRelativeOffsetInMinutes:(id)minutes
{
  minutesCopy = minutes;
  _typedBackingStore = [(INCreateAlarmIntent *)self _typedBackingStore];
  if (minutesCopy)
  {
    [_typedBackingStore setRelativeOffsetInMinutes:{objc_msgSend(minutesCopy, "intValue")}];
  }

  else
  {
    [_typedBackingStore setHasRelativeOffsetInMinutes:0];
  }
}

- (NSNumber)relativeOffsetInMinutes
{
  _typedBackingStore = [(INCreateAlarmIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasRelativeOffsetInMinutes])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INCreateAlarmIntent *)self _typedBackingStore];
    v6 = [v4 numberWithInt:{objc_msgSend(_typedBackingStore2, "relativeOffsetInMinutes")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (INCreateAlarmIntent)initWithRelativeOffsetInMinutes:(id)minutes time:(id)time label:(id)label alarmRepeatScheduleOptions:(unint64_t)options
{
  minutesCopy = minutes;
  timeCopy = time;
  labelCopy = label;
  v16.receiver = self;
  v16.super_class = INCreateAlarmIntent;
  v13 = [(INIntent *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(INCreateAlarmIntent *)v13 setRelativeOffsetInMinutes:minutesCopy];
    [(INCreateAlarmIntent *)v14 setTime:timeCopy];
    [(INCreateAlarmIntent *)v14 setLabel:labelCopy];
    [(INCreateAlarmIntent *)v14 setAlarmRepeatScheduleOptions:options];
  }

  return v14;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INCreateAlarmIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INCreateAlarmIntent *)self _typedBackingStore];
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