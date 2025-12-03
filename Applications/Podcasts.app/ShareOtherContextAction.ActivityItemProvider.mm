@interface ShareOtherContextAction.ActivityItemProvider
- (_TtCC8Podcasts23ShareOtherContextActionP33_EEA9E3C8BAC5199A99988C7A83F9625320ActivityItemProvider)init;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
- (id)activityViewControllerLinkMetadata:(id)metadata;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation ShareOtherContextAction.ActivityItemProvider

- (id)activityViewControllerPlaceholderItem:(id)item
{

  v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();

  return v3;
}

- (id)activityViewController:(id)controller subjectForActivityType:(id)type
{

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  v5 = type metadata accessor for URL();
  v6 = __chkstk_darwin();
  (*(v8 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), self + OBJC_IVAR____TtCC8Podcasts23ShareOtherContextActionP33_EEA9E3C8BAC5199A99988C7A83F9625320ActivityItemProvider_link, v5, v6);
  v9 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();

  return v9;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  v4 = objc_allocWithZone(LPLinkMetadata);
  selfCopy = self;
  v6 = [v4 init];
  URL._bridgeToObjectiveC()(OBJC_IVAR____TtCC8Podcasts23ShareOtherContextActionP33_EEA9E3C8BAC5199A99988C7A83F9625320ActivityItemProvider_link);
  v8 = v7;
  [v6 setURL:v7];

  v9 = String._bridgeToObjectiveC()();
  [v6 setTitle:v9];

  return v6;
}

- (_TtCC8Podcasts23ShareOtherContextActionP33_EEA9E3C8BAC5199A99988C7A83F9625320ActivityItemProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end