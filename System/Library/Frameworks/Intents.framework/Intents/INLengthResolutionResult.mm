@interface INLengthResolutionResult
- (id)_intentSlotValueForObject:(id)a3 slotDescription:(id)a4;
- (id)_vocabularyValueForObject:(id)a3 slotDescription:(id)a4;
@end

@implementation INLengthResolutionResult

- (id)_vocabularyValueForObject:(id)a3 slotDescription:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 description];
  v8 = [MEMORY[0x1E695DF58] systemLocale];
  v9 = [v8 groupingSeparator];
  if ([v6 valueType] == 19 || objc_msgSend(v6, "valueType") == 20)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v5 unit], v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass))
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = MEMORY[0x1E696AD98];
      v14 = v5;
      [v14 doubleValue];
      v15 = [v13 numberWithDouble:?];
      v16 = [v15 description];
      v17 = [v14 unit];

      v18 = [v17 symbol];
      v19 = [v12 stringWithFormat:@"%@ %@", v16, v18];

      v7 = v19;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = v9;
        v36 = v7;
        v37 = v8;
        v38 = v6;
        v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v39 = v5;
        obj = v5;
        v21 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v42;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v42 != v23)
              {
                objc_enumerationMutation(obj);
              }

              v25 = *(*(&v41 + 1) + 8 * i);
              v26 = MEMORY[0x1E696AEC0];
              v27 = MEMORY[0x1E696AD98];
              [v25 doubleValue];
              v28 = [v27 numberWithDouble:?];
              v29 = [v28 description];
              v30 = [v25 unit];
              v31 = [v30 symbol];
              v32 = [v26 stringWithFormat:@"%@ %@", v29, v31];

              [v20 addObject:v32];
            }

            v22 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
          }

          while (v22);
        }

        v9 = v35;
        v8 = v37;
        v7 = [v20 if_escapedComponentsJoinedByString:v35 forLocale:v37];

        v6 = v38;
        v5 = v39;
      }
    }
  }

  v33 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_intentSlotValueForObject:(id)a3 slotDescription:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  if ([v6 valueType] == 19)
  {
    [(_INPBIntentSlotValue *)v7 setType:11];
    if ([v6 valueStyle] == 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v5;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v33;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v33 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = INIntentSlotValueTransformToDistanceValue(*(*(&v32 + 1) + 8 * i));
              [(_INPBIntentSlotValue *)v7 addPayloadDistanceValue:v13];
            }

            v10 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
          }

          while (v10);
        }

        goto LABEL_26;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v5 unit];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
LABEL_25:
        v8 = INIntentSlotValueTransformToDistanceValue(v5);
        [(_INPBIntentSlotValue *)v7 addPayloadDistanceValue:v8];
LABEL_26:
      }
    }
  }

  else if ([v6 valueType] == 20)
  {
    [(_INPBIntentSlotValue *)v7 setType:60];
    if ([v6 valueStyle] != 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v5;
        v15 = objc_alloc_init(_INPBDistanceList);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v16 = v14;
        v17 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v29;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v29 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = INIntentSlotValueTransformToDistance(*(*(&v28 + 1) + 8 * j));
              [(_INPBDistanceList *)v15 addDistance:v21, v28];
            }

            v18 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v18);
        }

        [(_INPBIntentSlotValue *)v7 addPayloadDistanceList:v15];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = [v5 unit];
          objc_opt_class();
          v27 = objc_opt_isKindOfClass();

          if (v27)
          {
            [(_INPBIntentSlotValue *)v7 setType:11];
            goto LABEL_25;
          }
        }
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];

  return v7;
}

@end