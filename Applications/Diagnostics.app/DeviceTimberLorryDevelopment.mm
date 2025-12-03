@interface DeviceTimberLorryDevelopment
- (DADeviceDelegate)delegate;
- (_TtC11Diagnostics28DeviceTimberLorryDevelopment)init;
- (void)end;
- (void)setDelegate:(id)delegate;
- (void)setState:(id)state;
- (void)start;
@end

@implementation DeviceTimberLorryDevelopment

- (void)setState:(id)state
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_state);
  *(&self->super.isa + OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_state) = state;
  stateCopy = state;
}

- (DADeviceDelegate)delegate
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  *(&self->super.isa + OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_delegate) = delegate;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)start
{
  v3 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_state);
  selfCopy = self;
  [v6 setPhase:4];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = selfCopy;
  sub_1000539D8(0, 0, v5, &unk_100184C18, v9);
}

- (void)end
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_diagnosticManager);
  selfCopy = self;
  [v2 cancelAllDiagnostics];
  v3 = *(&selfCopy->super.isa + OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_state);
  [v3 setPhase:1];
}

- (_TtC11Diagnostics28DeviceTimberLorryDevelopment)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end