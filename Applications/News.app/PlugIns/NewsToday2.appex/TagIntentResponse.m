@interface TagIntentResponse
- (TagIntentResponse)init;
- (TagIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (TagIntentResponse)initWithPropertiesByName:(id)a3;
- (int64_t)code;
- (void)setCode:(int64_t)a3;
@end

@implementation TagIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___TagIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)a3
{
  v5 = OBJC_IVAR___TagIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (TagIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v6 = a4;
  v7 = [(TagIntentResponse *)self init];
  v8 = OBJC_IVAR___TagIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = a3;
  v9 = v7;
  [(TagIntentResponse *)v9 setUserActivity:v6];

  return v9;
}

- (TagIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___TagIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for TagIntentResponse();
  return [(TagIntentResponse *)&v3 init];
}

- (TagIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
  {
    v3 = sub_1000CAC10();
  }

  else
  {
    v3 = 0;
  }

  return TagIntentResponse.init(propertiesByName:)(v3);
}

@end