@interface OpenVisitedPlacesActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation OpenVisitedPlacesActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  contextCopy = context;
  actionCopy = action;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    +[_TtC4Maps25VisitedPlacesDataProvider markVisitedPlacesEntrySeen];
    appCoordinator = [contextCopy appCoordinator];
    [appCoordinator openVisitedPlaces];
  }
}

@end