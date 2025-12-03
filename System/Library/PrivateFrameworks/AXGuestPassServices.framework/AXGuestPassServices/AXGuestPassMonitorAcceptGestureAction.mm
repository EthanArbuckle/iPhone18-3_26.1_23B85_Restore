@interface AXGuestPassMonitorAcceptGestureAction
- (_TtC19AXGuestPassServices37AXGuestPassMonitorAcceptGestureAction)init;
- (_TtC19AXGuestPassServices37AXGuestPassMonitorAcceptGestureAction)initWithCoder:(id)coder;
- (_TtC19AXGuestPassServices37AXGuestPassMonitorAcceptGestureAction)initWithInfo:(id)info responder:(id)responder;
- (_TtC19AXGuestPassServices37AXGuestPassMonitorAcceptGestureAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler;
- (_TtC19AXGuestPassServices37AXGuestPassMonitorAcceptGestureAction)initWithXPCDictionary:(id)dictionary;
@end

@implementation AXGuestPassMonitorAcceptGestureAction

- (_TtC19AXGuestPassServices37AXGuestPassMonitorAcceptGestureAction)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR____TtC19AXGuestPassServices37AXGuestPassMonitorAcceptGestureAction_responder) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AXGuestPassMonitorAcceptGestureAction();
  coderCopy = coder;
  v5 = [(AXGuestPassMonitorAcceptGestureAction *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtC19AXGuestPassServices37AXGuestPassMonitorAcceptGestureAction)initWithXPCDictionary:(id)dictionary
{
  *(&self->super.super.isa + OBJC_IVAR____TtC19AXGuestPassServices37AXGuestPassMonitorAcceptGestureAction_responder) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for AXGuestPassMonitorAcceptGestureAction();
  swift_unknownObjectRetain();
  v4 = [(AXGuestPassMonitorAcceptGestureAction *)&v6 initWithXPCDictionary:dictionary];
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

- (_TtC19AXGuestPassServices37AXGuestPassMonitorAcceptGestureAction)initWithInfo:(id)info responder:(id)responder
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

- (_TtC19AXGuestPassServices37AXGuestPassMonitorAcceptGestureAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end