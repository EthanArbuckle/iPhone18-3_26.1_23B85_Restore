@interface NSDate
+ (BOOL)isDateExpired:(id)expired;
+ (BOOL)isDateInFuture:(id)future;
@end

@implementation NSDate

+ (BOOL)isDateExpired:(id)expired
{
  if (!expired)
  {
    return 1;
  }

  expiredCopy = expired;
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:expiredCopy];
  v6 = v5;

  v7 = v6 >= 2592000.0;
  return v7;
}

+ (BOOL)isDateInFuture:(id)future
{
  if (!future)
  {
    return 0;
  }

  futureCopy = future;
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:futureCopy];
  v6 = v5;

  v7 = v6 < 0.0;
  return v7;
}

@end