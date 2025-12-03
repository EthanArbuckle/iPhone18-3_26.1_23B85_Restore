@interface UserGuidesContext
- (BOOL)chromeDidSelectClusteredFeatureAnnotationsMarker:(id)marker;
- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)annotation;
- (BOOL)chromeDidSelectMarkerForMapItem:(id)item;
- (ChromeViewController)chromeViewController;
- (_TtC4Maps17UserGuidesContext)init;
- (_TtC4Maps17UserGuidesContext)initWithConfiguration:(id)configuration;
- (id)desiredCards;
- (id)personalizedItemSources;
- (id)searchResultsForViewController:(id)controller;
- (id)traitsForAddFromACViewController:(id)controller;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)containeeViewControllerDidDismissExternally:(id)externally;
- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender;
- (void)injectSearchPinsFromSearchInfo:(id)info;
- (void)leaveStackInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)userGuideViewController:(id)controller createNewUserGuideWith:(id)with;
- (void)userGuideViewController:(id)controller didSelect:(id)select;
- (void)userGuideViewController:(id)controller didTapAddPlacesToGuide:(id)guide;
- (void)userGuideViewController:(id)controller didUpdateWith:(id)with;
- (void)userGuideViewController:(id)controller present:(id)present;
- (void)viewController:(id)controller showSortPickerWithSortOptions:(id)options initialSelectedSortOptionIndex:(int64_t)index completion:(id)completion;
- (void)viewControllerClearInjectedSearchPins:(id)pins;
@end

@implementation UserGuidesContext

- (void)userGuideViewController:(id)controller createNewUserGuideWith:(id)with
{
  controllerCopy = controller;
  withCopy = with;
  selfCopy = self;
  sub_100214C54(withCopy);
}

- (void)userGuideViewController:(id)controller present:(id)present
{
  controllerCopy = controller;
  presentCopy = present;
  selfCopy = self;
  sub_100214E34(presentCopy);
}

- (void)userGuideViewController:(id)controller didTapAddPlacesToGuide:(id)guide
{
  controllerCopy = controller;
  guideCopy = guide;
  selfCopy = self;
  sub_100214F44(guideCopy);
}

- (void)userGuideViewController:(id)controller didSelect:(id)select
{
  controllerCopy = controller;
  selectCopy = select;
  selfCopy = self;
  sub_1002150CC(selectCopy);
}

- (void)userGuideViewController:(id)controller didUpdateWith:(id)with
{
  controllerCopy = controller;
  withCopy = with;
  selfCopy = self;
  sub_100215204(withCopy);
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

  sub_100227ED4();

  sub_1000DB2F4(v10);
}

- (void)containeeViewControllerDidDismissExternally:(id)externally
{
  externallyCopy = externally;
  selfCopy = self;
  sub_100227ED4();
}

- (id)desiredCards
{
  swift_beginAccess();

  sub_1000CE6B8(&unk_10190B260);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (id)personalizedItemSources
{
  selfCopy = self;
  sub_1002F6A28();

  sub_1000E2690();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)leaveStackInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  selfCopy = self;
  sub_1002F6DA4(animationCopy);
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  selfCopy = self;
  sub_1002F6EC0(animationCopy);
}

- (id)searchResultsForViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1003C0290();

  sub_10019152C();
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)viewControllerClearInjectedSearchPins:(id)pins
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    selfCopy = self;
    searchPinsManager = [v5 searchPinsManager];

    [searchPinsManager clearSearchPins];
  }
}

- (void)injectSearchPinsFromSearchInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  sub_100215204(infoCopy);
}

- (ChromeViewController)chromeViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps17UserGuidesContext)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = sub_10042A66C(configurationCopy);

  return v4;
}

- (_TtC4Maps17UserGuidesContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)chromeDidSelectMarkerForMapItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  VisitedPlacesLibraryContext.chromeDidSelectMarker(for:)(itemCopy);

  return 1;
}

- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)annotation
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = VisitedPlacesLibraryContext.chromeDidSelect(_:)(annotation);
  swift_unknownObjectRelease();

  return v6 & 1;
}

- (BOOL)chromeDidSelectClusteredFeatureAnnotationsMarker:(id)marker
{
  markerCopy = marker;
  selfCopy = self;
  VisitedPlacesLibraryContext.chromeDidSelectClusteredFeatureAnnotationsMarker(_:)(markerCopy);

  return 1;
}

- (void)viewController:(id)controller showSortPickerWithSortOptions:(id)options initialSelectedSortOptionIndex:(int64_t)index completion:(id)completion
{
  v9 = _Block_copy(completion);
  type metadata accessor for SortOptionPickerSortOption();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    v9 = sub_1000D2C9C;
  }

  else
  {
    v11 = 0;
  }

  controllerCopy = controller;
  selfCopy = self;
  sub_1004C2CD0(controllerCopy, v10, index, v9, v11);
  sub_1000588AC(v9);
}

- (id)traitsForAddFromACViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_100536470();
  v7 = v6;

  return v7;
}

@end