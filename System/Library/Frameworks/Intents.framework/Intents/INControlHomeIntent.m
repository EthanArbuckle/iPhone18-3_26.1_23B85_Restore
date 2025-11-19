@interface INControlHomeIntent
- (BOOL)_hasTitle;
- (INControlHomeIntent)initWithContents:(id)a3;
- (INControlHomeIntent)initWithUserTask:(id)a3 filters:(id)a4 time:(id)a5;
- (INDateComponentsRange)time;
- (INHomeUserTask)userTask;
- (NSArray)contents;
- (NSArray)filters;
- (id)_dictionaryRepresentation;
- (id)_initWithIdentifier:(id)a3 backingStore:(id)a4 schema:(id)a5 error:(id *)a6;
- (id)_metadata;
- (id)_subtitleWithLocalizer:(id)a3 fromBundleURL:(id)a4;
- (id)_titleWithLocalizer:(id)a3 fromBundleURL:(id)a4;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setContents:(id)a3;
- (void)setFilters:(id)a3;
- (void)setTime:(id)a3;
- (void)setUserTask:(id)a3;
@end

@implementation INControlHomeIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INControlHomeIntent *)self _typedBackingStore];
  v11 = v6;
  v8 = [v7 copy];
  v9 = [v7 time];
  v10 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(v9, a3);

  [v8 setTime:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"userTask";
  v3 = [(INControlHomeIntent *)self userTask];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v4;
  v12[1] = @"filters";
  v5 = [(INControlHomeIntent *)self filters];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v6;
  v12[2] = @"time";
  v7 = [(INControlHomeIntent *)self time];
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

- (id)_initWithIdentifier:(id)a3 backingStore:(id)a4 schema:(id)a5 error:(id *)a6
{
  v12.receiver = self;
  v12.super_class = INControlHomeIntent;
  v6 = [(INIntent *)&v12 _initWithIdentifier:a3 backingStore:a4 schema:a5 error:a6];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 backingStore];
    if ([v8 contentsCount])
    {
      v9 = [v8 contents];
      v10 = INIntentSlotValueTransformFromHomeContents(v9);
      [v7 setContents:v10];
    }
  }

  return v7;
}

- (void)setContents:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = [a3 firstObject];
  v5 = [v4 actions];
  v6 = [v5 firstObject];

  if (v6)
  {
    v7 = INIntentSlotValueTransformToHomeAction(v6);
    v8 = [INHomeUserTask alloc];
    v9 = [v6 type];
    v10 = [v7 attributeValue];
    v11 = INIntentSlotValueTransformFromHomeAttributeValue(v10);
    v12 = [(INHomeUserTask *)v8 initWithTaskType:1 attribute:v9 value:v11];
    [(INControlHomeIntent *)self setUserTask:v12];
  }

  v13 = [v4 filter];

  if (v13)
  {
    v14 = [v4 filter];
    v17[0] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [(INControlHomeIntent *)self setFilters:v15];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (NSArray)contents
{
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = [(INControlHomeIntent *)self userTask];
  v4 = [(INControlHomeIntent *)self filters];
  if (v3 | v4)
  {
    if (v3)
    {
      v24 = [INHomeAction alloc];
      v23 = [v3 attribute];
      v26 = [v3 value];
      v5 = [v26 type];
      v25 = [v3 value];
      v6 = [v25 BOOLValue];
      v7 = [v3 value];
      [v7 doubleValue];
      v9 = v8;
      v10 = [v3 value];
      v11 = [v10 integerValue];
      v12 = [v3 value];
      v13 = [v12 stringValue];
      v14 = [(INHomeAction *)v24 initWithType:v23 valueType:v5 BOOLValue:v6 doubleValue:v11 integerValue:v13 stringValue:v9];
      v28[0] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    }

    else
    {
      v15 = 0;
    }

    v17 = [INHomeContent alloc];
    v18 = [(INControlHomeIntent *)self filters];
    v19 = [v18 firstObject];
    v20 = [(INHomeContent *)v17 initWithFilter:v19 actions:v15];
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

- (INControlHomeIntent)initWithContents:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = [a3 firstObject];
  v5 = [v4 actions];
  v6 = [v5 firstObject];

  if (v6)
  {
    v7 = INIntentSlotValueTransformToHomeAction(v6);
    v8 = [INHomeUserTask alloc];
    v9 = [v6 type];
    v10 = [v7 attributeValue];
    v11 = INIntentSlotValueTransformFromHomeAttributeValue(v10);
    v12 = [(INHomeUserTask *)v8 initWithTaskType:1 attribute:v9 value:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v4 filter];

  if (v13)
  {
    v14 = [v4 filter];
    v18[0] = v14;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  }

  v15 = [(INControlHomeIntent *)self initWithUserTask:v12 filters:v13];

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)setTime:(id)a3
{
  v4 = a3;
  v6 = [(INControlHomeIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(v4);

  [v6 setTime:v5];
}

- (INDateComponentsRange)time
{
  v2 = [(INControlHomeIntent *)self _typedBackingStore];
  v3 = [v2 time];
  v4 = INIntentSlotValueTransformFromDateTimeRange(v3);

  return v4;
}

- (void)setFilters:(id)a3
{
  v4 = a3;
  v6 = [(INControlHomeIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToHomeFilters(v4);

  [v6 setFilters:v5];
}

- (NSArray)filters
{
  v2 = [(INControlHomeIntent *)self _typedBackingStore];
  v3 = [v2 filters];
  v4 = INIntentSlotValueTransformFromHomeFilters(v3);

  return v4;
}

- (void)setUserTask:(id)a3
{
  v4 = a3;
  v6 = [(INControlHomeIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToHomeUserTask(v4);

  [v6 setUserTask:v5];
}

- (INHomeUserTask)userTask
{
  v2 = [(INControlHomeIntent *)self _typedBackingStore];
  v3 = [v2 userTask];
  v4 = INIntentSlotValueTransformFromHomeUserTask(v3);

  return v4;
}

- (INControlHomeIntent)initWithUserTask:(id)a3 filters:(id)a4 time:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = INControlHomeIntent;
  v11 = [(INIntent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(INControlHomeIntent *)v11 setUserTask:v8];
    [(INControlHomeIntent *)v12 setFilters:v9];
    [(INControlHomeIntent *)v12 setTime:v10];
  }

  return v12;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INControlHomeIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INControlHomeIntent *)self _typedBackingStore];
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

- (id)_subtitleWithLocalizer:(id)a3 fromBundleURL:(id)a4
{
  v5 = a3;
  v6 = [(INControlHomeIntent *)self filters];
  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = [v7 home];

    if (v8)
    {
      v9 = [v7 home];
      v8 = [v9 _intents_readableTitleWithLocalizer:v5];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_titleWithLocalizer:(id)a3 fromBundleURL:(id)a4
{
  v5 = a3;
  v6 = [(INControlHomeIntent *)self filters];
  v7 = [v6 firstObject];

  v8 = [(INControlHomeIntent *)self userTask];
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    if ([v8 taskType] == 1)
    {
      if ([v9 attribute] == 1)
      {
        v11 = [v7 entityName];
        if (v11 && (v12 = v11, v13 = [v7 entityType], v12, v13 == 5))
        {
          v14 = MEMORY[0x1E696AEC0];
          v15 = @"Run %@";
        }

        else
        {
          v16 = [v9 value];
          v17 = [v16 BOOLValue];

          v14 = MEMORY[0x1E696AEC0];
          if (v17)
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

      v18 = INLocalizedStringWithLocalizer(v15, v15, v5);
      v19 = [v7 _intents_readableTitleWithLocalizer:v5];
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
  v3 = [(INControlHomeIntent *)self userTask];
  v4 = [(INControlHomeIntent *)self filters];
  v5 = 0;
  if ([v4 count] && v3)
  {
    v5 = [v3 taskType] == 1;
  }

  return v5;
}

@end