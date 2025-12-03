@interface INSetTaskAttributeIntent
- (INContactEventTrigger)contactEventTrigger;
- (INSetTaskAttributeIntent)initWithTargetTask:(INTask *)targetTask taskTitle:(INSpeakableString *)taskTitle status:(INTaskStatus)status priority:(INTaskPriority)priority spatialEventTrigger:(INSpatialEventTrigger *)spatialEventTrigger temporalEventTrigger:(INTemporalEventTrigger *)temporalEventTrigger;
- (INSpatialEventTrigger)spatialEventTrigger;
- (INSpeakableString)taskTitle;
- (INTask)targetTask;
- (INTaskPriority)priority;
- (INTaskStatus)status;
- (INTemporalEventTrigger)temporalEventTrigger;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setContactEventTrigger:(id)trigger;
- (void)setPriority:(int64_t)priority;
- (void)setSpatialEventTrigger:(id)trigger;
- (void)setStatus:(int64_t)status;
- (void)setTargetTask:(id)task;
- (void)setTaskTitle:(id)title;
- (void)setTemporalEventTrigger:(id)trigger;
@end

@implementation INSetTaskAttributeIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INSetTaskAttributeIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v22[6] = *MEMORY[0x1E69E9840];
  v21[0] = @"targetTask";
  targetTask = [(INSetTaskAttributeIntent *)self targetTask];
  v4 = targetTask;
  if (!targetTask)
  {
    targetTask = [MEMORY[0x1E695DFB0] null];
  }

  v22[0] = targetTask;
  v21[1] = @"taskTitle";
  taskTitle = [(INSetTaskAttributeIntent *)self taskTitle];
  null = taskTitle;
  if (!taskTitle)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v22[1] = null;
  v21[2] = @"status";
  status = [(INSetTaskAttributeIntent *)self status];
  v8 = @"unknown";
  if (status == INTaskStatusCompleted)
  {
    v8 = @"completed";
  }

  if (status == INTaskStatusNotCompleted)
  {
    v8 = @"notCompleted";
  }

  v9 = v8;
  v22[2] = v9;
  v21[3] = @"priority";
  priority = [(INSetTaskAttributeIntent *)self priority];
  v11 = @"unknown";
  if (priority == INTaskPriorityFlagged)
  {
    v11 = @"flagged";
  }

  if (priority == INTaskPriorityNotFlagged)
  {
    v11 = @"notFlagged";
  }

  v12 = v11;
  v22[3] = v12;
  v21[4] = @"spatialEventTrigger";
  spatialEventTrigger = [(INSetTaskAttributeIntent *)self spatialEventTrigger];
  null2 = spatialEventTrigger;
  if (!spatialEventTrigger)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v22[4] = null2;
  v21[5] = @"temporalEventTrigger";
  temporalEventTrigger = [(INSetTaskAttributeIntent *)self temporalEventTrigger];
  null3 = temporalEventTrigger;
  if (!temporalEventTrigger)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v22[5] = null3;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:6];
  if (!temporalEventTrigger)
  {
  }

  if (!spatialEventTrigger)
  {
  }

  if (!taskTitle)
  {
  }

  if (!v4)
  {
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)setContactEventTrigger:(id)trigger
{
  triggerCopy = trigger;
  _typedBackingStore = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToContactEventTrigger(triggerCopy);

  [_typedBackingStore setContactEventTrigger:v5];
}

- (INContactEventTrigger)contactEventTrigger
{
  _typedBackingStore = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  contactEventTrigger = [_typedBackingStore contactEventTrigger];
  v4 = INIntentSlotValueTransformFromContactEventTrigger(contactEventTrigger);

  return v4;
}

- (void)setTemporalEventTrigger:(id)trigger
{
  triggerCopy = trigger;
  _typedBackingStore = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTemporalEventTrigger(triggerCopy);

  [_typedBackingStore setTemporalEventTrigger:v5];
}

- (INTemporalEventTrigger)temporalEventTrigger
{
  _typedBackingStore = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  temporalEventTrigger = [_typedBackingStore temporalEventTrigger];
  v4 = INIntentSlotValueTransformFromTemporalEventTrigger(temporalEventTrigger);

  return v4;
}

- (void)setSpatialEventTrigger:(id)trigger
{
  triggerCopy = trigger;
  _typedBackingStore = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToSpatialEventTrigger(triggerCopy);

  [_typedBackingStore setSpatialEventTrigger:v5];
}

- (INSpatialEventTrigger)spatialEventTrigger
{
  _typedBackingStore = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  spatialEventTrigger = [_typedBackingStore spatialEventTrigger];
  v4 = INIntentSlotValueTransformFromSpatialEventTrigger(spatialEventTrigger);

  return v4;
}

- (void)setPriority:(int64_t)priority
{
  _typedBackingStore = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (priority > 2)
  {
    [_typedBackingStore setHasPriority:0];
  }

  else
  {
    [_typedBackingStore setPriority:priority];
  }
}

- (INTaskPriority)priority
{
  _typedBackingStore = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  hasPriority = [_typedBackingStore hasPriority];
  _typedBackingStore2 = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  priority = [_typedBackingStore2 priority];
  v7 = priority == 1;
  if (priority == 2)
  {
    v7 = 2;
  }

  if (hasPriority)
  {
    v8 = v7;
  }

  else
  {
    v8 = INTaskPriorityUnknown;
  }

  return v8;
}

- (void)setStatus:(int64_t)status
{
  _typedBackingStore = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (status <= 2)
  {
    [_typedBackingStore setStatus:(10 * status)];
  }

  else
  {
    [_typedBackingStore setHasStatus:0];
  }
}

- (INTaskStatus)status
{
  _typedBackingStore = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  hasStatus = [_typedBackingStore hasStatus];
  _typedBackingStore2 = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  status = [_typedBackingStore2 status];
  v7 = status == 10;
  if (status == 20)
  {
    v7 = 2;
  }

  if (hasStatus)
  {
    v8 = v7;
  }

  else
  {
    v8 = INTaskStatusUnknown;
  }

  return v8;
}

- (void)setTaskTitle:(id)title
{
  titleCopy = title;
  _typedBackingStore = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(titleCopy);

  [_typedBackingStore setTaskTitle:v5];
}

- (INSpeakableString)taskTitle
{
  _typedBackingStore = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  taskTitle = [_typedBackingStore taskTitle];
  v4 = INIntentSlotValueTransformFromDataString(taskTitle);

  return v4;
}

- (void)setTargetTask:(id)task
{
  taskCopy = task;
  _typedBackingStore = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTask(taskCopy);

  [_typedBackingStore setTargetTask:v5];
}

- (INTask)targetTask
{
  _typedBackingStore = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  targetTask = [_typedBackingStore targetTask];
  v4 = INIntentSlotValueTransformFromTask(targetTask);

  return v4;
}

- (INSetTaskAttributeIntent)initWithTargetTask:(INTask *)targetTask taskTitle:(INSpeakableString *)taskTitle status:(INTaskStatus)status priority:(INTaskPriority)priority spatialEventTrigger:(INSpatialEventTrigger *)spatialEventTrigger temporalEventTrigger:(INTemporalEventTrigger *)temporalEventTrigger
{
  v14 = targetTask;
  v15 = taskTitle;
  v16 = spatialEventTrigger;
  v17 = temporalEventTrigger;
  v21.receiver = self;
  v21.super_class = INSetTaskAttributeIntent;
  v18 = [(INIntent *)&v21 init];
  v19 = v18;
  if (v18)
  {
    [(INSetTaskAttributeIntent *)v18 setTargetTask:v14];
    [(INSetTaskAttributeIntent *)v19 setTaskTitle:v15];
    [(INSetTaskAttributeIntent *)v19 setStatus:status];
    [(INSetTaskAttributeIntent *)v19 setPriority:priority];
    [(INSetTaskAttributeIntent *)v19 setSpatialEventTrigger:v16];
    [(INSetTaskAttributeIntent *)v19 setTemporalEventTrigger:v17];
  }

  return v19;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSetTaskAttributeIntent *)self _typedBackingStore];
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