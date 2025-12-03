@interface TagIntentResponse
- (TagIntentResponse)init;
- (TagIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (TagIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation TagIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___TagIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___TagIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (TagIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(TagIntentResponse *)self init];
  v8 = OBJC_IVAR___TagIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(TagIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (TagIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___TagIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for TagIntentResponse();
  return [(TagIntentResponse *)&v3 init];
}

- (TagIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_1000A2C60();
  }

  else
  {
    v3 = 0;
  }

  return TagIntentResponse.init(propertiesByName:)(v3);
}

@end