@interface FBATeamListHeaderView
+ (NSString)reuseIdentifier;
- (void)configureForTeam:(id)a3;
- (void)hide;
- (void)setTeamNameLabel:(id)a3;
- (void)setTeamTypeLabel:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
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

- (void)setTeamNameLabel:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_teamNameLabel);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_teamNameLabel) = a3;
  v3 = a3;
}

- (void)setTeamTypeLabel:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_teamTypeLabel);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_teamTypeLabel) = a3;
  v3 = a3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10007EC38();
}

- (void)configureForTeam:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10007E88C(v4);
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