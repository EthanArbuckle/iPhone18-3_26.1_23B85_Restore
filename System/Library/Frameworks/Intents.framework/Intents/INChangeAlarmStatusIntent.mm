@interface INChangeAlarmStatusIntent
- (INAlarmSearch)alarmSearch;
- (INChangeAlarmStatusIntent)initWithAlarmSearch:(id)a3 alarms:(id)a4 operation:(int64_t)a5;
- (NSArray)alarms;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)operation;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setAlarmSearch:(id)a3;
- (void)setAlarms:(id)a3;
- (void)setOperation:(int64_t)a3;
@end

@implementation INChangeAlarmStatusIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INChangeAlarmStatusIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v14[3] = *MEMORY[0x1E69E9840];
  v13[0] = @"alarmSearch";
  v3 = [(INChangeAlarmStatusIntent *)self alarmSearch];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = v4;
  v13[1] = @"alarms";
  v5 = [(INChangeAlarmStatusIntent *)self alarms];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = v6;
  v13[2] = @"operation";
  v7 = [(INChangeAlarmStatusIntent *)self operation];
  if ((v7 - 1) > 2)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_1E7288130[v7 - 1];
  }

  v9 = v8;
  v14[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)setOperation:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INChangeAlarmStatusIntent *)self _typedBackingStore];
  v5 = v4;
  if (v3 > 2)
  {
    [v4 setHasOperation:0];
  }

  else
  {
    [v4 setOperation:?];
  }
}

- (int64_t)operation
{
  v3 = [(INChangeAlarmStatusIntent *)self _typedBackingStore];
  v4 = [v3 hasOperation];
  v5 = [(INChangeAlarmStatusIntent *)self _typedBackingStore];
  v6 = [v5 operation];
  if (((v6 - 1 < 3) & v4) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setAlarms:(id)a3
{
  v4 = a3;
  v6 = [(INChangeAlarmStatusIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToAlarms(v4);

  [v6 setAlarms:v5];
}

- (NSArray)alarms
{
  v2 = [(INChangeAlarmStatusIntent *)self _typedBackingStore];
  v3 = [v2 alarms];
  v4 = INIntentSlotValueTransformFromAlarms(v3);

  return v4;
}

- (void)setAlarmSearch:(id)a3
{
  v4 = a3;
  v6 = [(INChangeAlarmStatusIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToAlarmSearch(v4);

  [v6 setAlarmSearch:v5];
}

- (INAlarmSearch)alarmSearch
{
  v2 = [(INChangeAlarmStatusIntent *)self _typedBackingStore];
  v3 = [v2 alarmSearch];
  v4 = INIntentSlotValueTransformFromAlarmSearch(v3);

  return v4;
}

- (INChangeAlarmStatusIntent)initWithAlarmSearch:(id)a3 alarms:(id)a4 operation:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = INChangeAlarmStatusIntent;
  v10 = [(INIntent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(INChangeAlarmStatusIntent *)v10 setAlarmSearch:v8];
    [(INChangeAlarmStatusIntent *)v11 setAlarms:v9];
    [(INChangeAlarmStatusIntent *)v11 setOperation:a5];
  }

  return v11;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INChangeAlarmStatusIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INChangeAlarmStatusIntent *)self _typedBackingStore];
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