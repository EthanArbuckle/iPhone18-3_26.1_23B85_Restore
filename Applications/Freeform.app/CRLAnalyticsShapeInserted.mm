@interface CRLAnalyticsShapeInserted
+ (void)sendShapeInsertedAnalyticsWithShapeIdentifier:(id)identifier isMiniShapePicker:(BOOL)picker;
- (_TtC8Freeform25CRLAnalyticsShapeInserted)init;
@end

@implementation CRLAnalyticsShapeInserted

+ (void)sendShapeInsertedAnalyticsWithShapeIdentifier:(id)identifier isMiniShapePicker:(BOOL)picker
{
  if (identifier)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  sub_10063634C(v5, v7, picker);
}

- (_TtC8Freeform25CRLAnalyticsShapeInserted)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLAnalyticsShapeInserted();
  return [(CRLAnalyticsShapeInserted *)&v3 init];
}

@end