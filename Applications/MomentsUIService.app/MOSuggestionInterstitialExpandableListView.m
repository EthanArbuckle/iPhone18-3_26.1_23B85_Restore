@interface MOSuggestionInterstitialExpandableListView
- (_TtC16MomentsUIService42MOSuggestionInterstitialExpandableListView)initWithFrame:(CGRect)a3;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
@end

@implementation MOSuggestionInterstitialExpandableListView

- (_TtC16MomentsUIService42MOSuggestionInterstitialExpandableListView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a4;
  v14 = self;
  specialized MOSuggestionInterstitialExpandableListView.collectionView(_:willDisplay:forItemAt:)(v13, v11);

  (*(v9 + 8))(v11, v8);
}

@end