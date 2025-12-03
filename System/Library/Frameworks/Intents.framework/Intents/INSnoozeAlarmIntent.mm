@interface INSnoozeAlarmIntent
- (INSnoozeAlarmIntent)initWithAlarms:(id)alarms;
- (NSArray)alarms;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setAlarms:(id)alarms;
@end

@implementation INSnoozeAlarmIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INSnoozeAlarmIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"alarms";
  alarms = [(INSnoozeAlarmIntent *)self alarms];
  null = alarms;
  if (!alarms)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!alarms)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setAlarms:(id)alarms
{
  alarmsCopy = alarms;
  _typedBackingStore = [(INSnoozeAlarmIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToAlarms(alarmsCopy);

  [_typedBackingStore setAlarms:v5];
}

- (NSArray)alarms
{
  _typedBackingStore = [(INSnoozeAlarmIntent *)self _typedBackingStore];
  alarms = [_typedBackingStore alarms];
  v4 = INIntentSlotValueTransformFromAlarms(alarms);

  return v4;
}

- (INSnoozeAlarmIntent)initWithAlarms:(id)alarms
{
  alarmsCopy = alarms;
  v8.receiver = self;
  v8.super_class = INSnoozeAlarmIntent;
  v5 = [(INIntent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(INSnoozeAlarmIntent *)v5 setAlarms:alarmsCopy];
  }

  return v6;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSnoozeAlarmIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSnoozeAlarmIntent *)self _typedBackingStore];
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