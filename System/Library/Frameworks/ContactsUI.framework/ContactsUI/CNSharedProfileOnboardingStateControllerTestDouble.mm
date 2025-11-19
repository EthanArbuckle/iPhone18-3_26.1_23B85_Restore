@interface CNSharedProfileOnboardingStateControllerTestDouble
+ (id)userDefaults;
- (BOOL)canShowOnboardingAllowingMultiplePhoneNumbers:(BOOL)a3;
- (CNSharedProfileOnboardingStateControllerTestDouble)initWithIsPhotosReady:(BOOL)a3 multiplePhoneNumbersTiedToAppleID:(BOOL)a4 accountCanCreateSNaP:(BOOL)a5 hasCompletedOnboarding:(BOOL)a6 didSkipPoster:(BOOL)a7 lastShownVersionOnLaunch:(int64_t)a8 lastShownVersionInSettings:(int64_t)a9 deviceSupportsPosters:(BOOL)a10;
@end

@implementation CNSharedProfileOnboardingStateControllerTestDouble

- (BOOL)canShowOnboardingAllowingMultiplePhoneNumbers:(BOOL)a3
{
  v5 = [(CNSharedProfileOnboardingStateControllerTestDouble *)self accountCanCreateSNaP];
  if (v5)
    LOBYTE(v5) = a3 || ([MEMORY[0x1E69966E8] currentEnvironment], v6 = {;
  }

  return v5;
}

- (CNSharedProfileOnboardingStateControllerTestDouble)initWithIsPhotosReady:(BOOL)a3 multiplePhoneNumbersTiedToAppleID:(BOOL)a4 accountCanCreateSNaP:(BOOL)a5 hasCompletedOnboarding:(BOOL)a6 didSkipPoster:(BOOL)a7 lastShownVersionOnLaunch:(int64_t)a8 lastShownVersionInSettings:(int64_t)a9 deviceSupportsPosters:(BOOL)a10
{
  v20.receiver = self;
  v20.super_class = CNSharedProfileOnboardingStateControllerTestDouble;
  v16 = [(CNSharedProfileOnboardingStateControllerTestDouble *)&v20 init];
  v17 = v16;
  if (v16)
  {
    v16->_isPhotosReadyForOnboarding = a3;
    v16->_multiplePhoneNumbersTiedToAppleID = a4;
    v16->_accountCanCreateSNaP = a5;
    v16->_alwaysShowSNaPOnboarding = 0;
    v16->_deviceSupportsPosters = a10;
    v16->_iCloudSignedInToUseNicknames = 1;
    v16->_lastShownOnboardingVersion = a8;
    v16->_lastShowOnboardingVersionInSettings = a9;
    v16->_didSkipPosterSetup = a7;
    v16->_hasCompletedOnboarding = a6;
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