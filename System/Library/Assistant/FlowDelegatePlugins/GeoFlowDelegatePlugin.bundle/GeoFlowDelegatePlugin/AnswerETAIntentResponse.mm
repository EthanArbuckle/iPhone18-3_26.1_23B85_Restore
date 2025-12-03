@interface AnswerETAIntentResponse
- (AnswerETAIntentResponse)init;
- (AnswerETAIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (AnswerETAIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation AnswerETAIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___AnswerETAIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___AnswerETAIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (AnswerETAIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(AnswerETAIntentResponse *)self init];
  v8 = OBJC_IVAR___AnswerETAIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(AnswerETAIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (AnswerETAIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___AnswerETAIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AnswerETAIntentResponse();
  return [(AnswerETAIntentResponse *)&v3 init];
}

- (AnswerETAIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  return AnswerETAIntentResponse.init(propertiesByName:)(v3);
}

@end