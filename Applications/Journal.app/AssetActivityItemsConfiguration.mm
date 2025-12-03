@interface AssetActivityItemsConfiguration
- (NSArray)itemProvidersForActivityItemsConfiguration;
- (_TtC7Journal31AssetActivityItemsConfiguration)init;
- (id)activityItemsConfigurationMetadataForItemAtIndex:(int64_t)index key:(id)key;
@end

@implementation AssetActivityItemsConfiguration

- (_TtC7Journal31AssetActivityItemsConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSArray)itemProvidersForActivityItemsConfiguration
{
  selfCopy = self;
  sub_1001F42FC();

  sub_1000065A8(0, &unk_100AD8660);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)activityItemsConfigurationMetadataForItemAtIndex:(int64_t)index key:(id)key
{
  keyCopy = key;
  selfCopy = self;
  sub_1001F43E8(index, v15);

  v8 = v16;
  if (v16)
  {
    v9 = sub_10000CA14(v15, v16);
    v10 = *(v8 - 8);
    __chkstk_darwin(v9);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v10 + 8))(v12, v8);
    sub_10000BA7C(v15);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end