@interface INCreateTaskListIntent
- (INCreateTaskListIntent)initWithTitle:(INSpeakableString *)title taskTitles:(NSArray *)taskTitles groupName:(INSpeakableString *)groupName;
- (INSpeakableString)groupName;
- (INSpeakableString)title;
- (NSArray)taskTitles;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setGroupName:(id)name;
- (void)setTaskTitles:(id)titles;
- (void)setTitle:(id)title;
@end

@implementation INCreateTaskListIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INCreateTaskListIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"title";
  title = [(INCreateTaskListIntent *)self title];
  null = title;
  if (!title)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"taskTitles";
  taskTitles = [(INCreateTaskListIntent *)self taskTitles];
  null2 = taskTitles;
  if (!taskTitles)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"groupName";
  groupName = [(INCreateTaskListIntent *)self groupName];
  null3 = groupName;
  if (!groupName)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (!groupName)
  {
  }

  if (!taskTitles)
  {
  }

  if (!title)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setGroupName:(id)name
{
  nameCopy = name;
  _typedBackingStore = [(INCreateTaskListIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(nameCopy);

  [_typedBackingStore setGroupName:v5];
}

- (INSpeakableString)groupName
{
  _typedBackingStore = [(INCreateTaskListIntent *)self _typedBackingStore];
  groupName = [_typedBackingStore groupName];
  v4 = INIntentSlotValueTransformFromDataString(groupName);

  return v4;
}

- (void)setTaskTitles:(id)titles
{
  titlesCopy = titles;
  _typedBackingStore = [(INCreateTaskListIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataStrings(titlesCopy);

  [_typedBackingStore setTaskTitles:v5];
}

- (NSArray)taskTitles
{
  _typedBackingStore = [(INCreateTaskListIntent *)self _typedBackingStore];
  taskTitles = [_typedBackingStore taskTitles];
  v4 = INIntentSlotValueTransformFromDataStrings(taskTitles);

  return v4;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  _typedBackingStore = [(INCreateTaskListIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDataString(titleCopy);

  [_typedBackingStore setTitle:v5];
}

- (INSpeakableString)title
{
  _typedBackingStore = [(INCreateTaskListIntent *)self _typedBackingStore];
  title = [_typedBackingStore title];
  v4 = INIntentSlotValueTransformFromDataString(title);

  return v4;
}

- (INCreateTaskListIntent)initWithTitle:(INSpeakableString *)title taskTitles:(NSArray *)taskTitles groupName:(INSpeakableString *)groupName
{
  v8 = title;
  v9 = taskTitles;
  v10 = groupName;
  v14.receiver = self;
  v14.super_class = INCreateTaskListIntent;
  v11 = [(INIntent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(INCreateTaskListIntent *)v11 setTitle:v8];
    [(INCreateTaskListIntent *)v12 setTaskTitles:v9];
    [(INCreateTaskListIntent *)v12 setGroupName:v10];
  }

  return v12;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INCreateTaskListIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INCreateTaskListIntent *)self _typedBackingStore];
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