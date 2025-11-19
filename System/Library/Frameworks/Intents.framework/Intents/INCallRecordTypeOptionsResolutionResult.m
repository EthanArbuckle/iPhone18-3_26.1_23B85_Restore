@interface INCallRecordTypeOptionsResolutionResult
+ (INCallRecordTypeOptionsResolutionResult)confirmationRequiredWithCallRecordTypeOptionsToConfirm:(INCallRecordTypeOptions)callRecordTypeOptionsToConfirm;
+ (INCallRecordTypeOptionsResolutionResult)successWithResolvedCallRecordTypeOptions:(INCallRecordTypeOptions)resolvedCallRecordTypeOptions;
- (id)_intentSlotValueForObject:(id)a3 slotDescription:(id)a4;
- (id)_vocabularyValueForObject:(id)a3 slotDescription:(id)a4;
@end

@implementation INCallRecordTypeOptionsResolutionResult

+ (INCallRecordTypeOptionsResolutionResult)confirmationRequiredWithCallRecordTypeOptionsToConfirm:(INCallRecordTypeOptions)callRecordTypeOptionsToConfirm
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:callRecordTypeOptionsToConfirm];
  v5 = [a1 resolutionResultConfirmationRequiredWithItemToConfirm:v4];

  return v5;
}

+ (INCallRecordTypeOptionsResolutionResult)successWithResolvedCallRecordTypeOptions:(INCallRecordTypeOptions)resolvedCallRecordTypeOptions
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:resolvedCallRecordTypeOptions];
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

  if (v10 == 72)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = INCallRecordTypeOptionsGetNames([v5 unsignedIntegerValue]);
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

  if (v8 == 72)
  {
    [(_INPBIntentSlotValue *)v7 setType:1000];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v5 unsignedIntegerValue];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __85__INCallRecordTypeOptionsResolutionResult__intentSlotValueForObject_slotDescription___block_invoke;
      v11[3] = &unk_1E7288628;
      v12 = v7;
      INCallRecordTypeOptionsEnumerateBackingTypes(v9, v11);
    }
  }

  return v7;
}

@end