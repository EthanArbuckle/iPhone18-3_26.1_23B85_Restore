@interface TrendDetailChartView
- (HKUnit)accessibilityUnit;
- (NSArray)barStops;
- (_TtC10FitnessApp20TrendDetailChartView)initWithFrame:(CGRect)frame;
- (id)accessibilityDateIntervalForIndex:(int64_t)index;
- (id)accessibilityQuantityForIndex:(int64_t)index;
- (void)layoutSubviews;
- (void)longPressWithSender:(id)sender;
- (void)setBarStops:(id)stops;
- (void)setupFontsWithNote:(id)note;
@end

@implementation TrendDetailChartView

- (NSArray)barStops
{

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setBarStops:(id)stops
{
  *(self + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barStops) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

- (void)setupFontsWithNote:(id)note
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10066A400();

  (*(v5 + 8))(v7, v4);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10066DD9C();
}

- (_TtC10FitnessApp20TrendDetailChartView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)longPressWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10066F9A8(senderCopy);
}

- (HKUnit)accessibilityUnit
{
  v2 = *(self + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_type);
  v3 = *(*(self + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_formattingManager) + OBJC_IVAR____TtC10FitnessApp23TrendsFormattingManager_fiuiFormatter);
  selfCopy = self;
  result = [v3 unitManager];
  if (result)
  {
    v6 = result;
    v7 = sub_10058264C(result, v2);

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)accessibilityDateIntervalForIndex:(int64_t)index
{
  v5 = sub_100140278(&qword_1008E5C70);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  selfCopy = self;
  sub_100670654(index, v7);

  v9 = type metadata accessor for DateInterval();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    isa = DateInterval._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
    v12 = isa;
  }

  return v12;
}

- (id)accessibilityQuantityForIndex:(int64_t)index
{
  selfCopy = self;
  v5 = sub_100670B90(index);

  return v5;
}

@end