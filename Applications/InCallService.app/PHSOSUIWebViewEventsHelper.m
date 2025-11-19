@interface PHSOSUIWebViewEventsHelper
- (int64_t)serverAuthenticationChallengeWithChallenge:(id)a3;
- (void)connectedWithAddresses:(id)a3;
- (void)stateChangeWithState:(id)a3;
- (void)videoStreamLost;
- (void)videoStreamQualityChangedWithQuality:(id)a3;
- (void)webRTCErrorWithError:(id)a3;
@end

@implementation PHSOSUIWebViewEventsHelper

- (void)webRTCErrorWithError:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10018F0BC(v4);
}

- (void)videoStreamQualityChangedWithQuality:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10018F184(v4);
}

- (void)videoStreamLost
{
  v2 = self;
  sub_10018F204();
}

- (void)stateChangeWithState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10018F2A4(v4);
}

- (int64_t)serverAuthenticationChallengeWithChallenge:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10018F324(v4);

  return v6;
}

- (void)connectedWithAddresses:(id)a3
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_10018F3F4(v4);
}

@end