@interface CRLAnalyticsOSSignpostManager
+ (_TtC8Freeform29CRLAnalyticsOSSignpostManager)shared;
- (_TtC8Freeform29CRLAnalyticsOSSignpostManager)init;
- (void)beginSignpostIntervalWithName:(id)name with:(id)with;
- (void)endSignpostIntervalFor:(id)for;
- (void)endSignpostIntervalWithName:(id)name;
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

- (void)beginSignpostIntervalWithName:(id)name with:(id)with
{
  sub_1006055C8();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  nameCopy = name;
  selfCopy = self;
  CRLAnalyticsOSSignpostManager.beginSignpostInterval(name:with:)(nameCopy, v6);
}

- (void)endSignpostIntervalFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  CRLAnalyticsOSSignpostManager.endSignpostInterval(for:)(for);
}

- (void)endSignpostIntervalWithName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  CRLAnalyticsOSSignpostManager.endSignpostInterval(name:)(nameCopy);
}

- (_TtC8Freeform29CRLAnalyticsOSSignpostManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end