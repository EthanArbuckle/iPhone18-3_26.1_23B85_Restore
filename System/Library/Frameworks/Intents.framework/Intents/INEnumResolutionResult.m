@interface INEnumResolutionResult
+ (INEnumResolutionResult)confirmationRequiredWithValueToConfirm:(NSInteger)valueToConfirm;
+ (INEnumResolutionResult)successWithResolvedValue:(NSInteger)resolvedValue;
- (id)_intentSlotValueForObject:(id)a3 slotDescription:(id)a4;
- (void)transformResolutionResultForIntent:(id)a3 intentSlotDescription:(id)a4 withOptionsProvider:(id)a5 completion:(id)a6;
@end

@implementation INEnumResolutionResult

+ (INEnumResolutionResult)confirmationRequiredWithValueToConfirm:(NSInteger)valueToConfirm
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:valueToConfirm];
  v5 = [a1 resolutionResultConfirmationRequiredWithItemToConfirm:v4];

  return v5;
}

+ (INEnumResolutionResult)successWithResolvedValue:(NSInteger)resolvedValue
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:resolvedValue];
  v5 = [a1 resolutionResultSuccessWithResolvedValue:v4];

  return v5;
}

- (void)transformResolutionResultForIntent:(id)a3 intentSlotDescription:(id)a4 withOptionsProvider:(id)a5 completion:(id)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(INIntentResolutionResult *)self resolutionResultCode];
  v13 = [v9 _metadata];
  v14 = [v10 facadePropertyName];
  v15 = [v13 forceNeedsValueForParameters];
  LODWORD(a4) = [v15 containsObject:v14];

  if (a4)
  {
    v16 = [v9 valueForKey:v14];
    if (v16)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    v19 = [v18 integerValue];
    if (!v19 && v12 != 2 && v12 != 3)
    {
      v12 = 4;
      [(INIntentResolutionResult *)self setResolutionResultCode:4];
    }

    v20 = [v13 forceNeedsValueForParameters];
    v21 = [v20 if_arrayByRemovingObject:v14];
    [v13 setForceNeedsValueForParameters:v21];
  }

  if (v12 == 4 || v12 == 1)
  {
    v22 = [v10 codableAttribute];
    v39 = self;
    v40 = v11;
    v35 = v14;
    v37 = v13;
    if (v22)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    v25 = [MEMORY[0x1E695DF70] array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v26 = [v24 codableEnum];
    v27 = [v26 values];

    v28 = [v27 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v42;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v42 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v41 + 1) + 8 * i);
          if ([v32 index])
          {
            v33 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v32, "index")}];
            [v25 addObject:v33];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v29);
    }

    if (v12 == 4)
    {
      [(INIntentResolutionResult *)v39 setResolutionResultCode:2];
    }

    [(INIntentResolutionResult *)v39 setDisambiguationItems:v25, v35, v37];
    v11 = v40;
    v40[2](v40, v39);

    v14 = v36;
    v13 = v38;
  }

  else
  {
    v11[2](v11, self);
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (id)_intentSlotValueForObject:(id)a3 slotDescription:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  if ([v6 valueType] == 65)
  {
    [(_INPBIntentSlotValue *)v7 setType:1000];
    if ([v6 valueStyle] != 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[_INPBIntentSlotValue addPayloadEnumeration:](v7, "addPayloadEnumeration:", [v5 integerValue]);
      }
    }
  }

  return v7;
}

@end