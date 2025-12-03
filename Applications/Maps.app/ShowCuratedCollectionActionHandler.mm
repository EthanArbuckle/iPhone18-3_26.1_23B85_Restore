@interface ShowCuratedCollectionActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation ShowCuratedCollectionActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  actionCopy = action;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = actionCopy;
    v7 = [MKMapItemIdentifier alloc];
    curatedCollectionMUID = [v6 curatedCollectionMUID];
    resultProviderID = [v6 resultProviderID];

    v10 = [v7 initWithMUID:curatedCollectionMUID resultProviderID:resultProviderID coordinate:{MKCoordinateInvalid[0], MKCoordinateInvalid[1]}];
    appCoordinator = [contextCopy appCoordinator];
    [appCoordinator openCuratedCollectionWithIdentifier:v10];
  }
}

@end