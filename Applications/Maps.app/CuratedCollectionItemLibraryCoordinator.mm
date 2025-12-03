@interface CuratedCollectionItemLibraryCoordinator
- (_TtC4Maps39CuratedCollectionItemLibraryCoordinator)init;
- (_TtC4Maps39CuratedCollectionItemLibraryCoordinator)initWithInitialMapItem:(id)item dataOperationsProvider:(id)provider;
- (void)addPlaceToLibraryWithRefinedMapItem:(id)item;
- (void)deletePlaceFromLibraryWithViewControllerForPresentingAlert:(id)alert;
- (void)determineSavedStateWithCompletion:(id)completion;
@end

@implementation CuratedCollectionItemLibraryCoordinator

- (_TtC4Maps39CuratedCollectionItemLibraryCoordinator)initWithInitialMapItem:(id)item dataOperationsProvider:(id)provider
{
  *(&self->super.isa + OBJC_IVAR____TtC4Maps39CuratedCollectionItemLibraryCoordinator_placeItemInLibrary) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps39CuratedCollectionItemLibraryCoordinator_isAddingToLibrary) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps39CuratedCollectionItemLibraryCoordinator_initialMapItem) = item;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps39CuratedCollectionItemLibraryCoordinator_dataOperationsProvider) = provider;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CuratedCollectionItemLibraryCoordinator();
  itemCopy = item;
  providerCopy = provider;
  return [(CuratedCollectionItemLibraryCoordinator *)&v9 init];
}

- (void)determineSavedStateWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC4Maps39CuratedCollectionItemLibraryCoordinator_initialMapItem);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  selfCopy = self;
  sub_100492FBC(v6, v7, sub_1000FA694, v5);
}

- (void)addPlaceToLibraryWithRefinedMapItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  CuratedCollectionItemLibraryCoordinator.addPlaceToLibrary(refinedMapItem:)(itemCopy);
}

- (void)deletePlaceFromLibraryWithViewControllerForPresentingAlert:(id)alert
{
  alertCopy = alert;
  selfCopy = self;
  CuratedCollectionItemLibraryCoordinator.deletePlaceFromLibrary(viewControllerForPresentingAlert:)(alertCopy);
}

- (_TtC4Maps39CuratedCollectionItemLibraryCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end