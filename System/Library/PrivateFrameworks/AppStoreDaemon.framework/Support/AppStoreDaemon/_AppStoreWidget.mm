@interface _AppStoreWidget
+ (void)invalidateAllWidgetsWithReason:(id)reason;
- (_TtC9appstored15_AppStoreWidget)init;
@end

@implementation _AppStoreWidget

+ (void)invalidateAllWidgetsWithReason:(id)reason
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000E59CC(v3, v4);
}

- (_TtC9appstored15_AppStoreWidget)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for _AppStoreWidget();
  return [(_AppStoreWidget *)&v3 init];
}

@end