@interface MockDeviceMotion
- ($1AB5FA073B851C12C2339EC22442E995)gravity;
- ($1AB5FA073B851C12C2339EC22442E995)rotationRate;
- ($1AB5FA073B851C12C2339EC22442E995)userAcceleration;
- (_TtC18AXMotionCuesServer16MockDeviceMotion)init;
- (_TtC18AXMotionCuesServer16MockDeviceMotion)initWithCoder:(id)a3;
@end

@implementation MockDeviceMotion

- ($1AB5FA073B851C12C2339EC22442E995)userAcceleration
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18AXMotionCuesServer16MockDeviceMotion__userAcceleration);
  v3 = *(&self->super.super._internalLogItem + OBJC_IVAR____TtC18AXMotionCuesServer16MockDeviceMotion__userAcceleration);
  v4 = *(&self->super._internal + OBJC_IVAR____TtC18AXMotionCuesServer16MockDeviceMotion__userAcceleration);
  result.var2 = v4;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)gravity
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18AXMotionCuesServer16MockDeviceMotion__gravity);
  v3 = *(&self->super.super._internalLogItem + OBJC_IVAR____TtC18AXMotionCuesServer16MockDeviceMotion__gravity);
  v4 = *(&self->super._internal + OBJC_IVAR____TtC18AXMotionCuesServer16MockDeviceMotion__gravity);
  result.var2 = v4;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)rotationRate
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18AXMotionCuesServer16MockDeviceMotion__rotationRate);
  v3 = *(&self->super.super._internalLogItem + OBJC_IVAR____TtC18AXMotionCuesServer16MockDeviceMotion__rotationRate);
  v4 = *(&self->super._internal + OBJC_IVAR____TtC18AXMotionCuesServer16MockDeviceMotion__rotationRate);
  result.var2 = v4;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (_TtC18AXMotionCuesServer16MockDeviceMotion)initWithCoder:(id)a3
{
  result = sub_32E48();
  __break(1u);
  return result;
}

- (_TtC18AXMotionCuesServer16MockDeviceMotion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end