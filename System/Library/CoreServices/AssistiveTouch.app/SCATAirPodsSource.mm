@interface SCATAirPodsSource
- (NSString)switchSource;
- (id)localizedDescriptionForAvailabilityDetail:(int64_t)a3;
- (void)_didReceiveActionWithIdentifier:(id)a3 start:(BOOL)a4 ignoreInputHold:(BOOL)a5;
- (void)startRunning;
- (void)stopRunning;
- (void)updateWithSwitches:(id)a3 recipe:(id)a4;
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
  v2 = self;
  SCATAirPodsSource.startRunning()();
}

- (void)stopRunning
{
  v2 = self;
  SCATAirPodsSource.stopRunning()();
}

- (void)updateWithSwitches:(id)a3 recipe:(id)a4
{
  v5 = a3;
  if (a3)
  {
    sub_1000FB560(0, &qword_100218300);
    sub_10010F138();
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a4;
  v8 = self;
  _s15assistivetouchd17SCATAirPodsSourceC6update12withSwitches6recipeyShySo8AXSwitchCGSg_So0I6RecipeCSgtF_0(v5);
}

- (void)_didReceiveActionWithIdentifier:(id)a3 start:(BOOL)a4 ignoreInputHold:(BOOL)a5
{
  v6 = a3;
  v7 = self;
  _s15assistivetouchd17SCATAirPodsSourceC17_didReceiveAction14withIdentifier5start15ignoreInputHoldySo14SCATActionItemC_S2btF_0(v6);
}

- (id)localizedDescriptionForAvailabilityDetail:(int64_t)a3
{
  AirPodsAvailabilityDetail.localizedDescription.getter(a3);
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end