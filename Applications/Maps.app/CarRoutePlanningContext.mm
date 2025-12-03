@interface CarRoutePlanningContext
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)mapControlsConfiguration;
- (BOOL)goButtonShouldBeVisible;
- (BOOL)recenterButtonPressed;
- (BOOL)updateRouteAnnotationsConfiguration:(id)configuration;
- (ChromeViewController)chromeViewController;
- (RouteAnnotationsConfiguration)routeAnnotationsConfiguration;
- (_TtC4Maps23CarRoutePlanningContext)init;
- (_TtC4Maps23CarRoutePlanningContext)initWithRoutePlanningSession:(id)session;
- (id)automaticSharingContacts;
- (id)desiredCards;
- (uint64_t)zoomOutButtonPressed;
- (void)advisoryListCardDidSelectAdvisoryItem:(id)item;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)carCardViewCloseButtonTapped:(id)tapped;
- (void)configureCard:(id)card forKey:(id)key;
- (void)displayAdvisoriesFor:(int64_t)for;
- (void)enterStackInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)leaveStackInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)mapView:(id)view willStartRespondingToGesture:(int64_t)gesture animated:(BOOL)animated;
- (void)mapsSession:(void *)session didChangeState:;
- (void)offerVehicleDisambiguationIfNeeded;
- (void)personalizedItemManager:(id)manager didChangeItems:(id)items itemGroups:(id)groups;
- (void)poiShapeLoader:(id)loader didLoadStartPOIShape:(id)shape endPOIShapes:(id)shapes;
- (void)resetUserInteractionState;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)routePlanningSession:(id)session didUpdateAutomaticSharingContacts:(id)contacts;
- (void)routePlanningSession:(id)session didUpdateRouteCollectionResult:(id)result forTransportType:(int64_t)type;
- (void)setAdvisoriesCard:(id)card;
- (void)setAdvisoryItemCard:(id)card;
- (void)setRoutePlanningSession:(id)session;
- (void)startNavigation;
- (void)startNavigationFor:(int64_t)for;
- (void)updateSelectedRouteIndex:(int64_t)index;
- (void)userDidInteractWithMap;
@end

@implementation CarRoutePlanningContext

- (uint64_t)zoomOutButtonPressed
{
  selfCopy = self;
  sub_100284F1C();

  return 0;
}

- (void)mapsSession:(void *)session didChangeState:
{
  sessionCopy = session;
  sub_10028E718();
}

- (ChromeViewController)chromeViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setRoutePlanningSession:(id)session
{
  v4 = *(self + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routePlanningSession);
  *(self + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routePlanningSession) = session;
  sessionCopy = session;
  selfCopy = self;
  sub_100284064(v4);
}

- (void)setAdvisoriesCard:(id)card
{
  v4 = *(self + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_advisoriesCard);
  *(self + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_advisoriesCard) = card;
  cardCopy = card;
}

- (void)setAdvisoryItemCard:(id)card
{
  v4 = *(self + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_advisoryItemCard);
  *(self + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_advisoryItemCard) = card;
  cardCopy = card;
}

- (_TtC4Maps23CarRoutePlanningContext)initWithRoutePlanningSession:(id)session
{
  sessionCopy = session;
  v4 = sub_10028E980(sessionCopy);

  return v4;
}

- (void)enterStackInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  selfCopy = self;
  sub_1002845C0(controllerCopy, animationCopy);
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  selfCopy = self;
  sub_10028EAD0(animationCopy);
}

- (void)offerVehicleDisambiguationIfNeeded
{
  selfCopy = self;
  sub_1002849B0();
}

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v10[4] = sub_10028F0EC;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100039C64;
  v10[3] = &unk_10160E6A8;
  v7 = _Block_copy(v10);
  selfCopy = self;
  animationCopy = animation;

  [animationCopy addPreparation:v7];

  _Block_release(v7);
}

- (void)leaveStackInChromeViewController:(id)controller withAnimation:(id)animation
{
  v7 = swift_allocObject();
  *(v7 + 16) = controller;
  *(v7 + 24) = self;
  v14[4] = sub_10028F0E4;
  v14[5] = v7;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100039C64;
  v14[3] = &unk_10160E658;
  v8 = _Block_copy(v14);
  controllerCopy = controller;
  selfCopy = self;
  v11 = controllerCopy;
  v12 = selfCopy;
  animationCopy = animation;

  [animationCopy addPreparation:v8];

  _Block_release(v8);
}

- (void)userDidInteractWithMap
{
  selfCopy = self;
  sub_100284F1C();
}

- (void)resetUserInteractionState
{
  selfCopy = self;
  sub_1002850BC();
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)mapControlsConfiguration
{
  if (*(self + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_userInteractedWithMap))
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  result = sub_10028F0D4(v4, &v7);
  v6 = v8;
  *&retstr->var0 = v7;
  retstr->var2 = v6;
  return result;
}

- (BOOL)recenterButtonPressed
{
  selfCopy = self;
  sub_1002850BC();
  sub_1002857A8(1);

  return 1;
}

- (BOOL)updateRouteAnnotationsConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_100285308(configurationCopy);

  return 1;
}

- (RouteAnnotationsConfiguration)routeAnnotationsConfiguration
{
  selfCopy = self;
  v3 = sub_100285688();

  return v3;
}

- (id)desiredCards
{
  if (sub_100285C80())
  {
    v2.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  return v2.super.isa;
}

- (void)configureCard:(id)card forKey:(id)key
{
  if (key)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100285D24(card, v6, v8);
  swift_unknownObjectRelease();
}

- (void)carCardViewCloseButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_10028EBCC();
}

- (void)updateSelectedRouteIndex:(int64_t)index
{
  selfCopy = self;
  sub_100286838(index);
}

- (void)startNavigation
{
  selfCopy = self;
  sub_100286B2C();
}

- (void)startNavigationFor:(int64_t)for
{
  selfCopy = self;
  sub_100287100(for);
}

- (BOOL)goButtonShouldBeVisible
{
  if (*(self + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_navigationAidedDrivingEnabled))
  {
    LOBYTE(sharedLocationManager) = 0;
  }

  else
  {
    v4 = objc_opt_self();
    selfCopy = self;
    sharedLocationManager = [v4 sharedLocationManager];
    if (sharedLocationManager)
    {
      v6 = sharedLocationManager;
      isAuthorizedForPreciseLocation = [sharedLocationManager isAuthorizedForPreciseLocation];

      LOBYTE(sharedLocationManager) = isAuthorizedForPreciseLocation;
    }

    else
    {
      __break(1u);
    }
  }

  return sharedLocationManager;
}

- (void)displayAdvisoriesFor:(int64_t)for
{
  selfCopy = self;
  sub_1002877D0(for);
}

- (id)automaticSharingContacts
{
  v2 = *(self + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routePlanningSession);
  selfCopy = self;
  configuration = [v2 configuration];
  automaticSharingContacts = [configuration automaticSharingContacts];

  if (automaticSharingContacts)
  {
    sub_100014C84(0, &unk_101911D50);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    selfCopy = automaticSharingContacts;
  }

  sub_100014C84(0, &unk_101911D50);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)routePlanningSession:(id)session didUpdateRouteCollectionResult:(id)result forTransportType:(int64_t)type
{
  sessionCopy = session;
  resultCopy = result;
  selfCopy = self;
  sub_10028ED1C();
}

- (void)routePlanningSession:(id)session didUpdateAutomaticSharingContacts:(id)contacts
{
  selfCopy = self;
  sub_1002888B4();
}

- (void)mapView:(id)view willStartRespondingToGesture:(int64_t)gesture animated:(BOOL)animated
{
  selfCopy = self;
  sub_100284F1C();
}

- (void)personalizedItemManager:(id)manager didChangeItems:(id)items itemGroups:(id)groups
{
  if (items)
  {
    sub_100014C84(0, &qword_1019167D0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (groups)
  {
    sub_100014C84(0, &unk_101916D70);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  managerCopy = manager;
  selfCopy = self;
  sub_10028EDD8();
}

- (void)poiShapeLoader:(id)loader didLoadStartPOIShape:(id)shape endPOIShapes:(id)shapes
{
  selfCopy = self;
  sub_10028E718();
}

- (_TtC4Maps23CarRoutePlanningContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)advisoryListCardDidSelectAdvisoryItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_10028A318(itemCopy);
}

@end