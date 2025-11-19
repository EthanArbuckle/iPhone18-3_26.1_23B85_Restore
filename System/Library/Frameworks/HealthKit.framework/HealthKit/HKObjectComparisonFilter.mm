@interface HKObjectComparisonFilter
@end

@implementation HKObjectComparisonFilter

uint64_t __60___HKObjectComparisonFilter_areValidTypes_forKeyPath_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) isEqualToString:@"ratingOfExertionAssociation"])
  {
    v6 = [v5 identifier];
    if ([v6 isEqual:@"HKQuantityTypeIdentifierEstimatedWorkoutEffortScore"])
    {
    }

    else
    {
      v7 = [v5 identifier];
      v8 = [v7 isEqual:@"HKQuantityTypeIdentifierWorkoutEffortScore"];

      if ((v8 & 1) == 0)
      {
        [MEMORY[0x1E696ABC0] hk_assignError:a3 code:3 format:{@"unexpected data type %@", v5}];
        v9 = 0;
        goto LABEL_6;
      }
    }
  }

  v9 = 1;
LABEL_6:

  return v9;
}

uint64_t __55___HKObjectComparisonFilter__configureForKeyPathSource__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 _isLocalDevice])
  {
    v3 = [v2 bundleIdentifier];
    v4 = [v3 isEqualToString:@"com.apple.private.health.localdevice"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __60___HKObjectComparisonFilter__acceptsDataObjectWithMetadata___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) value];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end