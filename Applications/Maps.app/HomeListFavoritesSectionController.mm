@interface HomeListFavoritesSectionController
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)shortcutsRowCollectionViewListCellAddNewShortcut:(id)a3;
@end

@implementation HomeListFavoritesSectionController

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = self;
  sub_100209A00();
  (*(v7 + 8))(v9, v6);
}

- (void)shortcutsRowCollectionViewListCellAddNewShortcut:(id)a3
{
  sub_10003E48C(self + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = self;
  sub_10003E4E8(v7);
  if (Strong)
  {
    v6 = String._bridgeToObjectiveC()();
    [Strong homeItemTapped:v6];

    swift_unknownObjectRelease();
  }
}

@end