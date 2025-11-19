@interface MapsSyncPlaceItemMapStorageUpdater
- (_TtC4Maps34MapsSyncPlaceItemMapStorageUpdater)init;
- (void)updateMapsSyncPlaceItemsMatchingMapItem:(id)a3 withStorageFrom:(id)a4;
@end

@implementation MapsSyncPlaceItemMapStorageUpdater

- (void)updateMapsSyncPlaceItemsMatchingMapItem:(id)a3 withStorageFrom:(id)a4
{
  v7 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = *(&self->super.isa + OBJC_IVAR____TtC4Maps34MapsSyncPlaceItemMapStorageUpdater_libraryDataOperationsProvider);
  v11 = a3;
  v12 = a4;
  v22 = self;
  v13 = [v12 _geoMapItem];
  if (v13)
  {
    v14 = v13;
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v10;
    v16[5] = v11;
    v16[6] = v14;
    v16[7] = v12;
    v17 = v11;
    v18 = v12;
    v19 = v10;
    sub_10020AAE4(0, 0, v9, &unk_101209CC0, v16);
  }

  else
  {

    v20 = v22;
  }
}

- (_TtC4Maps34MapsSyncPlaceItemMapStorageUpdater)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC4Maps34MapsSyncPlaceItemMapStorageUpdater_libraryDataOperationsProvider;
  type metadata accessor for MapsSyncStore();
  v5 = static MapsSyncStore.sharedStore.getter();
  v6 = type metadata accessor for LibraryDataOperationsProvider();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC4Maps29LibraryDataOperationsProvider_mapsSyncStore] = v5;
  v10.receiver = v7;
  v10.super_class = v6;
  *(&self->super.isa + v4) = [(MapsSyncPlaceItemMapStorageUpdater *)&v10 init];
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(MapsSyncPlaceItemMapStorageUpdater *)&v9 init];
}

@end