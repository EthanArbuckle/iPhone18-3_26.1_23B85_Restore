@interface ShareAssetActivityItemProvider
- (_TtC5Music30ShareAssetActivityItemProvider)init;
- (id)activityViewController:(id)a3 dataTypeIdentifierForActivityType:(id)a4;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewControllerLinkMetadata:(id)a3;
- (id)activityViewControllerPlaceholderItem:(id)a3;
@end

@implementation ShareAssetActivityItemProvider

- (id)activityViewControllerLinkMetadata:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1005F0000();

  return v6;
}

- (id)activityViewControllerPlaceholderItem:(id)a3
{
  sub_10002BC44(*(&self->super.isa + OBJC_IVAR____TtC5Music30ShareAssetActivityItemProvider_data), *&self->data[OBJC_IVAR____TtC5Music30ShareAssetActivityItemProvider_data]);
  v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();

  return v3;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  sub_10002BC44(*(&self->super.isa + OBJC_IVAR____TtC5Music30ShareAssetActivityItemProvider_data), *&self->data[OBJC_IVAR____TtC5Music30ShareAssetActivityItemProvider_data]);
  v4 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();

  return v4;
}

- (id)activityViewController:(id)a3 dataTypeIdentifierForActivityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
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