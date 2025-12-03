@interface TodayIntentResponse
- (TodayIntentResponse)init;
- (TodayIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (TodayIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation TodayIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___TodayIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___TodayIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (TodayIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(TodayIntentResponse *)self init];
  v8 = OBJC_IVAR___TodayIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(TodayIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (TodayIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___TodayIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for TodayIntentResponse();
  return [(TodayIntentResponse *)&v3 init];
}

- (TodayIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_1000A2C60();
  }

  else
  {
    v3 = 0;
  }

  return TodayIntentResponse.init(propertiesByName:)(v3);
}

@end