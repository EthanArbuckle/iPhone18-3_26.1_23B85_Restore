@interface CRLAnalyticsOSSignpostManager
+ (_TtC8Freeform29CRLAnalyticsOSSignpostManager)shared;
- (_TtC8Freeform29CRLAnalyticsOSSignpostManager)init;
- (void)beginSignpostIntervalWithName:(id)a3 with:(id)a4;
- (void)endSignpostIntervalFor:(id)a3;
- (void)endSignpostIntervalWithName:(id)a3;
@end

@implementation CRLAnalyticsOSSignpostManager

+ (_TtC8Freeform29CRLAnalyticsOSSignpostManager)shared
{
  if (qword_1019F1990 != -1)
  {
    swift_once();
  }

  v3 = qword_101AD6C88;

  return v3;
}

- (void)beginSignpostIntervalWithName:(id)a3 with:(id)a4
{
  sub_1006055C8();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  CRLAnalyticsOSSignpostManager.beginSignpostInterval(name:with:)(v7, v6);
}

- (void)endSignpostIntervalFor:(id)a3
{
  v5 = a3;
  v6 = self;
  CRLAnalyticsOSSignpostManager.endSignpostInterval(for:)(a3);
}

- (void)endSignpostIntervalWithName:(id)a3
{
  v4 = a3;
  v5 = self;
  CRLAnalyticsOSSignpostManager.endSignpostInterval(name:)(v4);
}

- (_TtC8Freeform29CRLAnalyticsOSSignpostManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end