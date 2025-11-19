@interface INAlarmRepeatScheduleOptionsResolutionResult
+ (id)confirmationRequiredWithAlarmRepeatScheduleOptionsToConfirm:(unint64_t)a3;
+ (id)successWithResolvedAlarmRepeatScheduleOptions:(unint64_t)a3;
- (id)_intentSlotValueForObject:(id)a3 slotDescription:(id)a4;
- (id)_vocabularyValueForObject:(id)a3 slotDescription:(id)a4;
@end

@implementation INAlarmRepeatScheduleOptionsResolutionResult

+ (id)confirmationRequiredWithAlarmRepeatScheduleOptionsToConfirm:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [a1 resolutionResultConfirmationRequiredWithItemToConfirm:v4];

  return v5;
}

+ (id)successWithResolvedAlarmRepeatScheduleOptions:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [a1 resolutionResultSuccessWithResolvedValue:v4];

  return v5;
}

- (id)_vocabularyValueForObject:(id)a3 slotDescription:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 description];
  v8 = [MEMORY[0x1E695DF58] systemLocale];
  v9 = [v8 groupingSeparator];
  v10 = [v6 valueType];

  if (v10 == 181)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = INAlarmRepeatScheduleOptionsGetNames([v5 unsignedIntegerValue]);
      v12 = [v11 if_escapedComponentsJoinedByString:v9 forLocale:v8];

      v7 = v12;
    }
  }

  return v7;
}

- (id)_intentSlotValueForObject:(id)a3 slotDescription:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  v8 = [v6 valueType];

  if (v8 == 181)
  {
    [(_INPBIntentSlotValue *)v7 setType:1000];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v5 unsignedIntegerValue];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __90__INAlarmRepeatScheduleOptionsResolutionResult__intentSlotValueForObject_slotDescription___block_invoke;
      v11[3] = &unk_1E7288628;
      v12 = v7;
      INAlarmRepeatScheduleOptionsEnumerateBackingTypes(v9, v11);
    }
  }

  return v7;
}

@end