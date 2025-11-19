@interface INPersonResolutionResult
- (id)_intentSlotValueForObject:(id)a3 slotDescription:(id)a4;
- (id)_vocabularyValueForObject:(id)a3 slotDescription:(id)a4;
@end

@implementation INPersonResolutionResult

- (id)_vocabularyValueForObject:(id)a3 slotDescription:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 description];
  v8 = [MEMORY[0x1E695DF58] systemLocale];
  v9 = [v8 groupingSeparator];
  if ([v6 valueType] == 18 || objc_msgSend(v6, "valueType") == 10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v5 firstObject], v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_13;
      }

      v13 = [v5 displayName];
      goto LABEL_8;
    }

LABEL_5:
    v12 = [v5 valueForKey:@"displayName"];
    v13 = [v12 if_escapedComponentsJoinedByString:v9 forLocale:v8];

    v7 = v12;
LABEL_8:

    v7 = v13;
    goto LABEL_13;
  }

  if ([v6 valueType] == 11 && objc_msgSend(v6, "valueStyle") != 3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v5 firstObject];
      objc_opt_class();
      v15 = objc_opt_isKindOfClass();

      if (v15)
      {
        goto LABEL_5;
      }
    }
  }

LABEL_13:

  return v7;
}

- (id)_intentSlotValueForObject:(id)a3 slotDescription:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  if ([v6 valueType] == 18)
  {
    [(_INPBIntentSlotValue *)v7 setType:1000];
    if ([v6 valueStyle] == 3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(v5, "firstObject"), v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, (isKindOfClass & 1) != 0))
    {
      v10 = v5;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v11 = [(_INPBContactList *)v10 countByEnumeratingWithState:&v45 objects:v51 count:16];
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

            v15 = INIntentSlotValueTransformToDialingContact(*(*(&v45 + 1) + 8 * i));
            [(_INPBIntentSlotValue *)v7 addPayloadDialingContact:v15];
          }

          v12 = [(_INPBContactList *)v10 countByEnumeratingWithState:&v45 objects:v51 count:16];
        }

        while (v12);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_46;
      }

      v10 = INIntentSlotValueTransformToDialingContact(v5);
      [(_INPBIntentSlotValue *)v7 addPayloadDialingContact:v10];
    }

    goto LABEL_45;
  }

  if ([v6 valueType] == 10)
  {
    [(_INPBIntentSlotValue *)v7 setType:4];
    if ([v6 valueStyle] == 3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(v5, "firstObject"), v16 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v17 = objc_opt_isKindOfClass(), v16, (v17 & 1) != 0))
    {
      v10 = v5;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v18 = [(_INPBContactList *)v10 countByEnumeratingWithState:&v41 objects:v50 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v42;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v42 != v20)
            {
              objc_enumerationMutation(v10);
            }

            v22 = INIntentSlotValueTransformToContact(*(*(&v41 + 1) + 8 * j));
            v23 = [v22 values];
            v24 = [v23 firstObject];
            [(_INPBIntentSlotValue *)v7 addPayloadContactValue:v24];
          }

          v19 = [(_INPBContactList *)v10 countByEnumeratingWithState:&v41 objects:v50 count:16];
        }

        while (v19);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_46;
      }

      v10 = INIntentSlotValueTransformToContact(v5);
      v33 = [(_INPBContactList *)v10 values];
      v34 = [v33 firstObject];
      [(_INPBIntentSlotValue *)v7 addPayloadContactValue:v34];
    }

    goto LABEL_45;
  }

  if ([v6 valueType] == 11)
  {
    [(_INPBIntentSlotValue *)v7 setType:53];
    if ([v6 valueStyle] != 3)
    {
      v10 = objc_alloc_init(_INPBContactList);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([v5 firstObject], v25 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v26 = objc_opt_isKindOfClass(), v25, (v26))
      {
        v27 = v5;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v28 = [v27 countByEnumeratingWithState:&v37 objects:v49 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v38;
          do
          {
            for (k = 0; k != v29; ++k)
            {
              if (*v38 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = INIntentSlotValueTransformToContact(*(*(&v37 + 1) + 8 * k));
              [(_INPBContactList *)v10 addContact:v32];
            }

            v29 = [v27 countByEnumeratingWithState:&v37 objects:v49 count:16];
          }

          while (v29);
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_44:
          [(_INPBIntentSlotValue *)v7 addPayloadContactList:v10];
LABEL_45:

          goto LABEL_46;
        }

        v27 = INIntentSlotValueTransformToContact(v5);
        [(_INPBContactList *)v10 addContact:v27];
      }

      goto LABEL_44;
    }
  }

LABEL_46:

  v35 = *MEMORY[0x1E69E9840];

  return v7;
}

@end