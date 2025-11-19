@interface SilenceUnknownCallersModule
+ (id)defaults;
- (BOOL)isSelected;
@end

@implementation SilenceUnknownCallersModule

+ (id)defaults
{
  if (qword_8148 != -1)
  {
    sub_C78();
  }

  v3 = qword_8140;

  return v3;
}

- (BOOL)isSelected
{
  v2 = +[SilenceUnknownCallersModule defaults];
  v3 = [v2 BOOLForKey:TUCallFilteringPreferencesContactsOnlyKey];

  return v3;
}

@end