@interface SearchResultsLogicController
- (ChromeViewController)chromeViewController;
- (GEOMapServiceTraits)currentTraits;
- (_TtC4Maps28SearchResultsLogicController)init;
- (id)logicControllerUpdateHandler;
- (void)beginSearchWithUserInfo:(id)a3 refinementsQuery:(id)a4;
- (void)endSearch;
- (void)refreshCurrentSearchSession;
- (void)searchSessionManagerReceiveEVChargersUpdate:(id)a3;
- (void)searchSessionManagerSessionDidFail;
- (void)searchSessionManagerSessionDidInvalidate;
- (void)searchSessionManagerSessionDidReceiveUpdate;
- (void)searchSessionManagerSessionWillPerformSearch;
- (void)setChromeViewController:(id)a3;
- (void)setLogicControllerUpdateHandler:(id)a3;
- (void)setRecentAutocompleteSearchSessionData:(id)a3;
- (void)setSearchFieldItem:(id)a3;
@end

@implementation SearchResultsLogicController

- (void)setSearchFieldItem:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps28SearchResultsLogicController_searchFieldItem);
  *(self + OBJC_IVAR____TtC4Maps28SearchResultsLogicController_searchFieldItem) = a3;
  v3 = a3;
}

- (void)setRecentAutocompleteSearchSessionData:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps28SearchResultsLogicController_recentAutocompleteSearchSessionData);
  *(self + OBJC_IVAR____TtC4Maps28SearchResultsLogicController_recentAutocompleteSearchSessionData) = a3;
  v3 = a3;
}

- (id)logicControllerUpdateHandler
{
  if (*(self + OBJC_IVAR____TtC4Maps28SearchResultsLogicController_logicControllerUpdateHandler))
  {
    v2 = *(self + OBJC_IVAR____TtC4Maps28SearchResultsLogicController_logicControllerUpdateHandler + 8);
    v5[4] = *(self + OBJC_IVAR____TtC4Maps28SearchResultsLogicController_logicControllerUpdateHandler);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100039C64;
    v5[3] = &unk_1016034D0;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLogicControllerUpdateHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1000FA694;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC4Maps28SearchResultsLogicController_logicControllerUpdateHandler);
  v8 = *(self + OBJC_IVAR____TtC4Maps28SearchResultsLogicController_logicControllerUpdateHandler);
  *v7 = v6;
  v7[1] = v4;
  v9 = self;
  sub_1000588AC(v8);
}

- (ChromeViewController)chromeViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setChromeViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1000FB44C(a3);
}

- (void)beginSearchWithUserInfo:(id)a3 refinementsQuery:(id)a4
{
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  v8 = self;
  sub_1000FB9E8(v6, a4);
}

- (void)endSearch
{
  v2 = self;
  sub_1000FBE30();
}

- (void)refreshCurrentSearchSession
{
  v2 = self;
  sub_1000FBFF4();
}

- (_TtC4Maps28SearchResultsLogicController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)searchSessionManagerSessionDidReceiveUpdate
{
  v2 = self;
  sub_1000FCC78("[SearchResultContext] searchSessionManagerSessionDidReceiveUpdate for %@", sub_1003F9BF8);
}

- (void)searchSessionManagerSessionDidFail
{
  v2 = self;
  sub_1000FCC78("[SearchResultContext] searchSessionManagerSessionDidFail for %@", sub_1003F9DF0);
}

- (void)searchSessionManagerSessionDidInvalidate
{
  v2 = self;
  sub_1000FCC78("[SearchResultContext] searchSessionManagerSessionDidInvalidate for %@", sub_1003F9FD4);
}

- (void)searchSessionManagerSessionWillPerformSearch
{
  v2 = self;
  sub_1000FCC78("[SearchResultContext] searchSessionManagerSessionWillPerformSearch for %@", sub_1003FA1C0);
}

- (void)searchSessionManagerReceiveEVChargersUpdate:(id)a3
{
  sub_100014C84(0, &qword_10190E160);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  sub_1000FCE98();
}

- (GEOMapServiceTraits)currentTraits
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong currentTraits];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end