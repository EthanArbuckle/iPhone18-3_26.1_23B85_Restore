@interface PlaceCardLibraryOperationsCoordinator
- (BOOL)isPinned;
- (BOOL)shouldDeleteWithoutConfirmation;
- (MKMapItem)mapItem;
- (NSArray)storeSubscriptionTypes;
- (NSString)placeNote;
- (UIViewController)viewControllerForPresentingAlert;
- (_TtC8MapsSync14MapsSyncObject)syncObject;
- (int64_t)savedStateOfPlace;
- (void)addPlaceToLibraryWithCustomName:(id)name;
- (void)dealloc;
- (void)deletePlaceFromLibrary;
- (void)setMapItem:(id)item;
- (void)setSavedStateOfPlace:(int64_t)place;
- (void)setShouldDeleteWithoutConfirmation:(BOOL)confirmation;
- (void)setStoreSubscriptionTypes:(id)types;
- (void)setViewControllerForPresentingAlert:(id)alert;
- (void)storeDidChange:(id)change;
- (void)updatePlaceNote:(id)note;
@end

@implementation PlaceCardLibraryOperationsCoordinator

- (MKMapItem)mapItem
{
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  selfCopy = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(&selfCopy->super.isa + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__mapItem);
  v5 = v4;

  return v4;
}

- (void)setMapItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  PlaceCardLibraryOperationsCoordinator.mapItem.setter(item);
}

- (int64_t)savedStateOfPlace
{
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  selfCopy = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(&selfCopy->super.isa + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateOfPlace);

  return v4;
}

- (void)setSavedStateOfPlace:(int64_t)place
{
  selfCopy = self;
  sub_1002FCE14(place);
}

- (UIViewController)viewControllerForPresentingAlert
{
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  selfCopy = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setViewControllerForPresentingAlert:(id)alert
{
  alertCopy = alert;
  selfCopy = self;
  PlaceCardLibraryOperationsCoordinator.viewControllerForPresentingAlert.setter(alert);
}

- (BOOL)shouldDeleteWithoutConfirmation
{
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  selfCopy = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__shouldDeleteWithoutConfirmation;
  swift_beginAccess();
  LOBYTE(v4) = *(&selfCopy->super.isa + v4);

  return v4;
}

- (void)setShouldDeleteWithoutConfirmation:(BOOL)confirmation
{
  selfCopy = self;
  PlaceCardLibraryOperationsCoordinator.shouldDeleteWithoutConfirmation.setter(confirmation);
}

- (NSString)placeNote
{
  selfCopy = self;
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
  selfCopy = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(&selfCopy->super.isa + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__placeItemInLibrary);
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
  selfCopy = self;
  v3 = PlaceCardLibraryOperationsCoordinator.syncObject.getter();

  return v3;
}

- (void)dealloc
{
  type metadata accessor for MapsSyncStore();
  selfCopy = self;
  v4 = static MapsSyncStore.sharedStore.getter();
  v5 = selfCopy;
  dispatch thunk of MapsSyncStore.unsubscribe(_:)();

  v6.receiver = v5;
  v6.super_class = type metadata accessor for PlaceCardLibraryOperationsCoordinator();
  [(PlaceCardLibraryOperationsCoordinator *)&v6 dealloc];
}

- (void)addPlaceToLibraryWithCustomName:(id)name
{
  if (name)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1002FF600(v4, v6, 0, 0);
}

- (void)deletePlaceFromLibrary
{
  selfCopy = self;
  PlaceCardLibraryOperationsCoordinator.deletePlaceFromLibrary()();
}

- (void)updatePlaceNote:(id)note
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

  selfCopy = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  PlaceCardLibraryOperationsCoordinator.updatePlaceNote(to:)(v8);
}

- (NSArray)storeSubscriptionTypes
{
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  selfCopy = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  sub_1000CE6B8(&qword_1019083F0);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (void)setStoreSubscriptionTypes:(id)types
{
  sub_1000CE6B8(&qword_1019083F0);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  selfCopy = self;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

- (void)storeDidChange:(id)change
{
  selfCopy = self;
  _s4Maps37PlaceCardLibraryOperationsCoordinatorC14storeDidChangeyySay0A4Sync0aJ6ObjectCmGF_0();
}

@end