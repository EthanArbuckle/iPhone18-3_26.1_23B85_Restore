@interface VSTVAppDeveloperSettingsUtilities
+ (id)stringFromDate:(id)a3;
@end

@implementation VSTVAppDeveloperSettingsUtilities

+ (id)stringFromDate:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSDateFormatter);
  v5 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v4 setLocale:v5];

  [v4 setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
  v6 = [v4 stringFromDate:v3];

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