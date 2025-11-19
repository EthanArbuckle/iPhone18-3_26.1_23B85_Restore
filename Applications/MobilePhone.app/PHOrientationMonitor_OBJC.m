@interface PHOrientationMonitor_OBJC
- (_TtC11MobilePhone25PHOrientationMonitor_OBJC)init;
- (int64_t)makeInterfaceOrientationFrom:(int64_t)a3 whenFailing:(int64_t)a4;
@end

@implementation PHOrientationMonitor_OBJC

- (int64_t)makeInterfaceOrientationFrom:(int64_t)a3 whenFailing:(int64_t)a4
{
  if (UIDeviceOrientationIsValidInterfaceOrientation(a3) && a3 <= 4 && (a3 - 1) < 4)
  {
    return a3;
  }

  return a4;
}

- (_TtC11MobilePhone25PHOrientationMonitor_OBJC)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end