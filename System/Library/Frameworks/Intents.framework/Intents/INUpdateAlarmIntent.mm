@interface INUpdateAlarmIntent
- (INAlarm)alarm;
- (INAlarmSearch)alarmSearch;
- (INDateComponentsRange)proposedTime;
- (INSpeakableString)proposedLabel;
- (INUpdateAlarmIntent)initWithAlarmSearch:(id)search alarm:(id)alarm operation:(int64_t)operation proposedTime:(id)time proposedLabel:(id)label;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)operation;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setAlarm:(id)alarm;
- (void)setAlarmSearch:(id)search;
- (void)setOperation:(int64_t)operation;
- (void)setProposedLabel:(id)label;
- (void)setProposedTime:(id)time;
@end

@implementation INUpdateAlarmIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INUpdateAlarmIntent *)self _typedBackingStore];
  v11 = idCopy;
  v8 = [_typedBackingStore copy];
  proposedTime = [_typedBackingStore proposedTime];
  v10 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(proposedTime, options);

  [v8 setProposedTime:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v18[5] = *MEMORY[0x1E69E9840];
  v17[0] = @"alarmSearch";
  alarmSearch = [(INUpdateAlarmIntent *)self alarmSearch];
  null = alarmSearch;
  if (!alarmSearch)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = null;
  v17[1] = @"alarm";
  alarm = [(INUpdateAlarmIntent *)self alarm];
  null2 = alarm;
  if (!alarm)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = null2;
  v17[2] = @"operation";
  operation = [(INUpdateAlarmIntent *)self operation];
  v8 = @"unknown";
  if (operation == 2)
  {
    v8 = @"updateTime";
  }

  if (operation == 1)
  {
    v8 = @"updateLabel";
  }

  v9 = v8;
  v18[2] = v9;
  v17[3] = @"proposedTime";
  proposedTime = [(INUpdateAlarmIntent *)self proposedTime];
  null3 = proposedTime;
  if (!proposedTime)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = null3;
  v17[4] = @"proposedLabel";
  proposedLabel = [(INUpdateAlarmIntent *)self proposedLabel];
  null4 = proposedLabel;
  if (!proposedLabel)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v18[4] = null4;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];
  if (!proposedLabel)
  {
  }

  if (!proposedTime)
  {
  }

  if (!alarm)
  {
  }

  if (!alarmSearch)
  {
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)setProposedLabel:(id)label
{
  labelCopy = label;
  _typedBackingStore = [(INUpdateAlarmIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(labelCopy);

  [_typedBackingStore setProposedLabel:v5];
}

- (INSpeakableString)proposedLabel
{
  _typedBackingStore = [(INUpdateAlarmIntent *)self _typedBackingStore];
  proposedLabel = [_typedBackingStore proposedLabel];
  v4 = INIntentSlotValueTransformFromDataString(proposedLabel);

  return v4;
}

- (void)setProposedTime:(id)time
{
  timeCopy = time;
  _typedBackingStore = [(INUpdateAlarmIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(timeCopy);

  [_typedBackingStore setProposedTime:v5];
}

- (INDateComponentsRange)proposedTime
{
  _typedBackingStore = [(INUpdateAlarmIntent *)self _typedBackingStore];
  proposedTime = [_typedBackingStore proposedTime];
  v4 = INIntentSlotValueTransformFromDateTimeRange(proposedTime);

  return v4;
}

- (void)setOperation:(int64_t)operation
{
  if (operation == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (operation == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  _typedBackingStore = [(INUpdateAlarmIntent *)self _typedBackingStore];
  v6 = _typedBackingStore;
  if (v4 == 0x7FFFFFFF)
  {
    [_typedBackingStore setHasOperation:0];
  }

  else
  {
    [_typedBackingStore setOperation:v4];
  }
}

- (int64_t)operation
{
  _typedBackingStore = [(INUpdateAlarmIntent *)self _typedBackingStore];
  hasOperation = [_typedBackingStore hasOperation];
  _typedBackingStore2 = [(INUpdateAlarmIntent *)self _typedBackingStore];
  operation = [_typedBackingStore2 operation];
  v7 = 2 * (operation == 2);
  if (operation == 1)
  {
    v7 = 1;
  }

  if (hasOperation)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setAlarm:(id)alarm
{
  alarmCopy = alarm;
  _typedBackingStore = [(INUpdateAlarmIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToAlarm(alarmCopy);

  [_typedBackingStore setAlarm:v5];
}

- (INAlarm)alarm
{
  _typedBackingStore = [(INUpdateAlarmIntent *)self _typedBackingStore];
  alarm = [_typedBackingStore alarm];
  v4 = INIntentSlotValueTransformFromAlarm(alarm);

  return v4;
}

- (void)setAlarmSearch:(id)search
{
  searchCopy = search;
  _typedBackingStore = [(INUpdateAlarmIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToAlarmSearch(searchCopy);

  [_typedBackingStore setAlarmSearch:v5];
}

- (INAlarmSearch)alarmSearch
{
  _typedBackingStore = [(INUpdateAlarmIntent *)self _typedBackingStore];
  alarmSearch = [_typedBackingStore alarmSearch];
  v4 = INIntentSlotValueTransformFromAlarmSearch(alarmSearch);

  return v4;
}

- (INUpdateAlarmIntent)initWithAlarmSearch:(id)search alarm:(id)alarm operation:(int64_t)operation proposedTime:(id)time proposedLabel:(id)label
{
  searchCopy = search;
  alarmCopy = alarm;
  timeCopy = time;
  labelCopy = label;
  v19.receiver = self;
  v19.super_class = INUpdateAlarmIntent;
  v16 = [(INIntent *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(INUpdateAlarmIntent *)v16 setAlarmSearch:searchCopy];
    [(INUpdateAlarmIntent *)v17 setAlarm:alarmCopy];
    [(INUpdateAlarmIntent *)v17 setOperation:operation];
    [(INUpdateAlarmIntent *)v17 setProposedTime:timeCopy];
    [(INUpdateAlarmIntent *)v17 setProposedLabel:labelCopy];
  }

  return v17;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INUpdateAlarmIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INUpdateAlarmIntent *)self _typedBackingStore];
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