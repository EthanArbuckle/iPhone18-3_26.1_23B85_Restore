@interface INSnoozeTasksIntent
- (INDateComponentsRange)nextTriggerTime;
- (INSnoozeTasksIntent)initWithTasks:(NSArray *)tasks nextTriggerTime:(INDateComponentsRange *)nextTriggerTime all:(NSNumber *)all;
- (NSArray)tasks;
- (NSNumber)all;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setAll:(id)all;
- (void)setNextTriggerTime:(id)time;
- (void)setTasks:(id)tasks;
@end

@implementation INSnoozeTasksIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INSnoozeTasksIntent *)self _typedBackingStore];
  v11 = idCopy;
  v8 = [_typedBackingStore copy];
  nextTriggerTime = [_typedBackingStore nextTriggerTime];
  v10 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(nextTriggerTime, options);

  [v8 setNextTriggerTime:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"tasks";
  tasks = [(INSnoozeTasksIntent *)self tasks];
  null = tasks;
  if (!tasks)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"nextTriggerTime";
  nextTriggerTime = [(INSnoozeTasksIntent *)self nextTriggerTime];
  null2 = nextTriggerTime;
  if (!nextTriggerTime)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"all";
  v7 = [(INSnoozeTasksIntent *)self all];
  null3 = v7;
  if (!v7)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (!v7)
  {
  }

  if (!nextTriggerTime)
  {
  }

  if (!tasks)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setAll:(id)all
{
  allCopy = all;
  _typedBackingStore = [(INSnoozeTasksIntent *)self _typedBackingStore];
  if (allCopy)
  {
    [_typedBackingStore setAll:{objc_msgSend(allCopy, "BOOLValue")}];
  }

  else
  {
    [_typedBackingStore setHasAll:0];
  }
}

- (NSNumber)all
{
  _typedBackingStore = [(INSnoozeTasksIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasAll])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INSnoozeTasksIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(_typedBackingStore2, "all")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setNextTriggerTime:(id)time
{
  timeCopy = time;
  _typedBackingStore = [(INSnoozeTasksIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(timeCopy);

  [_typedBackingStore setNextTriggerTime:v5];
}

- (INDateComponentsRange)nextTriggerTime
{
  _typedBackingStore = [(INSnoozeTasksIntent *)self _typedBackingStore];
  nextTriggerTime = [_typedBackingStore nextTriggerTime];
  v4 = INIntentSlotValueTransformFromDateTimeRange(nextTriggerTime);

  return v4;
}

- (void)setTasks:(id)tasks
{
  tasksCopy = tasks;
  _typedBackingStore = [(INSnoozeTasksIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTasks(tasksCopy);

  [_typedBackingStore setTasks:v5];
}

- (NSArray)tasks
{
  _typedBackingStore = [(INSnoozeTasksIntent *)self _typedBackingStore];
  tasks = [_typedBackingStore tasks];
  v4 = INIntentSlotValueTransformFromTasks(tasks);

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

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSnoozeTasksIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSnoozeTasksIntent *)self _typedBackingStore];
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