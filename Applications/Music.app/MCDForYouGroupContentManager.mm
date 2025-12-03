@interface MCDForYouGroupContentManager
- (id)_modelRequest;
- (id)itemAtIndexPath:(id)path;
- (int64_t)allowedNumberOfItemsForDisplayWithResponse:(id)response inSection:(int64_t)section;
- (unint64_t)cellTypeAtIndexPath:(id)path;
@end

@implementation MCDForYouGroupContentManager

- (id)_modelRequest
{
  v3 = objc_alloc_init(MPModelForYouRecommendationsRequest);
  [v3 setClientIdentifier:MCDMusicCarPlayBundleIdentifier];
  [v3 setClientVersion:MCDMusicCarPlayVersion];
  [v3 setClientPlatformIdentifier:MCDMusicCarPlayPlatformIdentifier];
  [v3 setFilteringPolicy:1];
  [v3 setRequestEndpoint:1];
  [v3 setAuthenticationOptions:3];
  dataSource = [(MCDFuseContentManager *)self dataSource];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    dataSource2 = [(MCDFuseContentManager *)self dataSource];
    recommendationGroup = [dataSource2 recommendationGroup];
    loadAdditionalContentURL = [recommendationGroup loadAdditionalContentURL];
    [v3 setCustomForYouURL:loadAdditionalContentURL];
  }

  return v3;
}

- (id)itemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(MCDFuseContentManager *)self dataSource];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    dataSource2 = [(MCDFuseContentManager *)self dataSource];
    recommendationGroup = [dataSource2 recommendationGroup];
    v9 = [recommendationGroup itemAtIndex:{objc_msgSend(pathCopy, "row")}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)allowedNumberOfItemsForDisplayWithResponse:(id)response inSection:(int64_t)section
{
  v5 = [(MCDFuseContentManager *)self dataSource:response];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    dataSource = [(MCDFuseContentManager *)self dataSource];
    recommendationGroup = [dataSource recommendationGroup];
    numberOfItems = [recommendationGroup numberOfItems];
  }

  else
  {
    numberOfItems = 0;
  }

  limitedUI = [(MCDFuseContentManager *)self limitedUI];
  v11 = 12;
  if (numberOfItems < 12)
  {
    v11 = numberOfItems;
  }

  if (limitedUI)
  {
    return v11;
  }

  else
  {
    return numberOfItems;
  }
}

- (unint64_t)cellTypeAtIndexPath:(id)path
{
  viewController = [(MCDFuseContentManager *)self viewController];
  wantsTallCells = [objc_opt_class() wantsTallCells];

  return wantsTallCells;
}

@end