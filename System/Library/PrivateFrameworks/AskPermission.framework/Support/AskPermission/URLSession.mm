@interface URLSession
+ (URLSession)sharedSession;
- (URLSession)initWithConfiguration:(id)configuration;
@end

@implementation URLSession

- (URLSession)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [AMSEphemeralDefaults setHARLoggingItemLimit:200];
  v7.receiver = self;
  v7.super_class = URLSession;
  v5 = [(URLSession *)&v7 initWithConfiguration:configurationCopy];

  return v5;
}

+ (URLSession)sharedSession
{
  if (qword_100063D40 != -1)
  {
    sub_100028FC4();
  }

  v3 = qword_100063D48;

  return v3;
}

@end