@interface CuratedCollectionItemLibraryCoordinator
- (_TtC4Maps39CuratedCollectionItemLibraryCoordinator)init;
- (_TtC4Maps39CuratedCollectionItemLibraryCoordinator)initWithInitialMapItem:(id)a3 dataOperationsProvider:(id)a4;
- (void)addPlaceToLibraryWithRefinedMapItem:(id)a3;
- (void)deletePlaceFromLibraryWithViewControllerForPresentingAlert:(id)a3;
- (void)determineSavedStateWithCompletion:(id)a3;
@end

@implementation CuratedCollectionItemLibraryCoordinator

- (_TtC4Maps39CuratedCollectionItemLibraryCoordinator)initWithInitialMapItem:(id)a3 dataOperationsProvider:(id)a4
{
  *(&self->super.isa + OBJC_IVAR____TtC4Maps39CuratedCollectionItemLibraryCoordinator_placeItemInLibrary) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps39CuratedCollectionItemLibraryCoordinator_isAddingToLibrary) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps39CuratedCollectionItemLibraryCoordinator_initialMapItem) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps39CuratedCollectionItemLibraryCoordinator_dataOperationsProvider) = a4;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CuratedCollectionItemLibraryCoordinator();
  v6 = a3;
  v7 = a4;
  return [(CuratedCollectionItemLibraryCoordinator *)&v9 init];
}

- (void)determineSavedStateWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC4Maps39CuratedCollectionItemLibraryCoordinator_initialMapItem);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = self;
  sub_100492FBC(v6, v7, sub_1000FA694, v5);
}

- (void)addPlaceToLibraryWithRefinedMapItem:(id)a3
{
  v4 = a3;
  v5 = self;
  CuratedCollectionItemLibraryCoordinator.addPlaceToLibrary(refinedMapItem:)(v4);
}

- (void)deletePlaceFromLibraryWithViewControllerForPresentingAlert:(id)a3
{
  v4 = a3;
  v5 = self;
  CuratedCollectionItemLibraryCoordinator.deletePlaceFromLibrary(viewControllerForPresentingAlert:)(v4);
}

- (_TtC4Maps39CuratedCollectionItemLibraryCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end