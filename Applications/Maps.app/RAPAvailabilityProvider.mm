@interface RAPAvailabilityProvider
+ (_TtC4Maps23RAPAvailabilityProvider)shared;
- (void)prewarm;
- (void)userAccountInfoDidChange;
@end

@implementation RAPAvailabilityProvider

+ (_TtC4Maps23RAPAvailabilityProvider)shared
{
  if (qword_101906828 != -1)
  {
    swift_once();
  }

  v3 = qword_101960280;

  return v3;
}

- (void)prewarm
{
  v2 = self;
  sub_10040B504();
}

- (void)userAccountInfoDidChange
{
  v2 = self;
  sub_10040BB0C();
}

@end