@interface ICSearchSuggestionController
- (ICSearchSuggestionController)init;
- (ICSearchSuggestionController)initWithParentView:(id)a3 delegate:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)showWithAnimated:(BOOL)a3 transitionCoordinator:(id)a4 searchBarFrame:(CGRect)a5;
- (void)updateForSuggestions:(id)a3;
@end

@implementation ICSearchSuggestionController

- (ICSearchSuggestionController)initWithParentView:(id)a3 delegate:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  return sub_1002B0750(v5, a4);
}

- (void)showWithAnimated:(BOOL)a3 transitionCoordinator:(id)a4 searchBarFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  swift_unknownObjectRetain();
  v12 = self;
  sub_1002B1444(a3, a4, x, y, width, height);
  swift_unknownObjectRelease();
}

- (void)updateForSuggestions:(id)a3
{
  v4 = sub_10015DA04(&qword_1006C2B00);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_1000054A4(0, &qword_1006C2B08);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_1002B1210(v8, 0);

  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
  (*(v5 + 8))(v7, v4);
}

- (ICSearchSuggestionController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_1002B1C8C(v10);

  (*(v7 + 8))(v9, v6);
}

@end