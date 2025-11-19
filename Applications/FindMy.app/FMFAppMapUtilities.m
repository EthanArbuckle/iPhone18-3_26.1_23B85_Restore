@interface FMFAppMapUtilities
+ (unint64_t)storedMapType;
+ (unint64_t)transformedMapTypeForType:(unint64_t)a3;
@end

@implementation FMFAppMapUtilities

+ (unint64_t)transformedMapTypeForType:(unint64_t)a3
{
  if (a3 == 2)
  {
    return 3;
  }

  else
  {
    return 4 * (a3 == 1);
  }
}

+ (unint64_t)storedMapType
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"storedMapSegmentIndex"];

  if ([v3 integerValue])
  {
    v4 = +[FMFAppMapUtilities transformedMapTypeForType:](FMFAppMapUtilities, "transformedMapTypeForType:", [v3 integerValue]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end