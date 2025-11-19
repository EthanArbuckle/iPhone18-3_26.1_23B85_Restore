@interface INMediaItemResolutionResult
+ (NSArray)successesWithResolvedMediaItems:(NSArray *)resolvedMediaItems;
- (id)_intentSlotValueForObject:(id)a3 slotDescription:(id)a4;
- (id)_vocabularyValueForObject:(id)a3 slotDescription:(id)a4;
@end

@implementation INMediaItemResolutionResult

+ (NSArray)successesWithResolvedMediaItems:(NSArray *)resolvedMediaItems
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = resolvedMediaItems;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [a1 resolutionResultSuccessWithResolvedValue:{*(*(&v14 + 1) + 8 * i), v14}];
        [v5 addObject:v11];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_vocabularyValueForObject:(id)a3 slotDescription:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 description];
  v8 = [MEMORY[0x1E695DF58] systemLocale];
  v9 = [v8 groupingSeparator];
  if ([v6 valueType] == 153)
  {
    if ([v6 valueStyle] == 3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(v5, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass & 1) != 0))
    {
      v12 = [v5 valueForKey:@"spokenPhrase"];
      v13 = [v12 if_escapedComponentsJoinedByString:v9 forLocale:v8];

      v7 = v12;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_9;
      }

      v13 = [v5 spokenPhrase];
    }

    v7 = v13;
  }

LABEL_9:

  return v7;
}

- (id)_intentSlotValueForObject:(id)a3 slotDescription:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  if ([v6 valueType] == 153)
  {
    [(_INPBIntentSlotValue *)v7 setType:1000];
    if ([v6 valueStyle] == 3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(v5, "firstObject"), v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, (isKindOfClass & 1) != 0))
    {
      v10 = v5;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = INIntentSlotValueTransformToMediaItemValue(*(*(&v18 + 1) + 8 * i));
            [(_INPBIntentSlotValue *)v7 addPayloadMediaItemValue:v15];
          }

          v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v12);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_17;
      }

      v10 = INIntentSlotValueTransformToMediaItemValue(v5);
      if (v10)
      {
        [(_INPBIntentSlotValue *)v7 addPayloadMediaItemValue:v10];
      }
    }
  }

LABEL_17:

  v16 = *MEMORY[0x1E69E9840];

  return v7;
}

@end