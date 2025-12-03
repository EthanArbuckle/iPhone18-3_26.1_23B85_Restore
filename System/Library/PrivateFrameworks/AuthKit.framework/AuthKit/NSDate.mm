@interface NSDate
+ (id)_httpDateFormatter;
+ (id)ak_dateFromPasskeyVerificationDateString:(id)string;
+ (id)ak_expiryDateFromServerDate:(id)date localDate:(id)localDate ttl:(double)ttl;
@end

@implementation NSDate

+ (id)ak_expiryDateFromServerDate:(id)date localDate:(id)localDate ttl:(double)ttl
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  v11 = 0;
  objc_storeStrong(&v11, localDate);
  v10[1] = *&ttl;
  v10[0] = [location[0] dateByAddingTimeInterval:ttl];
  v9 = [v11 dateByAddingTimeInterval:ttl];
  if ([v9 compare:v10[0]] == -1)
  {
    v13 = _objc_retain(v9);
  }

  else
  {
    v13 = _objc_retain(v10[0]);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  v5 = v13;

  return v5;
}

+ (id)ak_dateFromPasskeyVerificationDateString:(id)string
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  _httpDateFormatter = [selfCopy _httpDateFormatter];
  v5 = [_httpDateFormatter dateFromString:location[0]];
  _objc_release(_httpDateFormatter);
  objc_storeStrong(location, 0);

  return v5;
}

+ (id)_httpDateFormatter
{
  v7[2] = self;
  v7[1] = a2;
  v7[0] = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  v6 = objc_alloc_init(NSDateFormatter);
  [v6 setDateFormat:@"EEEE, dd LLL yyyy HH:mm:ss zzz"];
  [v6 setLocale:v7[0]];
  v3 = v6;
  v4 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [v3 setTimeZone:?];
  _objc_release(v4);
  v5 = _objc_retain(v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(v7, 0);

  return v5;
}

@end