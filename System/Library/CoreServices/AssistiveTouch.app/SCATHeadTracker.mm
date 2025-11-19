@interface SCATHeadTracker
- (id)localizedDescriptionForAvailabilityDetail:(int64_t)a3;
- (void)_didReceiveActionWithIdentifier:(id)a3 start:(BOOL)a4 ignoreInputHold:(BOOL)a5;
- (void)startRunning;
- (void)stopRunning;
- (void)updateWithSwitches:(id)a3 recipe:(id)a4;
@end

@implementation SCATHeadTracker

- (void)startRunning
{
  v2 = self;
  HeadTracker.startRunning()();
}

- (void)stopRunning
{
  v2 = self;
  HeadTracker.stopRunning()();
}

- (void)_didReceiveActionWithIdentifier:(id)a3 start:(BOOL)a4 ignoreInputHold:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = self;
  v10 = v9;
  v12 = v9;
  v14.super.isa = v8;
  v14.action = v6;
  v14.shortcutIdentifier = v5;
  HeadTracker._didReceiveAction(withIdentifier:start:ignoreInputHold:)(v14, v10, v11);
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
  HeadTracker.update(withSwitches:recipe:)(v5, a4);
}

- (id)localizedDescriptionForAvailabilityDetail:(int64_t)a3
{
  HeadTrackerAvailabilityDetail.localizedDescription.getter(a3);
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end