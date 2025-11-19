@interface ClimateFanButton
- (NSUUID)trackerUUID;
- (_TtC7Climate16ClimateFanButton)init;
- (void)siblingDidStopSlidingWithWasIncreasing:(BOOL)a3;
- (void)siblingDidUpdateWithProgress:(double)a3;
@end

@implementation ClimateFanButton

- (NSUUID)trackerUUID
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC7Climate16ClimateFanButton_trackerUUID, v3, v5);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (_TtC7Climate16ClimateFanButton)init
{
  *(self + OBJC_IVAR____TtC7Climate16ClimateFanButton_autoModeGlyph) = 0;
  UUID.init()();
  *(self + OBJC_IVAR____TtC7Climate16ClimateFanButton_shouldIgnoreCarUpdates) = 0;
  v3 = self + OBJC_IVAR____TtC7Climate16ClimateFanButton____lazy_storage___currentValue;
  *v3 = 0;
  v3[4] = 1;
  *(self + OBJC_IVAR____TtC7Climate16ClimateFanButton_wasPreviousValueInAutoMode) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)siblingDidUpdateWithProgress:(double)a3
{
  v4 = self;
  sub_10009CF40(a3);
}

- (void)siblingDidStopSlidingWithWasIncreasing:(BOOL)a3
{
  *(self + OBJC_IVAR____TtC7Climate16ClimateFanButton_shouldIgnoreCarUpdates) = 0;
  v3 = *(self + OBJC_IVAR____TtC7Climate16ClimateFanButton_fan);
  v4 = self;
  sub_10009BE64([v3 fanLevel]);
}

@end