@interface MCDForYouGroupContentManager
- (id)_modelRequest;
- (id)itemAtIndexPath:(id)a3;
- (int64_t)allowedNumberOfItemsForDisplayWithResponse:(id)a3 inSection:(int64_t)a4;
- (unint64_t)cellTypeAtIndexPath:(id)a3;
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
  v4 = [(MCDFuseContentManager *)self dataSource];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MCDFuseContentManager *)self dataSource];
    v7 = [v6 recommendationGroup];
    v8 = [v7 loadAdditionalContentURL];
    [v3 setCustomForYouURL:v8];
  }

  return v3;
}

- (id)itemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MCDFuseContentManager *)self dataSource];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MCDFuseContentManager *)self dataSource];
    v8 = [v7 recommendationGroup];
    v9 = [v8 itemAtIndex:{objc_msgSend(v4, "row")}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)allowedNumberOfItemsForDisplayWithResponse:(id)a3 inSection:(int64_t)a4
{
  v5 = [(MCDFuseContentManager *)self dataSource:a3];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MCDFuseContentManager *)self dataSource];
    v8 = [v7 recommendationGroup];
    v9 = [v8 numberOfItems];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(MCDFuseContentManager *)self limitedUI];
  v11 = 12;
  if (v9 < 12)
  {
    v11 = v9;
  }

  if (v10)
  {
    return v11;
  }

  else
  {
    return v9;
  }
}

- (unint64_t)cellTypeAtIndexPath:(id)a3
{
  v3 = [(MCDFuseContentManager *)self viewController];
  v4 = [objc_opt_class() wantsTallCells];

  return v4;
}

@end