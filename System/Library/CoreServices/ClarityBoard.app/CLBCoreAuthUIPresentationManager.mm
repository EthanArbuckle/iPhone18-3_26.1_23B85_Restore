@interface CLBCoreAuthUIPresentationManager
- (CLBCoreAuthUIPresentationManager)initWithDelegate:(id)a3;
- (NSString)entitlement_forStaging;
- (NSString)identifier;
@end

@implementation CLBCoreAuthUIPresentationManager

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

- (CLBCoreAuthUIPresentationManager)initWithDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CoreAuthUIPresentationManager();
  return [(CLBScenePresentationManager *)&v5 initWithDelegate:a3];
}

@end