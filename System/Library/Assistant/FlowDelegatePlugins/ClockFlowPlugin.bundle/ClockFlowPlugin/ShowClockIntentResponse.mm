@interface ShowClockIntentResponse
- (ShowClockIntentResponse)init;
- (ShowClockIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (ShowClockIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation ShowClockIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___ShowClockIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___ShowClockIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (ShowClockIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(ShowClockIntentResponse *)self init];
  v8 = OBJC_IVAR___ShowClockIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(ShowClockIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (ShowClockIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___ShowClockIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ShowClockIntentResponse();
  return [(ShowClockIntentResponse *)&v3 init];
}

- (ShowClockIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_15560();
  }

  else
  {
    v3 = 0;
  }

  return ShowClockIntentResponse.init(propertiesByName:)(v3);
}

@end