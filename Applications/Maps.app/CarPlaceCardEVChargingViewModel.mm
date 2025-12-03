@interface CarPlaceCardEVChargingViewModel
- (NSString)summaryTitle;
- (_TtC4Maps31CarPlaceCardEVChargingViewModel)init;
- (_TtC4Maps31CarPlaceCardEVChargingViewModel)initWithMapItem:(id)item virtualGarageService:(id)service;
- (_TtC4Maps31CarPlaceCardEVChargingViewModel)initWithMapItemIdentifier:(id)identifier plugs:(id)plugs initialAggregatedAvailabilityInfo:(id)info virtualGarageService:(id)service;
- (_TtP4Maps39CarPlaceCardEVChargingViewModelObserver_)observer;
- (void)evChargerAvailabilityDownloader:(id)downloader didDownloadAvailabilityWithPlugs:(id)plugs;
- (void)setSummaryDescription:(id)description;
- (void)setSummaryTitle:(id)title;
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

- (void)setSummaryTitle:(id)title
{
  if (title)
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

- (void)setSummaryDescription:(id)description
{
  v4 = *(self + OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_summaryDescription);
  *(self + OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_summaryDescription) = description;
  descriptionCopy = description;
}

- (_TtP4Maps39CarPlaceCardEVChargingViewModelObserver_)observer
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps31CarPlaceCardEVChargingViewModel)initWithMapItem:(id)item virtualGarageService:(id)service
{
  itemCopy = item;
  serviceCopy = service;
  return CarPlaceCardEVChargingViewModel.init(mapItem:virtualGarageService:)(itemCopy, service);
}

- (_TtC4Maps31CarPlaceCardEVChargingViewModel)initWithMapItemIdentifier:(id)identifier plugs:(id)plugs initialAggregatedAvailabilityInfo:(id)info virtualGarageService:(id)service
{
  sub_100014C84(0, &qword_10190EDD0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  identifierCopy = identifier;
  infoCopy = info;
  serviceCopy = service;
  return CarPlaceCardEVChargingViewModel.init(mapItemIdentifier:plugs:initialAggregatedAvailabilityInfo:virtualGarageService:)(identifierCopy, v9, info, service);
}

- (_TtC4Maps31CarPlaceCardEVChargingViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)evChargerAvailabilityDownloader:(id)downloader didDownloadAvailabilityWithPlugs:(id)plugs
{
  sub_100014C84(0, &qword_10190EDD0);
  *(self + OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_plugs) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;

  sub_10019F6B0();
}

@end