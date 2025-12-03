@interface ShowCarDestinationsActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation ShowCarDestinationsActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  actionCopy = action;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = +[CarChromeModeCoordinator sharedInstance];
    [v6 displayDestinations];
  }
}

@end