@interface OpenCommuteEntryActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation OpenCommuteEntryActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  actionCopy = action;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    entryID = [actionCopy entryID];
    v7 = [MapsSuggestionsEntry archivedDestinationForUniqueID:entryID];

    appCoordinator = [contextCopy appCoordinator];
    appStateManager = [appCoordinator appStateManager];
    [appStateManager openCommuteEntry:v7];
  }
}

@end