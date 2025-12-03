@interface FavoriteItemWrapper
- (GEOFeatureStyleAttributes)styleAttributes;
- (GEOMapItemStorage)mapItemStorage;
- (NSDate)createTime;
- (NSNumber)latitude;
- (NSNumber)longitude;
- (NSString)placeItemNote;
- (NSUUID)identifier;
- (_TtC4Maps19FavoriteItemWrapper)init;
- (void)setCreateTime:(id)time;
- (void)setIdentifier:(id)identifier;
- (void)setLatitude:(id)latitude;
- (void)setLongitude:(id)longitude;
- (void)setMapItemStorage:(id)storage;
- (void)setPlaceItemNote:(id)note;
@end

@implementation FavoriteItemWrapper

- (NSString)placeItemNote
{
  v2 = self + OBJC_IVAR____TtC4Maps19FavoriteItemWrapper_placeItemNote;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPlaceItemNote:(id)note
{
  if (note)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC4Maps19FavoriteItemWrapper_placeItemNote);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (NSUUID)identifier
{
  v3 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
  dispatch thunk of MapsSyncObject.identifier.getter();

  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
    v10 = isa;
  }

  return v10;
}

- (void)setIdentifier:(id)identifier
{
  v5 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  if (identifier)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  sub_1000D2DFC(v10, v7, &unk_101918E50);
  selfCopy = self;
  dispatch thunk of MapsSyncObject.identifier.setter();
  sub_100024F64(v10, &unk_101918E50);
}

- (GEOMapItemStorage)mapItemStorage
{
  selfCopy = self;
  v3 = dispatch thunk of FavoriteItem.mapItemStorage.getter();

  return v3;
}

- (void)setMapItemStorage:(id)storage
{
  storageCopy = storage;
  selfCopy = self;
  dispatch thunk of FavoriteItem.mapItemStorage.setter();
}

- (NSDate)createTime
{
  v3 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
  dispatch thunk of MapsSyncObject.createTime.getter();

  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
    v10 = isa;
  }

  return v10;
}

- (void)setCreateTime:(id)time
{
  v5 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  if (time)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for Date();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  sub_1000D2DFC(v10, v7, &qword_10190EBD0);
  selfCopy = self;
  dispatch thunk of MapsSyncObject.createTime.setter();
  sub_100024F64(v10, &qword_10190EBD0);
}

- (NSNumber)latitude
{
  selfCopy = self;
  v3 = dispatch thunk of FavoriteItem.latitude.getter();

  return v3;
}

- (void)setLatitude:(id)latitude
{
  latitudeCopy = latitude;
  selfCopy = self;
  dispatch thunk of FavoriteItem.latitude.setter();
}

- (NSNumber)longitude
{
  selfCopy = self;
  v3 = dispatch thunk of FavoriteItem.longitude.getter();

  return v3;
}

- (void)setLongitude:(id)longitude
{
  longitudeCopy = longitude;
  selfCopy = self;
  dispatch thunk of FavoriteItem.longitude.setter();
}

- (GEOFeatureStyleAttributes)styleAttributes
{
  styleAttributes = [*(self + OBJC_IVAR____TtC4Maps19FavoriteItemWrapper_object) styleAttributes];

  return styleAttributes;
}

- (_TtC4Maps19FavoriteItemWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end