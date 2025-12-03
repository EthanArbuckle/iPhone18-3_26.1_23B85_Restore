@interface DetermineIntentResponse
- (DetermineIntentResponse)init;
- (DetermineIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (DetermineIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation DetermineIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___DetermineIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___DetermineIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (DetermineIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(DetermineIntentResponse *)self init];
  v8 = OBJC_IVAR___DetermineIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(DetermineIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (DetermineIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___DetermineIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DetermineIntentResponse();
  return [(DetermineIntentResponse *)&v3 init];
}

- (DetermineIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_2CE200();
  }

  else
  {
    v3 = 0;
  }

  return DetermineIntentResponse.init(propertiesByName:)(v3);
}

@end