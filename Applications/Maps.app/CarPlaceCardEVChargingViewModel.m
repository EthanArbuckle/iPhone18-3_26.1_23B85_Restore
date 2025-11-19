@interface CarPlaceCardEVChargingViewModel
- (NSString)summaryTitle;
- (_TtC4Maps31CarPlaceCardEVChargingViewModel)init;
- (_TtC4Maps31CarPlaceCardEVChargingViewModel)initWithMapItem:(id)a3 virtualGarageService:(id)a4;
- (_TtC4Maps31CarPlaceCardEVChargingViewModel)initWithMapItemIdentifier:(id)a3 plugs:(id)a4 initialAggregatedAvailabilityInfo:(id)a5 virtualGarageService:(id)a6;
- (_TtP4Maps39CarPlaceCardEVChargingViewModelObserver_)observer;
- (void)evChargerAvailabilityDownloader:(id)a3 didDownloadAvailabilityWithPlugs:(id)a4;
- (void)setSummaryDescription:(id)a3;
- (void)setSummaryTitle:(id)a3;
@end

@implementation CarPlaceCardEVChargingViewModel

- (NSString)summaryTitle
{
  if (*(self + OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_summaryTitle + 8))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setSummaryTitle:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_summaryTitle);
  *v6 = v4;
  v6[1] = v5;
}

- (void)setSummaryDescription:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_summaryDescription);
  *(self + OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_summaryDescription) = a3;
  v3 = a3;
}

- (_TtP4Maps39CarPlaceCardEVChargingViewModelObserver_)observer
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps31CarPlaceCardEVChargingViewModel)initWithMapItem:(id)a3 virtualGarageService:(id)a4
{
  v5 = a3;
  v6 = a4;
  return CarPlaceCardEVChargingViewModel.init(mapItem:virtualGarageService:)(v5, a4);
}

- (_TtC4Maps31CarPlaceCardEVChargingViewModel)initWithMapItemIdentifier:(id)a3 plugs:(id)a4 initialAggregatedAvailabilityInfo:(id)a5 virtualGarageService:(id)a6
{
  sub_100014C84(0, &qword_10190EDD0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a5;
  v12 = a6;
  return CarPlaceCardEVChargingViewModel.init(mapItemIdentifier:plugs:initialAggregatedAvailabilityInfo:virtualGarageService:)(v10, v9, a5, a6);
}

- (_TtC4Maps31CarPlaceCardEVChargingViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)evChargerAvailabilityDownloader:(id)a3 didDownloadAvailabilityWithPlugs:(id)a4
{
  sub_100014C84(0, &qword_10190EDD0);
  *(self + OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_plugs) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;

  sub_10019F6B0();
}

@end