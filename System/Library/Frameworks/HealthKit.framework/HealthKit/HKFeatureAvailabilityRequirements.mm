@interface HKFeatureAvailabilityRequirements
+ (id)OSEligibilityDomainIsEligible:(unint64_t)eligible;
+ (id)activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:(id)identifier;
+ (id)activeWatchIsNotUnderInternalDevelopmentImportExclusionForFeatureWithIdentifier:(id)identifier;
+ (id)ageIsPresent;
+ (id)bloodOxygenRecordingsAreEnabled;
+ (id)capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:(id)identifier;
+ (id)countryCodeIsPresentForFeatureWithIdentifier:(id)identifier;
+ (id)countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:(id)identifier;
+ (id)countryListIsPresentOnActiveRemoteDeviceForFeatureWithIdentifier:(id)identifier;
+ (id)currentCountryCodeIsPresentForFeatureWithIdentifier:(id)identifier;
+ (id)currentCountryIsSupportedOnLocalDeviceForFeatureWithIdentifier:(id)identifier;
+ (id)defaultHelpTileRequirementsForBackgroundDeliveredFeatureWithFeatureIdentifier:(id)identifier isAgeGatedUserDefaultsKey:(id)key;
+ (id)defaultOnboardingEligibilityRequirementsForFeatureIdentifier:(id)identifier;
+ (id)defaultTipsAppVisibilityRequirementsForBackgroundDeliveredFeatureWithFeatureIdentifier:(id)identifier isAgeGatedUserDefaultsKey:(id)key;
+ (id)featureIsNotRemotelyDisabledWithIdentifier:(id)identifier;
+ (id)fitnessTrackingIsEnabledInPrivacy;
+ (id)healthAppIsNotHidden;
+ (id)hearingAidCapabilityIsSupportedOnAnyPairedAirPods;
+ (id)hearingTestCapabilityIsSupportedOnAnyPairedAirPods;
+ (id)heartRateIsEnabledInPrivacy;
+ (id)heightIsPresent;
+ (id)isNotInPostPregnancy;
+ (id)localDeviceIsCapableOfPairingWithWatch;
+ (id)localDeviceIsCapableOfWatchPairing;
+ (id)mutuallyExclusiveFeatureIsOffWithIdentifier:(id)identifier;
+ (id)noOngoingPregnancy;
+ (id)notAgeGatedForUserDefaultsKey:(id)key;
+ (id)notInStoreDemoMode;
+ (id)notificationAuthorizedWithBundleIdentifier:(id)identifier;
+ (id)notificationsOnForUserDefaultsKey:(id)key;
+ (id)onboardedAtLeastDaysAgo:(int64_t)ago featureIdentifier:(id)identifier;
+ (id)onboardingAcknowledgedWithIdentifier:(id)identifier;
+ (id)onboardingAcknowledgedWithIdentifier:(id)identifier settingsKey:(id)key;
+ (id)onboardingNotAcknowledgedWithIdentifier:(id)identifier;
+ (id)onboardingNotAcknowledgedWithIdentifier:(id)identifier settingsKey:(id)key;
+ (id)onboardingRecordIsNotPresentForFeatureWithIdentifier:(id)identifier;
+ (id)onboardingRecordIsNotPresentForMutuallyExclusiveFeatureWithIdentifier:(id)identifier;
+ (id)onboardingRecordIsPresentForFeatureWithIdentifier:(id)identifier;
+ (id)onboardingRecordsArePresentForPrerequisiteFeaturesWithIdentifiers:(id)identifiers;
+ (id)onboardingUserDefaultsKeyIsNotPresent:(id)present;
+ (id)onboardingUserDefaultsKeyIsPresent:(id)present;
+ (id)prerequisiteFeaturesAreOnWithFeatureSettings:(id)settings;
+ (id)profileIsNotFamilySetupPairingProfile;
+ (id)seedIsNotExpiredForFeatureWithIdentifier:(id)identifier;
+ (id)someRegionIsSupportedForFeatureWithIdentifier:(id)identifier;
+ (id)userDefaultsKeyIsNotPresent:(id)present;
+ (id)walkingSteadinessCapabilityIsSupportedOnLocalDevice;
+ (id)watchAppIsInstalledForBundleIdentifier:(id)identifier;
+ (id)watchLowPowerModeIsOff;
+ (id)wristDetectionIsEnabledForActiveWatch;
@end

@implementation HKFeatureAvailabilityRequirements

+ (id)activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)[HKFeatureAvailabilityRequirementActiveRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapability alloc] initWithFeatureIdentifier:identifierCopy];

  return v4;
}

+ (id)activeWatchIsNotUnderInternalDevelopmentImportExclusionForFeatureWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[HKFeatureAvailabilityRequirementActiveWatchIsNotUnderInternalDevelopmentImportExclusion alloc] initWithFeatureIdentifier:identifierCopy];

  return v4;
}

+ (id)ageIsPresent
{
  v2 = objc_alloc_init(HKFeatureAvailabilityRequirementAgeIsPresent);

  return v2;
}

+ (id)bloodOxygenRecordingsAreEnabled
{
  v2 = objc_alloc_init(HKFeatureAvailabilityRequirementBloodOxygenRecordingsAreEnabled);

  return v2;
}

+ (id)capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)[HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveRemoteDevice alloc] initWithFeatureIdentifier:identifierCopy];

  return v4;
}

+ (id)countryCodeIsPresentForFeatureWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)[HKFeatureAvailabilityRequirementCountryCodeIsPresent alloc] initWithFeatureIdentifier:identifierCopy];

  return v4;
}

+ (id)countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)[HKFeatureAvailabilityRequirementCountryIsSupportedOnLocalDevice alloc] initWithFeatureIdentifier:identifierCopy];

  return v4;
}

+ (id)currentCountryCodeIsPresentForFeatureWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)[HKFeatureAvailabilityRequirementCurrentCountryCodeIsPresent alloc] initWithFeatureIdentifier:identifierCopy];

  return v4;
}

+ (id)countryListIsPresentOnActiveRemoteDeviceForFeatureWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)[HKFeatureAvailabilityRequirementCountryListIsPresentOnActiveRemoteDevice alloc] initWithFeatureIdentifier:identifierCopy];

  return v4;
}

+ (id)currentCountryIsSupportedOnLocalDeviceForFeatureWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)[HKFeatureAvailabilityRequirementCurrentCountryIsSupportedOnLocalDevice alloc] initWithFeatureIdentifier:identifierCopy];

  return v4;
}

+ (id)featureIsNotRemotelyDisabledWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)[HKFeatureAvailabilityRequirementFeatureIsNotRemotelyDisabled alloc] initWithFeatureIdentifier:identifierCopy];

  return v4;
}

+ (id)fitnessTrackingIsEnabledInPrivacy
{
  v2 = objc_alloc_init(HKFeatureAvailabilityRequirementFitnessTrackingIsEnabledInPrivacy);

  return v2;
}

+ (id)healthAppIsNotHidden
{
  v2 = objc_alloc_init(HKFeatureAvailabilityRequirementHealthAppIsNotHidden);

  return v2;
}

+ (id)hearingTestCapabilityIsSupportedOnAnyPairedAirPods
{
  v2 = objc_alloc_init(HKFeatureAvailabilityRequirementHearingTestCapabilityIsSupportedOnAnyPairedAirPods);

  return v2;
}

+ (id)hearingAidCapabilityIsSupportedOnAnyPairedAirPods
{
  v2 = objc_alloc_init(HKFeatureAvailabilityRequirementHearingAidCapabilityIsSupportedOnAnyPairedAirPods);

  return v2;
}

+ (id)heartRateIsEnabledInPrivacy
{
  v2 = objc_alloc_init(HKFeatureAvailabilityRequirementHeartRateIsEnabledInPrivacy);

  return v2;
}

+ (id)heightIsPresent
{
  v2 = objc_alloc_init(HKFeatureAvailabilityRequirementHeightIsPresent);

  return v2;
}

+ (id)localDeviceIsCapableOfPairingWithWatch
{
  v2 = objc_alloc_init(HKFeatureAvailabilityRequirementLocalDeviceIsCapableOfPairingWithWatch);

  return v2;
}

+ (id)localDeviceIsCapableOfWatchPairing
{
  v2 = objc_alloc_init(HKFeatureAvailabilityRequirementLocalDeviceIsCapableOfWatchPairing);

  return v2;
}

+ (id)mutuallyExclusiveFeatureIsOffWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[HKFeatureAvailabilityRequirementMutuallyExclusiveFeatureIsOff alloc] initWithFeatureIdentifier:identifierCopy];

  return v4;
}

+ (id)notAgeGatedForUserDefaultsKey:(id)key
{
  keyCopy = key;
  v4 = [[HKFeatureAvailabilityRequirementNotAgeGatedForUserDefaultsKey alloc] initWithUserDefaultsKey:keyCopy];

  return v4;
}

+ (id)notInStoreDemoMode
{
  v2 = objc_alloc_init(HKFeatureAvailabilityRequirementNotInStoreDemoMode);

  return v2;
}

+ (id)notificationAuthorizedWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[HKFeatureAvailabilityRequirementNotificationAuthorized alloc] initWithBundleIdentifier:identifierCopy];

  return v4;
}

+ (id)notificationsOnForUserDefaultsKey:(id)key
{
  keyCopy = key;
  v4 = [(HKFeatureAvailabilityRequirementUserDefaultEvaluator *)[HKFeatureAvailabilityRequirementNotificationsOnForUserDefaultsKey alloc] initWithUserDefaultsKey:keyCopy];

  return v4;
}

+ (id)onboardedAtLeastDaysAgo:(int64_t)ago featureIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [[HKFeatureAvailabilityRequirementOnboardedBeforeTimeAgo alloc] initWithFeatureIdentifier:identifierCopy daysBeforeCurrentDate:ago];

  return v6;
}

+ (id)onboardingAcknowledgedWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[HKFeatureAvailabilityRequirementOnboardingAcknowledged alloc] initWithFeatureIdentifier:identifierCopy];

  return v4;
}

+ (id)onboardingAcknowledgedWithIdentifier:(id)identifier settingsKey:(id)key
{
  keyCopy = key;
  identifierCopy = identifier;
  v7 = [[HKFeatureAvailabilityRequirementOnboardingAcknowledged alloc] initWithFeatureIdentifier:identifierCopy settingsKey:keyCopy];

  return v7;
}

+ (id)onboardingNotAcknowledgedWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[HKFeatureAvailabilityRequirementOnboardingNotAcknowledged alloc] initWithFeatureIdentifier:identifierCopy];

  return v4;
}

+ (id)onboardingNotAcknowledgedWithIdentifier:(id)identifier settingsKey:(id)key
{
  keyCopy = key;
  identifierCopy = identifier;
  v7 = [[HKFeatureAvailabilityRequirementOnboardingNotAcknowledged alloc] initWithFeatureIdentifier:identifierCopy settingsKey:keyCopy];

  return v7;
}

+ (id)onboardingRecordsArePresentForPrerequisiteFeaturesWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = [[HKFeatureAvailabilityRequirementOnboardingRecordsArePresentForPrerequisiteFeatures alloc] initWithPrerequisiteFeatureIdentifiers:identifiersCopy];

  return v4;
}

+ (id)onboardingRecordIsNotPresentForFeatureWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(HKFeatureAvailabilityOnboardingRecordRequirement *)[HKFeatureAvailabilityRequirementOnboardingRecordIsNotPresent alloc] initWithFeatureIdentifier:identifierCopy];

  return v4;
}

+ (id)onboardingRecordIsNotPresentForMutuallyExclusiveFeatureWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(HKFeatureAvailabilityOnboardingRecordRequirement *)[HKFeatureAvailabilityRequirementOnboardingRecordIsNotPresentForMutuallyExclusiveFeature alloc] initWithFeatureIdentifier:identifierCopy];

  return v4;
}

+ (id)onboardingRecordIsPresentForFeatureWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(HKFeatureAvailabilityOnboardingRecordRequirement *)[HKFeatureAvailabilityRequirementOnboardingRecordIsPresent alloc] initWithFeatureIdentifier:identifierCopy];

  return v4;
}

+ (id)onboardingUserDefaultsKeyIsNotPresent:(id)present
{
  presentCopy = present;
  v4 = [(HKFeatureAvailabilityRequirementUserDefaultEvaluator *)[HKFeatureAvailabilityRequirementOnboardingUserDefaultsKeyIsNotPresent alloc] initWithUserDefaultsKey:presentCopy];

  return v4;
}

+ (id)onboardingUserDefaultsKeyIsPresent:(id)present
{
  presentCopy = present;
  v4 = [(HKFeatureAvailabilityRequirementUserDefaultEvaluator *)[HKFeatureAvailabilityRequirementOnboardingUserDefaultsKeyIsPresent alloc] initWithUserDefaultsKey:presentCopy];

  return v4;
}

+ (id)OSEligibilityDomainIsEligible:(unint64_t)eligible
{
  v3 = [[HKFeatureAvailabilityRequirementOSEligibilityDomainIsEligible alloc] initWithDomain:eligible];

  return v3;
}

+ (id)prerequisiteFeaturesAreOnWithFeatureSettings:(id)settings
{
  settingsCopy = settings;
  v4 = [[HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn alloc] initWithPrerequisiteFeatureSettings:settingsCopy];

  return v4;
}

+ (id)profileIsNotFamilySetupPairingProfile
{
  v2 = objc_alloc_init(HKFeatureAvailabilityRequirementProfileIsNotFamilySetupPairingProfile);

  return v2;
}

+ (id)seedIsNotExpiredForFeatureWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)[HKFeatureAvailabilityRequirementSeedIsNotExpired alloc] initWithFeatureIdentifier:identifierCopy];

  return v4;
}

+ (id)someRegionIsSupportedForFeatureWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(HKFeatureAvailabilityRegionAvailabilityRequirement *)[HKFeatureAvailabilityRequirementSomeRegionIsSupported alloc] initWithFeatureIdentifier:identifierCopy];

  return v4;
}

+ (id)userDefaultsKeyIsNotPresent:(id)present
{
  presentCopy = present;
  v4 = [(HKFeatureAvailabilityRequirementUserDefaultEvaluator *)[HKFeatureAvailabilityRequirementUserDefaultsKeyIsNotPresent alloc] initWithUserDefaultsKey:presentCopy];

  return v4;
}

+ (id)walkingSteadinessCapabilityIsSupportedOnLocalDevice
{
  v2 = objc_alloc_init(HKFeatureAvailabilityRequirementWalkingSteadinessCapabilityIsSupportedOnLocalDevice);

  return v2;
}

+ (id)watchAppIsInstalledForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[HKFeatureAvailabilityRequirementWatchAppIsInstalled alloc] initWithBundleIdentifier:identifierCopy];

  return v4;
}

+ (id)watchLowPowerModeIsOff
{
  v2 = objc_alloc_init(HKFeatureAvailabilityRequirementWatchLowPowerModeIsOff);

  return v2;
}

+ (id)wristDetectionIsEnabledForActiveWatch
{
  v2 = objc_alloc_init(HKFeatureAvailabilityRequirementWristDetectionIsEnabledForActiveWatch);

  return v2;
}

+ (id)isNotInPostPregnancy
{
  v2 = objc_alloc_init(HKFeatureAvailabilityRequirementNotInPostPregnancy);

  return v2;
}

+ (id)noOngoingPregnancy
{
  v2 = objc_alloc_init(HKFeatureAvailabilityRequirementNoOngoingPregnancy);

  return v2;
}

+ (id)defaultOnboardingEligibilityRequirementsForFeatureIdentifier:(id)identifier
{
  v17[9] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v16 = [self currentCountryCodeIsPresentForFeatureWithIdentifier:identifierCopy];
  v17[0] = v16;
  v5 = [self activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:identifierCopy];
  v17[1] = v5;
  v6 = [self capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:identifierCopy];
  v17[2] = v6;
  v7 = [self someRegionIsSupportedForFeatureWithIdentifier:identifierCopy];
  v17[3] = v7;
  v8 = [self currentCountryIsSupportedOnLocalDeviceForFeatureWithIdentifier:identifierCopy];
  v17[4] = v8;
  v9 = [self countryListIsPresentOnActiveRemoteDeviceForFeatureWithIdentifier:identifierCopy];
  v17[5] = v9;
  v10 = [self currentCountryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:identifierCopy isSupportedIfCountryListMissing:0];
  v17[6] = v10;
  v11 = [self featureIsNotRemotelyDisabledWithIdentifier:identifierCopy];
  v17[7] = v11;
  v12 = [self seedIsNotExpiredForFeatureWithIdentifier:identifierCopy];

  v17[8] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:9];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)defaultHelpTileRequirementsForBackgroundDeliveredFeatureWithFeatureIdentifier:(id)identifier isAgeGatedUserDefaultsKey:(id)key
{
  identifierCopy = identifier;
  v7 = [self defaultTipsAppVisibilityRequirementsForBackgroundDeliveredFeatureWithFeatureIdentifier:identifierCopy isAgeGatedUserDefaultsKey:key];
  v8 = [HKFeatureAvailabilityRequirements featureIsOnWithIdentifier:identifierCopy isOnIfSettingIsAbsent:1];

  v9 = [v7 arrayByAddingObject:v8];

  return v9;
}

+ (id)defaultTipsAppVisibilityRequirementsForBackgroundDeliveredFeatureWithFeatureIdentifier:(id)identifier isAgeGatedUserDefaultsKey:(id)key
{
  v18[2] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  identifierCopy = identifier;
  v7 = [HKFeatureAvailabilityRequirements onboardingRecordIsPresentForFeatureWithIdentifier:identifierCopy];
  v18[0] = v7;
  v8 = [HKFeatureAvailabilityRequirements featureIsNotRemotelyDisabledWithIdentifier:identifierCopy];
  v18[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v10 = [HKFeatureAvailabilityRequirements countryIsSupportedOnLocalDeviceAndPhoneForFeatureWithIdentifier:identifierCopy isSupportedIfCountryListMissing:1];

  v11 = [v9 arrayByAddingObjectsFromArray:v10];
  v12 = [HKFeatureAvailabilityRequirements notAgeGatedForUserDefaultsKey:keyCopy];

  v17 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v14 = [v11 arrayByAddingObjectsFromArray:v13];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

@end