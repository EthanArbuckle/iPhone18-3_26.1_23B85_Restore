@interface ActionView
- (_TtC7Measure10ActionView)initWithCoder:(id)a3;
- (_TtC7Measure10ActionView)initWithFrame:(CGRect)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation ActionView

- (_TtC7Measure10ActionView)initWithCoder:(id)a3
{
  *&self->delegate[OBJC_IVAR____TtC7Measure10ActionView_delegate] = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_10001B92C();
  sub_10001B978();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  v8 = self;
  sub_10001B4B8(v6, a4);
}

- (_TtC7Measure10ActionView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end