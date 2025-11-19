@interface INIntegerResolutionResult
+ (INIntegerResolutionResult)successWithResolvedValue:(NSInteger)resolvedValue;
- (id)_intentSlotValueForObject:(id)a3 slotDescription:(id)a4;
- (id)_vocabularyValueForObject:(id)a3 slotDescription:(id)a4;
@end

@implementation INIntegerResolutionResult

+ (INIntegerResolutionResult)successWithResolvedValue:(NSInteger)resolvedValue
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:resolvedValue];
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
  if ([v6 valueType] == 24 || objc_msgSend(v6, "valueType") == 8 || objc_msgSend(v6, "valueType") == 5 || objc_msgSend(v6, "valueType") == 9 || objc_msgSend(v6, "valueType") == 6)
  {
    if ([v6 valueStyle] != 3)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_13;
      }

      v13 = [v5 stringValue];
      goto LABEL_12;
    }
  }

  else if ([v6 valueType] != 25)
  {
    goto LABEL_13;
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
LABEL_12:

      v7 = v13;
    }
  }

LABEL_13:

  return v7;
}

- (id)_intentSlotValueForObject:(id)a3 slotDescription:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  if ([v6 valueType] == 24)
  {
    [(_INPBIntentSlotValue *)v7 setType:3];
    if ([v6 valueStyle] == 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v5 firstObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v10 = v5;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v11 = [v10 countByEnumeratingWithState:&v49 objects:v55 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v50;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v50 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = INIntentSlotValueTransformToInteger(*(*(&v49 + 1) + 8 * i));
                v16 = [v15 values];
                v17 = [v16 firstObject];
                [(_INPBIntentSlotValue *)v7 addPayloadIntegerValue:v17];
              }

              v12 = [v10 countByEnumeratingWithState:&v49 objects:v55 count:16];
            }

            while (v12);
          }

          goto LABEL_28;
        }
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_29;
    }

    v10 = INIntentSlotValueTransformToInteger(v5);
    v28 = [v10 values];
    v29 = [v28 firstObject];
    [(_INPBIntentSlotValue *)v7 addPayloadIntegerValue:v29];
LABEL_27:

LABEL_28:
    goto LABEL_29;
  }

  if ([v6 valueType] == 25)
  {
    [(_INPBIntentSlotValue *)v7 setType:52];
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
          v21 = objc_alloc_init(_INPBIntegerList);
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v22 = v20;
          v23 = [v22 countByEnumeratingWithState:&v45 objects:v54 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v46;
            do
            {
              for (j = 0; j != v24; ++j)
              {
                if (*v46 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = INIntentSlotValueTransformToInteger(*(*(&v45 + 1) + 8 * j));
                [(_INPBIntegerList *)v21 addDataString:v27];
              }

              v24 = [v22 countByEnumeratingWithState:&v45 objects:v54 count:16];
            }

            while (v24);
          }

          [(_INPBIntentSlotValue *)v7 addPayloadIntegerList:v21];
        }
      }
    }
  }

  else if ([v6 valueType] == 26)
  {
    [(_INPBIntentSlotValue *)v7 setType:8];
    if ([v6 valueStyle] == 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = [v5 firstObject];
        objc_opt_class();
        v33 = objc_opt_isKindOfClass();

        if (v33)
        {
          v10 = v5;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v34 = [v10 countByEnumeratingWithState:&v41 objects:v53 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v42;
            do
            {
              for (k = 0; k != v35; ++k)
              {
                if (*v42 != v36)
                {
                  objc_enumerationMutation(v10);
                }

                v38 = INIntentSlotValueTransformToLong(*(*(&v41 + 1) + 8 * k));
                v39 = [v38 values];
                v40 = [v39 firstObject];
                [(_INPBIntentSlotValue *)v7 addPayloadLongValue:v40];
              }

              v35 = [v10 countByEnumeratingWithState:&v41 objects:v53 count:16];
            }

            while (v35);
          }

          goto LABEL_28;
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = INIntentSlotValueTransformToLong(v5);
      v28 = [v10 values];
      v29 = [v28 firstObject];
      [(_INPBIntentSlotValue *)v7 addPayloadLongValue:v29];
      goto LABEL_27;
    }
  }

  else if ([v6 valueType] == 8 || objc_msgSend(v6, "valueType") == 5)
  {
    [(_INPBIntentSlotValue *)v7 setType:101];
    if ([v6 valueStyle] != 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[_INPBIntentSlotValue addPayloadPrimitiveInt:](v7, "addPayloadPrimitiveInt:", [v5 intValue]);
      }
    }
  }

  else if ([v6 valueType] == 9 || objc_msgSend(v6, "valueType") == 6)
  {
    [(_INPBIntentSlotValue *)v7 setType:102];
    if ([v6 valueStyle] != 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[_INPBIntentSlotValue addPayloadPrimitiveLong:](v7, "addPayloadPrimitiveLong:", [v5 longLongValue]);
      }
    }
  }

LABEL_29:

  v30 = *MEMORY[0x1E69E9840];

  return v7;
}

@end