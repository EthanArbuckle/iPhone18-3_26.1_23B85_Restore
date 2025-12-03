@interface ClusteredResultsContext
- (BOOL)chromeDidClearMapSelection;
- (BOOL)chromeDidSelectClusteredFeatureAnnotationsMarker:(id)marker;
- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)annotation;
- (BOOL)chromeDidSelectMarkerForMapItem:(id)item;
- (ChromeViewController)chromeViewController;
- (MapsWebLinkPresenter)webLinkPresenter;
- (_TtC4Maps23ClusteredResultsContext)init;
- (id)personalizedItemSources;
- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender;
- (void)leaveStackInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)setConfiguration:(id)configuration;
- (void)setRoutingContainees:(id)containees;
- (void)setSimpleResultsViewController:(id)controller;
- (void)setWebLinkPresenter:(id)presenter;
- (void)shareItem:(id)item presentationOptions:(id)options completion:(id)completion;
- (void)simpleResultsViewContoller:(id)contoller doAudioCallToSearchResult:(id)result;
- (void)simpleResultsViewContoller:(id)contoller doShareSheetForShareItem:(id)item completion:(id)completion;
- (void)simpleResultsViewContoller:(id)contoller openWebsiteForSearchResult:(id)result;
- (void)simpleResultsViewContoller:(id)contoller selectClusteredLabelMarker:(id)marker;
- (void)simpleResultsViewContoller:(id)contoller selectSearchResult:(id)result;
- (void)updateWithConfiguration:(id)configuration;
@end

@implementation ClusteredResultsContext

- (ChromeViewController)chromeViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setSimpleResultsViewController:(id)controller
{
  v4 = *(self + OBJC_IVAR____TtC4Maps23ClusteredResultsContext_simpleResultsViewController);
  *(self + OBJC_IVAR____TtC4Maps23ClusteredResultsContext_simpleResultsViewController) = controller;
  controllerCopy = controller;
}

- (void)setRoutingContainees:(id)containees
{
  sub_1000CE6B8(&unk_10190B260);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC4Maps23ClusteredResultsContext_routingContainees;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (void)setConfiguration:(id)configuration
{
  v4 = *(self + OBJC_IVAR____TtC4Maps23ClusteredResultsContext_configuration);
  *(self + OBJC_IVAR____TtC4Maps23ClusteredResultsContext_configuration) = configuration;
  configurationCopy = configuration;
}

- (MapsWebLinkPresenter)webLinkPresenter
{
  selfCopy = self;
  v3 = sub_10010BE44();

  return v3;
}

- (void)setWebLinkPresenter:(id)presenter
{
  v4 = *(self + OBJC_IVAR____TtC4Maps23ClusteredResultsContext____lazy_storage___webLinkPresenter);
  *(self + OBJC_IVAR____TtC4Maps23ClusteredResultsContext____lazy_storage___webLinkPresenter) = presenter;
  presenterCopy = presenter;
  selfCopy = self;
  sub_10005D280(v4);
}

- (void)updateWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_10010C178(configurationCopy);
}

- (_TtC4Maps23ClusteredResultsContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)leaveStackInChromeViewController:(id)controller withAnimation:(id)animation
{
  v6 = swift_allocObject();
  *(v6 + 16) = controller;
  *(v6 + 24) = animation;
  v12[4] = sub_10010E4B0;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100039C64;
  v12[3] = &unk_101603BE8;
  v7 = _Block_copy(v12);
  controllerCopy = controller;
  animationCopy = animation;
  v10 = controllerCopy;
  v11 = animationCopy;

  [v11 addAnimations:v7];

  _Block_release(v7);
}

- (id)personalizedItemSources
{
  selfCopy = self;
  sub_10010C904();

  sub_1000E2690();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
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

  sub_10010D6D0();

  sub_100024F64(v10, &unk_101908380);
}

- (void)shareItem:(id)item presentationOptions:(id)options completion:(id)completion
{
  v8 = _Block_copy(completion);
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
  optionsCopy = options;
  selfCopy = self;
  sub_10010D934(item, options);
  sub_1000D3B90(v8, v9);
  swift_unknownObjectRelease();
}

- (BOOL)chromeDidSelectMarkerForMapItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_10010CCB4(itemCopy);

  return 1;
}

- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)annotation
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_10010CEA4(annotation);
  swift_unknownObjectRelease();

  return v6;
}

- (BOOL)chromeDidSelectClusteredFeatureAnnotationsMarker:(id)marker
{
  markerCopy = marker;
  selfCopy = self;
  sub_10010D0C8(markerCopy);

  return 1;
}

- (BOOL)chromeDidClearMapSelection
{
  selfCopy = self;
  sub_10010D208();

  return 0;
}

- (void)simpleResultsViewContoller:(id)contoller selectClusteredLabelMarker:(id)marker
{
  contollerCopy = contoller;
  markerCopy = marker;
  selfCopy = self;
  sub_10010DAC4(marker);
}

- (void)simpleResultsViewContoller:(id)contoller selectSearchResult:(id)result
{
  contollerCopy = contoller;
  resultCopy = result;
  selfCopy = self;
  sub_10010DD14(result);
}

- (void)simpleResultsViewContoller:(id)contoller openWebsiteForSearchResult:(id)result
{
  contollerCopy = contoller;
  resultCopy = result;
  selfCopy = self;
  sub_10010DE94(result);
}

- (void)simpleResultsViewContoller:(id)contoller doAudioCallToSearchResult:(id)result
{
  contollerCopy = contoller;
  resultCopy = result;
  selfCopy = self;
  sub_10010E130(result);
}

- (void)simpleResultsViewContoller:(id)contoller doShareSheetForShareItem:(id)item completion:(id)completion
{
  v8 = _Block_copy(completion);
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

  contollerCopy = contoller;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10010E324(item);
  sub_1000D3B90(v8, v9);

  swift_unknownObjectRelease();
}

@end