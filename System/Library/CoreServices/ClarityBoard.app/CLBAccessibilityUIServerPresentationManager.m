@interface CLBAccessibilityUIServerPresentationManager
- (CLBAccessibilityUIServerPresentationManager)initWithDelegate:(id)a3;
- (NSString)identifier;
@end

@implementation CLBAccessibilityUIServerPresentationManager

- (NSString)identifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (CLBAccessibilityUIServerPresentationManager)initWithDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for AccessibilityUIServerPresentationManager();
  return [(CLBScenePresentationManager *)&v5 initWithDelegate:a3];
}

@end