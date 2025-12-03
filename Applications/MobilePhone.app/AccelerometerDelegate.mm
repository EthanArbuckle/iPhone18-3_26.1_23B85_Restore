@interface AccelerometerDelegate
- (_TtC11MobilePhoneP33_4C1B1F2DAAC46834EA132CE9DCD273E421AccelerometerDelegate)init;
- (void)accelerometer:(id)accelerometer didChangeDeviceOrientation:(int64_t)orientation;
- (void)dealloc;
@end

@implementation AccelerometerDelegate

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC11MobilePhoneP33_4C1B1F2DAAC46834EA132CE9DCD273E421AccelerometerDelegate_accelerometer);
  selfCopy = self;
  [v2 setDelegate:0];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for AccelerometerDelegate();
  [(AccelerometerDelegate *)&v4 dealloc];
}

- (void)accelerometer:(id)accelerometer didChangeDeviceOrientation:(int64_t)orientation
{
  accelerometerCopy = accelerometer;
  selfCopy = self;
  specialized AccelerometerDelegate.accelerometer(_:didChange:)(orientation);
}

- (_TtC11MobilePhoneP33_4C1B1F2DAAC46834EA132CE9DCD273E421AccelerometerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end