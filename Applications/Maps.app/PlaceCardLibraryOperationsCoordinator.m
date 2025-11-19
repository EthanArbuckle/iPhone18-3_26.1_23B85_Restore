@interface PlaceCardLibraryOperationsCoordinator
- (BOOL)isPinned;
- (BOOL)shouldDeleteWithoutConfirmation;
- (MKMapItem)mapItem;
- (NSArray)storeSubscriptionTypes;
- (NSString)placeNote;
- (UIViewController)viewControllerForPresentingAlert;
- (_TtC8MapsSync14MapsSyncObject)syncObject;
- (int64_t)savedStateOfPlace;
- (void)addPlaceToLibraryWithCustomName:(id)a3;
- (void)dealloc;
- (void)deletePlaceFromLibrary;
- (void)setMapItem:(id)a3;
- (void)setSavedStateOfPlace:(int64_t)a3;
- (void)setShouldDeleteWithoutConfirmation:(BOOL)a3;
- (void)setStoreSubscriptionTypes:(id)a3;
- (void)setViewControllerForPresentingAlert:(id)a3;
- (void)storeDidChange:(id)a3;
- (void)updatePlaceNote:(id)a3;
@end

@implementation PlaceCardLibraryOperationsCoordinator

- (MKMapItem)mapItem
{
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  v3 = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(&v3->super.isa + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__mapItem);
  v5 = v4;

  return v4;
}

- (void)setMapItem:(id)a3
{
  v5 = a3;
  v6 = self;
  PlaceCardLibraryOperationsCoordinator.mapItem.setter(a3);
}

- (int64_t)savedStateOfPlace
{
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  v3 = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(&v3->super.isa + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateOfPlace);

  return v4;
}

- (void)setSavedStateOfPlace:(int64_t)a3
{
  v4 = self;
  sub_1002FCE14(a3);
}

- (UIViewController)viewControllerForPresentingAlert
{
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  v3 = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setViewControllerForPresentingAlert:(id)a3
{
  v5 = a3;
  v6 = self;
  PlaceCardLibraryOperationsCoordinator.viewControllerForPresentingAlert.setter(a3);
}

- (BOOL)shouldDeleteWithoutConfirmation
{
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  v3 = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__shouldDeleteWithoutConfirmation;
  swift_beginAccess();
  LOBYTE(v4) = *(&v3->super.isa + v4);

  return v4;
}

- (void)setShouldDeleteWithoutConfirmation:(BOOL)a3
{
  v4 = self;
  PlaceCardLibraryOperationsCoordinator.shouldDeleteWithoutConfirmation.setter(a3);
}

- (NSString)placeNote
{
  v2 = self;
  PlaceCardLibraryOperationsCoordinator.placeNote.getter();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isPinned
{
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  v3 = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(&v3->super.isa + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__placeItemInLibrary);
  swift_unknownObjectRetain();

  if (!v4)
  {
    return 0;
  }

  type metadata accessor for FavoriteItem();
  v5 = swift_dynamicCastClass() != 0;
  swift_unknownObjectRelease();
  return v5;
}

- (_TtC8MapsSync14MapsSyncObject)syncObject
{
  v2 = self;
  v3 = PlaceCardLibraryOperationsCoordinator.syncObject.getter();

  return v3;
}

- (void)dealloc
{
  type metadata accessor for MapsSyncStore();
  v3 = self;
  v4 = static MapsSyncStore.sharedStore.getter();
  v5 = v3;
  dispatch thunk of MapsSyncStore.unsubscribe(_:)();

  v6.receiver = v5;
  v6.super_class = type metadata accessor for PlaceCardLibraryOperationsCoordinator();
  [(PlaceCardLibraryOperationsCoordinator *)&v6 dealloc];
}

- (void)addPlaceToLibraryWithCustomName:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_1002FF600(v4, v6, 0, 0);
}

- (void)deletePlaceFromLibrary
{
  v2 = self;
  PlaceCardLibraryOperationsCoordinator.deletePlaceFromLibrary()();
}

- (void)updatePlaceNote:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  PlaceCardLibraryOperationsCoordinator.updatePlaceNote(to:)(v8);
}

- (NSArray)storeSubscriptionTypes
{
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  v3 = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  sub_1000CE6B8(&qword_1019083F0);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (void)setStoreSubscriptionTypes:(id)a3
{
  sub_1000CE6B8(&qword_1019083F0);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  v4 = self;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

- (void)storeDidChange:(id)a3
{
  v3 = self;
  _s4Maps37PlaceCardLibraryOperationsCoordinatorC14storeDidChangeyySay0A4Sync0aJ6ObjectCmGF_0();
}

@end