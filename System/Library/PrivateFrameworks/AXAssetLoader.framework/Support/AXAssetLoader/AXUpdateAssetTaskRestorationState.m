@interface AXUpdateAssetTaskRestorationState
- (BOOL)hasCompletedDownloadingAssets;
- (BOOL)hasCompletedPurgingAssets;
- (BOOL)hasCompletedRefreshingAssets;
- (BOOL)isDownloadingAssets;
- (BOOL)isPurgingAssets;
- (BOOL)isRefreshingAssets;
@end

@implementation AXUpdateAssetTaskRestorationState

- (BOOL)isRefreshingAssets
{
  v2 = [(AXManagedAssetTaskRestorationState *)self phase];
  v3 = [v2 isEqualToString:@"Refreshing Assets"];

  return v3;
}

- (BOOL)isPurgingAssets
{
  v2 = [(AXManagedAssetTaskRestorationState *)self phase];
  v3 = [v2 isEqualToString:@"Purging Assets"];

  return v3;
}

- (BOOL)isDownloadingAssets
{
  v2 = [(AXManagedAssetTaskRestorationState *)self phase];
  v3 = [v2 isEqualToString:@"Downloading Assets"];

  return v3;
}

- (BOOL)hasCompletedRefreshingAssets
{
  if ([(AXManagedAssetTaskRestorationState *)self isIdle])
  {
    return 0;
  }

  else
  {
    return ![(AXUpdateAssetTaskRestorationState *)self isRefreshingAssets];
  }
}

- (BOOL)hasCompletedPurgingAssets
{
  v3 = [(AXUpdateAssetTaskRestorationState *)self hasCompletedRefreshingAssets];
  if (v3)
  {
    LOBYTE(v3) = ![(AXUpdateAssetTaskRestorationState *)self isPurgingAssets];
  }

  return v3;
}

- (BOOL)hasCompletedDownloadingAssets
{
  v3 = [(AXUpdateAssetTaskRestorationState *)self hasCompletedPurgingAssets];
  if (v3)
  {
    LOBYTE(v3) = ![(AXUpdateAssetTaskRestorationState *)self isDownloadingAssets];
  }

  return v3;
}

@end