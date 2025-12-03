@interface PHSOSUIWebViewEventsHelper
- (int64_t)serverAuthenticationChallengeWithChallenge:(id)challenge;
- (void)connectedWithAddresses:(id)addresses;
- (void)stateChangeWithState:(id)state;
- (void)videoStreamLost;
- (void)videoStreamQualityChangedWithQuality:(id)quality;
- (void)webRTCErrorWithError:(id)error;
@end

@implementation PHSOSUIWebViewEventsHelper

- (void)webRTCErrorWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  sub_10018F0BC(errorCopy);
}

- (void)videoStreamQualityChangedWithQuality:(id)quality
{
  qualityCopy = quality;
  selfCopy = self;
  sub_10018F184(qualityCopy);
}

- (void)videoStreamLost
{
  selfCopy = self;
  sub_10018F204();
}

- (void)stateChangeWithState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_10018F2A4(stateCopy);
}

- (int64_t)serverAuthenticationChallengeWithChallenge:(id)challenge
{
  challengeCopy = challenge;
  selfCopy = self;
  v6 = sub_10018F324(challengeCopy);

  return v6;
}

- (void)connectedWithAddresses:(id)addresses
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10018F3F4(v4);
}

@end