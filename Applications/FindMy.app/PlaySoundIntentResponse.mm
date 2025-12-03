@interface PlaySoundIntentResponse
- (PlaySoundIntentResponse)init;
- (PlaySoundIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (PlaySoundIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation PlaySoundIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___PlaySoundIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___PlaySoundIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (PlaySoundIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(PlaySoundIntentResponse *)self init];
  v8 = OBJC_IVAR___PlaySoundIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(PlaySoundIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (PlaySoundIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___PlaySoundIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for PlaySoundIntentResponse();
  return [(PlaySoundIntentResponse *)&v3 init];
}

- (PlaySoundIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  return PlaySoundIntentResponse.init(propertiesByName:)(v3);
}

@end