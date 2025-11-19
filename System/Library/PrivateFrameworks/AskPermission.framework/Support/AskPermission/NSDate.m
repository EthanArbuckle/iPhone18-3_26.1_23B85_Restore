@interface NSDate
+ (BOOL)isDateExpired:(id)a3;
+ (BOOL)isDateInFuture:(id)a3;
@end

@implementation NSDate

+ (BOOL)isDateExpired:(id)a3
{
  if (!a3)
  {
    return 1;
  }

  v3 = a3;
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:v3];
  v6 = v5;

  v7 = v6 >= 2592000.0;
  return v7;
}

+ (BOOL)isDateInFuture:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:v3];
  v6 = v5;

  v7 = v6 < 0.0;
  return v7;
}

@end