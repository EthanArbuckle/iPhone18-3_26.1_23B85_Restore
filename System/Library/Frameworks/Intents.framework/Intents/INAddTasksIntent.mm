@interface INAddTasksIntent
- (INAddTasksIntent)initWithTargetTaskList:(INTaskList *)targetTaskList taskTitles:(NSArray *)taskTitles spatialEventTrigger:(INSpatialEventTrigger *)spatialEventTrigger temporalEventTrigger:(INTemporalEventTrigger *)temporalEventTrigger priority:(INTaskPriority)priority;
- (INContactEventTrigger)contactEventTrigger;
- (INIntent)intent;
- (INSpatialEventTrigger)spatialEventTrigger;
- (INTaskList)targetTaskList;
- (INTaskPriority)priority;
- (INTemporalEventTrigger)temporalEventTrigger;
- (NSArray)contactEventTriggers;
- (NSArray)targetTaskListMembers;
- (NSArray)taskTitles;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_redactedDictionaryRepresentation;
- (id)_typedBackingStore;
- (int64_t)taskReference;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setContactEventTrigger:(id)trigger;
- (void)setContactEventTriggers:(id)triggers;
- (void)setIntent:(id)intent;
- (void)setPriority:(int64_t)priority;
- (void)setSpatialEventTrigger:(id)trigger;
- (void)setTargetTaskList:(id)list;
- (void)setTargetTaskListMembers:(id)members;
- (void)setTaskReference:(int64_t)reference;
- (void)setTaskTitles:(id)titles;
- (void)setTemporalEventTrigger:(id)trigger;
@end

@implementation INAddTasksIntent

- (void)setContactEventTriggers:(id)triggers
{
  firstObject = [triggers firstObject];
  [(INAddTasksIntent *)self setContactEventTrigger:firstObject];
}

- (NSArray)contactEventTriggers
{
  v8[1] = *MEMORY[0x1E69E9840];
  contactEventTrigger = [(INAddTasksIntent *)self contactEventTrigger];

  if (contactEventTrigger)
  {
    contactEventTrigger2 = [(INAddTasksIntent *)self contactEventTrigger];
    v8[0] = contactEventTrigger2;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INAddTasksIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v18[5] = *MEMORY[0x1E69E9840];
  v17[0] = @"targetTaskList";
  targetTaskList = [(INAddTasksIntent *)self targetTaskList];
  null = targetTaskList;
  if (!targetTaskList)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = null;
  v17[1] = @"taskTitles";
  taskTitles = [(INAddTasksIntent *)self taskTitles];
  null2 = taskTitles;
  if (!taskTitles)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = null2;
  v17[2] = @"spatialEventTrigger";
  spatialEventTrigger = [(INAddTasksIntent *)self spatialEventTrigger];
  null3 = spatialEventTrigger;
  if (!spatialEventTrigger)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = null3;
  v17[3] = @"temporalEventTrigger";
  temporalEventTrigger = [(INAddTasksIntent *)self temporalEventTrigger];
  null4 = temporalEventTrigger;
  if (!temporalEventTrigger)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = null4;
  v17[4] = @"priority";
  priority = [(INAddTasksIntent *)self priority];
  v12 = @"unknown";
  if (priority == INTaskPriorityFlagged)
  {
    v12 = @"flagged";
  }

  if (priority == INTaskPriorityNotFlagged)
  {
    v12 = @"notFlagged";
  }

  v13 = v12;
  v18[4] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];

  if (!temporalEventTrigger)
  {
  }

  if (!spatialEventTrigger)
  {
  }

  if (!taskTitles)
  {
  }

  if (!targetTaskList)
  {
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_redactedDictionaryRepresentation
{
  _dictionaryRepresentation = [(INAddTasksIntent *)self _dictionaryRepresentation];
  v3 = [_dictionaryRepresentation mutableCopy];

  [v3 setObject:@"<redacted>" forKey:@"taskTitles"];

  return v3;
}

- (void)setIntent:(id)intent
{
  intentCopy = intent;
  _typedBackingStore = [(INAddTasksIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToIntent(intentCopy);

  [_typedBackingStore setIntent:v5];
}

- (INIntent)intent
{
  _typedBackingStore = [(INAddTasksIntent *)self _typedBackingStore];
  intent = [_typedBackingStore intent];
  v4 = INIntentSlotValueTransformFromIntent(intent);

  return v4;
}

- (void)setContactEventTrigger:(id)trigger
{
  triggerCopy = trigger;
  _typedBackingStore = [(INAddTasksIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToContactEventTrigger(triggerCopy);

  [_typedBackingStore setContactEventTrigger:v5];
}

- (INContactEventTrigger)contactEventTrigger
{
  _typedBackingStore = [(INAddTasksIntent *)self _typedBackingStore];
  contactEventTrigger = [_typedBackingStore contactEventTrigger];
  v4 = INIntentSlotValueTransformFromContactEventTrigger(contactEventTrigger);

  return v4;
}

- (void)setPriority:(int64_t)priority
{
  _typedBackingStore = [(INAddTasksIntent *)self _typedBackingStore];
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
  _typedBackingStore = [(INAddTasksIntent *)self _typedBackingStore];
  hasPriority = [_typedBackingStore hasPriority];
  _typedBackingStore2 = [(INAddTasksIntent *)self _typedBackingStore];
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

- (void)setTemporalEventTrigger:(id)trigger
{
  triggerCopy = trigger;
  _typedBackingStore = [(INAddTasksIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTemporalEventTrigger(triggerCopy);

  [_typedBackingStore setTemporalEventTrigger:v5];
}

- (INTemporalEventTrigger)temporalEventTrigger
{
  _typedBackingStore = [(INAddTasksIntent *)self _typedBackingStore];
  temporalEventTrigger = [_typedBackingStore temporalEventTrigger];
  v4 = INIntentSlotValueTransformFromTemporalEventTrigger(temporalEventTrigger);

  return v4;
}

- (void)setSpatialEventTrigger:(id)trigger
{
  triggerCopy = trigger;
  _typedBackingStore = [(INAddTasksIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToSpatialEventTrigger(triggerCopy);

  [_typedBackingStore setSpatialEventTrigger:v5];
}

- (INSpatialEventTrigger)spatialEventTrigger
{
  _typedBackingStore = [(INAddTasksIntent *)self _typedBackingStore];
  spatialEventTrigger = [_typedBackingStore spatialEventTrigger];
  v4 = INIntentSlotValueTransformFromSpatialEventTrigger(spatialEventTrigger);

  return v4;
}

- (void)setTaskTitles:(id)titles
{
  titlesCopy = titles;
  _typedBackingStore = [(INAddTasksIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataStrings(titlesCopy);

  [_typedBackingStore setTaskTitles:v5];
}

- (NSArray)taskTitles
{
  _typedBackingStore = [(INAddTasksIntent *)self _typedBackingStore];
  taskTitles = [_typedBackingStore taskTitles];
  v4 = INIntentSlotValueTransformFromDataStrings(taskTitles);

  return v4;
}

- (void)setTargetTaskList:(id)list
{
  listCopy = list;
  _typedBackingStore = [(INAddTasksIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTaskList(listCopy);

  [_typedBackingStore setTargetTaskList:v5];
}

- (INTaskList)targetTaskList
{
  _typedBackingStore = [(INAddTasksIntent *)self _typedBackingStore];
  targetTaskList = [_typedBackingStore targetTaskList];
  v4 = INIntentSlotValueTransformFromTaskList(targetTaskList);

  return v4;
}

- (void)setTargetTaskListMembers:(id)members
{
  membersCopy = members;
  _typedBackingStore = [(INAddTasksIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToContacts(membersCopy);

  [_typedBackingStore setTargetTaskListMembers:v5];
}

- (NSArray)targetTaskListMembers
{
  _typedBackingStore = [(INAddTasksIntent *)self _typedBackingStore];
  targetTaskListMembers = [_typedBackingStore targetTaskListMembers];
  v4 = INIntentSlotValueTransformFromContacts(targetTaskListMembers);

  return v4;
}

- (void)setTaskReference:(int64_t)reference
{
  _typedBackingStore = [(INAddTasksIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (reference == 1)
  {
    [_typedBackingStore setTaskReference:0];
  }

  else
  {
    [_typedBackingStore setHasTaskReference:0];
  }
}

- (int64_t)taskReference
{
  _typedBackingStore = [(INAddTasksIntent *)self _typedBackingStore];
  LODWORD(v4) = [_typedBackingStore hasTaskReference];
  _typedBackingStore2 = [(INAddTasksIntent *)self _typedBackingStore];
  if ([_typedBackingStore2 taskReference])
  {
    v4 = 0;
  }

  else
  {
    v4 = v4;
  }

  return v4;
}

- (INAddTasksIntent)initWithTargetTaskList:(INTaskList *)targetTaskList taskTitles:(NSArray *)taskTitles spatialEventTrigger:(INSpatialEventTrigger *)spatialEventTrigger temporalEventTrigger:(INTemporalEventTrigger *)temporalEventTrigger priority:(INTaskPriority)priority
{
  v12 = targetTaskList;
  v13 = taskTitles;
  v14 = spatialEventTrigger;
  v15 = temporalEventTrigger;
  v19.receiver = self;
  v19.super_class = INAddTasksIntent;
  v16 = [(INIntent *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(INAddTasksIntent *)v16 setTargetTaskList:v12];
    [(INAddTasksIntent *)v17 setTaskTitles:v13];
    [(INAddTasksIntent *)v17 setSpatialEventTrigger:v14];
    [(INAddTasksIntent *)v17 setTemporalEventTrigger:v15];
    [(INAddTasksIntent *)v17 setPriority:priority];
  }

  return v17;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INAddTasksIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INAddTasksIntent *)self _typedBackingStore];
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