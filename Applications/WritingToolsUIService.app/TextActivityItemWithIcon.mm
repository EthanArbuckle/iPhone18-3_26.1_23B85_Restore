@interface TextActivityItemWithIcon
- (_TtC21WritingToolsUIServiceP33_E63BB40D993FB2662B0FF812EE2C15EF24TextActivityItemWithIcon)init;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerLinkMetadata:(id)metadata;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation TextActivityItemWithIcon

- (id)activityViewControllerPlaceholderItem:(id)item
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC21WritingToolsUIServiceP33_E63BB40D993FB2662B0FF812EE2C15EF24TextActivityItemWithIcon_text);
  selfCopy = self;
  string = [v3 string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();

  return v6;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC21WritingToolsUIServiceP33_E63BB40D993FB2662B0FF812EE2C15EF24TextActivityItemWithIcon_text);
  selfCopy = self;
  string = [v4 string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();

  return v7;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  metadataCopy = metadata;
  selfCopy = self;
  sub_10013AC04();
  v7 = v6;

  return v7;
}

- (_TtC21WritingToolsUIServiceP33_E63BB40D993FB2662B0FF812EE2C15EF24TextActivityItemWithIcon)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end