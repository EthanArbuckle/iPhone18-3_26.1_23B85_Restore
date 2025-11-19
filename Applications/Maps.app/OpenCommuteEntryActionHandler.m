@interface OpenCommuteEntryActionHandler
+ (void)performAction:(id)a3 inContext:(id)a4;
@end

@implementation OpenCommuteEntryActionHandler

+ (void)performAction:(id)a3 inContext:(id)a4
{
  v10 = a3;
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v10 entryID];
    v7 = [MapsSuggestionsEntry archivedDestinationForUniqueID:v6];

    v8 = [v5 appCoordinator];
    v9 = [v8 appStateManager];
    [v9 openCommuteEntry:v7];
  }
}

@end