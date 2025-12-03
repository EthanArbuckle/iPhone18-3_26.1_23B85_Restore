@interface CNSharedProfileOnboardingStateControllerTestDouble
+ (id)userDefaults;
- (BOOL)canShowOnboardingAllowingMultiplePhoneNumbers:(BOOL)numbers;
- (CNSharedProfileOnboardingStateControllerTestDouble)initWithIsPhotosReady:(BOOL)ready multiplePhoneNumbersTiedToAppleID:(BOOL)d accountCanCreateSNaP:(BOOL)p hasCompletedOnboarding:(BOOL)onboarding didSkipPoster:(BOOL)poster lastShownVersionOnLaunch:(int64_t)launch lastShownVersionInSettings:(int64_t)settings deviceSupportsPosters:(BOOL)self0;
@end

@implementation CNSharedProfileOnboardingStateControllerTestDouble

- (BOOL)canShowOnboardingAllowingMultiplePhoneNumbers:(BOOL)numbers
{
  accountCanCreateSNaP = [(CNSharedProfileOnboardingStateControllerTestDouble *)self accountCanCreateSNaP];
  if (accountCanCreateSNaP)
    LOBYTE(accountCanCreateSNaP) = numbers || ([MEMORY[0x1E69966E8] currentEnvironment], v6 = {;
  }

  return accountCanCreateSNaP;
}

- (CNSharedProfileOnboardingStateControllerTestDouble)initWithIsPhotosReady:(BOOL)ready multiplePhoneNumbersTiedToAppleID:(BOOL)d accountCanCreateSNaP:(BOOL)p hasCompletedOnboarding:(BOOL)onboarding didSkipPoster:(BOOL)poster lastShownVersionOnLaunch:(int64_t)launch lastShownVersionInSettings:(int64_t)settings deviceSupportsPosters:(BOOL)self0
{
  v20.receiver = self;
  v20.super_class = CNSharedProfileOnboardingStateControllerTestDouble;
  v16 = [(CNSharedProfileOnboardingStateControllerTestDouble *)&v20 init];
  v17 = v16;
  if (v16)
  {
    v16->_isPhotosReadyForOnboarding = ready;
    v16->_multiplePhoneNumbersTiedToAppleID = d;
    v16->_accountCanCreateSNaP = p;
    v16->_alwaysShowSNaPOnboarding = 0;
    v16->_deviceSupportsPosters = posters;
    v16->_iCloudSignedInToUseNicknames = 1;
    v16->_lastShownOnboardingVersion = launch;
    v16->_lastShowOnboardingVersionInSettings = settings;
    v16->_didSkipPosterSetup = poster;
    v16->_hasCompletedOnboarding = onboarding;
    v18 = v16;
  }

  return v17;
}

+ (id)userDefaults
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.contacts.sharedProfile.test"];

  return v2;
}

@end