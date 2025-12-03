@interface AchievementsListTableViewCell
- (_TtC10FitnessApp29AchievementsListTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
@end

@implementation AchievementsListTableViewCell

- (_TtC10FitnessApp29AchievementsListTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_1001E0BA8(style, identifier, v6);
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AchievementsListTableViewCell();
  v2 = v4.receiver;
  [(AchievementsListTableViewCell *)&v4 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC10FitnessApp29AchievementsListTableViewCell_achievementCellContentView];
  [*(v3 + OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_titleLabel) setText:{0, v4.receiver, v4.super_class}];
  [*(v3 + OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_detailLabel) setText:0];
}

@end