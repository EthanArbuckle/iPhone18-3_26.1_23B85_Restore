@interface INControlHomeIntent
- (BOOL)_hasTitle;
- (INControlHomeIntent)initWithContents:(id)contents;
- (INControlHomeIntent)initWithUserTask:(id)task filters:(id)filters time:(id)time;
- (INDateComponentsRange)time;
- (INHomeUserTask)userTask;
- (NSArray)contents;
- (NSArray)filters;
- (id)_dictionaryRepresentation;
- (id)_initWithIdentifier:(id)identifier backingStore:(id)store schema:(id)schema error:(id *)error;
- (id)_metadata;
- (id)_subtitleWithLocalizer:(id)localizer fromBundleURL:(id)l;
- (id)_titleWithLocalizer:(id)localizer fromBundleURL:(id)l;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setContents:(id)contents;
- (void)setFilters:(id)filters;
- (void)setTime:(id)time;
- (void)setUserTask:(id)task;
@end

@implementation INControlHomeIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INControlHomeIntent *)self _typedBackingStore];
  v11 = idCopy;
  v8 = [_typedBackingStore copy];
  time = [_typedBackingStore time];
  v10 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(time, options);

  [v8 setTime:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"userTask";
  userTask = [(INControlHomeIntent *)self userTask];
  null = userTask;
  if (!userTask)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"filters";
  filters = [(INControlHomeIntent *)self filters];
  null2 = filters;
  if (!filters)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"time";
  time = [(INControlHomeIntent *)self time];
  null3 = time;
  if (!time)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (!time)
  {
  }

  if (!filters)
  {
  }

  if (!userTask)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_initWithIdentifier:(id)identifier backingStore:(id)store schema:(id)schema error:(id *)error
{
  v12.receiver = self;
  v12.super_class = INControlHomeIntent;
  v6 = [(INIntent *)&v12 _initWithIdentifier:identifier backingStore:store schema:schema error:error];
  v7 = v6;
  if (v6)
  {
    backingStore = [v6 backingStore];
    if ([backingStore contentsCount])
    {
      contents = [backingStore contents];
      v10 = INIntentSlotValueTransformFromHomeContents(contents);
      [v7 setContents:v10];
    }
  }

  return v7;
}

- (void)setContents:(id)contents
{
  v17[1] = *MEMORY[0x1E69E9840];
  firstObject = [contents firstObject];
  actions = [firstObject actions];
  firstObject2 = [actions firstObject];

  if (firstObject2)
  {
    v7 = INIntentSlotValueTransformToHomeAction(firstObject2);
    v8 = [INHomeUserTask alloc];
    type = [firstObject2 type];
    attributeValue = [v7 attributeValue];
    v11 = INIntentSlotValueTransformFromHomeAttributeValue(attributeValue);
    v12 = [(INHomeUserTask *)v8 initWithTaskType:1 attribute:type value:v11];
    [(INControlHomeIntent *)self setUserTask:v12];
  }

  filter = [firstObject filter];

  if (filter)
  {
    filter2 = [firstObject filter];
    v17[0] = filter2;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [(INControlHomeIntent *)self setFilters:v15];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (NSArray)contents
{
  v28[1] = *MEMORY[0x1E69E9840];
  userTask = [(INControlHomeIntent *)self userTask];
  filters = [(INControlHomeIntent *)self filters];
  if (userTask | filters)
  {
    if (userTask)
    {
      v24 = [INHomeAction alloc];
      attribute = [userTask attribute];
      value = [userTask value];
      type = [value type];
      value2 = [userTask value];
      bOOLValue = [value2 BOOLValue];
      value3 = [userTask value];
      [value3 doubleValue];
      v9 = v8;
      value4 = [userTask value];
      integerValue = [value4 integerValue];
      value5 = [userTask value];
      stringValue = [value5 stringValue];
      v14 = [(INHomeAction *)v24 initWithType:attribute valueType:type BOOLValue:bOOLValue doubleValue:integerValue integerValue:stringValue stringValue:v9];
      v28[0] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    }

    else
    {
      v15 = 0;
    }

    v17 = [INHomeContent alloc];
    filters2 = [(INControlHomeIntent *)self filters];
    firstObject = [filters2 firstObject];
    v20 = [(INHomeContent *)v17 initWithFilter:firstObject actions:v15];
    v27 = v20;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  }

  else
  {
    v16 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v16;
}

- (INControlHomeIntent)initWithContents:(id)contents
{
  v18[1] = *MEMORY[0x1E69E9840];
  firstObject = [contents firstObject];
  actions = [firstObject actions];
  firstObject2 = [actions firstObject];

  if (firstObject2)
  {
    v7 = INIntentSlotValueTransformToHomeAction(firstObject2);
    v8 = [INHomeUserTask alloc];
    type = [firstObject2 type];
    attributeValue = [v7 attributeValue];
    v11 = INIntentSlotValueTransformFromHomeAttributeValue(attributeValue);
    v12 = [(INHomeUserTask *)v8 initWithTaskType:1 attribute:type value:v11];
  }

  else
  {
    v12 = 0;
  }

  filter = [firstObject filter];

  if (filter)
  {
    filter2 = [firstObject filter];
    v18[0] = filter2;
    filter = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  }

  v15 = [(INControlHomeIntent *)self initWithUserTask:v12 filters:filter];

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)setTime:(id)time
{
  timeCopy = time;
  _typedBackingStore = [(INControlHomeIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(timeCopy);

  [_typedBackingStore setTime:v5];
}

- (INDateComponentsRange)time
{
  _typedBackingStore = [(INControlHomeIntent *)self _typedBackingStore];
  time = [_typedBackingStore time];
  v4 = INIntentSlotValueTransformFromDateTimeRange(time);

  return v4;
}

- (void)setFilters:(id)filters
{
  filtersCopy = filters;
  _typedBackingStore = [(INControlHomeIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToHomeFilters(filtersCopy);

  [_typedBackingStore setFilters:v5];
}

- (NSArray)filters
{
  _typedBackingStore = [(INControlHomeIntent *)self _typedBackingStore];
  filters = [_typedBackingStore filters];
  v4 = INIntentSlotValueTransformFromHomeFilters(filters);

  return v4;
}

- (void)setUserTask:(id)task
{
  taskCopy = task;
  _typedBackingStore = [(INControlHomeIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToHomeUserTask(taskCopy);

  [_typedBackingStore setUserTask:v5];
}

- (INHomeUserTask)userTask
{
  _typedBackingStore = [(INControlHomeIntent *)self _typedBackingStore];
  userTask = [_typedBackingStore userTask];
  v4 = INIntentSlotValueTransformFromHomeUserTask(userTask);

  return v4;
}

- (INControlHomeIntent)initWithUserTask:(id)task filters:(id)filters time:(id)time
{
  taskCopy = task;
  filtersCopy = filters;
  timeCopy = time;
  v14.receiver = self;
  v14.super_class = INControlHomeIntent;
  v11 = [(INIntent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(INControlHomeIntent *)v11 setUserTask:taskCopy];
    [(INControlHomeIntent *)v12 setFilters:filtersCopy];
    [(INControlHomeIntent *)v12 setTime:timeCopy];
  }

  return v12;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INControlHomeIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INControlHomeIntent *)self _typedBackingStore];
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

- (id)_subtitleWithLocalizer:(id)localizer fromBundleURL:(id)l
{
  localizerCopy = localizer;
  filters = [(INControlHomeIntent *)self filters];
  firstObject = [filters firstObject];

  if (firstObject)
  {
    home = [firstObject home];

    if (home)
    {
      home2 = [firstObject home];
      home = [home2 _intents_readableTitleWithLocalizer:localizerCopy];
    }
  }

  else
  {
    home = 0;
  }

  return home;
}

- (id)_titleWithLocalizer:(id)localizer fromBundleURL:(id)l
{
  localizerCopy = localizer;
  filters = [(INControlHomeIntent *)self filters];
  firstObject = [filters firstObject];

  userTask = [(INControlHomeIntent *)self userTask];
  v9 = userTask;
  v10 = 0;
  if (firstObject && userTask)
  {
    if ([userTask taskType] == 1)
    {
      if ([v9 attribute] == 1)
      {
        entityName = [firstObject entityName];
        if (entityName && (v12 = entityName, v13 = [firstObject entityType], v12, v13 == 5))
        {
          v14 = MEMORY[0x1E696AEC0];
          v15 = @"Run %@";
        }

        else
        {
          value = [v9 value];
          bOOLValue = [value BOOLValue];

          v14 = MEMORY[0x1E696AEC0];
          if (bOOLValue)
          {
            v15 = @"Turn on %@";
          }

          else
          {
            v15 = @"Turn off %@";
          }
        }
      }

      else
      {
        v14 = MEMORY[0x1E696AEC0];
        v15 = @"Control %@";
      }

      v18 = INLocalizedStringWithLocalizer(v15, v15, localizerCopy);
      v19 = [firstObject _intents_readableTitleWithLocalizer:localizerCopy];
      v10 = [v14 localizedStringWithFormat:v18, v19];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)_hasTitle
{
  userTask = [(INControlHomeIntent *)self userTask];
  filters = [(INControlHomeIntent *)self filters];
  v5 = 0;
  if ([filters count] && userTask)
  {
    v5 = [userTask taskType] == 1;
  }

  return v5;
}

@end