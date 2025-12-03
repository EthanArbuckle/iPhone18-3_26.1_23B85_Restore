@interface INEnumResolutionResult
+ (INEnumResolutionResult)confirmationRequiredWithValueToConfirm:(NSInteger)valueToConfirm;
+ (INEnumResolutionResult)successWithResolvedValue:(NSInteger)resolvedValue;
- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description;
- (void)transformResolutionResultForIntent:(id)intent intentSlotDescription:(id)description withOptionsProvider:(id)provider completion:(id)completion;
@end

@implementation INEnumResolutionResult

+ (INEnumResolutionResult)confirmationRequiredWithValueToConfirm:(NSInteger)valueToConfirm
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:valueToConfirm];
  v5 = [self resolutionResultConfirmationRequiredWithItemToConfirm:v4];

  return v5;
}

+ (INEnumResolutionResult)successWithResolvedValue:(NSInteger)resolvedValue
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:resolvedValue];
  v5 = [self resolutionResultSuccessWithResolvedValue:v4];

  return v5;
}

- (void)transformResolutionResultForIntent:(id)intent intentSlotDescription:(id)description withOptionsProvider:(id)provider completion:(id)completion
{
  v46 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  descriptionCopy = description;
  completionCopy = completion;
  resolutionResultCode = [(INIntentResolutionResult *)self resolutionResultCode];
  _metadata = [intentCopy _metadata];
  facadePropertyName = [descriptionCopy facadePropertyName];
  forceNeedsValueForParameters = [_metadata forceNeedsValueForParameters];
  LODWORD(description) = [forceNeedsValueForParameters containsObject:facadePropertyName];

  if (description)
  {
    v16 = [intentCopy valueForKey:facadePropertyName];
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

    integerValue = [v18 integerValue];
    if (!integerValue && resolutionResultCode != 2 && resolutionResultCode != 3)
    {
      resolutionResultCode = 4;
      [(INIntentResolutionResult *)self setResolutionResultCode:4];
    }

    forceNeedsValueForParameters2 = [_metadata forceNeedsValueForParameters];
    v21 = [forceNeedsValueForParameters2 if_arrayByRemovingObject:facadePropertyName];
    [_metadata setForceNeedsValueForParameters:v21];
  }

  if (resolutionResultCode == 4 || resolutionResultCode == 1)
  {
    codableAttribute = [descriptionCopy codableAttribute];
    selfCopy = self;
    v40 = completionCopy;
    v35 = facadePropertyName;
    v37 = _metadata;
    if (codableAttribute)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = codableAttribute;
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

    array = [MEMORY[0x1E695DF70] array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    codableEnum = [v24 codableEnum];
    values = [codableEnum values];

    v28 = [values countByEnumeratingWithState:&v41 objects:v45 count:16];
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
            objc_enumerationMutation(values);
          }

          v32 = *(*(&v41 + 1) + 8 * i);
          if ([v32 index])
          {
            v33 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v32, "index")}];
            [array addObject:v33];
          }
        }

        v29 = [values countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v29);
    }

    if (resolutionResultCode == 4)
    {
      [(INIntentResolutionResult *)selfCopy setResolutionResultCode:2];
    }

    [(INIntentResolutionResult *)selfCopy setDisambiguationItems:array, v35, v37];
    completionCopy = v40;
    v40[2](v40, selfCopy);

    facadePropertyName = v36;
    _metadata = v38;
  }

  else
  {
    completionCopy[2](completionCopy, self);
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description
{
  objectCopy = object;
  descriptionCopy = description;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  if ([descriptionCopy valueType] == 65)
  {
    [(_INPBIntentSlotValue *)v7 setType:1000];
    if ([descriptionCopy valueStyle] != 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[_INPBIntentSlotValue addPayloadEnumeration:](v7, "addPayloadEnumeration:", [objectCopy integerValue]);
      }
    }
  }

  return v7;
}

@end