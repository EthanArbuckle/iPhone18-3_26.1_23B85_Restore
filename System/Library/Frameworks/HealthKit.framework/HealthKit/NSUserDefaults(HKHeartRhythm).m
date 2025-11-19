@interface NSUserDefaults(HKHeartRhythm)
+ (id)hk_heartRhythmDefaults;
- (void)hk_demoResultKeys;
- (void)hk_setElectrocardiogramFirstRecordingCompleted:()HKHeartRhythm;
@end

@implementation NSUserDefaults(HKHeartRhythm)

+ (id)hk_heartRhythmDefaults
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.private.health.heart-rhythm"];

  return v0;
}

- (void)hk_demoResultKeys
{
  v1 = [a1 arrayForKey:@"DemoResultKeys"];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = v3;

  return v3;
}

- (void)hk_setElectrocardiogramFirstRecordingCompleted:()HKHeartRhythm
{
  if ([a1 BOOLForKey:@"HKElectrocardiogramFirstRecordingCompleted"] != a3)
  {
    [a1 setBool:a3 forKey:@"HKElectrocardiogramFirstRecordingCompleted"];
    v5 = [MEMORY[0x1E695DFD8] setWithObject:@"HKElectrocardiogramFirstRecordingCompleted"];
    HKSynchronizeNanoPreferencesUserDefaults(@"com.apple.private.health.heart-rhythm", v5);
  }
}

@end