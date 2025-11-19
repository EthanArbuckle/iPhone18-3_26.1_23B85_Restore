@interface CrashDetector
- (void)willTerminate;
@end

@implementation CrashDetector

- (void)willTerminate
{
  v3 = qword_1EB95A9D8;

  if (v3 != -1)
  {
    swift_once();
  }

  sub_1B6AB9900();
  sub_1B6AB8F70();
  v4 = *self->userDefaults;
  v5 = sub_1B6AB92B0();
  [v4 setBool:1 forKey:v5];
}

@end