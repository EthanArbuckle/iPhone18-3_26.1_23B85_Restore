@interface CLBAuthKitUIPresentationManager
- (CLBAuthKitUIPresentationManager)initWithDelegate:(id)a3;
- (NSString)identifier;
@end

@implementation CLBAuthKitUIPresentationManager

- (NSString)identifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (CLBAuthKitUIPresentationManager)initWithDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for AuthKitUIPresentationManager();
  return [(CLBScenePresentationManager *)&v5 initWithDelegate:a3];
}

@end