@interface objc_AnalyticsManager
+ (void)sendEvent:(id)a3;
+ (void)sendEventLazy:(id)a3 buildEvent:(id)a4;
@end

@implementation objc_AnalyticsManager

+ (void)sendEvent:(id)a3
{
  swift_unknownObjectRetain();
  sub_100028E2C(a3);

  swift_unknownObjectRelease();
}

+ (void)sendEventLazy:(id)a3 buildEvent:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  sub_100028E74(v5, v7, sub_1000287F4, v8);
}

@end