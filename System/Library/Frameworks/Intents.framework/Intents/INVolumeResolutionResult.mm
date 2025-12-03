@interface INVolumeResolutionResult
- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description;
- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description;
@end

@implementation INVolumeResolutionResult

- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description
{
  v46 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  descriptionCopy = description;
  v7 = [objectCopy description];
  systemLocale = [MEMORY[0x1E695DF58] systemLocale];
  groupingSeparator = [systemLocale groupingSeparator];
  if ([descriptionCopy valueType] == 39)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([objectCopy unit], v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass))
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = MEMORY[0x1E696AD98];
      v14 = objectCopy;
      [v14 doubleValue];
      v15 = [v13 numberWithDouble:?];
      v16 = [v15 description];
      unit = [v14 unit];

      symbol = [unit symbol];
      v19 = [v12 stringWithFormat:@"%@ %@", v16, symbol];

      v7 = v19;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = groupingSeparator;
        v36 = v7;
        v37 = systemLocale;
        v38 = descriptionCopy;
        v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v39 = objectCopy;
        obj = objectCopy;
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
              unit2 = [v25 unit];
              symbol2 = [unit2 symbol];
              v32 = [v26 stringWithFormat:@"%@ %@", v29, symbol2];

              [v20 addObject:v32];
            }

            v22 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
          }

          while (v22);
        }

        groupingSeparator = v35;
        systemLocale = v37;
        v7 = [v20 if_escapedComponentsJoinedByString:v35 forLocale:v37];

        descriptionCopy = v38;
        objectCopy = v39;
      }
    }
  }

  v33 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description
{
  v23 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  descriptionCopy = description;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  if ([descriptionCopy valueType] == 39)
  {
    [(_INPBIntentSlotValue *)v7 setType:15];
    if ([descriptionCopy valueStyle] == 3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(objectCopy, "firstObject"), v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, (isKindOfClass & 1) != 0))
    {
      v10 = objectCopy;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = INIntentSlotValueTransformToVolumeValue(*(*(&v18 + 1) + 8 * i));
            [(_INPBIntentSlotValue *)v7 addPayloadVolumeValue:v15];
          }

          v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v12);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_17;
      }

      v10 = INIntentSlotValueTransformToVolumeValue(objectCopy);
      if (v10)
      {
        [(_INPBIntentSlotValue *)v7 addPayloadVolumeValue:v10];
      }
    }
  }

LABEL_17:

  v16 = *MEMORY[0x1E69E9840];

  return v7;
}

@end