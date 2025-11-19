@interface MultimediaRecordRequestItems
- (NSArray)assetFieldNames;
- (_TtC9progressd28MultimediaRecordRequestItems)init;
- (int64_t)parentEntityType;
- (void)setAssetFieldNames:(id)a3;
- (void)setParentEntityType:(int64_t)a3;
@end

@implementation MultimediaRecordRequestItems

- (int64_t)parentEntityType
{
  v3 = OBJC_IVAR____TtC9progressd28MultimediaRecordRequestItems_parentEntityType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setParentEntityType:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC9progressd28MultimediaRecordRequestItems_parentEntityType;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSArray)assetFieldNames
{
  v3 = OBJC_IVAR____TtC9progressd28MultimediaRecordRequestItems_assetFieldNames;
  swift_beginAccess();
  v4 = *(self + v3);

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (void)setAssetFieldNames:(id)a3
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC9progressd28MultimediaRecordRequestItems_assetFieldNames;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (_TtC9progressd28MultimediaRecordRequestItems)init
{
  v2 = (self + OBJC_IVAR____TtC9progressd28MultimediaRecordRequestItems_recordName);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (self + OBJC_IVAR____TtC9progressd28MultimediaRecordRequestItems_parentObjectID);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(self + OBJC_IVAR____TtC9progressd28MultimediaRecordRequestItems_parentEntityType) = 0;
  *(self + OBJC_IVAR____TtC9progressd28MultimediaRecordRequestItems_assetFieldNames) = &_swiftEmptyArrayStorage;
  v5.receiver = self;
  v5.super_class = type metadata accessor for MultimediaRecordRequestItems();
  return [(MultimediaRecordRequestItems *)&v5 init];
}

@end