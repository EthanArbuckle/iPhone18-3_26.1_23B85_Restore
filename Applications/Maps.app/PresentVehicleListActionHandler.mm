@interface PresentVehicleListActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation PresentVehicleListActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  contextCopy = context;
  actionCopy = action;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    appCoordinator = [contextCopy appCoordinator];
    [appCoordinator openVehicleList];
  }
}

@end