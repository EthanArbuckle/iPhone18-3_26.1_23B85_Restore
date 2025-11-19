@interface ActivitySharingFriendDetailCompetitionTotalWinsTableViewCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (_TtC10FitnessApp60ActivitySharingFriendDetailCompetitionTotalWinsTableViewCell)initWithCoder:(id)a3;
- (_TtC10FitnessApp60ActivitySharingFriendDetailCompetitionTotalWinsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation ActivitySharingFriendDetailCompetitionTotalWinsTableViewCell

- (_TtC10FitnessApp60ActivitySharingFriendDetailCompetitionTotalWinsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_1003DA674(a3, a4, v6);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp60ActivitySharingFriendDetailCompetitionTotalWinsTableViewCell_totalWinsView) sizeThatFits:{a3.width, a3.height}];
  v7 = v6 + 0.0;
  result.height = v7;
  result.width = v5;
  return result;
}

- (_TtC10FitnessApp60ActivitySharingFriendDetailCompetitionTotalWinsTableViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC10FitnessApp60ActivitySharingFriendDetailCompetitionTotalWinsTableViewCell_totalWinsView;
  v5 = [objc_allocWithZone(ASCompetitionScoreView) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(&self->super.super.super.super.isa + v4) = v5;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end