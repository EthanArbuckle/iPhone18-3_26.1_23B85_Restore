@interface ActivitySharingFriendDetailCompetitionGraphTableViewCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (_TtC10FitnessApp56ActivitySharingFriendDetailCompetitionGraphTableViewCell)initWithCoder:(id)a3;
- (_TtC10FitnessApp56ActivitySharingFriendDetailCompetitionGraphTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation ActivitySharingFriendDetailCompetitionGraphTableViewCell

- (_TtC10FitnessApp56ActivitySharingFriendDetailCompetitionGraphTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_100389E6C(a3, a4, v6);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  width = a3.width;
  [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp56ActivitySharingFriendDetailCompetitionGraphTableViewCell_graphView) preferredHeight];
  v7 = v6;
  v8 = width;
  result.height = v7;
  result.width = v8;
  return result;
}

- (_TtC10FitnessApp56ActivitySharingFriendDetailCompetitionGraphTableViewCell)initWithCoder:(id)a3
{
  v4 = [objc_opt_self() companionGraph];
  if (!v4)
  {
    __break(1u);
  }

  v5 = OBJC_IVAR____TtC10FitnessApp56ActivitySharingFriendDetailCompetitionGraphTableViewCell_graphView;
  v6 = v4;
  [(objc_class *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(&self->super.super.super.super.isa + v5) = v6;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end