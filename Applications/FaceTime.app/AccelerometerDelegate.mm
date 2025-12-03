@interface AccelerometerDelegate
- (_TtC8FaceTimeP33_2FA875DA5813DA1C29A712559EA29D9721AccelerometerDelegate)init;
- (void)accelerometer:(id)accelerometer didChangeDeviceOrientation:(int64_t)orientation;
- (void)dealloc;
@end

@implementation AccelerometerDelegate

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8FaceTimeP33_2FA875DA5813DA1C29A712559EA29D9721AccelerometerDelegate_accelerometer);
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
  sub_10009A394(orientation);
}

- (_TtC8FaceTimeP33_2FA875DA5813DA1C29A712559EA29D9721AccelerometerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end