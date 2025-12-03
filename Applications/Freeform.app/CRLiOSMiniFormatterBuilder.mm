@interface CRLiOSMiniFormatterBuilder
+ (id)makeSmallButtonWith:(id)with title:(id)title action:(id)action backgroundColor:(id)color pressedBackgroundColor:(id)backgroundColor foregroundColor:(id)foregroundColor pressedForegroundColor:(id)pressedForegroundColor cornerRadius:(double)self0 italicTitle:(BOOL)self1;
- (_TtC8Freeform26CRLiOSMiniFormatterBuilder)init;
- (id)viewControllerForLargeContentViewerInteraction:(id)interaction;
@end

@implementation CRLiOSMiniFormatterBuilder

+ (id)makeSmallButtonWith:(id)with title:(id)title action:(id)action backgroundColor:(id)color pressedBackgroundColor:(id)backgroundColor foregroundColor:(id)foregroundColor pressedForegroundColor:(id)pressedForegroundColor cornerRadius:(double)self0 italicTitle:(BOOL)self1
{
  foregroundColorCopy2 = foregroundColor;
  if (title)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    foregroundColorCopy2 = foregroundColor;
    v27 = v17;
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  swift_getObjCClassMetadata();
  withCopy = with;
  actionCopy = action;
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  v21 = foregroundColorCopy2;
  pressedForegroundColorCopy = pressedForegroundColor;
  v23 = sub_1005D48C8(with, v26, v27, action, color, backgroundColor, v21, pressedForegroundColorCopy, italicTitle);

  return v23;
}

- (id)viewControllerForLargeContentViewerInteraction:(id)interaction
{
  interactionCopy = interaction;
  selfCopy = self;
  v6 = sub_1005D8B5C();

  return v6;
}

- (_TtC8Freeform26CRLiOSMiniFormatterBuilder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end