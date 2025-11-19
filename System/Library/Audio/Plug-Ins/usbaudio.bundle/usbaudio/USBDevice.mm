@interface USBDevice
- (BOOL)acquireBox:(BOOL)a3 fromHAL:(BOOL)a4;
- (_TtC9AUASDCore9USBDevice)initWithBoxUID:(id)a3 withPlugin:(id)a4;
- (void)dealloc;
@end

@implementation USBDevice

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC9AUASDCore9USBDevice_activeConfig;
  swift_beginAccess();
  if (*&self->speed[v3])
  {
    v4 = self;

    sub_100022C14();

    v5 = *&self->speed[v3];
  }

  else
  {
    v6 = self;
  }

  *&self->speed[v3] = 0;

  v7.receiver = self;
  v7.super_class = type metadata accessor for USBDevice();
  [(USBDevice *)&v7 dealloc];
}

- (BOOL)acquireBox:(BOOL)a3 fromHAL:(BOOL)a4
{
  v4 = a3;
  v5 = self;
  LOBYTE(v4) = _s9AUASDCore9USBDeviceC10acquireBox_7fromHALS2b_SbtF_0(v4);

  return v4 & 1;
}

- (_TtC9AUASDCore9USBDevice)initWithBoxUID:(id)a3 withPlugin:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end