@interface INDateComponentsRangeResolutionResult
- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description;
- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description;
@end

@implementation INDateComponentsRangeResolutionResult

- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description
{
  objectCopy = object;
  descriptionCopy = description;
  v7 = [objectCopy description];
  if ([descriptionCopy valueType] == 16)
  {
    if ([descriptionCopy valueStyle] != 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = MEMORY[0x1E696AEC0];
        v9 = objectCopy;
        startDate = [v9 startDate];
        endDate = [v9 endDate];

        v12 = [v8 stringWithFormat:@"%@ - %@", startDate, endDate];

        v7 = v12;
      }
    }
  }

  else if ([descriptionCopy valueType] == 17)
  {
    [descriptionCopy valueStyle];
  }

  return v7;
}

- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description
{
  v39 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  descriptionCopy = description;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  if ([descriptionCopy valueType] == 16)
  {
    [(_INPBIntentSlotValue *)v7 setType:5];
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
                values = [v15 values];
                firstObject2 = [values firstObject];
                [(_INPBIntentSlotValue *)v7 addPayloadDateTimeRangeValue:firstObject2];
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

    v10 = INIntentSlotValueTransformToDateTimeRange(objectCopy);
    values2 = [(_INPBDateTimeRangeList *)v10 values];
    firstObject3 = [values2 firstObject];
    [(_INPBIntentSlotValue *)v7 addPayloadDateTimeRangeValue:firstObject3];

LABEL_28:
LABEL_29:

    goto LABEL_30;
  }

  if ([descriptionCopy valueType] == 17)
  {
    [(_INPBIntentSlotValue *)v7 setType:54];
    if ([descriptionCopy valueStyle] != 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          firstObject4 = [objectCopy firstObject];
          objc_opt_class();
          v19 = objc_opt_isKindOfClass();

          if (v19)
          {
            v10 = objc_alloc_init(_INPBDateTimeRangeList);
            values2 = objectCopy;
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v21 = [values2 countByEnumeratingWithState:&v29 objects:v37 count:16];
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
                    objc_enumerationMutation(values2);
                  }

                  v25 = INIntentSlotValueTransformToDateTimeRange(*(*(&v29 + 1) + 8 * j));
                  [(_INPBDateTimeRangeList *)v10 addDateRange:v25];
                }

                v22 = [values2 countByEnumeratingWithState:&v29 objects:v37 count:16];
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