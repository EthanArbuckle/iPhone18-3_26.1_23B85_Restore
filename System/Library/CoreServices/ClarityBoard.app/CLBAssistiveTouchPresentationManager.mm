@interface CLBAssistiveTouchPresentationManager
- (CLBAssistiveTouchPresentationManager)initWithDelegate:(id)delegate;
- (NSString)identifier;
@end

@implementation CLBAssistiveTouchPresentationManager

- (NSString)identifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (CLBAssistiveTouchPresentationManager)initWithDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for AssistiveTouchPresentationManager();
  return [(CLBScenePresentationManager *)&v5 initWithDelegate:delegate];
}

@end