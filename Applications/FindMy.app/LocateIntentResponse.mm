@interface LocateIntentResponse
- (LocateIntentResponse)init;
- (LocateIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (LocateIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation LocateIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___LocateIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___LocateIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (LocateIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(LocateIntentResponse *)self init];
  v8 = OBJC_IVAR___LocateIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(LocateIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (LocateIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___LocateIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for LocateIntentResponse();
  return [(LocateIntentResponse *)&v3 init];
}

- (LocateIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  return LocateIntentResponse.init(propertiesByName:)(v3);
}

@end