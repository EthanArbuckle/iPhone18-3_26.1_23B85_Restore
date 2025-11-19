@interface BalanceDataProvider
- (_TtC10FitnessApp19BalanceDataProvider)init;
- (_TtC10FitnessApp19BalanceDataProvider)initWithHealthStore:(id)a3 gregorianCalendar:(id)a4 historyDataProvider:(id)a5 activityDataProvider:(id)a6 isFaking:(BOOL)a7;
@end

@implementation BalanceDataProvider

- (_TtC10FitnessApp19BalanceDataProvider)initWithHealthStore:(id)a3 gregorianCalendar:(id)a4 historyDataProvider:(id)a5 activityDataProvider:(id)a6 isFaking:(BOOL)a7
{
  v7 = a7;
  v11 = type metadata accessor for Calendar();
  __chkstk_darwin(v11 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = sub_1001DF634(v14, v13, v15, v16, v7);

  return v17;
}

- (_TtC10FitnessApp19BalanceDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end