@interface TrendDetailChartView
- (HKUnit)accessibilityUnit;
- (NSArray)barStops;
- (_TtC10FitnessApp20TrendDetailChartView)initWithFrame:(CGRect)a3;
- (id)accessibilityDateIntervalForIndex:(int64_t)a3;
- (id)accessibilityQuantityForIndex:(int64_t)a3;
- (void)layoutSubviews;
- (void)longPressWithSender:(id)a3;
- (void)setBarStops:(id)a3;
- (void)setupFontsWithNote:(id)a3;
@end

@implementation TrendDetailChartView

- (NSArray)barStops
{

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setBarStops:(id)a3
{
  *(self + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_barStops) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

- (void)setupFontsWithNote:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_10066A400();

  (*(v5 + 8))(v7, v4);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10066DD9C();
}

- (_TtC10FitnessApp20TrendDetailChartView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)longPressWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10066F9A8(v4);
}

- (HKUnit)accessibilityUnit
{
  v2 = *(self + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_type);
  v3 = *(*(self + OBJC_IVAR____TtC10FitnessApp20TrendDetailChartView_formattingManager) + OBJC_IVAR____TtC10FitnessApp23TrendsFormattingManager_fiuiFormatter);
  v4 = self;
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

- (id)accessibilityDateIntervalForIndex:(int64_t)a3
{
  v5 = sub_100140278(&qword_1008E5C70);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = self;
  sub_100670654(a3, v7);

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

- (id)accessibilityQuantityForIndex:(int64_t)a3
{
  v4 = self;
  v5 = sub_100670B90(a3);

  return v5;
}

@end