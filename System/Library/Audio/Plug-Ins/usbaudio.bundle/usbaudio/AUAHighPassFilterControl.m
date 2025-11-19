@interface AUAHighPassFilterControl
- (_TtC9AUASDCore24AUAHighPassFilterControl)initWithIsSettable:(BOOL)a3 forElement:(unsigned int)a4 inScope:(unsigned int)a5 withPlugin:(id)a6 andObjectClassID:(unsigned int)a7;
- (void)selectionDidChange:(id)a3;
@end

@implementation AUAHighPassFilterControl

- (void)selectionDidChange:(id)a3
{
  if (a3)
  {
    sub_10001EBA8(0, &qword_100175788, ASDSelectorValue_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_1000C73AC(v4);
}

- (_TtC9AUASDCore24AUAHighPassFilterControl)initWithIsSettable:(BOOL)a3 forElement:(unsigned int)a4 inScope:(unsigned int)a5 withPlugin:(id)a6 andObjectClassID:(unsigned int)a7
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end