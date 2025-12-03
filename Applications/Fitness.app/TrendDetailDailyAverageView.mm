@interface TrendDetailDailyAverageView
- (HKUnit)accessibilityUnit;
- (NSArray)dayStops;
- (_TtC10FitnessApp27TrendDetailDailyAverageView)initWithFrame:(CGRect)frame;
- (id)accessibilityDayForStopIndex:(int64_t)index;
- (id)accessibiliytQuantity365ForIndex:(int64_t)index;
- (id)accessibiliytQuantity90ForIndex:(int64_t)index;
- (void)layoutSubviews;
- (void)longPressWithSender:(id)sender;
- (void)setupFontsWithNote:(id)note;
@end

@implementation TrendDetailDailyAverageView

- (NSArray)dayStops
{
  selfCopy = self;
  sub_100239AF8();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)setupFontsWithNote:(id)note
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10023AAD0();

  (*(v5 + 8))(v7, v4);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10023D8E8();
}

- (_TtC10FitnessApp27TrendDetailDailyAverageView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)longPressWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10023E530(senderCopy);
}

- (HKUnit)accessibilityUnit
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_type);
  v3 = *(*(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_formattingManager) + OBJC_IVAR____TtC10FitnessApp23TrendsFormattingManager_fiuiFormatter);
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

- (id)accessibilityDayForStopIndex:(int64_t)index
{
  v3 = sub_10023F30C(index);

  return v3;
}

- (id)accessibiliytQuantity90ForIndex:(int64_t)index
{
  selfCopy = self;
  v5 = sub_10023ECEC(index);

  return v5;
}

- (id)accessibiliytQuantity365ForIndex:(int64_t)index
{
  selfCopy = self;
  v5 = sub_10023EE34(index);

  return v5;
}

@end