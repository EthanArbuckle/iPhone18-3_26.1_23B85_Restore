@interface TrendDetailDailyAverageView
- (HKUnit)accessibilityUnit;
- (NSArray)dayStops;
- (_TtC10FitnessApp27TrendDetailDailyAverageView)initWithFrame:(CGRect)a3;
- (id)accessibilityDayForStopIndex:(int64_t)a3;
- (id)accessibiliytQuantity365ForIndex:(int64_t)a3;
- (id)accessibiliytQuantity90ForIndex:(int64_t)a3;
- (void)layoutSubviews;
- (void)longPressWithSender:(id)a3;
- (void)setupFontsWithNote:(id)a3;
@end

@implementation TrendDetailDailyAverageView

- (NSArray)dayStops
{
  v2 = self;
  sub_100239AF8();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)setupFontsWithNote:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_10023AAD0();

  (*(v5 + 8))(v7, v4);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10023D8E8();
}

- (_TtC10FitnessApp27TrendDetailDailyAverageView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)longPressWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10023E530(v4);
}

- (HKUnit)accessibilityUnit
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_type);
  v3 = *(*(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_formattingManager) + OBJC_IVAR____TtC10FitnessApp23TrendsFormattingManager_fiuiFormatter);
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

- (id)accessibilityDayForStopIndex:(int64_t)a3
{
  v3 = sub_10023F30C(a3);

  return v3;
}

- (id)accessibiliytQuantity90ForIndex:(int64_t)a3
{
  v4 = self;
  v5 = sub_10023ECEC(a3);

  return v5;
}

- (id)accessibiliytQuantity365ForIndex:(int64_t)a3
{
  v4 = self;
  v5 = sub_10023EE34(a3);

  return v5;
}

@end