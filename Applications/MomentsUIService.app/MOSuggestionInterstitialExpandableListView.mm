@interface MOSuggestionInterstitialExpandableListView
- (_TtC16MomentsUIService42MOSuggestionInterstitialExpandableListView)initWithFrame:(CGRect)frame;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
@end

@implementation MOSuggestionInterstitialExpandableListView

- (_TtC16MomentsUIService42MOSuggestionInterstitialExpandableListView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  specialized MOSuggestionInterstitialExpandableListView.collectionView(_:willDisplay:forItemAt:)(cellCopy, v11);

  (*(v9 + 8))(v11, v8);
}

@end