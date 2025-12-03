@interface INAlarmRepeatScheduleOptionsResolutionResult
+ (id)confirmationRequiredWithAlarmRepeatScheduleOptionsToConfirm:(unint64_t)confirm;
+ (id)successWithResolvedAlarmRepeatScheduleOptions:(unint64_t)options;
- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description;
- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description;
@end

@implementation INAlarmRepeatScheduleOptionsResolutionResult

+ (id)confirmationRequiredWithAlarmRepeatScheduleOptionsToConfirm:(unint64_t)confirm
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:confirm];
  v5 = [self resolutionResultConfirmationRequiredWithItemToConfirm:v4];

  return v5;
}

+ (id)successWithResolvedAlarmRepeatScheduleOptions:(unint64_t)options
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
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

  if (valueType == 181)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = INAlarmRepeatScheduleOptionsGetNames([objectCopy unsignedIntegerValue]);
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

  if (valueType == 181)
  {
    [(_INPBIntentSlotValue *)v7 setType:1000];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [objectCopy unsignedIntegerValue];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __90__INAlarmRepeatScheduleOptionsResolutionResult__intentSlotValueForObject_slotDescription___block_invoke;
      v11[3] = &unk_1E7288628;
      v12 = v7;
      INAlarmRepeatScheduleOptionsEnumerateBackingTypes(unsignedIntegerValue, v11);
    }
  }

  return v7;
}

@end