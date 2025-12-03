@interface AUAHighPassFilterControl
- (_TtC9AUASDCore24AUAHighPassFilterControl)initWithIsSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin andObjectClassID:(unsigned int)d;
- (void)selectionDidChange:(id)change;
@end

@implementation AUAHighPassFilterControl

- (void)selectionDidChange:(id)change
{
  if (change)
  {
    sub_10001EBA8(0, &qword_100175788, ASDSelectorValue_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_1000C73AC(v4);
}

- (_TtC9AUASDCore24AUAHighPassFilterControl)initWithIsSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin andObjectClassID:(unsigned int)d
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end