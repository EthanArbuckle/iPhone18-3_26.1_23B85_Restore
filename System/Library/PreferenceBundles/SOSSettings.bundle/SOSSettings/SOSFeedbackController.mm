@interface SOSFeedbackController
- (_TtC11SOSSettings21SOSFeedbackController)init;
- (_TtC11SOSSettings21SOSFeedbackController)initWithDelegate:(id)delegate legalText:(id)text;
- (id)getFeedbackViewController;
@end

@implementation SOSFeedbackController

- (_TtC11SOSSettings21SOSFeedbackController)initWithDelegate:(id)delegate legalText:(id)text
{
  if (text)
  {
    v4 = sub_146D4();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = swift_unknownObjectRetain();
  v8 = sub_13C04(v7, v4, v6);
  swift_unknownObjectRelease();
  return v8;
}

- (id)getFeedbackViewController
{
  v2 = *(**(&self->super.isa + OBJC_IVAR____TtC11SOSSettings21SOSFeedbackController_feedbackViewController) + 184);
  selfCopy = self;

  v5 = v2(v4);

  return v5;
}

- (_TtC11SOSSettings21SOSFeedbackController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end