@interface INPaymentAmountResolutionResult
- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description;
- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description;
@end

@implementation INPaymentAmountResolutionResult

- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description
{
  objectCopy = object;
  descriptionCopy = description;
  v7 = [objectCopy description];
  if ([descriptionCopy valueType] == 62 && objc_msgSend(descriptionCopy, "valueStyle") != 3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = objectCopy;
      amount = [v8 amount];
      v10 = amount;
      if (amount)
      {
        v11 = MEMORY[0x1E696AEC0];
        v9Amount = [amount amount];
        stringValue = [v9Amount stringValue];
        currencyCode = [v10 currencyCode];
        v15 = [v11 stringWithFormat:@"%@ %@", stringValue, currencyCode];

        v7 = v9Amount;
      }

      else
      {
        v15 = 0;
      }

      amountType = [v8 amountType];
      if ((amountType - 1) > 5)
      {
        v17 = @"unknown";
      }

      else
      {
        v17 = off_1E7280F58[amountType - 1];
      }

      v18 = v17;
      if (([(__CFString *)v18 isEqualToString:@"unknown"]& 1) == 0)
      {
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@" (%@)", v18];
        v20 = [v15 stringByAppendingString:v19];

        v15 = v20;
      }

      v7 = v15;
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
  if ([descriptionCopy valueType] == 62)
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

            v15 = INIntentSlotValueTransformToPaymentAmountValue(*(*(&v18 + 1) + 8 * i));
            [(_INPBIntentSlotValue *)v7 addPayloadPaymentAmountValue:v15];
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

      v10 = INIntentSlotValueTransformToPaymentAmountValue(objectCopy);
      if (v10)
      {
        [(_INPBIntentSlotValue *)v7 addPayloadPaymentAmountValue:v10];
      }
    }
  }

LABEL_17:

  v16 = *MEMORY[0x1E69E9840];

  return v7;
}

@end