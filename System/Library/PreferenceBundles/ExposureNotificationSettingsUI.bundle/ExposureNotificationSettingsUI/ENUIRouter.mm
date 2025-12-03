@interface ENUIRouter
+ (unint64_t)routeForAnalyticsConsent:(id)consent;
+ (unint64_t)routeForExposure:(id)exposure;
+ (unint64_t)routeForNKDPath:(id)path;
+ (unint64_t)routeForOnboarding:(id)onboarding;
+ (unint64_t)routeForOnboardingDeepLink:(id)link;
+ (unint64_t)routeForPreAuthorize:(id)authorize;
+ (unint64_t)routeForRegion:(id)region;
@end

@implementation ENUIRouter

+ (unint64_t)routeForNKDPath:(id)path
{
  pathComponents = [path pathComponents];
  firstObject = [pathComponents firstObject];
  if ([firstObject isEqualToString:@"ONBOARDING"])
  {
    v6 = [self routeForOnboarding:pathComponents];
LABEL_11:
    v7 = v6;
    goto LABEL_12;
  }

  if ([firstObject isEqualToString:@"ONBOARDING-DEEPLINK"])
  {
    v6 = [self routeForOnboardingDeepLink:pathComponents];
    goto LABEL_11;
  }

  if ([firstObject isEqualToString:@"ANALYTICS-CONSENT"])
  {
    v6 = [self routeForAnalyticsConsent:pathComponents];
    goto LABEL_11;
  }

  if ([firstObject isEqualToString:@"EXPOSURE"])
  {
    v6 = [self routeForExposure:pathComponents];
    goto LABEL_11;
  }

  if ([firstObject isEqualToString:@"REGION"])
  {
    v6 = [self routeForRegion:pathComponents];
    goto LABEL_11;
  }

  if ([firstObject hasPrefix:@"TEST-VERIFICATION"])
  {
    v7 = 5;
  }

  else if ([firstObject isEqualToString:@"AUTHORIZE"])
  {
    v7 = 6;
  }

  else if ([firstObject isEqualToString:@"KEY-RELEASED"])
  {
    v7 = 7;
  }

  else if ([firstObject isEqualToString:@"REPORT"])
  {
    v7 = 8;
  }

  else
  {
    v7 = 9;
  }

LABEL_12:

  return v7;
}

+ (unint64_t)routeForPreAuthorize:(id)authorize
{
  if ([authorize count] == &dword_0 + 1)
  {
    return 6;
  }

  else
  {
    return 9;
  }
}

+ (unint64_t)routeForOnboarding:(id)onboarding
{
  if ([onboarding count] == &dword_0 + 2)
  {
    return 0;
  }

  else
  {
    return 9;
  }
}

+ (unint64_t)routeForOnboardingDeepLink:(id)link
{
  linkCopy = link;
  if ([linkCopy count] == &dword_0 + 1)
  {
    v4 = 1;
  }

  else if ([linkCopy count] == &dword_0 + 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 9;
  }

  return v4;
}

+ (unint64_t)routeForAnalyticsConsent:(id)consent
{
  result = [consent count];
  if (result != 2)
  {
    return 9;
  }

  return result;
}

+ (unint64_t)routeForExposure:(id)exposure
{
  result = [exposure count];
  if (result != 3)
  {
    return 9;
  }

  return result;
}

+ (unint64_t)routeForRegion:(id)region
{
  if ([region count] == &dword_0 + 3)
  {
    return 4;
  }

  else
  {
    return 9;
  }
}

@end