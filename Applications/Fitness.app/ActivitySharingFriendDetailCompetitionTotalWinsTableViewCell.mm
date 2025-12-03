@interface ActivitySharingFriendDetailCompetitionTotalWinsTableViewCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (_TtC10FitnessApp60ActivitySharingFriendDetailCompetitionTotalWinsTableViewCell)initWithCoder:(id)coder;
- (_TtC10FitnessApp60ActivitySharingFriendDetailCompetitionTotalWinsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation ActivitySharingFriendDetailCompetitionTotalWinsTableViewCell

- (_TtC10FitnessApp60ActivitySharingFriendDetailCompetitionTotalWinsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_1003DA674(style, identifier, v6);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp60ActivitySharingFriendDetailCompetitionTotalWinsTableViewCell_totalWinsView) sizeThatFits:{size.width, size.height}];
  v7 = v6 + 0.0;
  result.height = v7;
  result.width = v5;
  return result;
}

- (_TtC10FitnessApp60ActivitySharingFriendDetailCompetitionTotalWinsTableViewCell)initWithCoder:(id)coder
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