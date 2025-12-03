@interface ShowCollectionActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation ShowCollectionActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  actionCopy = action;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    collectionStorage = [actionCopy collectionStorage];
    v7 = [CollectionHandler collectionWithStorage:collectionStorage];

    appCoordinator = [contextCopy appCoordinator];
    [appCoordinator openCollection:v7];
  }
}

@end