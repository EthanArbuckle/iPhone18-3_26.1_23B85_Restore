@interface INDeleteTasksIntent
- (INDeleteTasksIntent)initWithTaskList:(INTaskList *)taskList tasks:(NSArray *)tasks all:(NSNumber *)all;
- (INTaskList)taskList;
- (NSArray)tasks;
- (NSNumber)all;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setAll:(id)a3;
- (void)setTaskList:(id)a3;
- (void)setTasks:(id)a3;
@end

@implementation INDeleteTasksIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INDeleteTasksIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"taskList";
  v3 = [(INDeleteTasksIntent *)self taskList];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v4;
  v12[1] = @"tasks";
  v5 = [(INDeleteTasksIntent *)self tasks];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v6;
  v12[2] = @"all";
  v7 = [(INDeleteTasksIntent *)self all];
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
  v4 = [(INDeleteTasksIntent *)self _typedBackingStore];
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
  v3 = [(INDeleteTasksIntent *)self _typedBackingStore];
  if ([v3 hasAll])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INDeleteTasksIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "all")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setTasks:(id)a3
{
  v4 = a3;
  v6 = [(INDeleteTasksIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTasks(v4);

  [v6 setTasks:v5];
}

- (NSArray)tasks
{
  v2 = [(INDeleteTasksIntent *)self _typedBackingStore];
  v3 = [v2 tasks];
  v4 = INIntentSlotValueTransformFromTasks(v3);

  return v4;
}

- (void)setTaskList:(id)a3
{
  v4 = a3;
  v6 = [(INDeleteTasksIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTaskList(v4);

  [v6 setTaskList:v5];
}

- (INTaskList)taskList
{
  v2 = [(INDeleteTasksIntent *)self _typedBackingStore];
  v3 = [v2 taskList];
  v4 = INIntentSlotValueTransformFromTaskList(v3);

  return v4;
}

- (INDeleteTasksIntent)initWithTaskList:(INTaskList *)taskList tasks:(NSArray *)tasks all:(NSNumber *)all
{
  v8 = taskList;
  v9 = tasks;
  v10 = all;
  v14.receiver = self;
  v14.super_class = INDeleteTasksIntent;
  v11 = [(INIntent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(INDeleteTasksIntent *)v11 setTaskList:v8];
    [(INDeleteTasksIntent *)v12 setTasks:v9];
    [(INDeleteTasksIntent *)v12 setAll:v10];
  }

  return v12;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INDeleteTasksIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INDeleteTasksIntent *)self _typedBackingStore];
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