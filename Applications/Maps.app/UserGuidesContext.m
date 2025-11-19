@interface UserGuidesContext
- (BOOL)chromeDidSelectClusteredFeatureAnnotationsMarker:(id)a3;
- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)a3;
- (BOOL)chromeDidSelectMarkerForMapItem:(id)a3;
- (ChromeViewController)chromeViewController;
- (_TtC4Maps17UserGuidesContext)init;
- (_TtC4Maps17UserGuidesContext)initWithConfiguration:(id)a3;
- (id)desiredCards;
- (id)personalizedItemSources;
- (id)searchResultsForViewController:(id)a3;
- (id)traitsForAddFromACViewController:(id)a3;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)containeeViewControllerDidDismissExternally:(id)a3;
- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4;
- (void)injectSearchPinsFromSearchInfo:(id)a3;
- (void)leaveStackInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)userGuideViewController:(id)a3 createNewUserGuideWith:(id)a4;
- (void)userGuideViewController:(id)a3 didSelect:(id)a4;
- (void)userGuideViewController:(id)a3 didTapAddPlacesToGuide:(id)a4;
- (void)userGuideViewController:(id)a3 didUpdateWith:(id)a4;
- (void)userGuideViewController:(id)a3 present:(id)a4;
- (void)viewController:(id)a3 showSortPickerWithSortOptions:(id)a4 initialSelectedSortOptionIndex:(int64_t)a5 completion:(id)a6;
- (void)viewControllerClearInjectedSearchPins:(id)a3;
@end

@implementation UserGuidesContext

- (void)userGuideViewController:(id)a3 createNewUserGuideWith:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100214C54(v7);
}

- (void)userGuideViewController:(id)a3 present:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100214E34(v7);
}

- (void)userGuideViewController:(id)a3 didTapAddPlacesToGuide:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100214F44(v7);
}

- (void)userGuideViewController:(id)a3 didSelect:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002150CC(v7);
}

- (void)userGuideViewController:(id)a3 didUpdateWith:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100215204(v7);
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

  sub_100227ED4();

  sub_1000DB2F4(v10);
}

- (void)containeeViewControllerDidDismissExternally:(id)a3
{
  v4 = a3;
  v5 = self;
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
  v2 = self;
  sub_1002F6A28();

  sub_1000E2690();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)leaveStackInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002F6DA4(v7);
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002F6EC0(v7);
}

- (id)searchResultsForViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003C0290();

  sub_10019152C();
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)viewControllerClearInjectedSearchPins:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v7 = self;
    v6 = [v5 searchPinsManager];

    [v6 clearSearchPins];
  }
}

- (void)injectSearchPinsFromSearchInfo:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100215204(v4);
}

- (ChromeViewController)chromeViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps17UserGuidesContext)initWithConfiguration:(id)a3
{
  v3 = a3;
  v4 = sub_10042A66C(v3);

  return v4;
}

- (_TtC4Maps17UserGuidesContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
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

- (void)viewController:(id)a3 showSortPickerWithSortOptions:(id)a4 initialSelectedSortOptionIndex:(int64_t)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
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

  v12 = a3;
  v13 = self;
  sub_1004C2CD0(v12, v10, a5, v9, v11);
  sub_1000588AC(v9);
}

- (id)traitsForAddFromACViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100536470();
  v7 = v6;

  return v7;
}

@end