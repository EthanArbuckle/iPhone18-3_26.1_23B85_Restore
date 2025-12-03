@interface CLBAccessibilityUIServerPresentationManager
- (CLBAccessibilityUIServerPresentationManager)initWithDelegate:(id)delegate;
- (NSString)identifier;
@end

@implementation CLBAccessibilityUIServerPresentationManager

- (NSString)identifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (CLBAccessibilityUIServerPresentationManager)initWithDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for AccessibilityUIServerPresentationManager();
  return [(CLBScenePresentationManager *)&v5 initWithDelegate:delegate];
}

@end