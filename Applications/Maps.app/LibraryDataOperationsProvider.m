@interface LibraryDataOperationsProvider
- (_TtC4Maps29LibraryDataOperationsProvider)init;
- (_TtC4Maps29LibraryDataOperationsProvider)initWithMapsSyncStore:(id)a3;
- (void)addToLibraryWithMapItem:(id)a3 customName:(id)a4 alsoAddnote:(id)a5 completion:(id)a6;
- (void)alertMessageForDeletingPlaceItem:(_TtP4Maps26LibraryPlaceItemCompatible_ *)a3 completionHandler:(id)a4;
- (void)deleteFavoriteItem:(id)a3;
- (void)deleteFromLibraryWithPlaceItem:(id)a3 viewControllerForPresentingAlert:(id)a4 completion:(id)a5;
- (void)deleteFromLibraryWithPlaceItems:(id)a3 completion:(id)a4;
- (void)deleteFromLibraryWithPlaceItems:(id)a3 viewControllerForPresentingAlert:(id)a4 completion:(id)a5;
- (void)deleteFromLibraryWithRouteData:(id)a3 viewControllerForPresentingAlert:(id)a4 completion:(id)a5;
- (void)deletePlacesMatchingMapItem:(id)a3;
- (void)existingPlaceItemForMapItem:(id)a3 completion:(id)a4;
- (void)existingPlaceItemsForMapItem:(MKMapItem *)a3 completionHandler:(id)a4;
- (void)saveAsFavoriteWithCollectionPlaceItem:(id)a3;
- (void)saveNote:(NSString *)a3 libraryPlaceItem:(_TtP4Maps26LibraryPlaceItemCompatible_ *)a4 completionHandler:(id)a5;
- (void)saveNote:(id)a3 collectionPlaceItem:(id)a4;
- (void)updateSavedPlaceItemsMatchingMapItem:(id)a3 withStorageFrom:(id)a4;
@end

@implementation LibraryDataOperationsProvider

- (_TtC4Maps29LibraryDataOperationsProvider)initWithMapsSyncStore:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC4Maps29LibraryDataOperationsProvider_mapsSyncStore) = a3;
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = a3;
  return [(LibraryDataOperationsProvider *)&v8 init];
}

- (void)saveNote:(id)a3 collectionPlaceItem:(id)a4
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a4;
  v10 = self;
  sub_1004937B0(v6, v8, v9);
}

- (void)saveNote:(NSString *)a3 libraryPlaceItem:(_TtP4Maps26LibraryPlaceItemCompatible_ *)a4 completionHandler:(id)a5
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
  v15[4] = &unk_101209D18;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_101209D20;
  v16[5] = v15;
  v17 = a3;
  swift_unknownObjectRetain();
  v18 = self;
  sub_10054DB08(0, 0, v11, &unk_101209D28, v16);
}

- (void)addToLibraryWithMapItem:(id)a3 customName:(id)a4 alsoAddnote:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  if (!a4)
  {
    v11 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a4 = v12;
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a5 = v14;
LABEL_6:
  v15 = swift_allocObject();
  *(v15 + 16) = v10;

  v16 = a3;
  v17 = self;

  sub_100492620(v16, sub_100273C10, v15, v17, v16, v11, a4, v13, a5);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
}

- (void)deleteFromLibraryWithPlaceItem:(id)a3 viewControllerForPresentingAlert:(id)a4 completion:(id)a5
{
  ObjectType = swift_getObjectType();
  v10 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(a5);
  if (v13)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v13 = sub_1004968E4;
  }

  else
  {
    v14 = 0;
  }

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = self;
  v16[5] = a3;
  v16[6] = v13;
  v16[7] = v14;
  v16[8] = a4;
  v16[9] = ObjectType;
  swift_unknownObjectRetain();
  v17 = a4;
  v18 = self;
  sub_10020AAE4(0, 0, v12, &unk_101209D08, v16);
}

- (void)deleteFromLibraryWithPlaceItems:(id)a3 viewControllerForPresentingAlert:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  sub_1000CE6B8(&qword_1019151C0);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v7)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    v7 = sub_1004963BC;
  }

  else
  {
    v9 = 0;
  }

  v10 = a4;
  v11 = self;
  sub_10048A2E0(v8, v10, v7, v9);
  sub_1000588AC(v7);
}

- (void)deleteFromLibraryWithPlaceItems:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_1000CE6B8(&qword_1019151C0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v5 = sub_10041A668;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  sub_10048A910(v6, v5, v7);
  sub_1000588AC(v5);
}

- (void)deletePlacesMatchingMapItem:(id)a3
{
  v5 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = self;
  v9[5] = a3;
  v10 = a3;
  v11 = self;
  sub_10020AAE4(0, 0, v7, &unk_1011F9600, v9);
}

- (void)deleteFromLibraryWithRouteData:(id)a3 viewControllerForPresentingAlert:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_100115C80;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_1004919D0(v10, v11, v8, v9);
  sub_1000588AC(v8);
}

- (void)existingPlaceItemForMapItem:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_1004933CC(v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)existingPlaceItemsForMapItem:(MKMapItem *)a3 completionHandler:(id)a4
{
  v7 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_101209CD8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_101209CE0;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_10054DB08(0, 0, v9, &unk_101209CE8, v14);
}

- (void)updateSavedPlaceItemsMatchingMapItem:(id)a3 withStorageFrom:(id)a4
{
  v7 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = a3;
  v11 = a4;
  v18 = self;
  v12 = [v11 _geoMapItem];
  if (v12)
  {
    v13 = v12;
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v18;
    v15[5] = v10;
    v15[6] = v13;
    v15[7] = v11;
    sub_10020AAE4(0, 0, v9, &unk_101209CC8, v15);
  }

  else
  {

    v16 = v18;
  }
}

- (void)deleteFavoriteItem:(id)a3
{
  v4 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a3;
  v9 = a3;
  sub_10020ADD4(0, 0, v6, &unk_1011F0770, v8);
}

- (void)saveAsFavoriteWithCollectionPlaceItem:(id)a3
{
  v5 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a3;
  v9[5] = self;
  v10 = a3;
  v11 = self;
  sub_10020AAE4(0, 0, v7, &unk_1011F0780, v9);
}

- (_TtC4Maps29LibraryDataOperationsProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)alertMessageForDeletingPlaceItem:(_TtP4Maps26LibraryPlaceItemCompatible_ *)a3 completionHandler:(id)a4
{
  v7 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_101209CA0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1011F9360;
  v14[5] = v13;
  swift_unknownObjectRetain();
  v15 = self;
  sub_10054DB08(0, 0, v9, &unk_1011F66B0, v14);
}

@end