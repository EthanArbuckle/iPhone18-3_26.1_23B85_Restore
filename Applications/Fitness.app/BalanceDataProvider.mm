@interface BalanceDataProvider
- (_TtC10FitnessApp19BalanceDataProvider)init;
- (_TtC10FitnessApp19BalanceDataProvider)initWithHealthStore:(id)store gregorianCalendar:(id)calendar historyDataProvider:(id)provider activityDataProvider:(id)dataProvider isFaking:(BOOL)faking;
@end

@implementation BalanceDataProvider

- (_TtC10FitnessApp19BalanceDataProvider)initWithHealthStore:(id)store gregorianCalendar:(id)calendar historyDataProvider:(id)provider activityDataProvider:(id)dataProvider isFaking:(BOOL)faking
{
  fakingCopy = faking;
  v11 = type metadata accessor for Calendar();
  __chkstk_darwin(v11 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar._unconditionallyBridgeFromObjectiveC(_:)();
  storeCopy = store;
  providerCopy = provider;
  dataProviderCopy = dataProvider;
  v17 = sub_1001DF634(storeCopy, v13, providerCopy, dataProviderCopy, fakingCopy);

  return v17;
}

- (_TtC10FitnessApp19BalanceDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end