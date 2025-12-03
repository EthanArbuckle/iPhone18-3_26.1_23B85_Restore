@interface ShareAssetActivityItemProvider
- (_TtC5Music30ShareAssetActivityItemProvider)init;
- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerLinkMetadata:(id)metadata;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation ShareAssetActivityItemProvider

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  metadataCopy = metadata;
  selfCopy = self;
  v6 = sub_1005F0000();

  return v6;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  sub_10002BC44(*(&self->super.isa + OBJC_IVAR____TtC5Music30ShareAssetActivityItemProvider_data), *&self->data[OBJC_IVAR____TtC5Music30ShareAssetActivityItemProvider_data]);
  v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();

  return v3;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  sub_10002BC44(*(&self->super.isa + OBJC_IVAR____TtC5Music30ShareAssetActivityItemProvider_data), *&self->data[OBJC_IVAR____TtC5Music30ShareAssetActivityItemProvider_data]);
  v4 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();

  return v4;
}

- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  selfCopy = self;
  sub_1005F02A4();

  v9 = String._bridgeToObjectiveC()();

  return v9;
}

- (_TtC5Music30ShareAssetActivityItemProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end