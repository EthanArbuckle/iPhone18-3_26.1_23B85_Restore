@interface AwardsActivityTile
- (_TtC10FitnessApp18AwardsActivityTile)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)didTapAchievementWithTapGestureRecognizer:(id)recognizer;
- (void)prepareForReuse;
@end

@implementation AwardsActivityTile

- (_TtC10FitnessApp18AwardsActivityTile)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100338DBC(style, identifier, v6);
}

- (void)didTapAchievementWithTapGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_10033A2EC(recognizerCopy);
}

- (void)prepareForReuse
{
  swift_getObjectType();
  v6.receiver = self;
  v6.super_class = type metadata accessor for AwardsActivityTile();
  selfCopy = self;
  [(AwardsActivityTile *)&v6 prepareForReuse];
  v4 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_insetContentView);
  v5 = sub_1004313A0();
  [v4 setBackgroundColor:{v5, v6.receiver, v6.super_class}];
}

@end