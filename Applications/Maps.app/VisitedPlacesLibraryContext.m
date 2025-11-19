@interface VisitedPlacesLibraryContext
- (BOOL)chromeDidSelectClusteredFeatureAnnotationsMarker:(id)a3;
- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)a3;
- (BOOL)chromeDidSelectMarkerForMapItem:(id)a3;
- (ChromeViewController)chromeViewController;
- (ShareDelegate)shareDelegate;
- (_TtC4Maps27VisitedPlacesLibraryContext)init;
- (_TtP4Maps42VisitedPlacesCommonActionsHandlingDelegate_)actionDelegate;
- (id)desiredCards;
- (id)personalizedItemSources;
- (id)searchResultsForViewController:(id)a3;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)containeeViewControllerDidDismissExternally:(id)a3;
- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4;
- (void)injectSearchPinsFromSearchInfo:(id)a3;
- (void)leaveStackInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)viewControllerClearInjectedSearchPins:(id)a3;
@end

@implementation VisitedPlacesLibraryContext

- (id)searchResultsForViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  _s4Maps27VisitedPlacesLibraryContextC13searchResults3forSaySo12SearchResultCGSo16UIViewControllerC_tF_0();

  sub_10019152C();
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)viewControllerClearInjectedSearchPins:(id)a3
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = self;
    v7 = [v5 searchPinsManager];

    [v7 clearSearchPins];
  }
}

- (void)injectSearchPinsFromSearchInfo:(id)a3
{
  v4 = a3;
  v5 = self;
  VisitedPlacesLibraryContext.injectSearchPins(from:)(v4);
}

- (BOOL)chromeDidSelectMarkerForMapItem:(id)a3
{
  v4 = a3;
  v5 = self;
  VisitedPlacesLibraryContext.chromeDidSelectMarker(for:)(v4);

  return 1;
}

- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = VisitedPlacesLibraryContext.chromeDidSelect(_:)(a3);
  swift_unknownObjectRelease();

  return v6 & 1;
}

- (BOOL)chromeDidSelectClusteredFeatureAnnotationsMarker:(id)a3
{
  v4 = a3;
  v5 = self;
  VisitedPlacesLibraryContext.chromeDidSelectClusteredFeatureAnnotationsMarker(_:)(v4);

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

  _s4Maps27VisitedPlacesLibraryContextC43containeeViewControllerDidDismissExternallyyySo09ContaineegH0CSgF_0();

  sub_1000DB2F4(v10);
}

- (void)containeeViewControllerDidDismissExternally:(id)a3
{
  v4 = a3;
  v5 = self;
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
  v2 = self;
  VisitedPlacesLibraryContext.personalizedItemSources()();

  sub_1000E2690();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)leaveStackInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100469F40(v7);
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10046A06C(v7);
}

@end