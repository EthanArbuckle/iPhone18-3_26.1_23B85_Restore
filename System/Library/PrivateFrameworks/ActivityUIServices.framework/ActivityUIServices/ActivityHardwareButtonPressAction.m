@interface ActivityHardwareButtonPressAction
- (_TtC18ActivityUIServices33ActivityHardwareButtonPressAction)init;
- (_TtC18ActivityUIServices33ActivityHardwareButtonPressAction)initWithCoder:(id)a3;
- (_TtC18ActivityUIServices33ActivityHardwareButtonPressAction)initWithInfo:(id)a3 responder:(id)a4;
- (_TtC18ActivityUIServices33ActivityHardwareButtonPressAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6;
- (_TtC18ActivityUIServices33ActivityHardwareButtonPressAction)initWithXPCDictionary:(id)a3;
@end

@implementation ActivityHardwareButtonPressAction

- (_TtC18ActivityUIServices33ActivityHardwareButtonPressAction)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ActivityHardwareButtonPressAction();
  v4 = a3;
  v5 = [(ActivityHardwareButtonPressAction *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtC18ActivityUIServices33ActivityHardwareButtonPressAction)initWithXPCDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ActivityHardwareButtonPressAction();
  swift_unknownObjectRetain();
  v4 = [(ActivityHardwareButtonPressAction *)&v6 initWithXPCDictionary:a3];
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

- (_TtC18ActivityUIServices33ActivityHardwareButtonPressAction)initWithInfo:(id)a3 responder:(id)a4
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

- (_TtC18ActivityUIServices33ActivityHardwareButtonPressAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end