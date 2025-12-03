@interface IMUserDataCull
+ (BOOL)isTimestampNewerThanMaxDeletedAge:(unint64_t)age;
@end

@implementation IMUserDataCull

+ (BOOL)isTimestampNewerThanMaxDeletedAge:(unint64_t)age
{
  v4 = +[NSDate date];
  [v4 timeIntervalSince1970];
  v6 = v5;

  if (![objc_opt_class() isTimestampTrustworthy:age] || !objc_msgSend(objc_opt_class(), "isTimestampTrustworthy:", v6))
  {
    return 1;
  }

  v7 = objc_opt_class();

  return [v7 isTimestamp:age newerThanMaxAgeFromRightNow:v6];
}

@end