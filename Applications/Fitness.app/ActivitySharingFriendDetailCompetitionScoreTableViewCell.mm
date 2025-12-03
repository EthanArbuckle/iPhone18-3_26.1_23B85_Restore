@interface ActivitySharingFriendDetailCompetitionScoreTableViewCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (_TtC10FitnessApp56ActivitySharingFriendDetailCompetitionScoreTableViewCell)initWithCoder:(id)coder;
- (_TtC10FitnessApp56ActivitySharingFriendDetailCompetitionScoreTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation ActivitySharingFriendDetailCompetitionScoreTableViewCell

- (_TtC10FitnessApp56ActivitySharingFriendDetailCompetitionScoreTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_10026CCA8(style, identifier, v6);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp56ActivitySharingFriendDetailCompetitionScoreTableViewCell_scoreView) sizeThatFits:{size.width, size.height}];
  result.height = v6;
  result.width = v5;
  return result;
}

- (_TtC10FitnessApp56ActivitySharingFriendDetailCompetitionScoreTableViewCell)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC10FitnessApp56ActivitySharingFriendDetailCompetitionScoreTableViewCell_scoreView;
  *(&self->super.super.super.super.isa + v3) = sub_10026CBF4();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end