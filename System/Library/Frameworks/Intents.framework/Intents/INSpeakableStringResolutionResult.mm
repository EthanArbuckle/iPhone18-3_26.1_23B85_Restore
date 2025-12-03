@interface INSpeakableStringResolutionResult
- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description;
- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description;
@end

@implementation INSpeakableStringResolutionResult

- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description
{
  objectCopy = object;
  descriptionCopy = description;
  v7 = [objectCopy description];
  systemLocale = [MEMORY[0x1E695DF58] systemLocale];
  groupingSeparator = [systemLocale groupingSeparator];
  if ([descriptionCopy valueType] == 12)
  {
    if ([descriptionCopy valueStyle] != 3)
    {
      goto LABEL_9;
    }
  }

  else if ([descriptionCopy valueType] != 11 || objc_msgSend(descriptionCopy, "valueStyle") == 3)
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
      v12 = [objectCopy valueForKey:@"description"];
      v13 = [v12 if_escapedComponentsJoinedByString:groupingSeparator forLocale:systemLocale];

      v7 = v13;
    }
  }

LABEL_9:

  return v7;
}

- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description
{
  v36 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  descriptionCopy = description;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  if ([descriptionCopy valueType] != 12)
  {
    if ([descriptionCopy valueType] != 13)
    {
      goto LABEL_29;
    }

    [(_INPBIntentSlotValue *)v7 setType:56];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = objc_alloc_init(_INPBDataStringList);
      v9 = INIntentSlotValueTransformToDataString(objectCopy);
      [(_INPBDataStringList *)v8 addDataString:v9];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_29;
      }

      firstObject = [objectCopy firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_29;
      }

      v8 = objc_alloc_init(_INPBDataStringList);
      v9 = objectCopy;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v19 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v27;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v27 != v21)
            {
              objc_enumerationMutation(v9);
            }

            v23 = INIntentSlotValueTransformToDataString(*(*(&v26 + 1) + 8 * i));
            [(_INPBDataStringList *)v8 addDataString:v23];
          }

          v20 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v20);
      }
    }

    [(_INPBIntentSlotValue *)v7 addPayloadDataStringList:v8];

    goto LABEL_8;
  }

  [(_INPBIntentSlotValue *)v7 setType:7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = INIntentSlotValueTransformToDataString(objectCopy);
    [(_INPBIntentSlotValue *)v7 addPayloadDataString:v8];
LABEL_8:

    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject2 = [objectCopy firstObject];
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();

    if (v11)
    {
      v8 = objectCopy;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v12 = [(_INPBDataStringList *)v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v31;
        do
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v31 != v14)
            {
              objc_enumerationMutation(v8);
            }

            v16 = INIntentSlotValueTransformToDataString(*(*(&v30 + 1) + 8 * j));
            [(_INPBIntentSlotValue *)v7 addPayloadDataString:v16];
          }

          v13 = [(_INPBDataStringList *)v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v13);
      }

      goto LABEL_8;
    }
  }

LABEL_29:

  v24 = *MEMORY[0x1E69E9840];

  return v7;
}

@end