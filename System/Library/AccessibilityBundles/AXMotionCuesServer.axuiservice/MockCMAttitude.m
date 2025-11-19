@interface MockCMAttitude
- ($01BB1521EC52D44A8E7628F5261DCEC8)quaternion;
- (_TtC18AXMotionCuesServer14MockCMAttitude)init;
- (_TtC18AXMotionCuesServer14MockCMAttitude)initWithCoder:(id)a3;
@end

@implementation MockCMAttitude

- ($01BB1521EC52D44A8E7628F5261DCEC8)quaternion
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC18AXMotionCuesServer14MockCMAttitude__quaternion);
  v3 = *(&self->super._internal + OBJC_IVAR____TtC18AXMotionCuesServer14MockCMAttitude__quaternion);
  v4 = *&self->_roll[OBJC_IVAR____TtC18AXMotionCuesServer14MockCMAttitude__quaternion];
  v5 = *&self->_pitch[OBJC_IVAR____TtC18AXMotionCuesServer14MockCMAttitude__quaternion];
  result.var3 = v5;
  result.var2 = v4;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (_TtC18AXMotionCuesServer14MockCMAttitude)initWithCoder:(id)a3
{
  result = sub_32E48();
  __break(1u);
  return result;
}

- (_TtC18AXMotionCuesServer14MockCMAttitude)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end