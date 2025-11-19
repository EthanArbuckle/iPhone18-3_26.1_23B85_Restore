@interface INSearchAlarmIntent
- (INAlarmSearch)alarmSearch;
- (INSearchAlarmIntent)initWithAlarmSearch:(id)a3 alarmSearchType:(int64_t)a4 alarms:(id)a5;
- (NSArray)alarms;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)alarmSearchType;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setAlarmSearch:(id)a3;
- (void)setAlarmSearchType:(int64_t)a3;
- (void)setAlarms:(id)a3;
@end

@implementation INSearchAlarmIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INSearchAlarmIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v14[3] = *MEMORY[0x1E69E9840];
  v13[0] = @"alarmSearch";
  v3 = [(INSearchAlarmIntent *)self alarmSearch];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = v4;
  v13[1] = @"alarmSearchType";
  v5 = [(INSearchAlarmIntent *)self alarmSearchType];
  if ((v5 - 1) > 4)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E72883C8[v5 - 1];
  }

  v7 = v6;
  v14[1] = v7;
  v13[2] = @"alarms";
  v8 = [(INSearchAlarmIntent *)self alarms];
  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  if (!v8)
  {
  }

  if (!v3)
  {
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)setAlarms:(id)a3
{
  v4 = a3;
  v6 = [(INSearchAlarmIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToAlarms(v4);

  [v6 setAlarms:v5];
}

- (NSArray)alarms
{
  v2 = [(INSearchAlarmIntent *)self _typedBackingStore];
  v3 = [v2 alarms];
  v4 = INIntentSlotValueTransformFromAlarms(v3);

  return v4;
}

- (void)setAlarmSearchType:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INSearchAlarmIntent *)self _typedBackingStore];
  v5 = v4;
  if (v3 > 4)
  {
    [v4 setHasAlarmSearchType:0];
  }

  else
  {
    [v4 setAlarmSearchType:v3];
  }
}

- (int64_t)alarmSearchType
{
  v3 = [(INSearchAlarmIntent *)self _typedBackingStore];
  v4 = [v3 hasAlarmSearchType];
  v5 = [(INSearchAlarmIntent *)self _typedBackingStore];
  v6 = [v5 alarmSearchType];
  if (((v6 < 5) & v4) != 0)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setAlarmSearch:(id)a3
{
  v4 = a3;
  v6 = [(INSearchAlarmIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToAlarmSearch(v4);

  [v6 setAlarmSearch:v5];
}

- (INAlarmSearch)alarmSearch
{
  v2 = [(INSearchAlarmIntent *)self _typedBackingStore];
  v3 = [v2 alarmSearch];
  v4 = INIntentSlotValueTransformFromAlarmSearch(v3);

  return v4;
}

- (INSearchAlarmIntent)initWithAlarmSearch:(id)a3 alarmSearchType:(int64_t)a4 alarms:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = INSearchAlarmIntent;
  v10 = [(INIntent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(INSearchAlarmIntent *)v10 setAlarmSearch:v8];
    [(INSearchAlarmIntent *)v11 setAlarmSearchType:a4];
    [(INSearchAlarmIntent *)v11 setAlarms:v9];
  }

  return v11;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSearchAlarmIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INSearchAlarmIntent *)self _typedBackingStore];
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