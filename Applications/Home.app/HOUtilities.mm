@interface HOUtilities
+ (double)buttonPaddingToViewBottomForViewSizeSubclass:(int64_t)subclass;
+ (double)viewMarginInsetForViewSizeSubclass:(int64_t)subclass withViewWidth:(double)width;
+ (id)onboardingStatesForRestrictedGuestInvitation:(id)invitation;
@end

@implementation HOUtilities

+ (double)viewMarginInsetForViewSizeSubclass:(int64_t)subclass withViewWidth:(double)width
{
  result = (width + -288.0) * 0.5;
  if (subclass > 2)
  {
    return 74.0;
  }

  return result;
}

+ (double)buttonPaddingToViewBottomForViewSizeSubclass:(int64_t)subclass
{
  result = 60.0;
  if (subclass != 3)
  {
    return 24.0;
  }

  return result;
}

+ (id)onboardingStatesForRestrictedGuestInvitation:(id)invitation
{
  invitationCopy = invitation;
  v4 = objc_opt_new();
  if ([invitationCopy isInviteeRestrictedGuest])
  {
    restrictedGuestSchedule = [invitationCopy restrictedGuestSchedule];

    if (restrictedGuestSchedule)
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