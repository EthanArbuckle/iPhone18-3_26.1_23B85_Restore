@interface INStringResolutionResult
- (id)_intentSlotValueForObject:(id)a3 slotDescription:(id)a4;
- (id)_vocabularyValueForObject:(id)a3 slotDescription:(id)a4;
@end

@implementation INStringResolutionResult

- (id)_vocabularyValueForObject:(id)a3 slotDescription:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 description];
  v8 = [MEMORY[0x1E695DF58] systemLocale];
  v9 = [v8 groupingSeparator];
  if ([v6 valueType] == 7 || objc_msgSend(v6, "valueType") == 30)
  {
    if ([v6 valueStyle] != 3)
    {
      goto LABEL_9;
    }
  }

  else if ([v6 valueType] != 31 || objc_msgSend(v6, "valueStyle") == 3)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v5 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v12 = [v5 if_escapedComponentsJoinedByString:v9 forLocale:v8];

      v7 = v12;
    }
  }

LABEL_9:

  return v7;
}

- (id)_intentSlotValueForObject:(id)a3 slotDescription:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  if ([v6 valueType] == 30)
  {
    [(_INPBIntentSlotValue *)v7 setType:1];
    if ([v6 valueStyle] == 3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(v5, "firstObject"), v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, (isKindOfClass & 1) != 0))
    {
      v10 = v5;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v46;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v46 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = INIntentSlotValueTransformToString(*(*(&v45 + 1) + 8 * i));
            v16 = [v15 values];
            v17 = [v16 firstObject];
            [(_INPBIntentSlotValue *)v7 addPayloadStringValue:v17];
          }

          v12 = [v10 countByEnumeratingWithState:&v45 objects:v51 count:16];
        }

        while (v12);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_44;
      }

      v10 = INIntentSlotValueTransformToString(v5);
      v28 = [v10 values];
      v29 = [v28 firstObject];
      [(_INPBIntentSlotValue *)v7 addPayloadStringValue:v29];
    }

    goto LABEL_27;
  }

  if ([v6 valueType] == 31)
  {
    [(_INPBIntentSlotValue *)v7 setType:50];
    if ([v6 valueStyle] == 3)
    {
      goto LABEL_44;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v5 firstObject];
      objc_opt_class();
      v19 = objc_opt_isKindOfClass();

      if (v19)
      {
        v20 = v5;
        v21 = objc_alloc_init(_INPBStringList);
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v22 = v20;
        v23 = [v22 countByEnumeratingWithState:&v41 objects:v50 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v42;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v42 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = INIntentSlotValueTransformToString(*(*(&v41 + 1) + 8 * j));
              [(_INPBStringList *)v21 addDataString:v27];
            }

            v24 = [v22 countByEnumeratingWithState:&v41 objects:v50 count:16];
          }

          while (v24);
        }

        [(_INPBIntentSlotValue *)v7 addPayloadStringList:v21];
        goto LABEL_44;
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_44;
    }

    [(_INPBIntentSlotValue *)v7 setType:1];
    v10 = INIntentSlotValueTransformToStringValue(v5);
    [(_INPBIntentSlotValue *)v7 addPayloadStringValue:v10];
LABEL_27:

    goto LABEL_44;
  }

  if ([v6 valueType] != 7)
  {
    goto LABEL_44;
  }

  [(_INPBIntentSlotValue *)v7 setType:104];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_INPBIntentSlotValue *)v7 addPayloadPrimitiveString:v5];
    goto LABEL_44;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v10 = v5;
    v30 = [v10 countByEnumeratingWithState:&v37 objects:v49 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v38;
      do
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v38 != v32)
          {
            objc_enumerationMutation(v10);
          }

          v34 = *(*(&v37 + 1) + 8 * k);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(_INPBIntentSlotValue *)v7 addPayloadPrimitiveString:v34, v37];
          }
        }

        v31 = [v10 countByEnumeratingWithState:&v37 objects:v49 count:16];
      }

      while (v31);
    }

    goto LABEL_27;
  }

LABEL_44:

  v35 = *MEMORY[0x1E69E9840];

  return v7;
}

@end