@interface INDateComponentsRangeResolutionResult
- (id)_intentSlotValueForObject:(id)a3 slotDescription:(id)a4;
- (id)_vocabularyValueForObject:(id)a3 slotDescription:(id)a4;
@end

@implementation INDateComponentsRangeResolutionResult

- (id)_vocabularyValueForObject:(id)a3 slotDescription:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 description];
  if ([v6 valueType] == 16)
  {
    if ([v6 valueStyle] != 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = MEMORY[0x1E696AEC0];
        v9 = v5;
        v10 = [v9 startDate];
        v11 = [v9 endDate];

        v12 = [v8 stringWithFormat:@"%@ - %@", v10, v11];

        v7 = v12;
      }
    }
  }

  else if ([v6 valueType] == 17)
  {
    [v6 valueStyle];
  }

  return v7;
}

- (id)_intentSlotValueForObject:(id)a3 slotDescription:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  if ([v6 valueType] == 16)
  {
    [(_INPBIntentSlotValue *)v7 setType:5];
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
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v11 = [(_INPBDateTimeRangeList *)v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v34;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v34 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = INIntentSlotValueTransformToDateTimeRange(*(*(&v33 + 1) + 8 * i));
                v16 = [v15 values];
                v17 = [v16 firstObject];
                [(_INPBIntentSlotValue *)v7 addPayloadDateTimeRangeValue:v17];
              }

              v12 = [(_INPBDateTimeRangeList *)v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
            }

            while (v12);
          }

          goto LABEL_29;
        }
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_30;
    }

    v10 = INIntentSlotValueTransformToDateTimeRange(v5);
    v20 = [(_INPBDateTimeRangeList *)v10 values];
    v26 = [v20 firstObject];
    [(_INPBIntentSlotValue *)v7 addPayloadDateTimeRangeValue:v26];

LABEL_28:
LABEL_29:

    goto LABEL_30;
  }

  if ([v6 valueType] == 17)
  {
    [(_INPBIntentSlotValue *)v7 setType:54];
    if ([v6 valueStyle] != 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = [v5 firstObject];
          objc_opt_class();
          v19 = objc_opt_isKindOfClass();

          if (v19)
          {
            v10 = objc_alloc_init(_INPBDateTimeRangeList);
            v20 = v5;
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v21 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v30;
              do
              {
                for (j = 0; j != v22; ++j)
                {
                  if (*v30 != v23)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v25 = INIntentSlotValueTransformToDateTimeRange(*(*(&v29 + 1) + 8 * j));
                  [(_INPBDateTimeRangeList *)v10 addDateRange:v25];
                }

                v22 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
              }

              while (v22);
            }

            [(_INPBIntentSlotValue *)v7 addPayloadDateTimeRangeList:v10];
            goto LABEL_28;
          }
        }
      }
    }
  }

LABEL_30:

  v27 = *MEMORY[0x1E69E9840];

  return v7;
}

@end