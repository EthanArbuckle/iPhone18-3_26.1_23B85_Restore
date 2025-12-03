@interface ActionView
- (_TtC7Measure10ActionView)initWithCoder:(id)coder;
- (_TtC7Measure10ActionView)initWithFrame:(CGRect)frame;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation ActionView

- (_TtC7Measure10ActionView)initWithCoder:(id)coder
{
  *&self->delegate[OBJC_IVAR____TtC7Measure10ActionView_delegate] = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_10001B92C();
  sub_10001B978();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  eventCopy = event;
  selfCopy = self;
  sub_10001B4B8(v6, event);
}

- (_TtC7Measure10ActionView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end