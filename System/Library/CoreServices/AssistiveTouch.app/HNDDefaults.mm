@interface HNDDefaults
+ (void)initialize;
- (id)preferenceForKey:(id)a3;
- (void)setPreference:(id)a3 forKey:(id)a4;
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

- (id)preferenceForKey:(id)a3
{
  if (a3)
  {
    v4 = CFPreferencesCopyAppValue(a3, @"com.apple.handtool");
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setPreference:(id)a3 forKey:(id)a4
{
  if (a4)
  {
    CFPreferencesSetAppValue(a4, a3, @"com.apple.handtool");

    CFPreferencesAppSynchronize(@"com.apple.handtool");
  }
}

@end