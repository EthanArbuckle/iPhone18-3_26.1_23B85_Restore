@interface LibraryDataOperationsProvider
- (_TtC4Maps29LibraryDataOperationsProvider)init;
- (_TtC4Maps29LibraryDataOperationsProvider)initWithMapsSyncStore:(id)store;
- (void)addToLibraryWithMapItem:(id)item customName:(id)name alsoAddnote:(id)addnote completion:(id)completion;
- (void)alertMessageForDeletingPlaceItem:(_TtP4Maps26LibraryPlaceItemCompatible_ *)item completionHandler:(id)handler;
- (void)deleteFavoriteItem:(id)item;
- (void)deleteFromLibraryWithPlaceItem:(id)item viewControllerForPresentingAlert:(id)alert completion:(id)completion;
- (void)deleteFromLibraryWithPlaceItems:(id)items completion:(id)completion;
- (void)deleteFromLibraryWithPlaceItems:(id)items viewControllerForPresentingAlert:(id)alert completion:(id)completion;
- (void)deleteFromLibraryWithRouteData:(id)data viewControllerForPresentingAlert:(id)alert completion:(id)completion;
- (void)deletePlacesMatchingMapItem:(id)item;
- (void)existingPlaceItemForMapItem:(id)item completion:(id)completion;
- (void)existingPlaceItemsForMapItem:(MKMapItem *)item completionHandler:(id)handler;
- (void)saveAsFavoriteWithCollectionPlaceItem:(id)item;
- (void)saveNote:(NSString *)note libraryPlaceItem:(_TtP4Maps26LibraryPlaceItemCompatible_ *)item completionHandler:(id)handler;
- (void)saveNote:(id)note collectionPlaceItem:(id)item;
- (void)updateSavedPlaceItemsMatchingMapItem:(id)item withStorageFrom:(id)from;
@end

@implementation LibraryDataOperationsProvider

- (_TtC4Maps29LibraryDataOperationsProvider)initWithMapsSyncStore:(id)store
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC4Maps29LibraryDataOperationsProvider_mapsSyncStore) = store;
  v8.receiver = self;
  v8.super_class = ObjectType;
  storeCopy = store;
  return [(LibraryDataOperationsProvider *)&v8 init];
}

- (void)saveNote:(id)note collectionPlaceItem:(id)item
{
  if (note)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  itemCopy = item;
  selfCopy = self;
  sub_1004937B0(v6, v8, itemCopy);
}

- (void)saveNote:(NSString *)note libraryPlaceItem:(_TtP4Maps26LibraryPlaceItemCompatible_ *)item completionHandler:(id)handler
{
  v9 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = note;
  v13[3] = item;
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
  noteCopy = note;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10054DB08(0, 0, v11, &unk_101209D28, v16);
}

- (void)addToLibraryWithMapItem:(id)item customName:(id)name alsoAddnote:(id)addnote completion:(id)completion
{
  v10 = _Block_copy(completion);
  if (!name)
  {
    v11 = 0;
    if (addnote)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  name = v12;
  if (!addnote)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  addnote = v14;
LABEL_6:
  v15 = swift_allocObject();
  *(v15 + 16) = v10;

  itemCopy = item;
  selfCopy = self;

  sub_100492620(itemCopy, sub_100273C10, v15, selfCopy, itemCopy, v11, name, v13, addnote);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
}

- (void)deleteFromLibraryWithPlaceItem:(id)item viewControllerForPresentingAlert:(id)alert completion:(id)completion
{
  ObjectType = swift_getObjectType();
  v10 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(completion);
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
  v16[5] = item;
  v16[6] = v13;
  v16[7] = v14;
  v16[8] = alert;
  v16[9] = ObjectType;
  swift_unknownObjectRetain();
  alertCopy = alert;
  selfCopy = self;
  sub_10020AAE4(0, 0, v12, &unk_101209D08, v16);
}

- (void)deleteFromLibraryWithPlaceItems:(id)items viewControllerForPresentingAlert:(id)alert completion:(id)completion
{
  v7 = _Block_copy(completion);
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

  alertCopy = alert;
  selfCopy = self;
  sub_10048A2E0(v8, alertCopy, v7, v9);
  sub_1000588AC(v7);
}

- (void)deleteFromLibraryWithPlaceItems:(id)items completion:(id)completion
{
  v5 = _Block_copy(completion);
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

  selfCopy = self;
  sub_10048A910(v6, v5, v7);
  sub_1000588AC(v5);
}

- (void)deletePlacesMatchingMapItem:(id)item
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
  v9[5] = item;
  itemCopy = item;
  selfCopy = self;
  sub_10020AAE4(0, 0, v7, &unk_1011F9600, v9);
}

- (void)deleteFromLibraryWithRouteData:(id)data viewControllerForPresentingAlert:(id)alert completion:(id)completion
{
  v8 = _Block_copy(completion);
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

  dataCopy = data;
  alertCopy = alert;
  selfCopy = self;
  sub_1004919D0(dataCopy, alertCopy, v8, v9);
  sub_1000588AC(v8);
}

- (void)existingPlaceItemForMapItem:(id)item completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  itemCopy = item;
  selfCopy = self;
  sub_1004933CC(itemCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)existingPlaceItemsForMapItem:(MKMapItem *)item completionHandler:(id)handler
{
  v7 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = item;
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
  itemCopy = item;
  selfCopy = self;
  sub_10054DB08(0, 0, v9, &unk_101209CE8, v14);
}

- (void)updateSavedPlaceItemsMatchingMapItem:(id)item withStorageFrom:(id)from
{
  v7 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  itemCopy = item;
  fromCopy = from;
  selfCopy = self;
  _geoMapItem = [fromCopy _geoMapItem];
  if (_geoMapItem)
  {
    v13 = _geoMapItem;
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = selfCopy;
    v15[5] = itemCopy;
    v15[6] = v13;
    v15[7] = fromCopy;
    sub_10020AAE4(0, 0, v9, &unk_101209CC8, v15);
  }

  else
  {

    v16 = selfCopy;
  }
}

- (void)deleteFavoriteItem:(id)item
{
  v4 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = item;
  itemCopy = item;
  sub_10020ADD4(0, 0, v6, &unk_1011F0770, v8);
}

- (void)saveAsFavoriteWithCollectionPlaceItem:(id)item
{
  v5 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = item;
  v9[5] = self;
  itemCopy = item;
  selfCopy = self;
  sub_10020AAE4(0, 0, v7, &unk_1011F0780, v9);
}

- (_TtC4Maps29LibraryDataOperationsProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)alertMessageForDeletingPlaceItem:(_TtP4Maps26LibraryPlaceItemCompatible_ *)item completionHandler:(id)handler
{
  v7 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = item;
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
  selfCopy = self;
  sub_10054DB08(0, 0, v9, &unk_1011F66B0, v14);
}

@end