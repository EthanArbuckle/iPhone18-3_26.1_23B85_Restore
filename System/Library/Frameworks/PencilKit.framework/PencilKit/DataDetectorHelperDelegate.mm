@interface DataDetectorHelperDelegate
- (_TtC9PencilKitP33_6CA4DD0836BA847654562546A8E159D126DataDetectorHelperDelegate)init;
- (void)dataDetectorInteractionHelper:(id)helper replaceStrokes:(id)strokes withStrokes:(id)withStrokes;
- (void)dataDetectorInteractionHelperNeedsLayout:(id)layout;
@end

@implementation DataDetectorHelperDelegate

- (void)dataDetectorInteractionHelperNeedsLayout:(id)layout
{
  layoutCopy = layout;
  selfCopy = self;
  specialized DataDetectorHelperDelegate.dataDetectorInteractionHelperNeedsLayout(_:)();
}

- (void)dataDetectorInteractionHelper:(id)helper replaceStrokes:(id)strokes withStrokes:(id)withStrokes
{
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  helperCopy = helper;
  selfCopy = self;
  specialized DataDetectorHelperDelegate.dataDetectorInteractionHelper(_:replace:with:)(v7, v8);
}

- (_TtC9PencilKitP33_6CA4DD0836BA847654562546A8E159D126DataDetectorHelperDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end