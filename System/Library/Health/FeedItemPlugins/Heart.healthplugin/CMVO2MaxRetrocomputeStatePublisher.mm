@interface CMVO2MaxRetrocomputeStatePublisher
- (_TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher)init;
- (void)dealloc;
- (void)vo2MaxRetrocomputeManager:(id)a3 didUpdateState:(id)a4;
- (void)vo2MaxRetrocomputeManager:(id)a3 updateFailedWithError:(id)a4;
@end

@implementation CMVO2MaxRetrocomputeStatePublisher

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher_manager);
  v5 = self;
  [v4 stopRetrocomputeStatusUpdates];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(CMVO2MaxRetrocomputeStatePublisher *)&v6 dealloc];
}

- (void)vo2MaxRetrocomputeManager:(id)a3 didUpdateState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_29D84409C(v7);
}

- (void)vo2MaxRetrocomputeManager:(id)a3 updateFailedWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_29D8442D4(v8);
}

- (_TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end