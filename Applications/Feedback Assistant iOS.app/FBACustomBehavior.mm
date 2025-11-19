@interface FBACustomBehavior
- (NSDictionary)answers;
- (NSString)description;
- (_TtC18Feedback_Assistant17FBACustomBehavior)init;
- (void)setAnswers:(id)a3;
- (void)setFormId:(id)a3;
@end

@implementation FBACustomBehavior

- (void)setFormId:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_formId);
  *(self + OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_formId) = a3;
  v3 = a3;
}

- (NSDictionary)answers
{
  if (*(self + OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_answers))
  {
    v2 = *(self + OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_answers);

    v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

- (void)setAnswers:(id)a3
{
  if (a3)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = *(self + OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_answers);
  *(self + OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_answers) = v4;
}

- (NSString)description
{
  v2 = self;
  FBACustomBehavior.description.getter();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtC18Feedback_Assistant17FBACustomBehavior)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end