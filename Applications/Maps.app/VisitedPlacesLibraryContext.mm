@interface VisitedPlacesLibraryContext
- (BOOL)chromeDidSelectClusteredFeatureAnnotationsMarker:(id)marker;
- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)annotation;
- (BOOL)chromeDidSelectMarkerForMapItem:(id)item;
- (ChromeViewController)chromeViewController;
- (ShareDelegate)shareDelegate;
- (_TtC4Maps27VisitedPlacesLibraryContext)init;
- (_TtP4Maps42VisitedPlacesCommonActionsHandlingDelegate_)actionDelegate;
- (id)desiredCards;
- (id)personalizedItemSources;
- (id)searchResultsForViewController:(id)controller;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)containeeViewControllerDidDismissExternally:(id)externally;
- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender;
- (void)injectSearchPinsFromSearchInfo:(id)info;
- (void)leaveStackInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)viewControllerClearInjectedSearchPins:(id)pins;
@end

@implementation VisitedPlacesLibraryContext

- (id)searchResultsForViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  _s4Maps27VisitedPlacesLibraryContextC13searchResults3forSaySo12SearchResultCGSo16UIViewControllerC_tF_0();

  sub_10019152C();
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)viewControllerClearInjectedSearchPins:(id)pins
{
  swift_beginAccess();
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
  VisitedPlacesLibraryContext.injectSearchPins(from:)(infoCopy);
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

- (_TtP4Maps42VisitedPlacesCommonActionsHandlingDelegate_)actionDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (ShareDelegate)shareDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (ChromeViewController)chromeViewController
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps27VisitedPlacesLibraryContext)init
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

  _s4Maps27VisitedPlacesLibraryContextC43containeeViewControllerDidDismissExternallyyySo09ContaineegH0CSgF_0();

  sub_1000DB2F4(v10);
}

- (void)containeeViewControllerDidDismissExternally:(id)externally
{
  externallyCopy = externally;
  selfCopy = self;
  _s4Maps27VisitedPlacesLibraryContextC43containeeViewControllerDidDismissExternallyyySo09ContaineegH0CSgF_0();
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
  VisitedPlacesLibraryContext.personalizedItemSources()();

  sub_1000E2690();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)leaveStackInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  selfCopy = self;
  sub_100469F40(animationCopy);
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  selfCopy = self;
  sub_10046A06C(animationCopy);
}

@end