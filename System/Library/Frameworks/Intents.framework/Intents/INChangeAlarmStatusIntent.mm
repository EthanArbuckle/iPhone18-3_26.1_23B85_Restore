@interface INChangeAlarmStatusIntent
- (INAlarmSearch)alarmSearch;
- (INChangeAlarmStatusIntent)initWithAlarmSearch:(id)search alarms:(id)alarms operation:(int64_t)operation;
- (NSArray)alarms;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)operation;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setAlarmSearch:(id)search;
- (void)setAlarms:(id)alarms;
- (void)setOperation:(int64_t)operation;
@end

@implementation INChangeAlarmStatusIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INChangeAlarmStatusIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v14[3] = *MEMORY[0x1E69E9840];
  v13[0] = @"alarmSearch";
  alarmSearch = [(INChangeAlarmStatusIntent *)self alarmSearch];
  null = alarmSearch;
  if (!alarmSearch)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = null;
  v13[1] = @"alarms";
  alarms = [(INChangeAlarmStatusIntent *)self alarms];
  null2 = alarms;
  if (!alarms)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = null2;
  v13[2] = @"operation";
  operation = [(INChangeAlarmStatusIntent *)self operation];
  if ((operation - 1) > 2)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_1E7288130[operation - 1];
  }

  v9 = v8;
  v14[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  if (!alarms)
  {
  }

  if (!alarmSearch)
  {
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)setOperation:(int64_t)operation
{
  v3 = operation - 1;
  _typedBackingStore = [(INChangeAlarmStatusIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (v3 > 2)
  {
    [_typedBackingStore setHasOperation:0];
  }

  else
  {
    [_typedBackingStore setOperation:?];
  }
}

- (int64_t)operation
{
  _typedBackingStore = [(INChangeAlarmStatusIntent *)self _typedBackingStore];
  hasOperation = [_typedBackingStore hasOperation];
  _typedBackingStore2 = [(INChangeAlarmStatusIntent *)self _typedBackingStore];
  operation = [_typedBackingStore2 operation];
  if (((operation - 1 < 3) & hasOperation) != 0)
  {
    v7 = operation;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setAlarms:(id)alarms
{
  alarmsCopy = alarms;
  _typedBackingStore = [(INChangeAlarmStatusIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToAlarms(alarmsCopy);

  [_typedBackingStore setAlarms:v5];
}

- (NSArray)alarms
{
  _typedBackingStore = [(INChangeAlarmStatusIntent *)self _typedBackingStore];
  alarms = [_typedBackingStore alarms];
  v4 = INIntentSlotValueTransformFromAlarms(alarms);

  return v4;
}

- (void)setAlarmSearch:(id)search
{
  searchCopy = search;
  _typedBackingStore = [(INChangeAlarmStatusIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToAlarmSearch(searchCopy);

  [_typedBackingStore setAlarmSearch:v5];
}

- (INAlarmSearch)alarmSearch
{
  _typedBackingStore = [(INChangeAlarmStatusIntent *)self _typedBackingStore];
  alarmSearch = [_typedBackingStore alarmSearch];
  v4 = INIntentSlotValueTransformFromAlarmSearch(alarmSearch);

  return v4;
}

- (INChangeAlarmStatusIntent)initWithAlarmSearch:(id)search alarms:(id)alarms operation:(int64_t)operation
{
  searchCopy = search;
  alarmsCopy = alarms;
  v13.receiver = self;
  v13.super_class = INChangeAlarmStatusIntent;
  v10 = [(INIntent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(INChangeAlarmStatusIntent *)v10 setAlarmSearch:searchCopy];
    [(INChangeAlarmStatusIntent *)v11 setAlarms:alarmsCopy];
    [(INChangeAlarmStatusIntent *)v11 setOperation:operation];
  }

  return v11;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INChangeAlarmStatusIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INChangeAlarmStatusIntent *)self _typedBackingStore];
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