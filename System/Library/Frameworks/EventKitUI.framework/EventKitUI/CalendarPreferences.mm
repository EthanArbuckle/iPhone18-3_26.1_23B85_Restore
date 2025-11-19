@interface CalendarPreferences
+ (id)sharedPreferences;
@end

@implementation CalendarPreferences

+ (id)sharedPreferences
{
  if (sharedPreferences_onceToken != -1)
  {
    +[CalendarPreferences sharedPreferences];
  }

  v3 = sharedPreferences_sharedPreferences;

  return v3;
}

void __40__CalendarPreferences_sharedPreferences__block_invoke()
{
  v0 = objc_alloc_init(CalendarPreferences);
  v1 = sharedPreferences_sharedPreferences;
  sharedPreferences_sharedPreferences = v0;
}

@end