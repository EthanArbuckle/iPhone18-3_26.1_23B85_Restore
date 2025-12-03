@interface USBDevice
- (BOOL)acquireBox:(BOOL)box fromHAL:(BOOL)l;
- (_TtC9AUASDCore9USBDevice)initWithBoxUID:(id)d withPlugin:(id)plugin;
- (void)dealloc;
@end

@implementation USBDevice

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC9AUASDCore9USBDevice_activeConfig;
  swift_beginAccess();
  if (*&self->speed[v3])
  {
    selfCopy = self;

    sub_100022C14();

    v5 = *&self->speed[v3];
  }

  else
  {
    selfCopy2 = self;
  }

  *&self->speed[v3] = 0;

  v7.receiver = self;
  v7.super_class = type metadata accessor for USBDevice();
  [(USBDevice *)&v7 dealloc];
}

- (BOOL)acquireBox:(BOOL)box fromHAL:(BOOL)l
{
  boxCopy = box;
  selfCopy = self;
  LOBYTE(boxCopy) = _s9AUASDCore9USBDeviceC10acquireBox_7fromHALS2b_SbtF_0(boxCopy);

  return boxCopy & 1;
}

- (_TtC9AUASDCore9USBDevice)initWithBoxUID:(id)d withPlugin:(id)plugin
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end