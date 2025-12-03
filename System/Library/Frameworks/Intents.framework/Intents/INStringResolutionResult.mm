@interface INStringResolutionResult
- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description;
- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description;
@end

@implementation INStringResolutionResult

- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description
{
  objectCopy = object;
  descriptionCopy = description;
  v7 = [objectCopy description];
  systemLocale = [MEMORY[0x1E695DF58] systemLocale];
  groupingSeparator = [systemLocale groupingSeparator];
  if ([descriptionCopy valueType] == 7 || objc_msgSend(descriptionCopy, "valueType") == 30)
  {
    if ([descriptionCopy valueStyle] != 3)
    {
      goto LABEL_9;
    }
  }

  else if ([descriptionCopy valueType] != 31 || objc_msgSend(descriptionCopy, "valueStyle") == 3)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject = [objectCopy firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v12 = [objectCopy if_escapedComponentsJoinedByString:groupingSeparator forLocale:systemLocale];

      v7 = v12;
    }
  }

LABEL_9:

  return v7;
}

- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description
{
  v52 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  descriptionCopy = description;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  if ([descriptionCopy valueType] == 30)
  {
    [(_INPBIntentSlotValue *)v7 setType:1];
    if ([descriptionCopy valueStyle] == 3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(objectCopy, "firstObject"), v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, (isKindOfClass & 1) != 0))
    {
      v10 = objectCopy;
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
            values = [v15 values];
            firstObject = [values firstObject];
            [(_INPBIntentSlotValue *)v7 addPayloadStringValue:firstObject];
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

      v10 = INIntentSlotValueTransformToString(objectCopy);
      values2 = [v10 values];
      firstObject2 = [values2 firstObject];
      [(_INPBIntentSlotValue *)v7 addPayloadStringValue:firstObject2];
    }

    goto LABEL_27;
  }

  if ([descriptionCopy valueType] == 31)
  {
    [(_INPBIntentSlotValue *)v7 setType:50];
    if ([descriptionCopy valueStyle] == 3)
    {
      goto LABEL_44;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      firstObject3 = [objectCopy firstObject];
      objc_opt_class();
      v19 = objc_opt_isKindOfClass();

      if (v19)
      {
        v20 = objectCopy;
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
    v10 = INIntentSlotValueTransformToStringValue(objectCopy);
    [(_INPBIntentSlotValue *)v7 addPayloadStringValue:v10];
LABEL_27:

    goto LABEL_44;
  }

  if ([descriptionCopy valueType] != 7)
  {
    goto LABEL_44;
  }

  [(_INPBIntentSlotValue *)v7 setType:104];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_INPBIntentSlotValue *)v7 addPayloadPrimitiveString:objectCopy];
    goto LABEL_44;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v10 = objectCopy;
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