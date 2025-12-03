@interface SCATHeadTracker
- (id)localizedDescriptionForAvailabilityDetail:(int64_t)detail;
- (void)_didReceiveActionWithIdentifier:(id)identifier start:(BOOL)start ignoreInputHold:(BOOL)hold;
- (void)startRunning;
- (void)stopRunning;
- (void)updateWithSwitches:(id)switches recipe:(id)recipe;
@end

@implementation SCATHeadTracker

- (void)startRunning
{
  selfCopy = self;
  HeadTracker.startRunning()();
}

- (void)stopRunning
{
  selfCopy = self;
  HeadTracker.stopRunning()();
}

- (void)_didReceiveActionWithIdentifier:(id)identifier start:(BOOL)start ignoreInputHold:(BOOL)hold
{
  holdCopy = hold;
  startCopy = start;
  identifierCopy = identifier;
  selfCopy = self;
  v10 = selfCopy;
  v12 = selfCopy;
  v14.super.isa = identifierCopy;
  v14.action = startCopy;
  v14.shortcutIdentifier = holdCopy;
  HeadTracker._didReceiveAction(withIdentifier:start:ignoreInputHold:)(v14, v10, v11);
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
  HeadTracker.update(withSwitches:recipe:)(switchesCopy, recipe);
}

- (id)localizedDescriptionForAvailabilityDetail:(int64_t)detail
{
  HeadTrackerAvailabilityDetail.localizedDescription.getter(detail);
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end