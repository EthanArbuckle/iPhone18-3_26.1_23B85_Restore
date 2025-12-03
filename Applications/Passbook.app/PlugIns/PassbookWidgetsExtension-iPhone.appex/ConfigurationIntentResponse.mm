@interface ConfigurationIntentResponse
- (ConfigurationIntentResponse)init;
- (ConfigurationIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (ConfigurationIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation ConfigurationIntentResponse

- (ConfigurationIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(ConfigurationIntentResponse *)self init];
  *(&v7->super.super.isa + OBJC_IVAR___ConfigurationIntentResponse_code) = code;
  v8 = v7;
  [(ConfigurationIntentResponse *)v8 setUserActivity:activityCopy];

  return v8;
}

- (ConfigurationIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___ConfigurationIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ConfigurationIntentResponse();
  return [(ConfigurationIntentResponse *)&v3 init];
}

- (ConfigurationIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
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