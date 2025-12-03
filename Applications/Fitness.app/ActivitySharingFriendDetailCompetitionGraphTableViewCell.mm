@interface ActivitySharingFriendDetailCompetitionGraphTableViewCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (_TtC10FitnessApp56ActivitySharingFriendDetailCompetitionGraphTableViewCell)initWithCoder:(id)coder;
- (_TtC10FitnessApp56ActivitySharingFriendDetailCompetitionGraphTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation ActivitySharingFriendDetailCompetitionGraphTableViewCell

- (_TtC10FitnessApp56ActivitySharingFriendDetailCompetitionGraphTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_100389E6C(style, identifier, v6);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  width = size.width;
  [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp56ActivitySharingFriendDetailCompetitionGraphTableViewCell_graphView) preferredHeight];
  v7 = v6;
  v8 = width;
  result.height = v7;
  result.width = v8;
  return result;
}

- (_TtC10FitnessApp56ActivitySharingFriendDetailCompetitionGraphTableViewCell)initWithCoder:(id)coder
{
  companionGraph = [objc_opt_self() companionGraph];
  if (!companionGraph)
  {
    __break(1u);
  }

  v5 = OBJC_IVAR____TtC10FitnessApp56ActivitySharingFriendDetailCompetitionGraphTableViewCell_graphView;
  v6 = companionGraph;
  [(objc_class *)companionGraph setTranslatesAutoresizingMaskIntoConstraints:0];
  *(&self->super.super.super.super.isa + v5) = v6;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end