@interface TextActivityItemWithIcon
- (_TtC21WritingToolsUIServiceP33_E63BB40D993FB2662B0FF812EE2C15EF24TextActivityItemWithIcon)init;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewControllerLinkMetadata:(id)a3;
- (id)activityViewControllerPlaceholderItem:(id)a3;
@end

@implementation TextActivityItemWithIcon

- (id)activityViewControllerPlaceholderItem:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC21WritingToolsUIServiceP33_E63BB40D993FB2662B0FF812EE2C15EF24TextActivityItemWithIcon_text);
  v4 = self;
  v5 = [v3 string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();

  return v6;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC21WritingToolsUIServiceP33_E63BB40D993FB2662B0FF812EE2C15EF24TextActivityItemWithIcon_text);
  v5 = self;
  v6 = [v4 string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();

  return v7;
}

- (id)activityViewControllerLinkMetadata:(id)a3
{
  v4 = a3;
  v5 = self;
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