@interface INCreateAlarmIntent
- (INCreateAlarmIntent)initWithRelativeOffsetInMinutes:(id)a3 time:(id)a4 label:(id)a5 alarmRepeatScheduleOptions:(unint64_t)a6;
- (INDateComponentsRange)time;
- (INSpeakableString)label;
- (NSNumber)relativeOffsetInMinutes;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (unint64_t)alarmRepeatScheduleOptions;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setAlarmRepeatScheduleOptions:(unint64_t)a3;
- (void)setLabel:(id)a3;
- (void)setRelativeOffsetInMinutes:(id)a3;
- (void)setTime:(id)a3;
@end

@implementation INCreateAlarmIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INCreateAlarmIntent *)self _typedBackingStore];
  v11 = v6;
  v8 = [v7 copy];
  v9 = [v7 time];
  v10 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(v9, a3);

  [v8 setTime:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v15[4] = *MEMORY[0x1E69E9840];
  v14[0] = @"relativeOffsetInMinutes";
  v3 = [(INCreateAlarmIntent *)self relativeOffsetInMinutes];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v4;
  v14[1] = @"time";
  v5 = [(INCreateAlarmIntent *)self time];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v6;
  v14[2] = @"label";
  v7 = [(INCreateAlarmIntent *)self label];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v8;
  v14[3] = @"alarmRepeatScheduleOptions";
  v9 = INAlarmRepeatScheduleOptionsGetNames([(INCreateAlarmIntent *)self alarmRepeatScheduleOptions]);
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)setAlarmRepeatScheduleOptions:(unint64_t)a3
{
  v5 = [(INCreateAlarmIntent *)self _typedBackingStore];
  [v5 clearAlarmRepeatScheduleOptions];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__INCreateAlarmIntent_setAlarmRepeatScheduleOptions___block_invoke;
  v6[3] = &unk_1E7288628;
  v6[4] = self;
  INAlarmRepeatScheduleOptionsEnumerateBackingTypes(a3, v6);
}

void __53__INCreateAlarmIntent_setAlarmRepeatScheduleOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _typedBackingStore];
  [v3 addAlarmRepeatScheduleOptions:a2];
}

- (unint64_t)alarmRepeatScheduleOptions
{
  v8 = 0;
  v3 = [(INCreateAlarmIntent *)self _typedBackingStore];
  v4 = [v3 alarmRepeatScheduleOptionsCount];

  if (!v4)
  {
    return 0;
  }

  for (i = 0; i != v4; ++i)
  {
    v6 = [(INCreateAlarmIntent *)self _typedBackingStore];
    INAlarmRepeatScheduleOptionsAddBackingType(&v8, [v6 alarmRepeatScheduleOptionsAtIndex:i]);
  }

  return v8;
}

- (void)setLabel:(id)a3
{
  v4 = a3;
  v6 = [(INCreateAlarmIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(v4);

  [v6 setLabel:v5];
}

- (INSpeakableString)label
{
  v2 = [(INCreateAlarmIntent *)self _typedBackingStore];
  v3 = [v2 label];
  v4 = INIntentSlotValueTransformFromDataString(v3);

  return v4;
}

- (void)setTime:(id)a3
{
  v4 = a3;
  v6 = [(INCreateAlarmIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(v4);

  [v6 setTime:v5];
}

- (INDateComponentsRange)time
{
  v2 = [(INCreateAlarmIntent *)self _typedBackingStore];
  v3 = [v2 time];
  v4 = INIntentSlotValueTransformFromDateTimeRange(v3);

  return v4;
}

- (void)setRelativeOffsetInMinutes:(id)a3
{
  v5 = a3;
  v4 = [(INCreateAlarmIntent *)self _typedBackingStore];
  if (v5)
  {
    [v4 setRelativeOffsetInMinutes:{objc_msgSend(v5, "intValue")}];
  }

  else
  {
    [v4 setHasRelativeOffsetInMinutes:0];
  }
}

- (NSNumber)relativeOffsetInMinutes
{
  v3 = [(INCreateAlarmIntent *)self _typedBackingStore];
  if ([v3 hasRelativeOffsetInMinutes])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INCreateAlarmIntent *)self _typedBackingStore];
    v6 = [v4 numberWithInt:{objc_msgSend(v5, "relativeOffsetInMinutes")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (INCreateAlarmIntent)initWithRelativeOffsetInMinutes:(id)a3 time:(id)a4 label:(id)a5 alarmRepeatScheduleOptions:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = INCreateAlarmIntent;
  v13 = [(INIntent *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(INCreateAlarmIntent *)v13 setRelativeOffsetInMinutes:v10];
    [(INCreateAlarmIntent *)v14 setTime:v11];
    [(INCreateAlarmIntent *)v14 setLabel:v12];
    [(INCreateAlarmIntent *)v14 setAlarmRepeatScheduleOptions:a6];
  }

  return v14;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INCreateAlarmIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INCreateAlarmIntent *)self _typedBackingStore];
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