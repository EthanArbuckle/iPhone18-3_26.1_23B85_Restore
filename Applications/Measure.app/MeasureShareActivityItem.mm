@interface MeasureShareActivityItem
- (_TtC7Measure24MeasureShareActivityItem)init;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
- (id)activityViewControllerLinkMetadata:(id)metadata;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation MeasureShareActivityItem

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  sub_10000FE60(self + OBJC_IVAR____TtC7Measure24MeasureShareActivityItem_entriesToShare, v6);
  sub_10000FEBC(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_10000FF00(v6);

  return v4;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  sub_10000FE60(self + OBJC_IVAR____TtC7Measure24MeasureShareActivityItem_entriesToShare, v5);
  sub_10000FEBC(v5, v5[3]);
  v3 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_10000FF00(v5);

  return v3;
}

- (id)activityViewController:(id)controller subjectForActivityType:(id)type
{
  mainBundle = [objc_opt_self() mainBundle];
  v10._object = 0x80000001003FEFF0;
  v5._countAndFlagsBits = 0xD00000000000002DLL;
  v5._object = 0x80000001003FEFC0;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD00000000000001BLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, mainBundle, v6, v10);

  v7 = String._bridgeToObjectiveC()();

  return v7;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  v3 = [objc_allocWithZone(LPLinkMetadata) init];
  v4 = String._bridgeToObjectiveC()();
  [v3 setTitle:v4];

  return v3;
}

- (_TtC7Measure24MeasureShareActivityItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end