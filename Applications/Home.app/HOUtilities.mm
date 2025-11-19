@interface HOUtilities
+ (double)buttonPaddingToViewBottomForViewSizeSubclass:(int64_t)a3;
+ (double)viewMarginInsetForViewSizeSubclass:(int64_t)a3 withViewWidth:(double)a4;
+ (id)onboardingStatesForRestrictedGuestInvitation:(id)a3;
@end

@implementation HOUtilities

+ (double)viewMarginInsetForViewSizeSubclass:(int64_t)a3 withViewWidth:(double)a4
{
  result = (a4 + -288.0) * 0.5;
  if (a3 > 2)
  {
    return 74.0;
  }

  return result;
}

+ (double)buttonPaddingToViewBottomForViewSizeSubclass:(int64_t)a3
{
  result = 60.0;
  if (a3 != 3)
  {
    return 24.0;
  }

  return result;
}

+ (id)onboardingStatesForRestrictedGuestInvitation:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if ([v3 isInviteeRestrictedGuest])
  {
    v5 = [v3 restrictedGuestSchedule];

    if (v5)
    {
      [v4 addObject:&off_1000CB6C8];
    }

    [v4 addObject:&off_1000CB6E0];
    [v4 addObject:&off_1000CB6F8];
  }

  v6 = [v4 copy];

  return v6;
}

@end