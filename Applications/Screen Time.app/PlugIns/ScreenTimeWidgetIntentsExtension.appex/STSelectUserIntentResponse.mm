@interface STSelectUserIntentResponse
- (STSelectUserIntentResponse)init;
- (STSelectUserIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (STSelectUserIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation STSelectUserIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___STSelectUserIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___STSelectUserIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (STSelectUserIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(STSelectUserIntentResponse *)self init];
  v8 = OBJC_IVAR___STSelectUserIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(STSelectUserIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (STSelectUserIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___STSelectUserIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for STSelectUserIntentResponse();
  return [(STSelectUserIntentResponse *)&v3 init];
}

- (STSelectUserIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_10000706C();
  }

  else
  {
    v3 = 0;
  }

  return STSelectUserIntentResponse.init(propertiesByName:)(v3);
}

@end