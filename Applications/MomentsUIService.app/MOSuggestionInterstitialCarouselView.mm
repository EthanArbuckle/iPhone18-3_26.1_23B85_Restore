@interface MOSuggestionInterstitialCarouselView
- (_TtC16MomentsUIService36MOSuggestionInterstitialCarouselView)initWithFrame:(CGRect)frame;
- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
@end

@implementation MOSuggestionInterstitialCarouselView

- (_TtC16MomentsUIService36MOSuggestionInterstitialCarouselView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  x = velocity.x;
  draggingCopy = dragging;
  selfCopy = self;
  MOSuggestionInterstitialCarouselView.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(draggingCopy, offset, x);
}

- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path
{
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  supplementaryViewCopy = supplementaryView;
  selfCopy = self;
  specialized MOSuggestionInterstitialCarouselView.collectionView(_:willDisplaySupplementaryView:forElementKind:at:)(supplementaryViewCopy, v13, v15, v12);

  (*(v10 + 8))(v12, v9);
}

@end