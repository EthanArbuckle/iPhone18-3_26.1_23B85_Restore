@interface HomeListSectionController
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (_TtC4Maps25HomeListSectionController)init;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)homeDataProvidingObjectDidUpdate:(id)update;
@end

@implementation HomeListSectionController

- (void)homeDataProvidingObjectDidUpdate:(id)update
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10005A54C(update);
  swift_unknownObjectRelease();
}

- (_TtC4Maps25HomeListSectionController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13 = [(HomeListSectionController *)selfCopy collectionView:viewCopy shouldSelectItemAtIndexPath:isa];

  (*(v7 + 8))(v9, v6);
  return v13;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_100540354();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10053F21C(viewCopy);

  (*(v7 + 8))(v9, v6);
}

@end