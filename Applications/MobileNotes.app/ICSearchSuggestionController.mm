@interface ICSearchSuggestionController
- (ICSearchSuggestionController)init;
- (ICSearchSuggestionController)initWithParentView:(id)view delegate:(id)delegate;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)showWithAnimated:(BOOL)animated transitionCoordinator:(id)coordinator searchBarFrame:(CGRect)frame;
- (void)updateForSuggestions:(id)suggestions;
@end

@implementation ICSearchSuggestionController

- (ICSearchSuggestionController)initWithParentView:(id)view delegate:(id)delegate
{
  viewCopy = view;
  swift_unknownObjectRetain();
  return sub_1002B0750(viewCopy, delegate);
}

- (void)showWithAnimated:(BOOL)animated transitionCoordinator:(id)coordinator searchBarFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1002B1444(animated, coordinator, x, y, width, height);
  swift_unknownObjectRelease();
}

- (void)updateForSuggestions:(id)suggestions
{
  v4 = sub_10015DA04(&qword_1006C2B00);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_1000054A4(0, &qword_1006C2B08);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
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

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_1002B1C8C(viewCopy);

  (*(v7 + 8))(v9, v6);
}

@end