@interface SearchResultsContextRouter
- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)annotation;
- (BOOL)chromeDidSelectMarkerForMapItem:(id)item;
- (_TtC4Maps26SearchResultsContextRouter)init;
- (id)allSearchResultsForCurrentPinsOnMap;
- (void)clearSearchResults;
- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender;
- (void)doAudioCallToSearchResult:(id)result;
- (void)doSearchItem:(id)item withUserInfo:(id)info refinementsQuery:(id)query viewController:(id)controller;
- (void)doSearchItem:(id)item withUserInfo:(id)info viewController:(id)controller;
- (void)doShareSheetForShareItem:(id)item;
- (void)openWebsiteForSearchResult:(id)result;
- (void)selectSearchResult:(id)result animated:(BOOL)animated;
- (void)setSearchPins:(id)pins selectedPin:(id)pin animated:(BOOL)animated;
- (void)setSearchPinsFromSearchInfo:(id)info scrollToResults:(BOOL)results displayPlaceCardForResult:(id)result animated:(BOOL)animated completion:(id)completion;
- (void)showFiltersUsingViewController:(id)controller;
@end

@implementation SearchResultsContextRouter

- (_TtC4Maps26SearchResultsContextRouter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender
{
  if (sender)
  {
    stateCopy = state;
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    stateCopy2 = state;
    selfCopy2 = self;
  }

  sub_1003FAF44(state);

  sub_100024F64(v10, &unk_101908380);
}

- (BOOL)chromeDidSelectMarkerForMapItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_1003FB414(itemCopy);

  return 1;
}

- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)annotation
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_1003FB5B8(annotation);
  swift_unknownObjectRelease();

  return v6;
}

- (void)showFiltersUsingViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1003FB7DC(controllerCopy);
}

- (void)doSearchItem:(id)item withUserInfo:(id)info refinementsQuery:(id)query viewController:(id)controller
{
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  itemCopy = item;
  queryCopy = query;
  controllerCopy = controller;
  selfCopy = self;
  sub_1003FD0E0(itemCopy, v10, queryCopy);
}

- (void)doSearchItem:(id)item withUserInfo:(id)info viewController:(id)controller
{
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  itemCopy = item;
  controllerCopy = controller;
  selfCopy = self;
  sub_1003FD238(itemCopy, v8);
}

- (id)allSearchResultsForCurrentPinsOnMap
{
  selfCopy = self;
  sub_1003FBBC0();

  sub_10019152C();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)setSearchPins:(id)pins selectedPin:(id)pin animated:(BOOL)animated
{
  sub_10019152C();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  pinCopy = pin;
  selfCopy = self;
  sub_1003FBD70(v8, pin, animated);
}

- (void)setSearchPinsFromSearchInfo:(id)info scrollToResults:(BOOL)results displayPlaceCardForResult:(id)result animated:(BOOL)animated completion:(id)completion
{
  v12 = _Block_copy(completion);
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

  infoCopy = info;
  resultCopy = result;
  selfCopy = self;
  sub_1003FC028(infoCopy, results, result, animated, v12, v13);
  sub_1000588AC(v12);
}

- (void)selectSearchResult:(id)result animated:(BOOL)animated
{
  resultCopy = result;
  selfCopy = self;
  sub_1003FC3FC(resultCopy, animated);
}

- (void)clearSearchResults
{
  selfCopy = self;
  sub_1003FC640();
}

- (void)doAudioCallToSearchResult:(id)result
{
  resultCopy = result;
  selfCopy = self;
  sub_1003FC7D0(resultCopy);
}

- (void)openWebsiteForSearchResult:(id)result
{
  resultCopy = result;
  selfCopy = self;
  sub_1003FCAA8(resultCopy);
}

- (void)doShareSheetForShareItem:(id)item
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1003FCDF0(item);
  swift_unknownObjectRelease();
}

@end