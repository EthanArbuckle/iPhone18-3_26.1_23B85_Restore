@interface INIntegerResolutionResult
+ (INIntegerResolutionResult)successWithResolvedValue:(NSInteger)resolvedValue;
- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description;
- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description;
@end

@implementation INIntegerResolutionResult

+ (INIntegerResolutionResult)successWithResolvedValue:(NSInteger)resolvedValue
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:resolvedValue];
  v5 = [self resolutionResultSuccessWithResolvedValue:v4];

  return v5;
}

- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description
{
  objectCopy = object;
  descriptionCopy = description;
  v7 = [objectCopy description];
  systemLocale = [MEMORY[0x1E695DF58] systemLocale];
  groupingSeparator = [systemLocale groupingSeparator];
  if ([descriptionCopy valueType] == 24 || objc_msgSend(descriptionCopy, "valueType") == 8 || objc_msgSend(descriptionCopy, "valueType") == 5 || objc_msgSend(descriptionCopy, "valueType") == 9 || objc_msgSend(descriptionCopy, "valueType") == 6)
  {
    if ([descriptionCopy valueStyle] != 3)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_13;
      }

      stringValue = [objectCopy stringValue];
      goto LABEL_12;
    }
  }

  else if ([descriptionCopy valueType] != 25)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject = [objectCopy firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v12 = [objectCopy valueForKey:@"stringValue"];
      stringValue = [v12 if_escapedComponentsJoinedByString:groupingSeparator forLocale:systemLocale];

      v7 = v12;
LABEL_12:

      v7 = stringValue;
    }
  }

LABEL_13:

  return v7;
}

- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description
{
  v56 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  descriptionCopy = description;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  if ([descriptionCopy valueType] == 24)
  {
    [(_INPBIntentSlotValue *)v7 setType:3];
    if ([descriptionCopy valueStyle] == 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        firstObject = [objectCopy firstObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v10 = objectCopy;
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
                values = [v15 values];
                firstObject2 = [values firstObject];
                [(_INPBIntentSlotValue *)v7 addPayloadIntegerValue:firstObject2];
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

    v10 = INIntentSlotValueTransformToInteger(objectCopy);
    values2 = [v10 values];
    firstObject3 = [values2 firstObject];
    [(_INPBIntentSlotValue *)v7 addPayloadIntegerValue:firstObject3];
LABEL_27:

LABEL_28:
    goto LABEL_29;
  }

  if ([descriptionCopy valueType] == 25)
  {
    [(_INPBIntentSlotValue *)v7 setType:52];
    if ([descriptionCopy valueStyle] != 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        firstObject4 = [objectCopy firstObject];
        objc_opt_class();
        v19 = objc_opt_isKindOfClass();

        if (v19)
        {
          v20 = objectCopy;
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

  else if ([descriptionCopy valueType] == 26)
  {
    [(_INPBIntentSlotValue *)v7 setType:8];
    if ([descriptionCopy valueStyle] == 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        firstObject5 = [objectCopy firstObject];
        objc_opt_class();
        v33 = objc_opt_isKindOfClass();

        if (v33)
        {
          v10 = objectCopy;
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
                values3 = [v38 values];
                firstObject6 = [values3 firstObject];
                [(_INPBIntentSlotValue *)v7 addPayloadLongValue:firstObject6];
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
      v10 = INIntentSlotValueTransformToLong(objectCopy);
      values2 = [v10 values];
      firstObject3 = [values2 firstObject];
      [(_INPBIntentSlotValue *)v7 addPayloadLongValue:firstObject3];
      goto LABEL_27;
    }
  }

  else if ([descriptionCopy valueType] == 8 || objc_msgSend(descriptionCopy, "valueType") == 5)
  {
    [(_INPBIntentSlotValue *)v7 setType:101];
    if ([descriptionCopy valueStyle] != 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[_INPBIntentSlotValue addPayloadPrimitiveInt:](v7, "addPayloadPrimitiveInt:", [objectCopy intValue]);
      }
    }
  }

  else if ([descriptionCopy valueType] == 9 || objc_msgSend(descriptionCopy, "valueType") == 6)
  {
    [(_INPBIntentSlotValue *)v7 setType:102];
    if ([descriptionCopy valueStyle] != 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[_INPBIntentSlotValue addPayloadPrimitiveLong:](v7, "addPayloadPrimitiveLong:", [objectCopy longLongValue]);
      }
    }
  }

LABEL_29:

  v30 = *MEMORY[0x1E69E9840];

  return v7;
}

@end