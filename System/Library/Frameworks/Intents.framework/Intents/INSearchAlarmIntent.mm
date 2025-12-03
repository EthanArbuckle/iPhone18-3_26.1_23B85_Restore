@interface INSearchAlarmIntent
- (INAlarmSearch)alarmSearch;
- (INSearchAlarmIntent)initWithAlarmSearch:(id)search alarmSearchType:(int64_t)type alarms:(id)alarms;
- (NSArray)alarms;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)alarmSearchType;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setAlarmSearch:(id)search;
- (void)setAlarmSearchType:(int64_t)type;
- (void)setAlarms:(id)alarms;
@end

@implementation INSearchAlarmIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INSearchAlarmIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v14[3] = *MEMORY[0x1E69E9840];
  v13[0] = @"alarmSearch";
  alarmSearch = [(INSearchAlarmIntent *)self alarmSearch];
  null = alarmSearch;
  if (!alarmSearch)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = null;
  v13[1] = @"alarmSearchType";
  alarmSearchType = [(INSearchAlarmIntent *)self alarmSearchType];
  if ((alarmSearchType - 1) > 4)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E72883C8[alarmSearchType - 1];
  }

  v7 = v6;
  v14[1] = v7;
  v13[2] = @"alarms";
  alarms = [(INSearchAlarmIntent *)self alarms];
  null2 = alarms;
  if (!alarms)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = null2;
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

- (void)setAlarms:(id)alarms
{
  alarmsCopy = alarms;
  _typedBackingStore = [(INSearchAlarmIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToAlarms(alarmsCopy);

  [_typedBackingStore setAlarms:v5];
}

- (NSArray)alarms
{
  _typedBackingStore = [(INSearchAlarmIntent *)self _typedBackingStore];
  alarms = [_typedBackingStore alarms];
  v4 = INIntentSlotValueTransformFromAlarms(alarms);

  return v4;
}

- (void)setAlarmSearchType:(int64_t)type
{
  v3 = type - 1;
  _typedBackingStore = [(INSearchAlarmIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (v3 > 4)
  {
    [_typedBackingStore setHasAlarmSearchType:0];
  }

  else
  {
    [_typedBackingStore setAlarmSearchType:v3];
  }
}

- (int64_t)alarmSearchType
{
  _typedBackingStore = [(INSearchAlarmIntent *)self _typedBackingStore];
  hasAlarmSearchType = [_typedBackingStore hasAlarmSearchType];
  _typedBackingStore2 = [(INSearchAlarmIntent *)self _typedBackingStore];
  alarmSearchType = [_typedBackingStore2 alarmSearchType];
  if (((alarmSearchType < 5) & hasAlarmSearchType) != 0)
  {
    v7 = alarmSearchType + 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setAlarmSearch:(id)search
{
  searchCopy = search;
  _typedBackingStore = [(INSearchAlarmIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToAlarmSearch(searchCopy);

  [_typedBackingStore setAlarmSearch:v5];
}

- (INAlarmSearch)alarmSearch
{
  _typedBackingStore = [(INSearchAlarmIntent *)self _typedBackingStore];
  alarmSearch = [_typedBackingStore alarmSearch];
  v4 = INIntentSlotValueTransformFromAlarmSearch(alarmSearch);

  return v4;
}

- (INSearchAlarmIntent)initWithAlarmSearch:(id)search alarmSearchType:(int64_t)type alarms:(id)alarms
{
  searchCopy = search;
  alarmsCopy = alarms;
  v13.receiver = self;
  v13.super_class = INSearchAlarmIntent;
  v10 = [(INIntent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(INSearchAlarmIntent *)v10 setAlarmSearch:searchCopy];
    [(INSearchAlarmIntent *)v11 setAlarmSearchType:type];
    [(INSearchAlarmIntent *)v11 setAlarms:alarmsCopy];
  }

  return v11;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSearchAlarmIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSearchAlarmIntent *)self _typedBackingStore];
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