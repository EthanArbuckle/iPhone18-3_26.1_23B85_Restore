@interface DataDetectorHelperDelegate
- (_TtC9PencilKitP33_6CA4DD0836BA847654562546A8E159D126DataDetectorHelperDelegate)init;
- (void)dataDetectorInteractionHelper:(id)a3 replaceStrokes:(id)a4 withStrokes:(id)a5;
- (void)dataDetectorInteractionHelperNeedsLayout:(id)a3;
@end

@implementation DataDetectorHelperDelegate

- (void)dataDetectorInteractionHelperNeedsLayout:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DataDetectorHelperDelegate.dataDetectorInteractionHelperNeedsLayout(_:)();
}

- (void)dataDetectorInteractionHelper:(id)a3 replaceStrokes:(id)a4 withStrokes:(id)a5
{
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = self;
  specialized DataDetectorHelperDelegate.dataDetectorInteractionHelper(_:replace:with:)(v7, v8);
}

- (_TtC9PencilKitP33_6CA4DD0836BA847654562546A8E159D126DataDetectorHelperDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end