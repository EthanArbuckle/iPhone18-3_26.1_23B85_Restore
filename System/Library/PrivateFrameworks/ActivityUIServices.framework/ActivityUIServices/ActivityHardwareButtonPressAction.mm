@interface ActivityHardwareButtonPressAction
- (_TtC18ActivityUIServices33ActivityHardwareButtonPressAction)init;
- (_TtC18ActivityUIServices33ActivityHardwareButtonPressAction)initWithCoder:(id)coder;
- (_TtC18ActivityUIServices33ActivityHardwareButtonPressAction)initWithInfo:(id)info responder:(id)responder;
- (_TtC18ActivityUIServices33ActivityHardwareButtonPressAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler;
- (_TtC18ActivityUIServices33ActivityHardwareButtonPressAction)initWithXPCDictionary:(id)dictionary;
@end

@implementation ActivityHardwareButtonPressAction

- (_TtC18ActivityUIServices33ActivityHardwareButtonPressAction)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ActivityHardwareButtonPressAction();
  coderCopy = coder;
  v5 = [(ActivityHardwareButtonPressAction *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtC18ActivityUIServices33ActivityHardwareButtonPressAction)initWithXPCDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ActivityHardwareButtonPressAction();
  swift_unknownObjectRetain();
  v4 = [(ActivityHardwareButtonPressAction *)&v6 initWithXPCDictionary:dictionary];
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

- (_TtC18ActivityUIServices33ActivityHardwareButtonPressAction)initWithInfo:(id)info responder:(id)responder
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ActivityUIServices33ActivityHardwareButtonPressAction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ActivityUIServices33ActivityHardwareButtonPressAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end