@interface AUAClockSelectorControl
- (BOOL)changeValues:(const unsigned int *)values withCount:(int64_t)count;
- (_TtC9AUASDCore23AUAClockSelectorControl)initWithIsSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin andObjectClassID:(unsigned int)d;
- (void)selectionDidChange:(id)change;
@end

@implementation AUAClockSelectorControl

- (BOOL)changeValues:(const unsigned int *)values withCount:(int64_t)count
{
  selfCopy = self;
  LOBYTE(count) = AUAClockSelectorControl.changeValues(_:withCount:)(values, count);

  return count & 1;
}

- (void)selectionDidChange:(id)change
{
  if (change)
  {
    sub_10002BD38();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  v7.value._rawValue = v4;
  AUAClockSelectorControl.selectionDidChange(_:)(v7);
}

- (_TtC9AUASDCore23AUAClockSelectorControl)initWithIsSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin andObjectClassID:(unsigned int)d
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end