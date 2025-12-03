@interface PHOrientationMonitor_OBJC
- (_TtC11MobilePhone25PHOrientationMonitor_OBJC)init;
- (int64_t)makeInterfaceOrientationFrom:(int64_t)from whenFailing:(int64_t)failing;
@end

@implementation PHOrientationMonitor_OBJC

- (int64_t)makeInterfaceOrientationFrom:(int64_t)from whenFailing:(int64_t)failing
{
  if (UIDeviceOrientationIsValidInterfaceOrientation(from) && from <= 4 && (from - 1) < 4)
  {
    return from;
  }

  return failing;
}

- (_TtC11MobilePhone25PHOrientationMonitor_OBJC)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end