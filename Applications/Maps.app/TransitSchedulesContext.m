@interface TransitSchedulesContext
+ (BOOL)shouldDisplayScheduleFor:(id)a3 departureSequence:(id)a4;
- (ChromeViewController)chromeViewController;
- (_TtC4Maps23TransitSchedulesContext)init;
- (_TtC4Maps23TransitSchedulesContext)initWithDepartureSequence:(id)a3 timeZone:(id)a4 scheduleWindowStartDate:(id)a5 includeAllDirections:(BOOL)a6;
- (_TtC4Maps23TransitSchedulesContext)initWithMapItem:(id)a3 departureSequence:(id)a4;
- (_TtC4Maps23TransitSchedulesContext)initWithRouteStep:(id)a3;
- (id)desiredCards;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4;
- (void)prepareToEnterStackInChromeViewController:(id)a3;
- (void)setIncidentsViewController:(id)a3;
- (void)transitSchedulesViewController:(id)a3 wantsToDisplayIncidents:(id)a4 fromView:(id)a5;
- (void)transitSchedulesViewController:(id)a3 wantsToDoDirectionItem:(id)a4 withUserInfo:(id)a5;
- (void)transitSchedulesViewController:(id)a3 wantsToOpenURL:(id)a4;
- (void)transitSchedulesViewController:(id)a3 wantsToShowInfoForLine:(id)a4;
- (void)transitSchedulesViewControllerWantsToUpdateRouteAnnotations:(id)a3;
@end

@implementation TransitSchedulesContext

- (id)desiredCards
{
  v2 = self;
  v3 = sub_10013242C();

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
  v4 = OBJC_IVAR____TtC4Maps23TransitSchedulesContext_viewController;
  v5 = *(self + OBJC_IVAR____TtC4Maps23TransitSchedulesContext_viewController);
  v6 = self;
  [v5 setContaineeDelegate:v6];
  [*(self + v4) setTransitSchedulesDelegate:v6];
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v7 = swift_allocObject();
  *(v7 + 16) = self;
  *(v7 + 24) = a3;
  v13[4] = sub_100132834;
  v13[5] = v7;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100039C64;
  v13[3] = &unk_1016052B0;
  v8 = _Block_copy(v13);
  v9 = a3;
  v10 = self;
  v11 = v9;
  v12 = a4;

  [v12 addPreparation:v8];

  _Block_release(v8);
}

- (ChromeViewController)chromeViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setIncidentsViewController:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps23TransitSchedulesContext_incidentsViewController);
  *(self + OBJC_IVAR____TtC4Maps23TransitSchedulesContext_incidentsViewController) = a3;
  v3 = a3;
}

+ (BOOL)shouldDisplayScheduleFor:(id)a3 departureSequence:(id)a4
{
  v6 = objc_opt_self();

  return [v6 shouldShowScheduleForTransitMapItem:a3 sequence:a4];
}

- (_TtC4Maps23TransitSchedulesContext)initWithMapItem:(id)a3 departureSequence:(id)a4
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC4Maps23TransitSchedulesContext_incidentsViewController) = 0;
  v7 = objc_allocWithZone(TransitSchedulesViewController);
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = [v7 initWithTransitMapItem:v8 departureSequence:a4];
  *(self + OBJC_IVAR____TtC4Maps23TransitSchedulesContext_viewController) = v9;
  v12.receiver = self;
  v12.super_class = type metadata accessor for TransitSchedulesContext();
  v10 = [(TransitSchedulesContext *)&v12 init];

  swift_unknownObjectRelease();
  return v10;
}

- (_TtC4Maps23TransitSchedulesContext)initWithRouteStep:(id)a3
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC4Maps23TransitSchedulesContext_incidentsViewController) = 0;
  v5 = objc_allocWithZone(TransitSchedulesViewController);
  v6 = a3;
  v7 = [v5 initWithTransitRouteStep:v6];
  *(self + OBJC_IVAR____TtC4Maps23TransitSchedulesContext_viewController) = v7;
  v10.receiver = self;
  v10.super_class = type metadata accessor for TransitSchedulesContext();
  v8 = [(TransitSchedulesContext *)&v10 init];

  return v8;
}

- (_TtC4Maps23TransitSchedulesContext)initWithDepartureSequence:(id)a3 timeZone:(id)a4 scheduleWindowStartDate:(id)a5 includeAllDirections:(BOOL)a6
{
  v6 = a6;
  v9 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = sub_1000CE6B8(&unk_10190A800);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  if (a4)
  {
    static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = type metadata accessor for TimeZone();
    (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }

  else
  {
    v16 = type metadata accessor for TimeZone();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  }

  if (a5)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 56))(v11, v17, 1, v18);
  v19 = swift_unknownObjectRetain();
  v20 = sub_1001DD2BC(v19, v14, v11, v6);
  swift_unknownObjectRelease();
  return v20;
}

- (_TtC4Maps23TransitSchedulesContext)init
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

  sub_1002085C0(a3);

  sub_1000DB2F4(v10);
}

- (void)transitSchedulesViewController:(id)a3 wantsToShowInfoForLine:(id)a4
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = objc_allocWithZone(type metadata accessor for TransitLineContext());
    swift_unknownObjectRetain_n();
    v10 = self;
    v9 = sub_10032D920(a4);
    [v7 pushContext:v9 animated:1 completion:0];

    swift_unknownObjectRelease();
  }
}

- (void)transitSchedulesViewControllerWantsToUpdateRouteAnnotations:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setNeedsUpdateComponent:@"routeAnnotations" animated:1];
  }
}

- (void)transitSchedulesViewController:(id)a3 wantsToDisplayIncidents:(id)a4 fromView:(id)a5
{
  sub_1000CE6B8(&unk_10190A7F0);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a5;
  v10 = self;
  sub_1003C087C();
}

- (void)transitSchedulesViewController:(id)a3 wantsToDoDirectionItem:(id)a4 withUserInfo:(id)a5
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  v12 = self;
  v8 = [(TransitSchedulesContext *)v12 iosBasedChromeViewController];
  if (v8 && (v9 = v8, v10 = [v8 appCoordinator], v9, v10))
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v10 enterRoutePlanningWithDirectionItem:v7 allowToPromptEditing:1 withUserInfo:isa];
  }

  else
  {
  }
}

- (void)transitSchedulesViewController:(id)a3 wantsToOpenURL:(id)a4
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = [(TransitSchedulesContext *)v11 iosBasedChromeViewController];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 _currentContainerViewController];

    if (v14)
    {
      v15 = [objc_allocWithZone(MapsWebLinkPresenter) initWithPresentingViewController:v14];
      URL._bridgeToObjectiveC()(v16);
      v18 = v17;
      [v15 presentWebURL:v17];

      v10 = v15;
      v11 = v18;
    }
  }

  (*(v7 + 8))(v9, v6);
}

@end