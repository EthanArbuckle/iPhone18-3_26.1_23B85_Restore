@interface NSDateFormatter(AppleMediaServices)
+ (id)_ams_serverFriendlyFormatter;
+ (id)_ams_serverFriendlyLocalTimeZoneFormatter;
+ (id)ams_serverFriendlyFormatter;
+ (id)ams_serverFriendlyLocalTimeZoneFormatter;
@end

@implementation NSDateFormatter(AppleMediaServices)

+ (id)ams_serverFriendlyFormatter
{
  if (_MergedGlobals_165 != -1)
  {
    dispatch_once(&_MergedGlobals_165, &__block_literal_global_157);
  }

  v1 = qword_1ED6E32D8;

  return v1;
}

+ (id)ams_serverFriendlyLocalTimeZoneFormatter
{
  if (qword_1ED6E32E0 != -1)
  {
    dispatch_once(&qword_1ED6E32E0, &__block_literal_global_2);
  }

  v1 = qword_1ED6E32E8;

  return v1;
}

+ (id)_ams_serverFriendlyFormatter
{
  v0 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US_POSIX"];
  v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v1 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
  [v1 setLocale:v0];
  v2 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v1 setTimeZone:v2];

  return v1;
}

+ (id)_ams_serverFriendlyLocalTimeZoneFormatter
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v0 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss"];

  return v0;
}

@end