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
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setContactEventTrigger:(id)a3;
- (void)setPriority:(int64_t)a3;
- (void)setSpatialEventTrigger:(id)a3;
- (void)setStatus:(int64_t)a3;
- (void)setTargetTask:(id)a3;
- (void)setTaskTitle:(id)a3;
- (void)setTemporalEventTrigger:(id)a3;
@end

@implementation INSetTaskAttributeIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INSetTaskAttributeIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v22[6] = *MEMORY[0x1E69E9840];
  v21[0] = @"targetTask";
  v3 = [(INSetTaskAttributeIntent *)self targetTask];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v22[0] = v3;
  v21[1] = @"taskTitle";
  v5 = [(INSetTaskAttributeIntent *)self taskTitle];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v22[1] = v6;
  v21[2] = @"status";
  v7 = [(INSetTaskAttributeIntent *)self status];
  v8 = @"unknown";
  if (v7 == INTaskStatusCompleted)
  {
    v8 = @"completed";
  }

  if (v7 == INTaskStatusNotCompleted)
  {
    v8 = @"notCompleted";
  }

  v9 = v8;
  v22[2] = v9;
  v21[3] = @"priority";
  v10 = [(INSetTaskAttributeIntent *)self priority];
  v11 = @"unknown";
  if (v10 == INTaskPriorityFlagged)
  {
    v11 = @"flagged";
  }

  if (v10 == INTaskPriorityNotFlagged)
  {
    v11 = @"notFlagged";
  }

  v12 = v11;
  v22[3] = v12;
  v21[4] = @"spatialEventTrigger";
  v13 = [(INSetTaskAttributeIntent *)self spatialEventTrigger];
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v22[4] = v14;
  v21[5] = @"temporalEventTrigger";
  v15 = [(INSetTaskAttributeIntent *)self temporalEventTrigger];
  v16 = v15;
  if (!v15)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v22[5] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:6];
  if (!v15)
  {
  }

  if (!v13)
  {
  }

  if (!v5)
  {
  }

  if (!v4)
  {
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)setContactEventTrigger:(id)a3
{
  v4 = a3;
  v6 = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToContactEventTrigger(v4);

  [v6 setContactEventTrigger:v5];
}

- (INContactEventTrigger)contactEventTrigger
{
  v2 = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  v3 = [v2 contactEventTrigger];
  v4 = INIntentSlotValueTransformFromContactEventTrigger(v3);

  return v4;
}

- (void)setTemporalEventTrigger:(id)a3
{
  v4 = a3;
  v6 = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTemporalEventTrigger(v4);

  [v6 setTemporalEventTrigger:v5];
}

- (INTemporalEventTrigger)temporalEventTrigger
{
  v2 = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  v3 = [v2 temporalEventTrigger];
  v4 = INIntentSlotValueTransformFromTemporalEventTrigger(v3);

  return v4;
}

- (void)setSpatialEventTrigger:(id)a3
{
  v4 = a3;
  v6 = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToSpatialEventTrigger(v4);

  [v6 setSpatialEventTrigger:v5];
}

- (INSpatialEventTrigger)spatialEventTrigger
{
  v2 = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  v3 = [v2 spatialEventTrigger];
  v4 = INIntentSlotValueTransformFromSpatialEventTrigger(v3);

  return v4;
}

- (void)setPriority:(int64_t)a3
{
  v4 = [(INSetTaskAttributeIntent *)self _typedBackingStore];
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
  v3 = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  v4 = [v3 hasPriority];
  v5 = [(INSetTaskAttributeIntent *)self _typedBackingStore];
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

- (void)setStatus:(int64_t)a3
{
  v4 = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  v5 = v4;
  if (a3 <= 2)
  {
    [v4 setStatus:(10 * a3)];
  }

  else
  {
    [v4 setHasStatus:0];
  }
}

- (INTaskStatus)status
{
  v3 = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  v4 = [v3 hasStatus];
  v5 = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  v6 = [v5 status];
  v7 = v6 == 10;
  if (v6 == 20)
  {
    v7 = 2;
  }

  if (v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = INTaskStatusUnknown;
  }

  return v8;
}

- (void)setTaskTitle:(id)a3
{
  v4 = a3;
  v6 = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(v4);

  [v6 setTaskTitle:v5];
}

- (INSpeakableString)taskTitle
{
  v2 = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  v3 = [v2 taskTitle];
  v4 = INIntentSlotValueTransformFromDataString(v3);

  return v4;
}

- (void)setTargetTask:(id)a3
{
  v4 = a3;
  v6 = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTask(v4);

  [v6 setTargetTask:v5];
}

- (INTask)targetTask
{
  v2 = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  v3 = [v2 targetTask];
  v4 = INIntentSlotValueTransformFromTask(v3);

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

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSetTaskAttributeIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INSetTaskAttributeIntent *)self _typedBackingStore];
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