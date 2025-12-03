@interface AXMEnroller
- (_TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller)init;
- (void)dealloc;
- (void)enrollmentOperationDidFinish:(id)finish;
- (void)fetchADEPrerequisitesOperationDidFinish:(id)finish;
@end

@implementation AXMEnroller

- (void)dealloc
{
  v3 = *sub_10000BB24((&self->super.isa + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_requestPerformingProvider), *&self->requestPerformingProvider[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_requestPerformingProvider + 16]);
  selfCopy = self;
  v5 = sub_100034A20();
  [v5 invalidate];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for AXMEnroller();
  [(AXMEnroller *)&v6 dealloc];
}

- (void)fetchADEPrerequisitesOperationDidFinish:(id)finish
{
  finishCopy = finish;
  selfCopy = self;
  sub_10003B508(finishCopy);
}

- (void)enrollmentOperationDidFinish:(id)finish
{
  finishCopy = finish;
  selfCopy = self;
  sub_10003CC48(finishCopy);
}

- (_TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end