@interface AwardsActivityTile
- (_TtC10FitnessApp18AwardsActivityTile)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)didTapAchievementWithTapGestureRecognizer:(id)a3;
- (void)prepareForReuse;
@end

@implementation AwardsActivityTile

- (_TtC10FitnessApp18AwardsActivityTile)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_100338DBC(a3, a4, v6);
}

- (void)didTapAchievementWithTapGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10033A2EC(v4);
}

- (void)prepareForReuse
{
  swift_getObjectType();
  v6.receiver = self;
  v6.super_class = type metadata accessor for AwardsActivityTile();
  v3 = self;
  [(AwardsActivityTile *)&v6 prepareForReuse];
  v4 = *(&v3->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_insetContentView);
  v5 = sub_1004313A0();
  [v4 setBackgroundColor:{v5, v6.receiver, v6.super_class}];
}

@end