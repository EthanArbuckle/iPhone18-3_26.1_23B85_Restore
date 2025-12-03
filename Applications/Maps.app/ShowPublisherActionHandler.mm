@interface ShowPublisherActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation ShowPublisherActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  actionCopy = action;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = actionCopy;
    v7 = [MKMapItemIdentifier alloc];
    publisherMUID = [v6 publisherMUID];
    resultProviderID = [v6 resultProviderID];

    v10 = [v7 initWithMUID:publisherMUID resultProviderID:resultProviderID coordinate:{MKCoordinateInvalid[0], MKCoordinateInvalid[1]}];
    appCoordinator = [contextCopy appCoordinator];
    [appCoordinator openPublisherWithIdentifier:v10];
  }
}

@end