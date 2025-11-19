@interface CarRoutePlanningContext
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)mapControlsConfiguration;
- (BOOL)goButtonShouldBeVisible;
- (BOOL)recenterButtonPressed;
- (BOOL)updateRouteAnnotationsConfiguration:(id)a3;
- (ChromeViewController)chromeViewController;
- (RouteAnnotationsConfiguration)routeAnnotationsConfiguration;
- (_TtC4Maps23CarRoutePlanningContext)init;
- (_TtC4Maps23CarRoutePlanningContext)initWithRoutePlanningSession:(id)a3;
- (id)automaticSharingContacts;
- (id)desiredCards;
- (uint64_t)zoomOutButtonPressed;
- (void)advisoryListCardDidSelectAdvisoryItem:(id)a3;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)carCardViewCloseButtonTapped:(id)a3;
- (void)configureCard:(id)a3 forKey:(id)a4;
- (void)displayAdvisoriesFor:(int64_t)a3;
- (void)enterStackInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)leaveStackInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)mapView:(id)a3 willStartRespondingToGesture:(int64_t)a4 animated:(BOOL)a5;
- (void)mapsSession:(void *)a1 didChangeState:;
- (void)offerVehicleDisambiguationIfNeeded;
- (void)personalizedItemManager:(id)a3 didChangeItems:(id)a4 itemGroups:(id)a5;
- (void)poiShapeLoader:(id)a3 didLoadStartPOIShape:(id)a4 endPOIShapes:(id)a5;
- (void)resetUserInteractionState;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)routePlanningSession:(id)a3 didUpdateAutomaticSharingContacts:(id)a4;
- (void)routePlanningSession:(id)a3 didUpdateRouteCollectionResult:(id)a4 forTransportType:(int64_t)a5;
- (void)setAdvisoriesCard:(id)a3;
- (void)setAdvisoryItemCard:(id)a3;
- (void)setRoutePlanningSession:(id)a3;
- (void)startNavigation;
- (void)startNavigationFor:(int64_t)a3;
- (void)updateSelectedRouteIndex:(int64_t)a3;
- (void)userDidInteractWithMap;
@end

@implementation CarRoutePlanningContext

- (uint64_t)zoomOutButtonPressed
{
  v1 = a1;
  sub_100284F1C();

  return 0;
}

- (void)mapsSession:(void *)a1 didChangeState:
{
  v1 = a1;
  sub_10028E718();
}

- (ChromeViewController)chromeViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setRoutePlanningSession:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routePlanningSession);
  *(self + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routePlanningSession) = a3;
  v5 = a3;
  v6 = self;
  sub_100284064(v4);
}

- (void)setAdvisoriesCard:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_advisoriesCard);
  *(self + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_advisoriesCard) = a3;
  v3 = a3;
}

- (void)setAdvisoryItemCard:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_advisoryItemCard);
  *(self + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_advisoryItemCard) = a3;
  v3 = a3;
}

- (_TtC4Maps23CarRoutePlanningContext)initWithRoutePlanningSession:(id)a3
{
  v3 = a3;
  v4 = sub_10028E980(v3);

  return v4;
}

- (void)enterStackInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002845C0(v6, v7);
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10028EAD0(v7);
}

- (void)offerVehicleDisambiguationIfNeeded
{
  v2 = self;
  sub_1002849B0();
}

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
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
  v8 = self;
  v9 = a4;

  [v9 addPreparation:v7];

  _Block_release(v7);
}

- (void)leaveStackInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = self;
  v14[4] = sub_10028F0E4;
  v14[5] = v7;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100039C64;
  v14[3] = &unk_10160E658;
  v8 = _Block_copy(v14);
  v9 = a3;
  v10 = self;
  v11 = v9;
  v12 = v10;
  v13 = a4;

  [v13 addPreparation:v8];

  _Block_release(v8);
}

- (void)userDidInteractWithMap
{
  v2 = self;
  sub_100284F1C();
}

- (void)resetUserInteractionState
{
  v2 = self;
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
  v2 = self;
  sub_1002850BC();
  sub_1002857A8(1);

  return 1;
}

- (BOOL)updateRouteAnnotationsConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100285308(v4);

  return 1;
}

- (RouteAnnotationsConfiguration)routeAnnotationsConfiguration
{
  v2 = self;
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

- (void)configureCard:(id)a3 forKey:(id)a4
{
  if (a4)
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
  v9 = self;
  sub_100285D24(a3, v6, v8);
  swift_unknownObjectRelease();
}

- (void)carCardViewCloseButtonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10028EBCC();
}

- (void)updateSelectedRouteIndex:(int64_t)a3
{
  v4 = self;
  sub_100286838(a3);
}

- (void)startNavigation
{
  v2 = self;
  sub_100286B2C();
}

- (void)startNavigationFor:(int64_t)a3
{
  v4 = self;
  sub_100287100(a3);
}

- (BOOL)goButtonShouldBeVisible
{
  if (*(self + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_navigationAidedDrivingEnabled))
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v4 = objc_opt_self();
    v5 = self;
    v2 = [v4 sharedLocationManager];
    if (v2)
    {
      v6 = v2;
      v7 = [v2 isAuthorizedForPreciseLocation];

      LOBYTE(v2) = v7;
    }

    else
    {
      __break(1u);
    }
  }

  return v2;
}

- (void)displayAdvisoriesFor:(int64_t)a3
{
  v4 = self;
  sub_1002877D0(a3);
}

- (id)automaticSharingContacts
{
  v2 = *(self + OBJC_IVAR____TtC4Maps23CarRoutePlanningContext_routePlanningSession);
  v3 = self;
  v4 = [v2 configuration];
  v5 = [v4 automaticSharingContacts];

  if (v5)
  {
    sub_100014C84(0, &unk_101911D50);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = v5;
  }

  sub_100014C84(0, &unk_101911D50);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)routePlanningSession:(id)a3 didUpdateRouteCollectionResult:(id)a4 forTransportType:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_10028ED1C();
}

- (void)routePlanningSession:(id)a3 didUpdateAutomaticSharingContacts:(id)a4
{
  v4 = self;
  sub_1002888B4();
}

- (void)mapView:(id)a3 willStartRespondingToGesture:(int64_t)a4 animated:(BOOL)a5
{
  v5 = self;
  sub_100284F1C();
}

- (void)personalizedItemManager:(id)a3 didChangeItems:(id)a4 itemGroups:(id)a5
{
  if (a4)
  {
    sub_100014C84(0, &qword_1019167D0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a5)
  {
    sub_100014C84(0, &unk_101916D70);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a3;
  v9 = self;
  sub_10028EDD8();
}

- (void)poiShapeLoader:(id)a3 didLoadStartPOIShape:(id)a4 endPOIShapes:(id)a5
{
  v5 = self;
  sub_10028E718();
}

- (_TtC4Maps23CarRoutePlanningContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)advisoryListCardDidSelectAdvisoryItem:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10028A318(v4);
}

@end