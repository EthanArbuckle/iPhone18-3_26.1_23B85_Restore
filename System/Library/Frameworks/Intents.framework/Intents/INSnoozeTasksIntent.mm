@interface INSnoozeTasksIntent
- (INDateComponentsRange)nextTriggerTime;
- (INSnoozeTasksIntent)initWithTasks:(NSArray *)tasks nextTriggerTime:(INDateComponentsRange *)nextTriggerTime all:(NSNumber *)all;
- (NSArray)tasks;
- (NSNumber)all;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setAll:(id)a3;
- (void)setNextTriggerTime:(id)a3;
- (void)setTasks:(id)a3;
@end

@implementation INSnoozeTasksIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INSnoozeTasksIntent *)self _typedBackingStore];
  v11 = v6;
  v8 = [v7 copy];
  v9 = [v7 nextTriggerTime];
  v10 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(v9, a3);

  [v8 setNextTriggerTime:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"tasks";
  v3 = [(INSnoozeTasksIntent *)self tasks];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v4;
  v12[1] = @"nextTriggerTime";
  v5 = [(INSnoozeTasksIntent *)self nextTriggerTime];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v6;
  v12[2] = @"all";
  v7 = [(INSnoozeTasksIntent *)self all];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (!v7)
  {
  }

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setAll:(id)a3
{
  v5 = a3;
  v4 = [(INSnoozeTasksIntent *)self _typedBackingStore];
  if (v5)
  {
    [v4 setAll:{objc_msgSend(v5, "BOOLValue")}];
  }

  else
  {
    [v4 setHasAll:0];
  }
}

- (NSNumber)all
{
  v3 = [(INSnoozeTasksIntent *)self _typedBackingStore];
  if ([v3 hasAll])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INSnoozeTasksIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "all")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setNextTriggerTime:(id)a3
{
  v4 = a3;
  v6 = [(INSnoozeTasksIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(v4);

  [v6 setNextTriggerTime:v5];
}

- (INDateComponentsRange)nextTriggerTime
{
  v2 = [(INSnoozeTasksIntent *)self _typedBackingStore];
  v3 = [v2 nextTriggerTime];
  v4 = INIntentSlotValueTransformFromDateTimeRange(v3);

  return v4;
}

- (void)setTasks:(id)a3
{
  v4 = a3;
  v6 = [(INSnoozeTasksIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTasks(v4);

  [v6 setTasks:v5];
}

- (NSArray)tasks
{
  v2 = [(INSnoozeTasksIntent *)self _typedBackingStore];
  v3 = [v2 tasks];
  v4 = INIntentSlotValueTransformFromTasks(v3);

  return v4;
}

- (INSnoozeTasksIntent)initWithTasks:(NSArray *)tasks nextTriggerTime:(INDateComponentsRange *)nextTriggerTime all:(NSNumber *)all
{
  v8 = tasks;
  v9 = nextTriggerTime;
  v10 = all;
  v14.receiver = self;
  v14.super_class = INSnoozeTasksIntent;
  v11 = [(INIntent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(INSnoozeTasksIntent *)v11 setTasks:v8];
    [(INSnoozeTasksIntent *)v12 setNextTriggerTime:v9];
    [(INSnoozeTasksIntent *)v12 setAll:v10];
  }

  return v12;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSnoozeTasksIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INSnoozeTasksIntent *)self _typedBackingStore];
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