@interface SearchResultsContextRouter
- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)a3;
- (BOOL)chromeDidSelectMarkerForMapItem:(id)a3;
- (_TtC4Maps26SearchResultsContextRouter)init;
- (id)allSearchResultsForCurrentPinsOnMap;
- (void)clearSearchResults;
- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4;
- (void)doAudioCallToSearchResult:(id)a3;
- (void)doSearchItem:(id)a3 withUserInfo:(id)a4 refinementsQuery:(id)a5 viewController:(id)a6;
- (void)doSearchItem:(id)a3 withUserInfo:(id)a4 viewController:(id)a5;
- (void)doShareSheetForShareItem:(id)a3;
- (void)openWebsiteForSearchResult:(id)a3;
- (void)selectSearchResult:(id)a3 animated:(BOOL)a4;
- (void)setSearchPins:(id)a3 selectedPin:(id)a4 animated:(BOOL)a5;
- (void)setSearchPinsFromSearchInfo:(id)a3 scrollToResults:(BOOL)a4 displayPlaceCardForResult:(id)a5 animated:(BOOL)a6 completion:(id)a7;
- (void)showFiltersUsingViewController:(id)a3;
@end

@implementation SearchResultsContextRouter

- (_TtC4Maps26SearchResultsContextRouter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a3;
    v9 = self;
  }

  sub_1003FAF44(a3);

  sub_100024F64(v10, &unk_101908380);
}

- (BOOL)chromeDidSelectMarkerForMapItem:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003FB414(v4);

  return 1;
}

- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_1003FB5B8(a3);
  swift_unknownObjectRelease();

  return v6;
}

- (void)showFiltersUsingViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003FB7DC(v4);
}

- (void)doSearchItem:(id)a3 withUserInfo:(id)a4 refinementsQuery:(id)a5 viewController:(id)a6
{
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = self;
  sub_1003FD0E0(v11, v10, v12);
}

- (void)doSearchItem:(id)a3 withUserInfo:(id)a4 viewController:(id)a5
{
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a5;
  v11 = self;
  sub_1003FD238(v9, v8);
}

- (id)allSearchResultsForCurrentPinsOnMap
{
  v2 = self;
  sub_1003FBBC0();

  sub_10019152C();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)setSearchPins:(id)a3 selectedPin:(id)a4 animated:(BOOL)a5
{
  sub_10019152C();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = self;
  sub_1003FBD70(v8, a4, a5);
}

- (void)setSearchPinsFromSearchInfo:(id)a3 scrollToResults:(BOOL)a4 displayPlaceCardForResult:(id)a5 animated:(BOOL)a6 completion:(id)a7
{
  v12 = _Block_copy(a7);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_1003FD06C;
  }

  else
  {
    v13 = 0;
  }

  v14 = a3;
  v15 = a5;
  v16 = self;
  sub_1003FC028(v14, a4, a5, a6, v12, v13);
  sub_1000588AC(v12);
}

- (void)selectSearchResult:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_1003FC3FC(v6, a4);
}

- (void)clearSearchResults
{
  v2 = self;
  sub_1003FC640();
}

- (void)doAudioCallToSearchResult:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003FC7D0(v4);
}

- (void)openWebsiteForSearchResult:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003FCAA8(v4);
}

- (void)doShareSheetForShareItem:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1003FCDF0(a3);
  swift_unknownObjectRelease();
}

@end