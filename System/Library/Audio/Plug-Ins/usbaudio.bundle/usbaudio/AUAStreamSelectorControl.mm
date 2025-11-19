@interface AUAStreamSelectorControl
- (BOOL)changeValues:(const unsigned int *)a3 withCount:(int64_t)a4;
- (_TtC9AUASDCore24AUAStreamSelectorControl)initWithIsSettable:(BOOL)a3 forElement:(unsigned int)a4 inScope:(unsigned int)a5 withPlugin:(id)a6 andObjectClassID:(unsigned int)a7;
- (void)selectionDidChange:(id)a3;
@end

@implementation AUAStreamSelectorControl

- (BOOL)changeValues:(const unsigned int *)a3 withCount:(int64_t)a4
{
  v6 = self;
  LOBYTE(a4) = AUAStreamSelectorControl.changeValues(_:withCount:)(a3, a4);

  return a4 & 1;
}

- (void)selectionDidChange:(id)a3
{
  if (a3)
  {
    sub_10002BD38();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  v7.value._rawValue = v4;
  AUAStreamSelectorControl.selectionDidChange(_:)(v7);
}

- (_TtC9AUASDCore24AUAStreamSelectorControl)initWithIsSettable:(BOOL)a3 forElement:(unsigned int)a4 inScope:(unsigned int)a5 withPlugin:(id)a6 andObjectClassID:(unsigned int)a7
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end