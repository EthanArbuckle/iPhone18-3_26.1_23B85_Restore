@interface SharedTripActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation SharedTripActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  actionCopy = action;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = actionCopy;
    appCoordinator = [contextCopy appCoordinator];
    shareTrip = [v6 shareTrip];

    [appCoordinator openSharedTrip:shareTrip];
  }
}

@end