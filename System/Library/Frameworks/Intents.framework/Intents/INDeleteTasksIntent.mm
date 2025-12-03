@interface INDeleteTasksIntent
- (INDeleteTasksIntent)initWithTaskList:(INTaskList *)taskList tasks:(NSArray *)tasks all:(NSNumber *)all;
- (INTaskList)taskList;
- (NSArray)tasks;
- (NSNumber)all;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setAll:(id)all;
- (void)setTaskList:(id)list;
- (void)setTasks:(id)tasks;
@end

@implementation INDeleteTasksIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INDeleteTasksIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"taskList";
  taskList = [(INDeleteTasksIntent *)self taskList];
  null = taskList;
  if (!taskList)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"tasks";
  tasks = [(INDeleteTasksIntent *)self tasks];
  null2 = tasks;
  if (!tasks)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"all";
  v7 = [(INDeleteTasksIntent *)self all];
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

  if (!tasks)
  {
  }

  if (!taskList)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setAll:(id)all
{
  allCopy = all;
  _typedBackingStore = [(INDeleteTasksIntent *)self _typedBackingStore];
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
  _typedBackingStore = [(INDeleteTasksIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasAll])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INDeleteTasksIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(_typedBackingStore2, "all")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setTasks:(id)tasks
{
  tasksCopy = tasks;
  _typedBackingStore = [(INDeleteTasksIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTasks(tasksCopy);

  [_typedBackingStore setTasks:v5];
}

- (NSArray)tasks
{
  _typedBackingStore = [(INDeleteTasksIntent *)self _typedBackingStore];
  tasks = [_typedBackingStore tasks];
  v4 = INIntentSlotValueTransformFromTasks(tasks);

  return v4;
}

- (void)setTaskList:(id)list
{
  listCopy = list;
  _typedBackingStore = [(INDeleteTasksIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToTaskList(listCopy);

  [_typedBackingStore setTaskList:v5];
}

- (INTaskList)taskList
{
  _typedBackingStore = [(INDeleteTasksIntent *)self _typedBackingStore];
  taskList = [_typedBackingStore taskList];
  v4 = INIntentSlotValueTransformFromTaskList(taskList);

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

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INDeleteTasksIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INDeleteTasksIntent *)self _typedBackingStore];
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