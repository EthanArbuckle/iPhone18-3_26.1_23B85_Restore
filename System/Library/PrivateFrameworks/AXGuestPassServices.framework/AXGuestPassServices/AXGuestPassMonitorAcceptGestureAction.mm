@interface AXGuestPassMonitorAcceptGestureAction
- (_TtC19AXGuestPassServices37AXGuestPassMonitorAcceptGestureAction)init;
- (_TtC19AXGuestPassServices37AXGuestPassMonitorAcceptGestureAction)initWithCoder:(id)a3;
- (_TtC19AXGuestPassServices37AXGuestPassMonitorAcceptGestureAction)initWithInfo:(id)a3 responder:(id)a4;
- (_TtC19AXGuestPassServices37AXGuestPassMonitorAcceptGestureAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6;
- (_TtC19AXGuestPassServices37AXGuestPassMonitorAcceptGestureAction)initWithXPCDictionary:(id)a3;
@end

@implementation AXGuestPassMonitorAcceptGestureAction

- (_TtC19AXGuestPassServices37AXGuestPassMonitorAcceptGestureAction)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC19AXGuestPassServices37AXGuestPassMonitorAcceptGestureAction_responder) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AXGuestPassMonitorAcceptGestureAction();
  v4 = a3;
  v5 = [(AXGuestPassMonitorAcceptGestureAction *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtC19AXGuestPassServices37AXGuestPassMonitorAcceptGestureAction)initWithXPCDictionary:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC19AXGuestPassServices37AXGuestPassMonitorAcceptGestureAction_responder) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for AXGuestPassMonitorAcceptGestureAction();
  swift_unknownObjectRetain();
  v4 = [(AXGuestPassMonitorAcceptGestureAction *)&v6 initWithXPCDictionary:a3];
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

- (_TtC19AXGuestPassServices37AXGuestPassMonitorAcceptGestureAction)initWithInfo:(id)a3 responder:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC19AXGuestPassServices37AXGuestPassMonitorAcceptGestureAction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC19AXGuestPassServices37AXGuestPassMonitorAcceptGestureAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end