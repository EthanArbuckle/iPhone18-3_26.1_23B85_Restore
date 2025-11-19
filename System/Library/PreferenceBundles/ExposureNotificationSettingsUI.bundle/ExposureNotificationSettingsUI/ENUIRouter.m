@interface ENUIRouter
+ (unint64_t)routeForAnalyticsConsent:(id)a3;
+ (unint64_t)routeForExposure:(id)a3;
+ (unint64_t)routeForNKDPath:(id)a3;
+ (unint64_t)routeForOnboarding:(id)a3;
+ (unint64_t)routeForOnboardingDeepLink:(id)a3;
+ (unint64_t)routeForPreAuthorize:(id)a3;
+ (unint64_t)routeForRegion:(id)a3;
@end

@implementation ENUIRouter

+ (unint64_t)routeForNKDPath:(id)a3
{
  v4 = [a3 pathComponents];
  v5 = [v4 firstObject];
  if ([v5 isEqualToString:@"ONBOARDING"])
  {
    v6 = [a1 routeForOnboarding:v4];
LABEL_11:
    v7 = v6;
    goto LABEL_12;
  }

  if ([v5 isEqualToString:@"ONBOARDING-DEEPLINK"])
  {
    v6 = [a1 routeForOnboardingDeepLink:v4];
    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"ANALYTICS-CONSENT"])
  {
    v6 = [a1 routeForAnalyticsConsent:v4];
    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"EXPOSURE"])
  {
    v6 = [a1 routeForExposure:v4];
    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"REGION"])
  {
    v6 = [a1 routeForRegion:v4];
    goto LABEL_11;
  }

  if ([v5 hasPrefix:@"TEST-VERIFICATION"])
  {
    v7 = 5;
  }

  else if ([v5 isEqualToString:@"AUTHORIZE"])
  {
    v7 = 6;
  }

  else if ([v5 isEqualToString:@"KEY-RELEASED"])
  {
    v7 = 7;
  }

  else if ([v5 isEqualToString:@"REPORT"])
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

+ (unint64_t)routeForPreAuthorize:(id)a3
{
  if ([a3 count] == &dword_0 + 1)
  {
    return 6;
  }

  else
  {
    return 9;
  }
}

+ (unint64_t)routeForOnboarding:(id)a3
{
  if ([a3 count] == &dword_0 + 2)
  {
    return 0;
  }

  else
  {
    return 9;
  }
}

+ (unint64_t)routeForOnboardingDeepLink:(id)a3
{
  v3 = a3;
  if ([v3 count] == &dword_0 + 1)
  {
    v4 = 1;
  }

  else if ([v3 count] == &dword_0 + 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 9;
  }

  return v4;
}

+ (unint64_t)routeForAnalyticsConsent:(id)a3
{
  result = [a3 count];
  if (result != 2)
  {
    return 9;
  }

  return result;
}

+ (unint64_t)routeForExposure:(id)a3
{
  result = [a3 count];
  if (result != 3)
  {
    return 9;
  }

  return result;
}

+ (unint64_t)routeForRegion:(id)a3
{
  if ([a3 count] == &dword_0 + 3)
  {
    return 4;
  }

  else
  {
    return 9;
  }
}

@end