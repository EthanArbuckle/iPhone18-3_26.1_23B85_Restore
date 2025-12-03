@interface CMVO2MaxRetrocomputeStatePublisher
- (_TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher)init;
- (void)dealloc;
- (void)vo2MaxRetrocomputeManager:(id)manager didUpdateState:(id)state;
- (void)vo2MaxRetrocomputeManager:(id)manager updateFailedWithError:(id)error;
@end

@implementation CMVO2MaxRetrocomputeStatePublisher

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher_manager);
  selfCopy = self;
  [v4 stopRetrocomputeStatusUpdates];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(CMVO2MaxRetrocomputeStatePublisher *)&v6 dealloc];
}

- (void)vo2MaxRetrocomputeManager:(id)manager didUpdateState:(id)state
{
  managerCopy = manager;
  stateCopy = state;
  selfCopy = self;
  sub_29D84409C(stateCopy);
}

- (void)vo2MaxRetrocomputeManager:(id)manager updateFailedWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  selfCopy = self;
  sub_29D8442D4(errorCopy);
}

- (_TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end