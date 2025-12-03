@interface TransitSchedulesContext
+ (BOOL)shouldDisplayScheduleFor:(id)for departureSequence:(id)sequence;
- (ChromeViewController)chromeViewController;
- (_TtC4Maps23TransitSchedulesContext)init;
- (_TtC4Maps23TransitSchedulesContext)initWithDepartureSequence:(id)sequence timeZone:(id)zone scheduleWindowStartDate:(id)date includeAllDirections:(BOOL)directions;
- (_TtC4Maps23TransitSchedulesContext)initWithMapItem:(id)item departureSequence:(id)sequence;
- (_TtC4Maps23TransitSchedulesContext)initWithRouteStep:(id)step;
- (id)desiredCards;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender;
- (void)prepareToEnterStackInChromeViewController:(id)controller;
- (void)setIncidentsViewController:(id)controller;
- (void)transitSchedulesViewController:(id)controller wantsToDisplayIncidents:(id)incidents fromView:(id)view;
- (void)transitSchedulesViewController:(id)controller wantsToDoDirectionItem:(id)item withUserInfo:(id)info;
- (void)transitSchedulesViewController:(id)controller wantsToOpenURL:(id)l;
- (void)transitSchedulesViewController:(id)controller wantsToShowInfoForLine:(id)line;
- (void)transitSchedulesViewControllerWantsToUpdateRouteAnnotations:(id)annotations;
@end

@implementation TransitSchedulesContext

- (id)desiredCards
{
  selfCopy = self;
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

- (void)prepareToEnterStackInChromeViewController:(id)controller
{
  v4 = OBJC_IVAR____TtC4Maps23TransitSchedulesContext_viewController;
  v5 = *(self + OBJC_IVAR____TtC4Maps23TransitSchedulesContext_viewController);
  selfCopy = self;
  [v5 setContaineeDelegate:selfCopy];
  [*(self + v4) setTransitSchedulesDelegate:selfCopy];
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v7 = swift_allocObject();
  *(v7 + 16) = self;
  *(v7 + 24) = controller;
  v13[4] = sub_100132834;
  v13[5] = v7;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100039C64;
  v13[3] = &unk_1016052B0;
  v8 = _Block_copy(v13);
  controllerCopy = controller;
  selfCopy = self;
  v11 = controllerCopy;
  animationCopy = animation;

  [animationCopy addPreparation:v8];

  _Block_release(v8);
}

- (ChromeViewController)chromeViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setIncidentsViewController:(id)controller
{
  v4 = *(self + OBJC_IVAR____TtC4Maps23TransitSchedulesContext_incidentsViewController);
  *(self + OBJC_IVAR____TtC4Maps23TransitSchedulesContext_incidentsViewController) = controller;
  controllerCopy = controller;
}

+ (BOOL)shouldDisplayScheduleFor:(id)for departureSequence:(id)sequence
{
  v6 = objc_opt_self();

  return [v6 shouldShowScheduleForTransitMapItem:for sequence:sequence];
}

- (_TtC4Maps23TransitSchedulesContext)initWithMapItem:(id)item departureSequence:(id)sequence
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC4Maps23TransitSchedulesContext_incidentsViewController) = 0;
  v7 = objc_allocWithZone(TransitSchedulesViewController);
  itemCopy = item;
  swift_unknownObjectRetain();
  v9 = [v7 initWithTransitMapItem:itemCopy departureSequence:sequence];
  *(self + OBJC_IVAR____TtC4Maps23TransitSchedulesContext_viewController) = v9;
  v12.receiver = self;
  v12.super_class = type metadata accessor for TransitSchedulesContext();
  v10 = [(TransitSchedulesContext *)&v12 init];

  swift_unknownObjectRelease();
  return v10;
}

- (_TtC4Maps23TransitSchedulesContext)initWithRouteStep:(id)step
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC4Maps23TransitSchedulesContext_incidentsViewController) = 0;
  v5 = objc_allocWithZone(TransitSchedulesViewController);
  stepCopy = step;
  v7 = [v5 initWithTransitRouteStep:stepCopy];
  *(self + OBJC_IVAR____TtC4Maps23TransitSchedulesContext_viewController) = v7;
  v10.receiver = self;
  v10.super_class = type metadata accessor for TransitSchedulesContext();
  v8 = [(TransitSchedulesContext *)&v10 init];

  return v8;
}

- (_TtC4Maps23TransitSchedulesContext)initWithDepartureSequence:(id)sequence timeZone:(id)zone scheduleWindowStartDate:(id)date includeAllDirections:(BOOL)directions
{
  directionsCopy = directions;
  v9 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = sub_1000CE6B8(&unk_10190A800);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  if (zone)
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

  if (date)
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
  v20 = sub_1001DD2BC(v19, v14, v11, directionsCopy);
  swift_unknownObjectRelease();
  return v20;
}

- (_TtC4Maps23TransitSchedulesContext)init
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

  sub_1002085C0(state);

  sub_1000DB2F4(v10);
}

- (void)transitSchedulesViewController:(id)controller wantsToShowInfoForLine:(id)line
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = objc_allocWithZone(type metadata accessor for TransitLineContext());
    swift_unknownObjectRetain_n();
    selfCopy = self;
    v9 = sub_10032D920(line);
    [v7 pushContext:v9 animated:1 completion:0];

    swift_unknownObjectRelease();
  }
}

- (void)transitSchedulesViewControllerWantsToUpdateRouteAnnotations:(id)annotations
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setNeedsUpdateComponent:@"routeAnnotations" animated:1];
  }
}

- (void)transitSchedulesViewController:(id)controller wantsToDisplayIncidents:(id)incidents fromView:(id)view
{
  sub_1000CE6B8(&unk_10190A7F0);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  viewCopy = view;
  selfCopy = self;
  sub_1003C087C();
}

- (void)transitSchedulesViewController:(id)controller wantsToDoDirectionItem:(id)item withUserInfo:(id)info
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  itemCopy = item;
  selfCopy = self;
  iosBasedChromeViewController = [(TransitSchedulesContext *)selfCopy iosBasedChromeViewController];
  if (iosBasedChromeViewController && (v9 = iosBasedChromeViewController, v10 = [iosBasedChromeViewController appCoordinator], v9, v10))
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v10 enterRoutePlanningWithDirectionItem:itemCopy allowToPromptEditing:1 withUserInfo:isa];
  }

  else
  {
  }
}

- (void)transitSchedulesViewController:(id)controller wantsToOpenURL:(id)l
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  iosBasedChromeViewController = [(TransitSchedulesContext *)selfCopy iosBasedChromeViewController];
  if (iosBasedChromeViewController)
  {
    v13 = iosBasedChromeViewController;
    _currentContainerViewController = [iosBasedChromeViewController _currentContainerViewController];

    if (_currentContainerViewController)
    {
      v15 = [objc_allocWithZone(MapsWebLinkPresenter) initWithPresentingViewController:_currentContainerViewController];
      URL._bridgeToObjectiveC()(v16);
      v18 = v17;
      [v15 presentWebURL:v17];

      controllerCopy = v15;
      selfCopy = v18;
    }
  }

  (*(v7 + 8))(v9, v6);
}

@end