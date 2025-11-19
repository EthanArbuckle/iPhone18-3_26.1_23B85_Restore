@interface HKFeatureAvailabilityRequirementSatisfactionOverrideEligibility
- (BOOL)isRequirementOverridable:(id)a3 featureIdentifier:(id)a4 importExclusionDeviceDataSource:(id)a5 behavior:(id)a6;
@end

@implementation HKFeatureAvailabilityRequirementSatisfactionOverrideEligibility

- (BOOL)isRequirementOverridable:(id)a3 featureIdentifier:(id)a4 importExclusionDeviceDataSource:(id)a5 behavior:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (([v9 isEqualToString:@"ActiveWatchIsNotUnderInternalDevelopmentImportExclusion"] & 1) == 0)
  {
    if (([v10 isEqualToString:@"OxygenSaturationRecording"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"OxygenSaturationRecordingCompanionAnalysis"))
    {
      if ([v10 isEqualToString:@"OxygenSaturationRecordingCompanionAnalysis"])
      {
        v14 = [v11 isImportAllowedForActiveWatchWithBehavior:v12 featureIdentifier:v10];
        v13 = [v14 BOOLValue];
LABEL_7:

        goto LABEL_13;
      }

      if ([v9 isEqualToString:@"FeatureIsNotRemotelyDisabled"])
      {
        v15 = [v11 isActiveWatchProdFusedWithBehavior:v12];
        v14 = v15;
        if (v15)
        {
          if ([v15 BOOLValue])
          {
            v16 = [v11 isImportAllowedForActiveWatchWithBehavior:v12 featureIdentifier:v10];
            v13 = [v16 BOOLValue];
          }

          else
          {
            v13 = 1;
          }
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_7;
      }
    }

    v13 = 1;
    goto LABEL_13;
  }

  v13 = 0;
LABEL_13:

  return v13;
}

@end