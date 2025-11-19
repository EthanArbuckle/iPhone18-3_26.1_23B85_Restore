@interface AnswerETAIntentResponse
- (AnswerETAIntentResponse)init;
- (AnswerETAIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (AnswerETAIntentResponse)initWithPropertiesByName:(id)a3;
- (int64_t)code;
- (void)setCode:(int64_t)a3;
@end

@implementation AnswerETAIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___AnswerETAIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)a3
{
  v5 = OBJC_IVAR___AnswerETAIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (AnswerETAIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v6 = a4;
  v7 = [(AnswerETAIntentResponse *)self init];
  v8 = OBJC_IVAR___AnswerETAIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = a3;
  v9 = v7;
  [(AnswerETAIntentResponse *)v9 setUserActivity:v6];

  return v9;
}

- (AnswerETAIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___AnswerETAIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AnswerETAIntentResponse();
  return [(AnswerETAIntentResponse *)&v3 init];
}

- (AnswerETAIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
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