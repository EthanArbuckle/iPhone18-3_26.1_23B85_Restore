@interface NearbyTransitContext
- (ChromeViewController)chromeViewController;
- (_TtC4Maps20NearbyTransitContext)init;
- (id)desiredCards;
- (int64_t)currentlyDisplayedViewModeForNearbyTransitViewController:(id)controller;
- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender;
- (void)enterStackInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)leaveStackInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)nearbyTransitViewController:(id)controller didSelect:(id)select timeZone:(id)zone scheduledWindowStart:(id)start includeDirections:(BOOL)directions;
- (void)nearbyTransitViewController:(id)controller select:(id)select;
- (void)nearbyTransitViewController:(id)controller setViewMode:(int64_t)mode;
- (void)nearbyTransitViewControllerDidEncounterTeachableMoment:(id)moment;
- (void)prepareToEnterStackInChromeViewController:(id)controller;
- (void)setChromeViewController:(id)controller;
@end

@implementation NearbyTransitContext

- (void)nearbyTransitViewControllerDidEncounterTeachableMoment:(id)moment
{
  momentCopy = moment;
  selfCopy = self;
  sub_1000FAAD4();
}

- (void)nearbyTransitViewController:(id)controller didSelect:(id)select timeZone:(id)zone scheduledWindowStart:(id)start includeDirections:(BOOL)directions
{
  directionsCopy = directions;
  v13 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v13 - 8);
  v15 = &v25 - v14;
  v16 = sub_1000CE6B8(&unk_10190A800);
  __chkstk_darwin(v16 - 8);
  v18 = &v25 - v17;
  if (zone)
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

  if (start)
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
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000FAB9C(select, v18, v15, directionsCopy);

  swift_unknownObjectRelease();
  sub_100024F64(v15, &qword_10190EBD0);
  sub_100024F64(v18, &unk_10190A800);
}

- (void)nearbyTransitViewController:(id)controller select:(id)select
{
  sub_1000CE6B8(&unk_10190A7F0);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  sub_1000FAF5C();
}

- (void)nearbyTransitViewController:(id)controller setViewMode:(int64_t)mode
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1000FB06C(mode);
}

- (int64_t)currentlyDisplayedViewModeForNearbyTransitViewController:(id)controller
{
  selfCopy = self;
  iosChromeViewController = [(NearbyTransitContext *)selfCopy iosChromeViewController];
  if (iosChromeViewController)
  {
    v5 = iosChromeViewController;
    displayedViewMode = [v5 displayedViewMode];
  }

  else
  {
    displayedViewMode = -1;
  }

  return displayedViewMode;
}

- (ChromeViewController)chromeViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setChromeViewController:(id)controller
{
  swift_unknownObjectWeakAssign();
  controllerCopy = controller;
  selfCopy = self;
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
  selfCopy = self;
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

- (void)prepareToEnterStackInChromeViewController:(id)controller
{
  selfCopy = self;
  iosBasedChromeViewController = [(NearbyTransitContext *)selfCopy iosBasedChromeViewController];
  v4 = selfCopy;
  if (iosBasedChromeViewController)
  {
    v5 = *(selfCopy + OBJC_IVAR____TtC4Maps20NearbyTransitContext_nearbyTransitViewController);
    if (v5)
    {
      v6 = v5;
      [iosBasedChromeViewController registerAdditionalMapViewDelegate:v6];
    }

    v4 = selfCopy;
  }
}

- (void)enterStackInChromeViewController:(id)controller withAnimation:(id)animation
{
  selfCopy = self;
  iosBasedChromeViewController = [(NearbyTransitContext *)selfCopy iosBasedChromeViewController];
  if (iosBasedChromeViewController)
  {
    v5 = iosBasedChromeViewController;
    settingsController = [iosBasedChromeViewController settingsController];

    if (settingsController)
    {
      [settingsController setMapViewMode:3 animated:1];
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)leaveStackInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  selfCopy = self;
  sub_10014B68C();
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

  sub_100425634(state);

  sub_1000DB2F4(v10);
}

@end