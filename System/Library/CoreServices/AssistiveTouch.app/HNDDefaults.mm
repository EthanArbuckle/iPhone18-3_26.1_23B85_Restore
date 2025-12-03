@interface HNDDefaults
+ (void)initialize;
- (id)preferenceForKey:(id)key;
- (void)setPreference:(id)preference forKey:(id)key;
@end

@implementation HNDDefaults

+ (void)initialize
{
  CFPreferencesAppSynchronize(@"com.apple.handtool");
  v2 = [objc_allocWithZone(HNDDefaults) init];
  v3 = qword_100218A70;
  qword_100218A70 = v2;

  _objc_release_x1(v2, v3);
}

- (id)preferenceForKey:(id)key
{
  if (key)
  {
    v4 = CFPreferencesCopyAppValue(key, @"com.apple.handtool");
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setPreference:(id)preference forKey:(id)key
{
  if (key)
  {
    CFPreferencesSetAppValue(key, preference, @"com.apple.handtool");

    CFPreferencesAppSynchronize(@"com.apple.handtool");
  }
}

@end