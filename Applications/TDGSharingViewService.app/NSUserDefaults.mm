@interface NSUserDefaults
+ (id)appDefaults;
@end

@implementation NSUserDefaults

+ (id)appDefaults
{
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithSuiteName:v3];

  if (v4)
  {

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end