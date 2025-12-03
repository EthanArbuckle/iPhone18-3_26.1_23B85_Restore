@interface PresentTableBookingActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation PresentTableBookingActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  actionCopy = action;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = actionCopy;
    appCoordinator = [contextCopy appCoordinator];
    mapItem = [v6 mapItem];

    [appCoordinator startTableBookingFlowFromMapItem:mapItem];
  }
}

@end