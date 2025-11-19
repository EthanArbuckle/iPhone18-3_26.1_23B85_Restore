@interface ActivitySharingFriendDetailCompetitionScoreTableViewCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (_TtC10FitnessApp56ActivitySharingFriendDetailCompetitionScoreTableViewCell)initWithCoder:(id)a3;
- (_TtC10FitnessApp56ActivitySharingFriendDetailCompetitionScoreTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation ActivitySharingFriendDetailCompetitionScoreTableViewCell

- (_TtC10FitnessApp56ActivitySharingFriendDetailCompetitionScoreTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_10026CCA8(a3, a4, v6);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp56ActivitySharingFriendDetailCompetitionScoreTableViewCell_scoreView) sizeThatFits:{a3.width, a3.height}];
  result.height = v6;
  result.width = v5;
  return result;
}

- (_TtC10FitnessApp56ActivitySharingFriendDetailCompetitionScoreTableViewCell)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC10FitnessApp56ActivitySharingFriendDetailCompetitionScoreTableViewCell_scoreView;
  *(&self->super.super.super.super.isa + v3) = sub_10026CBF4();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end