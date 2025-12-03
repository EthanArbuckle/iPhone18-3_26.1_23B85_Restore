@interface FBATeamListHeaderView
+ (NSString)reuseIdentifier;
- (void)configureForTeam:(id)team;
- (void)hide;
- (void)setTeamNameLabel:(id)label;
- (void)setTeamTypeLabel:(id)label;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FBATeamListHeaderView

+ (NSString)reuseIdentifier
{
  if (qword_100108E08 != -1)
  {
    swift_once();
  }

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setTeamNameLabel:(id)label
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_teamNameLabel);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_teamNameLabel) = label;
  labelCopy = label;
}

- (void)setTeamTypeLabel:(id)label
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_teamTypeLabel);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_teamTypeLabel) = label;
  labelCopy = label;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10007EC38();
}

- (void)configureForTeam:(id)team
{
  teamCopy = team;
  selfCopy = self;
  sub_10007E88C(teamCopy);
}

- (void)hide
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_stackView);
  if (v2)
  {
    [v2 setHidden:1];
  }

  else
  {
    __break(1u);
  }
}

@end