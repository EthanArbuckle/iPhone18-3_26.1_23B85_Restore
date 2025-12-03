@interface ShowSearchInfoActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation ShowSearchInfoActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  actionCopy = action;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = actionCopy;
    v7 = objc_alloc_init(SearchFieldItem);
    searchInfo = [v6 searchInfo];
    searchText = [searchInfo searchText];
    [(SearchFieldItem *)v7 setSearchString:searchText];

    if ([contextCopy isCarPlayOnlyContext])
    {
      appCoordinator = [[SearchSession alloc] initWithOrigin:2];
      searchInfo2 = [v6 searchInfo];
      [(SearchSession *)appCoordinator restoreSearchForItem:v7 withResults:searchInfo2];
    }

    else
    {
      appCoordinator = [contextCopy appCoordinator];
      searchInfo2 = [v6 searchInfo];
      [(SearchSession *)appCoordinator openSearch:v7 andResults:searchInfo2];
    }
  }
}

@end