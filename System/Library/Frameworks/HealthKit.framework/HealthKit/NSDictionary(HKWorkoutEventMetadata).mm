@interface NSDictionary(HKWorkoutEventMetadata)
- (BOOL)_hk_validateBaseMetadataValueForWorkoutEvent:()HKWorkoutEventMetadata valueContent:key:error:;
- (BOOL)_hk_validateYukonMetadataValueForWorkoutEvent:()HKWorkoutEventMetadata valueContent:key:error:;
- (BOOL)hk_validateMetadataKeysAndValuesForWorkoutEvent:()HKWorkoutEventMetadata applicationSDKVersionToken:error:;
- (uint64_t)_hk_validateMetadataValueForWorkoutEvent:()HKWorkoutEventMetadata valueContent:forKey:applicationSDKVersionToken:error:;
@end

@implementation NSDictionary(HKWorkoutEventMetadata)

- (BOOL)hk_validateMetadataKeysAndValuesForWorkoutEvent:()HKWorkoutEventMetadata applicationSDKVersionToken:error:
{
  v9 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__29;
  v24 = __Block_byref_object_dispose__29;
  v25 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __121__NSDictionary_HKWorkoutEventMetadata__hk_validateMetadataKeysAndValuesForWorkoutEvent_applicationSDKVersionToken_error___block_invoke;
  v15[3] = &unk_1E737FF78;
  v17 = &v20;
  v18 = a2;
  v15[4] = self;
  v10 = v9;
  v16 = v10;
  v19 = a4;
  [self enumerateKeysAndObjectsUsingBlock:v15];
  v11 = v21[5];
  v12 = v11;
  if (v11)
  {
    if (a5)
    {
      v13 = v11;
      *a5 = v12;
    }

    else
    {
      _HKLogDroppedError(v11);
    }
  }

  _Block_object_dispose(&v20, 8);
  return v12 == 0;
}

- (BOOL)_hk_validateBaseMetadataValueForWorkoutEvent:()HKWorkoutEventMetadata valueContent:key:error:
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (![@"HKSwimmingStrokeStyle" isEqualToString:v11])
  {
    v13 = 1;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v14 hk_assignError:a6 code:3 format:{@"Invalid class %@ for metadata key: %@. Expected %@.", v16, v11, v18}];

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  type = [v9 type];
  if (type != 3)
  {
    v19 = MEMORY[0x1E696ABC0];
    v20 = _HKWorkoutEventTypeName(type);
    [v19 hk_assignError:a6 code:3 format:{@"Invalid metadata key %@ for %@", @"HKSwimmingStrokeStyle", v20}];

    goto LABEL_8;
  }

  v13 = [HKMetadataValidationUtilities hk_validateSwimmingStrokeStyleMetadataValue:v10 error:a6];
LABEL_9:

  return v13;
}

- (BOOL)_hk_validateYukonMetadataValueForWorkoutEvent:()HKWorkoutEventMetadata valueContent:key:error:
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (_hk_validateYukonMetadataValueForWorkoutEvent_valueContent_key_error__onceToken != -1)
  {
    [NSDictionary(HKWorkoutEventMetadata) _hk_validateYukonMetadataValueForWorkoutEvent:valueContent:key:error:];
  }

  if ([HKMetadataValidationUtilities hk_validateMetadataValueClass:v10 forKey:v11 expectedClassLookupTable:_hk_validateYukonMetadataValueForWorkoutEvent_valueContent_key_error__supportedWorkoutKeyLookupTableYukon error:a6])
  {
    v12 = @"HKElevationAscended";
    if ([@"HKElevationAscended" isEqualToString:v11] || (v12 = @"HKElevationDescended", objc_msgSend(@"HKElevationDescended", "isEqualToString:", v11)))
    {
      type = [v9 type];
      v14 = v10;
      if (HKValidateWorkoutEventTypeSegment(type, v12, a6))
      {
        v15 = +[HKUnit meterUnit];
        v16 = [HKMetadataValidationUtilities hk_validateQuantityMetadataValue:v12 value:v14 compatibleUnit:v15 error:a6];
      }

      else
      {
        v16 = 0;
      }
    }

    else if ([@"HKAverageSpeed" isEqualToString:v11] || objc_msgSend(@"HKMaximumSpeed", "isEqualToString:", v11))
    {
      type2 = [v9 type];
      v19 = v10;
      if (HKValidateWorkoutEventTypeSegment(type2, @"HKAverageSpeed", a6))
      {
        v20 = [HKUnit unitFromString:@"m/s"];
        v16 = [HKMetadataValidationUtilities hk_validateQuantityMetadataValue:@"HKAverageSpeed" value:v19 compatibleUnit:v20 error:a6];
      }

      else
      {
        v16 = 0;
      }
    }

    else if ([@"HKAlpineSlopeGrade" isEqualToString:v11])
    {
      v16 = HKWorkoutEventValidateAlpineSlopeGradeMetadata([v9 type], v10, a6);
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (uint64_t)_hk_validateMetadataValueForWorkoutEvent:()HKWorkoutEventMetadata valueContent:forKey:applicationSDKVersionToken:error:
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if ([self _hk_validateBaseMetadataValueForWorkoutEvent:v11 valueContent:v12 key:v13 error:a7])
  {
    if (HKProgramSDKTokenAtLeast())
    {
      v14 = [self _hk_validateYukonMetadataValueForWorkoutEvent:v11 valueContent:v12 key:v13 error:a7];
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end