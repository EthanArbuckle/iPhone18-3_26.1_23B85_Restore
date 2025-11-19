@interface ShowKeyboardActionHandler
+ (void)performAction:(id)a3 inContext:(id)a4;
@end

@implementation ShowKeyboardActionHandler

+ (void)performAction:(id)a3 inContext:(id)a4
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v7;
    v5 = +[CarChromeModeCoordinator sharedInstance];
    v6 = [v4 interactionModel];

    [v5 launchIntoKeyboardSearchWithRequestedInteractionModel:v6];
  }
}

@end