@interface INPaymentAccountResolutionResult
- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description;
- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description;
@end

@implementation INPaymentAccountResolutionResult

- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description
{
  objectCopy = object;
  descriptionCopy = description;
  v7 = [objectCopy description];
  if ([descriptionCopy valueType] == 61 && objc_msgSend(descriptionCopy, "valueStyle") != 3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = objectCopy;
      nickname = [v8 nickname];
      spokenPhrase = [nickname spokenPhrase];
      v11 = spokenPhrase;
      if (spokenPhrase)
      {
        spokenPhrase2 = spokenPhrase;
      }

      else
      {
        organizationName = [v8 organizationName];
        spokenPhrase2 = [organizationName spokenPhrase];

        v7 = organizationName;
      }

      v7 = spokenPhrase2;
    }
  }

  return v7;
}

- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description
{
  v23 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  descriptionCopy = description;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  if ([descriptionCopy valueType] == 61)
  {
    [(_INPBIntentSlotValue *)v7 setType:1000];
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

            v15 = INIntentSlotValueTransformToFinancialAccountValue(*(*(&v18 + 1) + 8 * i));
            [(_INPBIntentSlotValue *)v7 addPayloadFinancialAccountValue:v15];
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

      v10 = INIntentSlotValueTransformToFinancialAccountValue(objectCopy);
      if (v10)
      {
        [(_INPBIntentSlotValue *)v7 addPayloadFinancialAccountValue:v10];
      }
    }
  }

LABEL_17:

  v16 = *MEMORY[0x1E69E9840];

  return v7;
}

@end