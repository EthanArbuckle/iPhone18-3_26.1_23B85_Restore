@interface ShowMyLocationCardActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation ShowMyLocationCardActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  contextCopy = context;
  actionCopy = action;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    appCoordinator = [contextCopy appCoordinator];
    chromeViewController = [appCoordinator chromeViewController];
    mapView = [chromeViewController mapView];

    userLocation = [mapView userLocation];
    [mapView selectAnnotation:userLocation animated:1];
  }
}

@end