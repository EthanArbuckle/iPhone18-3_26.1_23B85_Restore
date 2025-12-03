@interface SCATHandTracker
- (id)localizedDescriptionForAvailabilityDetail:(int64_t)detail;
- (void)_didReceiveActionWithIdentifier:(id)identifier start:(BOOL)start ignoreInputHold:(BOOL)hold;
- (void)startRunning;
- (void)stopRunning;
- (void)updateWithSwitches:(id)switches recipe:(id)recipe;
@end

@implementation SCATHandTracker

- (void)startRunning
{
  selfCopy = self;
  HandTracker.startRunning()();
}

- (void)stopRunning
{
  selfCopy = self;
  HandTracker.stopRunning()();
}

- (void)updateWithSwitches:(id)switches recipe:(id)recipe
{
  switchesCopy = switches;
  if (switches)
  {
    sub_10011C7EC();
    sub_10011C838(&qword_100217BD0, sub_10011C7EC);
    switchesCopy = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  recipeCopy = recipe;
  selfCopy = self;
  HandTracker.update(withSwitches:recipe:)(switchesCopy, recipe);
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
  HandTracker._didReceiveAction(withIdentifier:start:ignoreInputHold:)(v14, v10, v11);
}

- (id)localizedDescriptionForAvailabilityDetail:(int64_t)detail
{
  HandTrackerAvailabilityDetail.localizedDescription.getter(detail);
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end