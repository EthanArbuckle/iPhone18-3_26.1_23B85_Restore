@interface NearbyTransitContext
- (ChromeViewController)chromeViewController;
- (_TtC4Maps20NearbyTransitContext)init;
- (id)desiredCards;
- (int64_t)currentlyDisplayedViewModeForNearbyTransitViewController:(id)a3;
- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4;
- (void)enterStackInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)leaveStackInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)nearbyTransitViewController:(id)a3 didSelect:(id)a4 timeZone:(id)a5 scheduledWindowStart:(id)a6 includeDirections:(BOOL)a7;
- (void)nearbyTransitViewController:(id)a3 select:(id)a4;
- (void)nearbyTransitViewController:(id)a3 setViewMode:(int64_t)a4;
- (void)nearbyTransitViewControllerDidEncounterTeachableMoment:(id)a3;
- (void)prepareToEnterStackInChromeViewController:(id)a3;
- (void)setChromeViewController:(id)a3;
@end

@implementation NearbyTransitContext

- (void)nearbyTransitViewControllerDidEncounterTeachableMoment:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000FAAD4();
}

- (void)nearbyTransitViewController:(id)a3 didSelect:(id)a4 timeZone:(id)a5 scheduledWindowStart:(id)a6 includeDirections:(BOOL)a7
{
  v7 = a7;
  v13 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v13 - 8);
  v15 = &v25 - v14;
  v16 = sub_1000CE6B8(&unk_10190A800);
  __chkstk_darwin(v16 - 8);
  v18 = &v25 - v17;
  if (a5)
  {
    static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = type metadata accessor for TimeZone();
    (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  }

  else
  {
    v20 = type metadata accessor for TimeZone();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  }

  if (a6)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = type metadata accessor for Date();
  (*(*(v22 - 8) + 56))(v15, v21, 1, v22);
  v23 = a3;
  swift_unknownObjectRetain();
  v24 = self;
  sub_1000FAB9C(a4, v18, v15, v7);

  swift_unknownObjectRelease();
  sub_100024F64(v15, &qword_10190EBD0);
  sub_100024F64(v18, &unk_10190A800);
}

- (void)nearbyTransitViewController:(id)a3 select:(id)a4
{
  sub_1000CE6B8(&unk_10190A7F0);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = self;
  sub_1000FAF5C();
}

- (void)nearbyTransitViewController:(id)a3 setViewMode:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1000FB06C(a4);
}

- (int64_t)currentlyDisplayedViewModeForNearbyTransitViewController:(id)a3
{
  v3 = self;
  v4 = [(NearbyTransitContext *)v3 iosChromeViewController];
  if (v4)
  {
    v5 = v4;
    v6 = [v5 displayedViewMode];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (ChromeViewController)chromeViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setChromeViewController:(id)a3
{
  swift_unknownObjectWeakAssign();
  v5 = a3;
  v6 = self;
  sub_1001164D8();
}

- (_TtC4Maps20NearbyTransitContext)init
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC4Maps20NearbyTransitContext_nearbyTransitViewController) = 0;
  *(self + OBJC_IVAR____TtC4Maps20NearbyTransitContext_onboardingViewController) = 0;
  *(self + OBJC_IVAR____TtC4Maps20NearbyTransitContext_incidentsViewController) = 0;
  *(self + OBJC_IVAR____TtC4Maps20NearbyTransitContext_initialViewMode) = -1;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(NearbyTransitContext *)&v5 init];
}

- (id)desiredCards
{
  v2 = self;
  v3 = sub_10014B2B8();

  if (v3)
  {
    sub_1000CE6B8(&unk_10190B260);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)prepareToEnterStackInChromeViewController:(id)a3
{
  v7 = self;
  v3 = [(NearbyTransitContext *)v7 iosBasedChromeViewController];
  v4 = v7;
  if (v3)
  {
    v5 = *(v7 + OBJC_IVAR____TtC4Maps20NearbyTransitContext_nearbyTransitViewController);
    if (v5)
    {
      v6 = v5;
      [v3 registerAdditionalMapViewDelegate:v6];
    }

    v4 = v7;
  }
}

- (void)enterStackInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v7 = self;
  v4 = [(NearbyTransitContext *)v7 iosBasedChromeViewController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 settingsController];

    if (v6)
    {
      [v6 setMapViewMode:3 animated:1];
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)leaveStackInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10014B68C();
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

  sub_100425634(a3);

  sub_1000DB2F4(v10);
}

@end