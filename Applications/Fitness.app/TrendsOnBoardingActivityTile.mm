@interface TrendsOnBoardingActivityTile
- (_TtC10FitnessApp28TrendsOnBoardingActivityTile)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)didTapGetStartedButton;
- (void)prepareForReuse;
@end

@implementation TrendsOnBoardingActivityTile

- (_TtC10FitnessApp28TrendsOnBoardingActivityTile)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1002C58BC(a3, a4, v6);
}

- (void)didTapGetStartedButton
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_configuration);
  if (v2 - 1 >= 2)
  {
    if (v2)
    {
      v3 = self;
      v4 = sub_1002C79D8(v2);
      v2(v4);

      sub_100282D3C(v2);
    }

    else
    {

      sub_10000B210(0);
    }
  }
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1002C7578();
}

@end