@interface ShowKeyboardActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation ShowKeyboardActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  actionCopy = action;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = actionCopy;
    v5 = +[CarChromeModeCoordinator sharedInstance];
    interactionModel = [v4 interactionModel];

    [v5 launchIntoKeyboardSearchWithRequestedInteractionModel:interactionModel];
  }
}

@end