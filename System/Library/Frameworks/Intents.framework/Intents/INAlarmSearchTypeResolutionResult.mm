@interface INAlarmSearchTypeResolutionResult
+ (id)confirmationRequiredWithAlarmSearchTypeToConfirm:(int64_t)a3;
+ (id)successWithResolvedAlarmSearchType:(int64_t)a3;
- (id)_intentSlotValueForObject:(id)a3 slotDescription:(id)a4;
- (id)_vocabularyValueForObject:(id)a3 slotDescription:(id)a4;
- (void)transformResolutionResultForIntent:(id)a3 intentSlotDescription:(id)a4 withOptionsProvider:(id)a5 completion:(id)a6;
@end

@implementation INAlarmSearchTypeResolutionResult

+ (id)confirmationRequiredWithAlarmSearchTypeToConfirm:(int64_t)a3
{
  if (!a3)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Confirmation of INAlarmSearchTypeUnknown is not supported." userInfo:0];
    objc_exception_throw(v7);
  }

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v5 = [a1 resolutionResultConfirmationRequiredWithItemToConfirm:v4];

  return v5;
}

+ (id)successWithResolvedAlarmSearchType:(int64_t)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    v5 = [a1 resolutionResultSuccessWithResolvedValue:v4];
  }

  else
  {
    NSLog(@"Success resolution with INAlarmSearchTypeUnknown will be reformed to notRequired.", a2);
    v5 = [a1 notRequired];
  }

  return v5;
}

- (void)transformResolutionResultForIntent:(id)a3 intentSlotDescription:(id)a4 withOptionsProvider:(id)a5 completion:(id)a6
{
  v50 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(INIntentResolutionResult *)self resolutionResultCode];
  v13 = [v9 _metadata];
  v14 = [v10 facadePropertyName];
  v15 = [v13 forceNeedsValueForParameters];
  v16 = [v15 containsObject:v14];

  if (v16)
  {
    v17 = [v9 valueForKey:v14];
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    v20 = [v19 integerValue];
    if (!v20 && v12 != 2 && v12 != 3)
    {
      v12 = 4;
      [(INIntentResolutionResult *)self setResolutionResultCode:4];
    }

    v21 = [v13 forceNeedsValueForParameters];
    v22 = [v21 if_arrayByRemovingObject:v14];
    [v13 setForceNeedsValueForParameters:v22];
  }

  if ((v12 == 4 || v12 == 1) && [v9 _executionContext] != 1)
  {
    v23 = [v9 _codableDescription];
    v24 = [v10 facadePropertyName];
    v25 = [v23 attributeByName:v24];

    if (v25)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    v28 = [v27 codableEnum];
    if (v28)
    {
      v41 = v27;
      v42 = v14;
      v43 = self;
      v44 = v10;
      v29 = objc_alloc(MEMORY[0x1E695DF70]);
      v30 = [v28 values];
      v31 = [v29 initWithCapacity:{objc_msgSend(v30, "count")}];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v40 = v28;
      v32 = [v28 values];
      v33 = [v32 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v46;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v46 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v45 + 1) + 8 * i);
            if ([v37 index])
            {
              v38 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v37, "index")}];
              [v31 addObject:v38];
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v45 objects:v49 count:16];
        }

        while (v34);
      }

      if (v12 == 4)
      {
        [(INIntentResolutionResult *)v43 setResolutionResultCode:2];
      }

      [(INIntentResolutionResult *)v43 setDisambiguationItems:v31];
      v11[2](v11, v43);

      v10 = v44;
      v27 = v41;
      v14 = v42;
      v28 = v40;
    }

    else
    {
      v11[2](v11, self);
    }
  }

  else
  {
    v11[2](v11, self);
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (id)_vocabularyValueForObject:(id)a3 slotDescription:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 description];
  v8 = [v6 valueType];

  if (v8 == 188)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v5 integerValue];
      if ((v9 - 1) > 4)
      {
        v10 = @"unknown";
      }

      else
      {
        v10 = off_1E72883C8[v9 - 1];
      }

      v11 = v10;

      v7 = v11;
    }
  }

  return v7;
}

- (id)_intentSlotValueForObject:(id)a3 slotDescription:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  if ([v6 valueType] == 188)
  {
    [(_INPBIntentSlotValue *)v7 setType:1000];
    if ([v6 valueStyle] != 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v5 integerValue] - 1;
        if (v8 >= 5)
        {
          v9 = 0x7FFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        [(_INPBIntentSlotValue *)v7 addPayloadAlarmSearchType:v9];
      }
    }
  }

  return v7;
}

@end