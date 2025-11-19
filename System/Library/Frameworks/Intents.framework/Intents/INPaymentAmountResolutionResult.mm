@interface INPaymentAmountResolutionResult
- (id)_intentSlotValueForObject:(id)a3 slotDescription:(id)a4;
- (id)_vocabularyValueForObject:(id)a3 slotDescription:(id)a4;
@end

@implementation INPaymentAmountResolutionResult

- (id)_vocabularyValueForObject:(id)a3 slotDescription:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 description];
  if ([v6 valueType] == 62 && objc_msgSend(v6, "valueStyle") != 3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v5;
      v9 = [v8 amount];
      v10 = v9;
      if (v9)
      {
        v11 = MEMORY[0x1E696AEC0];
        v12 = [v9 amount];
        v13 = [v12 stringValue];
        v14 = [v10 currencyCode];
        v15 = [v11 stringWithFormat:@"%@ %@", v13, v14];

        v7 = v12;
      }

      else
      {
        v15 = 0;
      }

      v16 = [v8 amountType];
      if ((v16 - 1) > 5)
      {
        v17 = @"unknown";
      }

      else
      {
        v17 = off_1E7280F58[v16 - 1];
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

- (id)_intentSlotValueForObject:(id)a3 slotDescription:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  if ([v6 valueType] == 62)
  {
    [(_INPBIntentSlotValue *)v7 setType:1000];
    if ([v6 valueStyle] == 3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(v5, "firstObject"), v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, (isKindOfClass & 1) != 0))
    {
      v10 = v5;
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

      v10 = INIntentSlotValueTransformToPaymentAmountValue(v5);
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