@interface MapsFavoriteItem
+ (NSString)MapsSuggestionsNearbyTransitShortcutIdentifier;
- (BOOL)isHidden;
- (BOOL)isHomeWorkOrSchool;
- (BOOL)isNearbyTransit;
- (GEOFeatureStyleAttributes)proposedFavoriteStyleAttributes;
- (GEOFeatureStyleAttributes)styleAttributes;
- (GEOMapItem)geoMapItem;
- (GEOMapItemStorage)mapItemStorage;
- (MKMapItem)mkMapItem;
- (NSArray)contacts;
- (NSString)_maps_diffableDataSourceIdentifier;
- (NSString)analyticsGrouping;
- (NSString)uniqueIdentifier;
- (NSUUID)storageIdentifier;
- (_TtC4Maps16MapsFavoriteItem)init;
- (id)cnLabledAddress;
- (id)copyWithZone:(void *)a3;
- (id)identifierForCoordinateWithCoordinate:(id)a3;
- (int64_t)entryType;
- (int64_t)type;
- (void)deleteWithCompletionHandler:(id)a3;
- (void)deleteWithDeleteFromLibrary:(BOOL)a3 completionHandler:(id)a4;
- (void)moveToBackWithCompletionHandler:(id)a3;
- (void)moveToIndex:(int64_t)a3 with:(id)a4 completion:(id)a5;
- (void)moveToPreferredIndexWith:(id)a3 completion:(id)a4;
- (void)saveWithCompletionHandler:(id)a3;
- (void)setContacts:(id)a3;
- (void)setGeoMapItem:(id)a3;
- (void)setIsHidden:(BOOL)a3;
- (void)setMapItemStorage:(id)a3;
- (void)setMkMapItem:(id)a3;
- (void)setStorageIdentifier:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setType:(int64_t)a3;
- (void)updateSubtitleWithViewMode:(int64_t)a3 currentLocation:(CLLocation *)a4 completionHandler:(id)a5;
@end

@implementation MapsFavoriteItem

- (int64_t)type
{
  v2 = self;
  v3 = dispatch thunk of FavoriteItem.type.getter();

  return v3;
}

- (void)updateSubtitleWithViewMode:(int64_t)a3 currentLocation:(CLLocation *)a4 completionHandler:(id)a5
{
  v9 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10120FB40;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1011F9360;
  v16[5] = v15;
  v17 = a4;
  v18 = self;
  sub_10054DB08(0, 0, v11, &unk_1011F66B0, v16);
}

- (MKMapItem)mkMapItem
{
  v2 = self;
  v3 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:-[MapsFavoriteItem geoMapItem](v2 isPlaceHolderPlace:{"geoMapItem"), 0}];

  swift_unknownObjectRelease();

  return v3;
}

- (GEOMapItem)geoMapItem
{
  v2 = [(MapsFavoriteItem *)self mapItemStorage];

  return v2;
}

- (GEOMapItemStorage)mapItemStorage
{
  v2 = self;
  v3 = dispatch thunk of FavoriteItem.mapItemStorage.getter();

  return v3;
}

- (NSString)uniqueIdentifier
{
  v2 = self;
  dispatch thunk of FavoriteItem.shortcutIdentifier.getter();
  if (v3)
  {

LABEL_5:
    v6 = String._bridgeToObjectiveC()();

    goto LABEL_6;
  }

  v4 = [(MapsFavoriteItem *)v2 createUniqueIdentifier];
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (int64_t)entryType
{
  v2 = self;
  v3 = sub_100093DC8();

  return v3;
}

- (GEOFeatureStyleAttributes)styleAttributes
{
  v2 = self;
  v3 = sub_100093E5C();

  return v3;
}

- (NSArray)contacts
{
  v2 = self;
  dispatch thunk of FavoriteItem.fetchContactHandles()();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

+ (NSString)MapsSuggestionsNearbyTransitShortcutIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSString)analyticsGrouping
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (BOOL)isHomeWorkOrSchool
{
  v2 = self;
  v3 = sub_10009396C();

  return v3;
}

- (BOOL)isNearbyTransit
{
  v2 = self;
  v3 = sub_100546984();

  return v3 & 1;
}

- (_TtC4Maps16MapsFavoriteItem)init
{
  type metadata accessor for FavoriteItem();
  v3 = MapsSyncObject.__allocating_init()();
  v4 = [(MapsFavoriteItem *)self initWithFavoriteItem:v3];

  return v4;
}

- (void)saveWithCompletionHandler:(id)a3
{
  v5 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10120FC50;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10120FC58;
  v12[5] = v11;
  v13 = self;
  sub_10054DB08(0, 0, v7, &unk_10120FC60, v12);
}

- (void)deleteWithCompletionHandler:(id)a3
{
  v5 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10120FC30;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10120FC38;
  v12[5] = v11;
  v13 = self;
  sub_10054DB08(0, 0, v7, &unk_10120FC40, v12);
}

- (void)deleteWithDeleteFromLibrary:(BOOL)a3 completionHandler:(id)a4
{
  v7 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10120FC00;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10120FC08;
  v14[5] = v13;
  v15 = self;
  sub_10054DB08(0, 0, v9, &unk_10120FC10, v14);
}

- (void)moveToBackWithCompletionHandler:(id)a3
{
  v5 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10120FBD8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10120FBE0;
  v12[5] = v11;
  v13 = self;
  sub_10054DB08(0, 0, v7, &unk_10120FBE8, v12);
}

- (void)moveToIndex:(int64_t)a3 with:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  type metadata accessor for MapsFavoriteItem();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = self;
  sub_100549F34(a3, v8, sub_10041A668, v9);
}

- (void)moveToPreferredIndexWith:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  type metadata accessor for MapsFavoriteItem();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = self;
  sub_10054AD88(v6, sub_100115C80, v7);
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_10054B3B0(v6);

  sub_10005E838(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_10004E3D0(v6);
  return v4;
}

- (void)setSubtitle:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC4Maps16MapsFavoriteItem_cachedSubtitle);
  *v6 = v4;
  v6[1] = v5;
}

- (GEOFeatureStyleAttributes)proposedFavoriteStyleAttributes
{
  v2 = self;
  v3 = sub_10054C298();

  return v3;
}

- (NSString)_maps_diffableDataSourceIdentifier
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  v8 = [(MapsFavoriteItem *)v7 uniqueIdentifier];
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    UUID.init()();
    UUID.uuidString.getter();
    (*(v4 + 8))(v6, v3);
  }

  v10 = String._bridgeToObjectiveC()();

  return v10;
}

- (void)setType:(int64_t)a3
{
  if (a3 < -32768)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a3 >= 0x8000)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v3 = self;
  dispatch thunk of FavoriteItem.type.setter();
}

- (BOOL)isHidden
{
  v2 = self;
  v3 = dispatch thunk of FavoriteItem.hidden.getter();

  return v3 & 1;
}

- (void)setIsHidden:(BOOL)a3
{
  v3 = self;
  dispatch thunk of FavoriteItem.hidden.setter();
}

- (NSUUID)storageIdentifier
{
  v3 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = self;
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

- (void)setStorageIdentifier:(id)a3
{
  v5 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  if (a3)
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
  v13 = self;
  dispatch thunk of MapsSyncObject.identifier.setter();
  sub_100024F64(v10, &unk_101918E50);
}

- (void)setGeoMapItem:(id)a3
{
  v5 = objc_opt_self();
  swift_unknownObjectRetain();
  v7 = self;
  v6 = [v5 mapItemStorageForGEOMapItem:a3];
  [(MapsFavoriteItem *)v7 setMapItemStorage:v6];
  swift_unknownObjectRelease();
}

- (void)setMapItemStorage:(id)a3
{
  v4 = a3;
  v5 = self;
  dispatch thunk of FavoriteItem.mapItemStorage.setter();
}

- (void)setMkMapItem:(id)a3
{
  v5 = self;
  if (a3)
  {
    v4 = [a3 _geoMapItem];
  }

  else
  {
    v4 = 0;
  }

  [(MapsFavoriteItem *)v5 setGeoMapItem:v4];

  swift_unknownObjectRelease();
}

- (void)setContacts:(id)a3
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = self;
    v7 = v4 + 40;
    do
    {

      dispatch thunk of FavoriteItem.addContactHandle(_:)();

      v7 += 16;
      --v5;
    }

    while (v5);
  }
}

- (id)identifierForCoordinateWithCoordinate:(id)a3
{
  sub_10054EC58(a3.var0, a3.var1);
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (id)cnLabledAddress
{
  v2 = self;
  v3 = sub_10054D8DC();

  return v3;
}

@end