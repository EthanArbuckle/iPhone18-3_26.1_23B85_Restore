@interface LabelRender
- (CGRect)accessibilityFrameForLabelContainer;
- (NSString)speakableString;
- (_TtC7Measure11LabelRender)init;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)setLabelNode:(id)node;
- (void)setSpeakableString:(id)string;
- (void)setState:(int64_t)state;
@end

@implementation LabelRender

- (void)setState:(int64_t)state
{
  v4 = *(self + OBJC_IVAR____TtC7Measure11LabelRender_state);
  *(self + OBJC_IVAR____TtC7Measure11LabelRender_state) = state;
  if (v4 != state)
  {
    selfCopy = self;
    sub_1000AB428(state);
  }
}

- (NSString)speakableString
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setSpeakableString:(id)string
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC7Measure11LabelRender_speakableString);
  *v5 = v4;
  v5[1] = v6;
}

- (void)setLabelNode:(id)node
{
  v4 = *(self + OBJC_IVAR____TtC7Measure11LabelRender_labelNode);
  *(self + OBJC_IVAR____TtC7Measure11LabelRender_labelNode) = node;
  nodeCopy = node;
}

- (_TtC7Measure11LabelRender)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  selfCopy = self;
  sub_1000B2C60();
}

- (CGRect)accessibilityFrameForLabelContainer
{
  v2 = *(self + OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 40);
  v3 = *(self + OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 48);
  v4 = *(self + OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 16) - v2 * 0.5;
  v5 = *(self + OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 24) - v3 * 0.5;
  result.size.height = v3;
  result.size.width = v2;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

@end