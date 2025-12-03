@interface INPlaybackRepeatModeResolutionResult
+ (INPlaybackRepeatModeResolutionResult)confirmationRequiredWithPlaybackRepeatModeToConfirm:(INPlaybackRepeatMode)playbackRepeatModeToConfirm;
+ (INPlaybackRepeatModeResolutionResult)successWithResolvedPlaybackRepeatMode:(INPlaybackRepeatMode)resolvedPlaybackRepeatMode;
- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description;
- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description;
- (void)transformResolutionResultForIntent:(id)intent intentSlotDescription:(id)description withOptionsProvider:(id)provider completion:(id)completion;
@end

@implementation INPlaybackRepeatModeResolutionResult

+ (INPlaybackRepeatModeResolutionResult)confirmationRequiredWithPlaybackRepeatModeToConfirm:(INPlaybackRepeatMode)playbackRepeatModeToConfirm
{
  if (playbackRepeatModeToConfirm == INPlaybackRepeatModeUnknown)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Confirmation of INPlaybackRepeatModeUnknown is not supported." userInfo:0];
    objc_exception_throw(v7);
  }

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v5 = [self resolutionResultConfirmationRequiredWithItemToConfirm:v4];

  return v5;
}

+ (INPlaybackRepeatModeResolutionResult)successWithResolvedPlaybackRepeatMode:(INPlaybackRepeatMode)resolvedPlaybackRepeatMode
{
  if (resolvedPlaybackRepeatMode)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    notRequired = [self resolutionResultSuccessWithResolvedValue:v4];
  }

  else
  {
    NSLog(@"Success resolution with INPlaybackRepeatModeUnknown will be reformed to notRequired.", a2);
    notRequired = [self notRequired];
  }

  return notRequired;
}

- (void)transformResolutionResultForIntent:(id)intent intentSlotDescription:(id)description withOptionsProvider:(id)provider completion:(id)completion
{
  v50 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  descriptionCopy = description;
  completionCopy = completion;
  resolutionResultCode = [(INIntentResolutionResult *)self resolutionResultCode];
  _metadata = [intentCopy _metadata];
  facadePropertyName = [descriptionCopy facadePropertyName];
  forceNeedsValueForParameters = [_metadata forceNeedsValueForParameters];
  v16 = [forceNeedsValueForParameters containsObject:facadePropertyName];

  if (v16)
  {
    v17 = [intentCopy valueForKey:facadePropertyName];
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

    integerValue = [v19 integerValue];
    if (!integerValue && resolutionResultCode != 2 && resolutionResultCode != 3)
    {
      resolutionResultCode = 4;
      [(INIntentResolutionResult *)self setResolutionResultCode:4];
    }

    forceNeedsValueForParameters2 = [_metadata forceNeedsValueForParameters];
    v22 = [forceNeedsValueForParameters2 if_arrayByRemovingObject:facadePropertyName];
    [_metadata setForceNeedsValueForParameters:v22];
  }

  if ((resolutionResultCode == 4 || resolutionResultCode == 1) && [intentCopy _executionContext] != 1)
  {
    _codableDescription = [intentCopy _codableDescription];
    facadePropertyName2 = [descriptionCopy facadePropertyName];
    v25 = [_codableDescription attributeByName:facadePropertyName2];

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

    codableEnum = [v27 codableEnum];
    if (codableEnum)
    {
      v41 = v27;
      v42 = facadePropertyName;
      selfCopy = self;
      v44 = descriptionCopy;
      v29 = objc_alloc(MEMORY[0x1E695DF70]);
      values = [codableEnum values];
      v31 = [v29 initWithCapacity:{objc_msgSend(values, "count")}];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v40 = codableEnum;
      values2 = [codableEnum values];
      v33 = [values2 countByEnumeratingWithState:&v45 objects:v49 count:16];
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
              objc_enumerationMutation(values2);
            }

            v37 = *(*(&v45 + 1) + 8 * i);
            if ([v37 index])
            {
              v38 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v37, "index")}];
              [v31 addObject:v38];
            }
          }

          v34 = [values2 countByEnumeratingWithState:&v45 objects:v49 count:16];
        }

        while (v34);
      }

      if (resolutionResultCode == 4)
      {
        [(INIntentResolutionResult *)selfCopy setResolutionResultCode:2];
      }

      [(INIntentResolutionResult *)selfCopy setDisambiguationItems:v31];
      completionCopy[2](completionCopy, selfCopy);

      descriptionCopy = v44;
      v27 = v41;
      facadePropertyName = v42;
      codableEnum = v40;
    }

    else
    {
      completionCopy[2](completionCopy, self);
    }
  }

  else
  {
    completionCopy[2](completionCopy, self);
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description
{
  objectCopy = object;
  descriptionCopy = description;
  v7 = [objectCopy description];
  valueType = [descriptionCopy valueType];

  if (valueType == 155)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = [objectCopy integerValue];
      if ((integerValue - 1) > 2)
      {
        v10 = @"unknown";
      }

      else
      {
        v10 = *(&off_1E7285EE8 + integerValue - 1);
      }

      v11 = v10;

      v7 = v11;
    }
  }

  return v7;
}

- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description
{
  objectCopy = object;
  descriptionCopy = description;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  if ([descriptionCopy valueType] == 155)
  {
    [(_INPBIntentSlotValue *)v7 setType:1000];
    if ([descriptionCopy valueStyle] != 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [objectCopy integerValue] - 1;
        if (v8 >= 3)
        {
          v9 = 0x7FFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        [(_INPBIntentSlotValue *)v7 addPayloadPlaybackRepeatMode:v9];
      }
    }
  }

  return v7;
}

@end