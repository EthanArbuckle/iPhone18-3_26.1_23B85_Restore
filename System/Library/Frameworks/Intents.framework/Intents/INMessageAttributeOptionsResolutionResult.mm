@interface INMessageAttributeOptionsResolutionResult
+ (INMessageAttributeOptionsResolutionResult)confirmationRequiredWithMessageAttributeOptionsToConfirm:(INMessageAttributeOptions)messageAttributeOptionsToConfirm;
+ (INMessageAttributeOptionsResolutionResult)successWithResolvedMessageAttributeOptions:(INMessageAttributeOptions)resolvedMessageAttributeOptions;
- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description;
- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description;
@end

@implementation INMessageAttributeOptionsResolutionResult

+ (INMessageAttributeOptionsResolutionResult)confirmationRequiredWithMessageAttributeOptionsToConfirm:(INMessageAttributeOptions)messageAttributeOptionsToConfirm
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:messageAttributeOptionsToConfirm];
  v5 = [self resolutionResultConfirmationRequiredWithItemToConfirm:v4];

  return v5;
}

+ (INMessageAttributeOptionsResolutionResult)successWithResolvedMessageAttributeOptions:(INMessageAttributeOptions)resolvedMessageAttributeOptions
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:resolvedMessageAttributeOptions];
  v5 = [self resolutionResultSuccessWithResolvedValue:v4];

  return v5;
}

- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description
{
  objectCopy = object;
  descriptionCopy = description;
  v7 = [objectCopy description];
  systemLocale = [MEMORY[0x1E695DF58] systemLocale];
  groupingSeparator = [systemLocale groupingSeparator];
  valueType = [descriptionCopy valueType];

  if (valueType == 85)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = INMessageAttributeOptionsGetNames([objectCopy unsignedIntegerValue]);
      v12 = [v11 if_escapedComponentsJoinedByString:groupingSeparator forLocale:systemLocale];

      v7 = v12;
    }
  }

  return v7;
}

- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description
{
  objectCopy = object;
  descriptionCopy = description;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  valueType = [descriptionCopy valueType];

  if (valueType == 85)
  {
    [(_INPBIntentSlotValue *)v7 setType:1000];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [objectCopy unsignedIntegerValue];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __87__INMessageAttributeOptionsResolutionResult__intentSlotValueForObject_slotDescription___block_invoke;
      v11[3] = &unk_1E7288628;
      v12 = v7;
      INMessageAttributeOptionsEnumerateBackingTypes(unsignedIntegerValue, v11);
    }
  }

  return v7;
}

@end