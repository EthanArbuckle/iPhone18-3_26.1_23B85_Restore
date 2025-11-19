@interface ShowSearchInfoActionHandler
+ (void)performAction:(id)a3 inContext:(id)a4;
@end

@implementation ShowSearchInfoActionHandler

+ (void)performAction:(id)a3 inContext:(id)a4
{
  v12 = a3;
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v12;
    v7 = objc_alloc_init(SearchFieldItem);
    v8 = [v6 searchInfo];
    v9 = [v8 searchText];
    [(SearchFieldItem *)v7 setSearchString:v9];

    if ([v5 isCarPlayOnlyContext])
    {
      v10 = [[SearchSession alloc] initWithOrigin:2];
      v11 = [v6 searchInfo];
      [(SearchSession *)v10 restoreSearchForItem:v7 withResults:v11];
    }

    else
    {
      v10 = [v5 appCoordinator];
      v11 = [v6 searchInfo];
      [(SearchSession *)v10 openSearch:v7 andResults:v11];
    }
  }
}

@end