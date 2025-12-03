@interface SCATAirPodsSource
- (NSString)switchSource;
- (id)localizedDescriptionForAvailabilityDetail:(int64_t)detail;
- (void)_didReceiveActionWithIdentifier:(id)identifier start:(BOOL)start ignoreInputHold:(BOOL)hold;
- (void)startRunning;
- (void)stopRunning;
- (void)updateWithSwitches:(id)switches recipe:(id)recipe;
@end

@implementation SCATAirPodsSource

- (NSString)switchSource
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)startRunning
{
  selfCopy = self;
  SCATAirPodsSource.startRunning()();
}

- (void)stopRunning
{
  selfCopy = self;
  SCATAirPodsSource.stopRunning()();
}

- (void)updateWithSwitches:(id)switches recipe:(id)recipe
{
  switchesCopy = switches;
  if (switches)
  {
    sub_1000FB560(0, &qword_100218300);
    sub_10010F138();
    switchesCopy = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  recipeCopy = recipe;
  selfCopy = self;
  _s15assistivetouchd17SCATAirPodsSourceC6update12withSwitches6recipeyShySo8AXSwitchCGSg_So0I6RecipeCSgtF_0(switchesCopy);
}

- (void)_didReceiveActionWithIdentifier:(id)identifier start:(BOOL)start ignoreInputHold:(BOOL)hold
{
  identifierCopy = identifier;
  selfCopy = self;
  _s15assistivetouchd17SCATAirPodsSourceC17_didReceiveAction14withIdentifier5start15ignoreInputHoldySo14SCATActionItemC_S2btF_0(identifierCopy);
}

- (id)localizedDescriptionForAvailabilityDetail:(int64_t)detail
{
  AirPodsAvailabilityDetail.localizedDescription.getter(detail);
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end