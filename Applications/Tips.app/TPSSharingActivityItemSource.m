@interface TPSSharingActivityItemSource
- (UIImage)appIcon;
- (UIImage)preview;
- (_TtC4Tips28TPSSharingActivityItemSource)init;
- (_TtC4Tips28TPSSharingActivityItemSource)initWithTip:(id)a3;
- (id)activityViewControllerLinkMetadata:(id)a3;
- (id)activityViewControllerPlaceholderItem:(id)a3;
@end

@implementation TPSSharingActivityItemSource

- (_TtC4Tips28TPSSharingActivityItemSource)initWithTip:(id)a3
{
  v3 = a3;
  v4 = sub_100066364(v3);

  return v4;
}

- (UIImage)appIcon
{
  v2 = sub_1000664C8();

  return v2;
}

- (UIImage)preview
{
  v2 = self;
  v3 = sub_1000660B8(0);

  return v3;
}

- (id)activityViewControllerLinkMetadata:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100066620();

  return v6;
}

- (id)activityViewControllerPlaceholderItem:(id)a3
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