@interface CLBInCallServicePresentationManager
- (CLBInCallServicePresentationManager)initWithDelegate:(id)delegate;
- (NSString)entitlement_forStaging;
- (NSString)identifier;
@end

@implementation CLBInCallServicePresentationManager

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

- (CLBInCallServicePresentationManager)initWithDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for InCallServicePresentationManager();
  return [(CLBScenePresentationManager *)&v5 initWithDelegate:delegate];
}

@end