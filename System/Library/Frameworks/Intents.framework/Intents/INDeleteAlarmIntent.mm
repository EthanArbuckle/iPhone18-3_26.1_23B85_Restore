@interface INDeleteAlarmIntent
- (INAlarmSearch)alarmSearch;
- (INDeleteAlarmIntent)initWithAlarmSearch:(id)search alarms:(id)alarms;
- (NSArray)alarms;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setAlarmSearch:(id)search;
- (void)setAlarms:(id)alarms;
@end

@implementation INDeleteAlarmIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INDeleteAlarmIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"alarmSearch";
  alarmSearch = [(INDeleteAlarmIntent *)self alarmSearch];
  null = alarmSearch;
  if (!alarmSearch)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"alarms";
  v11[0] = null;
  alarms = [(INDeleteAlarmIntent *)self alarms];
  null2 = alarms;
  if (!alarms)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!alarms)
  {
  }

  if (!alarmSearch)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)setAlarms:(id)alarms
{
  alarmsCopy = alarms;
  _typedBackingStore = [(INDeleteAlarmIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToAlarms(alarmsCopy);

  [_typedBackingStore setAlarms:v5];
}

- (NSArray)alarms
{
  _typedBackingStore = [(INDeleteAlarmIntent *)self _typedBackingStore];
  alarms = [_typedBackingStore alarms];
  v4 = INIntentSlotValueTransformFromAlarms(alarms);

  return v4;
}

- (void)setAlarmSearch:(id)search
{
  searchCopy = search;
  _typedBackingStore = [(INDeleteAlarmIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToAlarmSearch(searchCopy);

  [_typedBackingStore setAlarmSearch:v5];
}

- (INAlarmSearch)alarmSearch
{
  _typedBackingStore = [(INDeleteAlarmIntent *)self _typedBackingStore];
  alarmSearch = [_typedBackingStore alarmSearch];
  v4 = INIntentSlotValueTransformFromAlarmSearch(alarmSearch);

  return v4;
}

- (INDeleteAlarmIntent)initWithAlarmSearch:(id)search alarms:(id)alarms
{
  searchCopy = search;
  alarmsCopy = alarms;
  v11.receiver = self;
  v11.super_class = INDeleteAlarmIntent;
  v8 = [(INIntent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(INDeleteAlarmIntent *)v8 setAlarmSearch:searchCopy];
    [(INDeleteAlarmIntent *)v9 setAlarms:alarmsCopy];
  }

  return v9;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INDeleteAlarmIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INDeleteAlarmIntent *)self _typedBackingStore];
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