@interface AXMEnroller
- (_TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller)init;
- (void)dealloc;
- (void)enrollmentOperationDidFinish:(id)a3;
- (void)fetchADEPrerequisitesOperationDidFinish:(id)a3;
@end

@implementation AXMEnroller

- (void)dealloc
{
  v3 = *sub_10000BB24((&self->super.isa + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_requestPerformingProvider), *&self->requestPerformingProvider[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_requestPerformingProvider + 16]);
  v4 = self;
  v5 = sub_100034A20();
  [v5 invalidate];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for AXMEnroller();
  [(AXMEnroller *)&v6 dealloc];
}

- (void)fetchADEPrerequisitesOperationDidFinish:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10003B508(v4);
}

- (void)enrollmentOperationDidFinish:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10003CC48(v4);
}

- (_TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end