@interface STSelectUserIntentResponse
- (STSelectUserIntentResponse)init;
- (STSelectUserIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (STSelectUserIntentResponse)initWithPropertiesByName:(id)a3;
- (int64_t)code;
- (void)setCode:(int64_t)a3;
@end

@implementation STSelectUserIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___STSelectUserIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)a3
{
  v5 = OBJC_IVAR___STSelectUserIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (STSelectUserIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v6 = a4;
  v7 = [(STSelectUserIntentResponse *)self init];
  v8 = OBJC_IVAR___STSelectUserIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = a3;
  v9 = v7;
  [(STSelectUserIntentResponse *)v9 setUserActivity:v6];

  return v9;
}

- (STSelectUserIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___STSelectUserIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for STSelectUserIntentResponse();
  return [(STSelectUserIntentResponse *)&v3 init];
}

- (STSelectUserIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
  {
    v3 = sub_100049DA8();
  }

  else
  {
    v3 = 0;
  }

  return STSelectUserIntentResponse.init(propertiesByName:)(v3);
}

@end