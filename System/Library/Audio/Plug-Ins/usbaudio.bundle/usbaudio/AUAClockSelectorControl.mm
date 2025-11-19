@interface AUAClockSelectorControl
- (BOOL)changeValues:(const unsigned int *)a3 withCount:(int64_t)a4;
- (_TtC9AUASDCore23AUAClockSelectorControl)initWithIsSettable:(BOOL)a3 forElement:(unsigned int)a4 inScope:(unsigned int)a5 withPlugin:(id)a6 andObjectClassID:(unsigned int)a7;
- (void)selectionDidChange:(id)a3;
@end

@implementation AUAClockSelectorControl

- (BOOL)changeValues:(const unsigned int *)a3 withCount:(int64_t)a4
{
  v6 = self;
  LOBYTE(a4) = AUAClockSelectorControl.changeValues(_:withCount:)(a3, a4);

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
  AUAClockSelectorControl.selectionDidChange(_:)(v7);
}

- (_TtC9AUASDCore23AUAClockSelectorControl)initWithIsSettable:(BOOL)a3 forElement:(unsigned int)a4 inScope:(unsigned int)a5 withPlugin:(id)a6 andObjectClassID:(unsigned int)a7
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end