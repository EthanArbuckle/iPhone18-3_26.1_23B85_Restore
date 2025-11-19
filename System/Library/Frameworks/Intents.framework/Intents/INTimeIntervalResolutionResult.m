@interface INTimeIntervalResolutionResult
+ (INTimeIntervalResolutionResult)confirmationRequiredWithTimeIntervalToConfirm:(NSTimeInterval)timeIntervalToConfirm;
+ (INTimeIntervalResolutionResult)successWithResolvedTimeInterval:(NSTimeInterval)resolvedTimeInterval;
- (id)_intentSlotValueForObject:(id)a3 slotDescription:(id)a4;
- (id)_vocabularyValueForObject:(id)a3 slotDescription:(id)a4;
@end

@implementation INTimeIntervalResolutionResult

+ (INTimeIntervalResolutionResult)confirmationRequiredWithTimeIntervalToConfirm:(NSTimeInterval)timeIntervalToConfirm
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:timeIntervalToConfirm];
  v5 = [a1 resolutionResultConfirmationRequiredWithItemToConfirm:v4];

  return v5;
}

+ (INTimeIntervalResolutionResult)successWithResolvedTimeInterval:(NSTimeInterval)resolvedTimeInterval
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:resolvedTimeInterval];
  v5 = [a1 resolutionResultSuccessWithResolvedValue:v4];

  return v5;
}

- (id)_vocabularyValueForObject:(id)a3 slotDescription:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 description];
  v8 = [MEMORY[0x1E695DF58] systemLocale];
  v9 = [v8 groupingSeparator];
  if ([v6 valueType] == 21 || objc_msgSend(v6, "valueType") == 4 || objc_msgSend(v6, "valueType") == 3)
  {
    if ([v6 valueStyle] != 3)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_11;
      }

      v13 = [v5 stringValue];
      goto LABEL_10;
    }
  }

  else if ([v6 valueType] != 22)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v5 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v12 = [v5 valueForKey:@"stringValue"];
      v13 = [v12 if_escapedComponentsJoinedByString:v9 forLocale:v8];

      v7 = v12;
LABEL_10:

      v7 = v13;
    }
  }

LABEL_11:

  return v7;
}

- (id)_intentSlotValueForObject:(id)a3 slotDescription:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  if ([v6 valueType] == 21)
  {
    [(_INPBIntentSlotValue *)v7 setType:2];
    if ([v6 valueStyle] == 3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(v5, "firstObject"), v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, (isKindOfClass & 1) != 0))
    {
      v10 = v5;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v37;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v37 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = INIntentSlotValueTransformToDouble(*(*(&v36 + 1) + 8 * i));
            v16 = [v15 values];
            v17 = [v16 firstObject];
            [(_INPBIntentSlotValue *)v7 addPayloadDoubleValue:v17];
          }

          v12 = [v10 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v12);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_33;
      }

      v10 = INIntentSlotValueTransformToDouble(v5);
      v28 = [v10 values];
      v29 = [v28 firstObject];
      [(_INPBIntentSlotValue *)v7 addPayloadDoubleValue:v29];
    }
  }

  else if ([v6 valueType] == 22)
  {
    [(_INPBIntentSlotValue *)v7 setType:51];
    if ([v6 valueStyle] != 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [v5 firstObject];
        objc_opt_class();
        v19 = objc_opt_isKindOfClass();

        if (v19)
        {
          v20 = v5;
          v21 = objc_alloc_init(_INPBDoubleList);
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v22 = v20;
          v23 = [v22 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v33;
            do
            {
              for (j = 0; j != v24; ++j)
              {
                if (*v33 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = INIntentSlotValueTransformToDouble(*(*(&v32 + 1) + 8 * j));
                [(_INPBDoubleList *)v21 addDataString:v27, v32];
              }

              v24 = [v22 countByEnumeratingWithState:&v32 objects:v40 count:16];
            }

            while (v24);
          }

          [(_INPBIntentSlotValue *)v7 addPayloadDoubleList:v21];
        }
      }
    }
  }

  else if ([v6 valueType] == 4 || objc_msgSend(v6, "valueType") == 3)
  {
    [(_INPBIntentSlotValue *)v7 setType:103];
    if ([v6 valueStyle] != 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v5 doubleValue];
        [(_INPBIntentSlotValue *)v7 addPayloadPrimitiveDouble:?];
      }
    }
  }

LABEL_33:

  v30 = *MEMORY[0x1E69E9840];

  return v7;
}

@end