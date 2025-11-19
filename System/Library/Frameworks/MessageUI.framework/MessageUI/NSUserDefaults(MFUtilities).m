@interface NSUserDefaults(MFUtilities)
+ (CFPropertyListRef)mf_copyCompositionServicesPreferenceValueForKey:()MFUtilities;
+ (void)mf_setCompositionServicesPreferenceValue:()MFUtilities forKey:;
@end

@implementation NSUserDefaults(MFUtilities)

+ (void)mf_setCompositionServicesPreferenceValue:()MFUtilities forKey:
{
  value = a3;
  v5 = a4;
  v6 = _CopyCompositionServicesDomain();
  if (v6)
  {
    CFPreferencesSetAppValue(v5, value, v6);
    CFPreferencesAppSynchronize(v6);
    CFRelease(v6);
  }
}

+ (CFPropertyListRef)mf_copyCompositionServicesPreferenceValueForKey:()MFUtilities
{
  v3 = a3;
  v4 = _CopyCompositionServicesDomain();
  if (v4)
  {
    v5 = CFPreferencesCopyAppValue(v3, v4);
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end