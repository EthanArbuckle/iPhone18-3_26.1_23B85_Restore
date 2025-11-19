@interface INUpdateAlarmIntent
- (INAlarm)alarm;
- (INAlarmSearch)alarmSearch;
- (INDateComponentsRange)proposedTime;
- (INSpeakableString)proposedLabel;
- (INUpdateAlarmIntent)initWithAlarmSearch:(id)a3 alarm:(id)a4 operation:(int64_t)a5 proposedTime:(id)a6 proposedLabel:(id)a7;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)operation;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setAlarm:(id)a3;
- (void)setAlarmSearch:(id)a3;
- (void)setOperation:(int64_t)a3;
- (void)setProposedLabel:(id)a3;
- (void)setProposedTime:(id)a3;
@end

@implementation INUpdateAlarmIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INUpdateAlarmIntent *)self _typedBackingStore];
  v11 = v6;
  v8 = [v7 copy];
  v9 = [v7 proposedTime];
  v10 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(v9, a3);

  [v8 setProposedTime:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v18[5] = *MEMORY[0x1E69E9840];
  v17[0] = @"alarmSearch";
  v3 = [(INUpdateAlarmIntent *)self alarmSearch];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = v4;
  v17[1] = @"alarm";
  v5 = [(INUpdateAlarmIntent *)self alarm];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = v6;
  v17[2] = @"operation";
  v7 = [(INUpdateAlarmIntent *)self operation];
  v8 = @"unknown";
  if (v7 == 2)
  {
    v8 = @"updateTime";
  }

  if (v7 == 1)
  {
    v8 = @"updateLabel";
  }

  v9 = v8;
  v18[2] = v9;
  v17[3] = @"proposedTime";
  v10 = [(INUpdateAlarmIntent *)self proposedTime];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = v11;
  v17[4] = @"proposedLabel";
  v12 = [(INUpdateAlarmIntent *)self proposedLabel];
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

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)setProposedLabel:(id)a3
{
  v4 = a3;
  v6 = [(INUpdateAlarmIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(v4);

  [v6 setProposedLabel:v5];
}

- (INSpeakableString)proposedLabel
{
  v2 = [(INUpdateAlarmIntent *)self _typedBackingStore];
  v3 = [v2 proposedLabel];
  v4 = INIntentSlotValueTransformFromDataString(v3);

  return v4;
}

- (void)setProposedTime:(id)a3
{
  v4 = a3;
  v6 = [(INUpdateAlarmIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(v4);

  [v6 setProposedTime:v5];
}

- (INDateComponentsRange)proposedTime
{
  v2 = [(INUpdateAlarmIntent *)self _typedBackingStore];
  v3 = [v2 proposedTime];
  v4 = INIntentSlotValueTransformFromDateTimeRange(v3);

  return v4;
}

- (void)setOperation:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (a3 == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [(INUpdateAlarmIntent *)self _typedBackingStore];
  v6 = v5;
  if (v4 == 0x7FFFFFFF)
  {
    [v5 setHasOperation:0];
  }

  else
  {
    [v5 setOperation:v4];
  }
}

- (int64_t)operation
{
  v3 = [(INUpdateAlarmIntent *)self _typedBackingStore];
  v4 = [v3 hasOperation];
  v5 = [(INUpdateAlarmIntent *)self _typedBackingStore];
  v6 = [v5 operation];
  v7 = 2 * (v6 == 2);
  if (v6 == 1)
  {
    v7 = 1;
  }

  if (v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setAlarm:(id)a3
{
  v4 = a3;
  v6 = [(INUpdateAlarmIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToAlarm(v4);

  [v6 setAlarm:v5];
}

- (INAlarm)alarm
{
  v2 = [(INUpdateAlarmIntent *)self _typedBackingStore];
  v3 = [v2 alarm];
  v4 = INIntentSlotValueTransformFromAlarm(v3);

  return v4;
}

- (void)setAlarmSearch:(id)a3
{
  v4 = a3;
  v6 = [(INUpdateAlarmIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToAlarmSearch(v4);

  [v6 setAlarmSearch:v5];
}

- (INAlarmSearch)alarmSearch
{
  v2 = [(INUpdateAlarmIntent *)self _typedBackingStore];
  v3 = [v2 alarmSearch];
  v4 = INIntentSlotValueTransformFromAlarmSearch(v3);

  return v4;
}

- (INUpdateAlarmIntent)initWithAlarmSearch:(id)a3 alarm:(id)a4 operation:(int64_t)a5 proposedTime:(id)a6 proposedLabel:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = INUpdateAlarmIntent;
  v16 = [(INIntent *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(INUpdateAlarmIntent *)v16 setAlarmSearch:v12];
    [(INUpdateAlarmIntent *)v17 setAlarm:v13];
    [(INUpdateAlarmIntent *)v17 setOperation:a5];
    [(INUpdateAlarmIntent *)v17 setProposedTime:v14];
    [(INUpdateAlarmIntent *)v17 setProposedLabel:v15];
  }

  return v17;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INUpdateAlarmIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INUpdateAlarmIntent *)self _typedBackingStore];
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