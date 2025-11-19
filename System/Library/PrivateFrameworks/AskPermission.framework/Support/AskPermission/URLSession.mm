@interface URLSession
+ (URLSession)sharedSession;
- (URLSession)initWithConfiguration:(id)a3;
@end

@implementation URLSession

- (URLSession)initWithConfiguration:(id)a3
{
  v4 = a3;
  [AMSEphemeralDefaults setHARLoggingItemLimit:200];
  v7.receiver = self;
  v7.super_class = URLSession;
  v5 = [(URLSession *)&v7 initWithConfiguration:v4];

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