@interface NSTimeZone(VSAdditions)
+ (uint64_t)vs_isTimeZoneSet;
@end

@implementation NSTimeZone(VSAdditions)

+ (uint64_t)vs_isTimeZoneSet
{
  v0 = CFPreferencesCopyAppValue(@"timezoneset", @"com.apple.preferences.datetime");
  v1 = v0;
  if (v0)
  {
    v2 = v0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v3 = MEMORY[0x277CBEAD8];
        v4 = *MEMORY[0x277CBE660];
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        [v3 raise:v4 format:{@"Unexpectedly, value was %@, instead of NSNumber.", v6}];
      }

      bOOLValue = [v2 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end