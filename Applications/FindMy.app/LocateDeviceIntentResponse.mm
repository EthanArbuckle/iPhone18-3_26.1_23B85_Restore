@interface LocateDeviceIntentResponse
- (LocateDeviceIntentResponse)init;
- (LocateDeviceIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (LocateDeviceIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation LocateDeviceIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___LocateDeviceIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___LocateDeviceIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (LocateDeviceIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(LocateDeviceIntentResponse *)self init];
  v8 = OBJC_IVAR___LocateDeviceIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(LocateDeviceIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (LocateDeviceIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___LocateDeviceIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for LocateDeviceIntentResponse();
  return [(LocateDeviceIntentResponse *)&v3 init];
}

- (LocateDeviceIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  return LocateDeviceIntentResponse.init(propertiesByName:)(v3);
}

@end