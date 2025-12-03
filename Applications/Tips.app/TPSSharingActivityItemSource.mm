@interface TPSSharingActivityItemSource
- (UIImage)appIcon;
- (UIImage)preview;
- (_TtC4Tips28TPSSharingActivityItemSource)init;
- (_TtC4Tips28TPSSharingActivityItemSource)initWithTip:(id)tip;
- (id)activityViewControllerLinkMetadata:(id)metadata;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation TPSSharingActivityItemSource

- (_TtC4Tips28TPSSharingActivityItemSource)initWithTip:(id)tip
{
  tipCopy = tip;
  v4 = sub_100066364(tipCopy);

  return v4;
}

- (UIImage)appIcon
{
  v2 = sub_1000664C8();

  return v2;
}

- (UIImage)preview
{
  selfCopy = self;
  v3 = sub_1000660B8(0);

  return v3;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  metadataCopy = metadata;
  selfCopy = self;
  v6 = sub_100066620();

  return v6;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();

  return v3;
}

- (_TtC4Tips28TPSSharingActivityItemSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end