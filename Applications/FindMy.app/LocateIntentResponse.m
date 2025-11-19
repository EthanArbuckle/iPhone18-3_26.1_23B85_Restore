@interface LocateIntentResponse
- (LocateIntentResponse)init;
- (LocateIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (LocateIntentResponse)initWithPropertiesByName:(id)a3;
- (int64_t)code;
- (void)setCode:(int64_t)a3;
@end

@implementation LocateIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___LocateIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)a3
{
  v5 = OBJC_IVAR___LocateIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (LocateIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v6 = a4;
  v7 = [(LocateIntentResponse *)self init];
  v8 = OBJC_IVAR___LocateIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = a3;
  v9 = v7;
  [(LocateIntentResponse *)v9 setUserActivity:v6];

  return v9;
}

- (LocateIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___LocateIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for LocateIntentResponse();
  return [(LocateIntentResponse *)&v3 init];
}

- (LocateIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
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