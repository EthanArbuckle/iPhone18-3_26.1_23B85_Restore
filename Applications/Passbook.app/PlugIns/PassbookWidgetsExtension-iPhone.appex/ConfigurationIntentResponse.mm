@interface ConfigurationIntentResponse
- (ConfigurationIntentResponse)init;
- (ConfigurationIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (ConfigurationIntentResponse)initWithPropertiesByName:(id)a3;
@end

@implementation ConfigurationIntentResponse

- (ConfigurationIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v6 = a4;
  v7 = [(ConfigurationIntentResponse *)self init];
  *(&v7->super.super.isa + OBJC_IVAR___ConfigurationIntentResponse_code) = a3;
  v8 = v7;
  [(ConfigurationIntentResponse *)v8 setUserActivity:v6];

  return v8;
}

- (ConfigurationIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___ConfigurationIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ConfigurationIntentResponse();
  return [(ConfigurationIntentResponse *)&v3 init];
}

- (ConfigurationIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
  {
    v3 = sub_10000CD04();
  }

  else
  {
    v3 = 0;
  }

  return sub_10000C248(v3);
}

@end