@interface VSTVAppDeveloperSettingsUtilities
+ (id)stringFromDate:(id)date;
@end

@implementation VSTVAppDeveloperSettingsUtilities

+ (id)stringFromDate:(id)date
{
  dateCopy = date;
  v4 = objc_alloc_init(NSDateFormatter);
  v5 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v4 setLocale:v5];

  [v4 setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
  v6 = [v4 stringFromDate:dateCopy];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &stru_83C0;
  }

  v8 = v7;

  return v7;
}

@end