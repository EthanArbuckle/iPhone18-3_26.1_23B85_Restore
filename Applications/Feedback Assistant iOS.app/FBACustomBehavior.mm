@interface FBACustomBehavior
- (NSDictionary)answers;
- (NSString)description;
- (_TtC18Feedback_Assistant17FBACustomBehavior)init;
- (void)setAnswers:(id)answers;
- (void)setFormId:(id)id;
@end

@implementation FBACustomBehavior

- (void)setFormId:(id)id
{
  v4 = *(self + OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_formId);
  *(self + OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_formId) = id;
  idCopy = id;
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

- (void)setAnswers:(id)answers
{
  if (answers)
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
  selfCopy = self;
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