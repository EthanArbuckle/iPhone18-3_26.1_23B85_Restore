@interface INPlacemarkResolutionResult
- (id)_intentSlotValueForObject:(id)a3 slotDescription:(id)a4;
- (id)_vocabularyValueForObject:(id)a3 slotDescription:(id)a4;
@end

@implementation INPlacemarkResolutionResult

- (id)_vocabularyValueForObject:(id)a3 slotDescription:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 description];
  v8 = [MEMORY[0x1E695DF58] systemLocale];
  v9 = [v8 groupingSeparator];
  if ([v6 valueType] == 27)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v5 firstObject], v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_13;
      }

      v13 = [v5 name];
      goto LABEL_12;
    }

LABEL_4:
    v12 = [v5 valueForKey:@"name"];
    v13 = [v12 if_escapedComponentsJoinedByString:v9 forLocale:v8];

    v7 = v12;
LABEL_12:

    v7 = v13;
    goto LABEL_13;
  }

  if ([v6 valueType] == 28 && objc_msgSend(v6, "valueStyle") != 3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v5 firstObject];
      objc_opt_class();
      v15 = objc_opt_isKindOfClass();

      if (v15)
      {
        goto LABEL_4;
      }
    }
  }

LABEL_13:

  return v7;
}

- (id)_intentSlotValueForObject:(id)a3 slotDescription:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  if ([v6 valueType] == 27)
  {
    [(_INPBIntentSlotValue *)v7 setType:6];
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

            v15 = INIntentSlotValueTransformToLocation(*(*(&v36 + 1) + 8 * i));
            v16 = [v15 values];
            v17 = [v16 firstObject];
            [(_INPBIntentSlotValue *)v7 addPayloadLocation:v17];
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
        goto LABEL_28;
      }

      v10 = INIntentSlotValueTransformToLocation(v5);
      v28 = [v10 values];
      v29 = [v28 firstObject];
      [(_INPBIntentSlotValue *)v7 addPayloadLocation:v29];
    }
  }

  else if ([v6 valueType] == 28)
  {
    [(_INPBIntentSlotValue *)v7 setType:55];
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
          v21 = objc_alloc_init(_INPBLocationList);
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

                v27 = INIntentSlotValueTransformToLocation(*(*(&v32 + 1) + 8 * j));
                [(_INPBLocationList *)v21 addLocation:v27, v32];
              }

              v24 = [v22 countByEnumeratingWithState:&v32 objects:v40 count:16];
            }

            while (v24);
          }

          [(_INPBIntentSlotValue *)v7 addPayloadLocationList:v21];
        }
      }
    }
  }

LABEL_28:

  v30 = *MEMORY[0x1E69E9840];

  return v7;
}

@end