@interface ClusteredResultsContext
- (BOOL)chromeDidClearMapSelection;
- (BOOL)chromeDidSelectClusteredFeatureAnnotationsMarker:(id)a3;
- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)a3;
- (BOOL)chromeDidSelectMarkerForMapItem:(id)a3;
- (ChromeViewController)chromeViewController;
- (MapsWebLinkPresenter)webLinkPresenter;
- (_TtC4Maps23ClusteredResultsContext)init;
- (id)personalizedItemSources;
- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4;
- (void)leaveStackInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)setConfiguration:(id)a3;
- (void)setRoutingContainees:(id)a3;
- (void)setSimpleResultsViewController:(id)a3;
- (void)setWebLinkPresenter:(id)a3;
- (void)shareItem:(id)a3 presentationOptions:(id)a4 completion:(id)a5;
- (void)simpleResultsViewContoller:(id)a3 doAudioCallToSearchResult:(id)a4;
- (void)simpleResultsViewContoller:(id)a3 doShareSheetForShareItem:(id)a4 completion:(id)a5;
- (void)simpleResultsViewContoller:(id)a3 openWebsiteForSearchResult:(id)a4;
- (void)simpleResultsViewContoller:(id)a3 selectClusteredLabelMarker:(id)a4;
- (void)simpleResultsViewContoller:(id)a3 selectSearchResult:(id)a4;
- (void)updateWithConfiguration:(id)a3;
@end

@implementation ClusteredResultsContext

- (ChromeViewController)chromeViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setSimpleResultsViewController:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps23ClusteredResultsContext_simpleResultsViewController);
  *(self + OBJC_IVAR____TtC4Maps23ClusteredResultsContext_simpleResultsViewController) = a3;
  v3 = a3;
}

- (void)setRoutingContainees:(id)a3
{
  sub_1000CE6B8(&unk_10190B260);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC4Maps23ClusteredResultsContext_routingContainees;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (void)setConfiguration:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps23ClusteredResultsContext_configuration);
  *(self + OBJC_IVAR____TtC4Maps23ClusteredResultsContext_configuration) = a3;
  v3 = a3;
}

- (MapsWebLinkPresenter)webLinkPresenter
{
  v2 = self;
  v3 = sub_10010BE44();

  return v3;
}

- (void)setWebLinkPresenter:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps23ClusteredResultsContext____lazy_storage___webLinkPresenter);
  *(self + OBJC_IVAR____TtC4Maps23ClusteredResultsContext____lazy_storage___webLinkPresenter) = a3;
  v5 = a3;
  v6 = self;
  sub_10005D280(v4);
}

- (void)updateWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10010C178(v4);
}

- (_TtC4Maps23ClusteredResultsContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)leaveStackInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  v12[4] = sub_10010E4B0;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100039C64;
  v12[3] = &unk_101603BE8;
  v7 = _Block_copy(v12);
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = v9;

  [v11 addAnimations:v7];

  _Block_release(v7);
}

- (id)personalizedItemSources
{
  v2 = self;
  sub_10010C904();

  sub_1000E2690();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
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

  sub_10010D6D0();

  sub_100024F64(v10, &unk_101908380);
}

- (void)shareItem:(id)a3 presentationOptions:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_10010E4C4;
  }

  else
  {
    v9 = 0;
  }

  swift_unknownObjectRetain();
  v10 = a4;
  v11 = self;
  sub_10010D934(a3, a4);
  sub_1000D3B90(v8, v9);
  swift_unknownObjectRelease();
}

- (BOOL)chromeDidSelectMarkerForMapItem:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10010CCB4(v4);

  return 1;
}

- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_10010CEA4(a3);
  swift_unknownObjectRelease();

  return v6;
}

- (BOOL)chromeDidSelectClusteredFeatureAnnotationsMarker:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10010D0C8(v4);

  return 1;
}

- (BOOL)chromeDidClearMapSelection
{
  v2 = self;
  sub_10010D208();

  return 0;
}

- (void)simpleResultsViewContoller:(id)a3 selectClusteredLabelMarker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10010DAC4(a4);
}

- (void)simpleResultsViewContoller:(id)a3 selectSearchResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10010DD14(a4);
}

- (void)simpleResultsViewContoller:(id)a3 openWebsiteForSearchResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10010DE94(a4);
}

- (void)simpleResultsViewContoller:(id)a3 doAudioCallToSearchResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10010E130(a4);
}

- (void)simpleResultsViewContoller:(id)a3 doShareSheetForShareItem:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1000FA694;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  swift_unknownObjectRetain();
  v11 = self;
  sub_10010E324(a4);
  sub_1000D3B90(v8, v9);

  swift_unknownObjectRelease();
}

@end