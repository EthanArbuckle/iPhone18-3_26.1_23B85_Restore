@interface objc_AnalyticsManager
+ (void)sendEvent:(id)event;
+ (void)sendEventLazy:(id)lazy buildEvent:(id)event;
@end

@implementation objc_AnalyticsManager

+ (void)sendEvent:(id)event
{
  swift_unknownObjectRetain();
  sub_100028E2C(event);

  swift_unknownObjectRelease();
}

+ (void)sendEventLazy:(id)lazy buildEvent:(id)event
{
  v4 = _Block_copy(event);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  sub_100028E74(v5, v7, sub_1000287F4, v8);
}

@end