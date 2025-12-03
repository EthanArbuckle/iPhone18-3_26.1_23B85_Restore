@interface HKFeatureAvailabilityRequirementSatisfactionOverrideEligibility
- (BOOL)isRequirementOverridable:(id)overridable featureIdentifier:(id)identifier importExclusionDeviceDataSource:(id)source behavior:(id)behavior;
@end

@implementation HKFeatureAvailabilityRequirementSatisfactionOverrideEligibility

- (BOOL)isRequirementOverridable:(id)overridable featureIdentifier:(id)identifier importExclusionDeviceDataSource:(id)source behavior:(id)behavior
{
  overridableCopy = overridable;
  identifierCopy = identifier;
  sourceCopy = source;
  behaviorCopy = behavior;
  if (([overridableCopy isEqualToString:@"ActiveWatchIsNotUnderInternalDevelopmentImportExclusion"] & 1) == 0)
  {
    if (([identifierCopy isEqualToString:@"OxygenSaturationRecording"] & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"OxygenSaturationRecordingCompanionAnalysis"))
    {
      if ([identifierCopy isEqualToString:@"OxygenSaturationRecordingCompanionAnalysis"])
      {
        v14 = [sourceCopy isImportAllowedForActiveWatchWithBehavior:behaviorCopy featureIdentifier:identifierCopy];
        bOOLValue = [v14 BOOLValue];
LABEL_7:

        goto LABEL_13;
      }

      if ([overridableCopy isEqualToString:@"FeatureIsNotRemotelyDisabled"])
      {
        v15 = [sourceCopy isActiveWatchProdFusedWithBehavior:behaviorCopy];
        v14 = v15;
        if (v15)
        {
          if ([v15 BOOLValue])
          {
            v16 = [sourceCopy isImportAllowedForActiveWatchWithBehavior:behaviorCopy featureIdentifier:identifierCopy];
            bOOLValue = [v16 BOOLValue];
          }

          else
          {
            bOOLValue = 1;
          }
        }

        else
        {
          bOOLValue = 0;
        }

        goto LABEL_7;
      }
    }

    bOOLValue = 1;
    goto LABEL_13;
  }

  bOOLValue = 0;
LABEL_13:

  return bOOLValue;
}

@end