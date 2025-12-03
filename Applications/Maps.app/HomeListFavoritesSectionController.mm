@interface HomeListFavoritesSectionController
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)shortcutsRowCollectionViewListCellAddNewShortcut:(id)shortcut;
@end

@implementation HomeListFavoritesSectionController

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100209A00();
  (*(v7 + 8))(v9, v6);
}

- (void)shortcutsRowCollectionViewListCellAddNewShortcut:(id)shortcut
{
  sub_10003E48C(self + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  selfCopy = self;
  sub_10003E4E8(v7);
  if (Strong)
  {
    v6 = String._bridgeToObjectiveC()();
    [Strong homeItemTapped:v6];

    swift_unknownObjectRelease();
  }
}

@end