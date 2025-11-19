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
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setContactEventTrigger:(id)a3;
- (void)setContactEventTriggers:(id)a3;
- (void)setIntent:(id)a3;
- (void)setPriority:(int64_t)a3;
- (void)setSpatialEventTrigger:(id)a3;
- (void)setTargetTaskList:(id)a3;
- (void)setTargetTaskListMembers:(id)a3;
- (void)setTaskReference:(int64_t)a3;
- (void)setTaskTitles:(id)a3;
- (void)setTemporalEventTrigger:(id)a3;
@end

@implementation INAddTasksIntent

- (void)setContactEventTriggers:(id)a3
{
  v4 = [a3 firstObject];
  [(INAddTasksIntent *)self setContactEventTrigger:v4];
}

- (NSArray)contactEventTriggers
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [(INAddTasksIntent *)self contactEventTrigger];

  if (v3)
  {
    v4 = [(INAddTasksIntent *)self contactEventTrigger];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INAddTasksIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v18[5] = *MEMORY[0x1E69E9840];
  v17[0] = @"targetTaskList";
  v3 = [(INAddTasksIntent *)self targetTaskList];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = v4;
  v17[1] = @"taskTitles";
  v5 = [(INAddTasksIntent *)self taskTitles];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = v6;
  v17[2] = @"spatialEventTrigger";
  v7 = [(INAddTasksIntent *)self spatialEventTrigger];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = v8;
  v17[3] = @"temporalEventTrigger";
  v9 = [(INAddTasksIntent *)self temporalEventTrigger];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = v10;
  v17[4] = @"priority";
  v11 = [(INAddTasksIntent *)self priority];
  v12 = @"unknown";
  if (v11 == INTaskPriorityFlagged)
  {
    v12 = @"flagged";
  }

  if (v11 == INTaskPriorityNotFlagged)
  {
    v12 = @"notFlagged";
  }

  v13 = v12;
  v18[4] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];

  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_redactedDictionaryRepresentation
{
  v2 = [(INAddTasksIntent *)self _dictionaryRepresentation];
  v3 = [v2 mutableCopy];

  [v3 setObject:@"<redacted>" forKey:@"taskTitles"];

  return v3;
}

- (void)setIntent:(id)a3
{
  v4 = a3;
  v6 = [(INAddTasksIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToIntent(v4);

  [v6 setIntent:v5];
}

- (INIntent)intent
{
  v2 = [(INAddTasksIntent *)self _typedBackingStore];
  v3 = [v2 intent];
  v4 = INIntentSlotValueTransformFromIntent(v3);

  return v4;
}

- (void)setContactEventTrigger:(id)a3
{
  v4 = a3;
  v6 = [(INAddTasksIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToContactEventTrigger(v4);

  [v6 setContactEventTrigger:v5];
}

- (INContactEventTrigger)contactEventTrigger
{
  v2 = [(INAddTasksIntent *)self _typedBackingStore];
  v3 = [v2 contactEventTrigger];
  v4 = INIntentSlotValueTransformFromContactEventTrigger(v3);

  return v4;
}

- (void)setPriority:(int64_t)a3
{
  v4 = [(INAddTasksIntent *)self _typedBackingStore];
  v5 = v4;
  if (a3 > 2)
  {
    [v4 setHasPriority:0];
  }

  else
  {
    [v4 setPriority:a3];
  }
}

- (INTaskPriority)priority
{
  v3 = [(INAddTasksIntent *)self _typedBackingStore];
  v4 = [v3 hasPriority];
  v5 = [(INAddTasksIntent *)self _typedBackingStore];
  v6 = [v5 priority];
  v7 = v6 == 1;
  if (v6 == 2)
  {
    v7 = 2;
  }

  if (v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = INTaskPriorityUnknown;
  }

  return v8;
}

- (void)setTemporalEventTrigger:(id)a3
{
  v4 = a3;
  v6 = [(INAddTasksIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTemporalEventTrigger(v4);

  [v6 setTemporalEventTrigger:v5];
}

- (INTemporalEventTrigger)temporalEventTrigger
{
  v2 = [(INAddTasksIntent *)self _typedBackingStore];
  v3 = [v2 temporalEventTrigger];
  v4 = INIntentSlotValueTransformFromTemporalEventTrigger(v3);

  return v4;
}

- (void)setSpatialEventTrigger:(id)a3
{
  v4 = a3;
  v6 = [(INAddTasksIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToSpatialEventTrigger(v4);

  [v6 setSpatialEventTrigger:v5];
}

- (INSpatialEventTrigger)spatialEventTrigger
{
  v2 = [(INAddTasksIntent *)self _typedBackingStore];
  v3 = [v2 spatialEventTrigger];
  v4 = INIntentSlotValueTransformFromSpatialEventTrigger(v3);

  return v4;
}

- (void)setTaskTitles:(id)a3
{
  v4 = a3;
  v6 = [(INAddTasksIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataStrings(v4);

  [v6 setTaskTitles:v5];
}

- (NSArray)taskTitles
{
  v2 = [(INAddTasksIntent *)self _typedBackingStore];
  v3 = [v2 taskTitles];
  v4 = INIntentSlotValueTransformFromDataStrings(v3);

  return v4;
}

- (void)setTargetTaskList:(id)a3
{
  v4 = a3;
  v6 = [(INAddTasksIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTaskList(v4);

  [v6 setTargetTaskList:v5];
}

- (INTaskList)targetTaskList
{
  v2 = [(INAddTasksIntent *)self _typedBackingStore];
  v3 = [v2 targetTaskList];
  v4 = INIntentSlotValueTransformFromTaskList(v3);

  return v4;
}

- (void)setTargetTaskListMembers:(id)a3
{
  v4 = a3;
  v6 = [(INAddTasksIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToContacts(v4);

  [v6 setTargetTaskListMembers:v5];
}

- (NSArray)targetTaskListMembers
{
  v2 = [(INAddTasksIntent *)self _typedBackingStore];
  v3 = [v2 targetTaskListMembers];
  v4 = INIntentSlotValueTransformFromContacts(v3);

  return v4;
}

- (void)setTaskReference:(int64_t)a3
{
  v4 = [(INAddTasksIntent *)self _typedBackingStore];
  v5 = v4;
  if (a3 == 1)
  {
    [v4 setTaskReference:0];
  }

  else
  {
    [v4 setHasTaskReference:0];
  }
}

- (int64_t)taskReference
{
  v3 = [(INAddTasksIntent *)self _typedBackingStore];
  LODWORD(v4) = [v3 hasTaskReference];
  v5 = [(INAddTasksIntent *)self _typedBackingStore];
  if ([v5 taskReference])
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

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INAddTasksIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INAddTasksIntent *)self _typedBackingStore];
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