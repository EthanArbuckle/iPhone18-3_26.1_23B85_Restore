@interface MultimediaRecordRequest
- (NSArray)requestItems;
- (_TtC9progressd23MultimediaRecordRequest)init;
- (void)setRequestItems:(id)a3;
@end

@implementation MultimediaRecordRequest

- (NSArray)requestItems
{
  v3 = OBJC_IVAR____TtC9progressd23MultimediaRecordRequest_requestItems;
  swift_beginAccess();
  v4 = *(self + v3);
  type metadata accessor for MultimediaRecordRequestItems();

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (void)setRequestItems:(id)a3
{
  type metadata accessor for MultimediaRecordRequestItems();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC9progressd23MultimediaRecordRequest_requestItems;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (_TtC9progressd23MultimediaRecordRequest)init
{
  v2 = (self + OBJC_IVAR____TtC9progressd23MultimediaRecordRequest_zoneName);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (self + OBJC_IVAR____TtC9progressd23MultimediaRecordRequest_zoneOwnerName);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (self + OBJC_IVAR____TtC9progressd23MultimediaRecordRequest_orgID);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(self + OBJC_IVAR____TtC9progressd23MultimediaRecordRequest_requestItems) = &_swiftEmptyArrayStorage;
  v6.receiver = self;
  v6.super_class = type metadata accessor for MultimediaRecordRequest();
  return [(MultimediaRecordRequest *)&v6 init];
}

@end