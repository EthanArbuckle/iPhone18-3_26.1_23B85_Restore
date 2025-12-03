@interface CLBVoiceControlPresentationManager
- (CLBVoiceControlPresentationManager)initWithDelegate:(id)delegate;
- (NSString)entitlement_forStaging;
- (NSString)identifier;
@end

@implementation CLBVoiceControlPresentationManager

- (NSString)identifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSString)entitlement_forStaging
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (CLBVoiceControlPresentationManager)initWithDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for VoiceControlPresentationManager();
  return [(CLBScenePresentationManager *)&v5 initWithDelegate:delegate];
}

@end