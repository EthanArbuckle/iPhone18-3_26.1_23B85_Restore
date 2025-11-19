@interface ShowCarDestinationsActionHandler
+ (void)performAction:(id)a3 inContext:(id)a4;
@end

@implementation ShowCarDestinationsActionHandler

+ (void)performAction:(id)a3 inContext:(id)a4
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = +[CarChromeModeCoordinator sharedInstance];
    [v6 displayDestinations];
  }
}

@end