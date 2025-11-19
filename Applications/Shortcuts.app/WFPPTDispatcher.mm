@interface WFPPTDispatcher
+ (BOOL)dispatchTest:(id)a3;
@end

@implementation WFPPTDispatcher

+ (BOOL)dispatchTest:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  swift_getObjCClassMetadata();
  v6 = sub_100042574(v3, v5);

  return v6 & 1;
}

@end