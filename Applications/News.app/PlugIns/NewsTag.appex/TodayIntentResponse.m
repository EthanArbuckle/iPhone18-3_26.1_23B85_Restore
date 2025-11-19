@interface TodayIntentResponse
- (TodayIntentResponse)init;
- (TodayIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (TodayIntentResponse)initWithPropertiesByName:(id)a3;
- (int64_t)code;
- (void)setCode:(int64_t)a3;
@end

@implementation TodayIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___TodayIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)a3
{
  v5 = OBJC_IVAR___TodayIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (TodayIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v6 = a4;
  v7 = [(TodayIntentResponse *)self init];
  v8 = OBJC_IVAR___TodayIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = a3;
  v9 = v7;
  [(TodayIntentResponse *)v9 setUserActivity:v6];

  return v9;
}

- (TodayIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___TodayIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for TodayIntentResponse();
  return [(TodayIntentResponse *)&v3 init];
}

- (TodayIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
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