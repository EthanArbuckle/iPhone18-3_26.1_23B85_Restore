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
  phase = [(AXManagedAssetTaskRestorationState *)self phase];
  v3 = [phase isEqualToString:@"Refreshing Assets"];

  return v3;
}

- (BOOL)isPurgingAssets
{
  phase = [(AXManagedAssetTaskRestorationState *)self phase];
  v3 = [phase isEqualToString:@"Purging Assets"];

  return v3;
}

- (BOOL)isDownloadingAssets
{
  phase = [(AXManagedAssetTaskRestorationState *)self phase];
  v3 = [phase isEqualToString:@"Downloading Assets"];

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
  hasCompletedRefreshingAssets = [(AXUpdateAssetTaskRestorationState *)self hasCompletedRefreshingAssets];
  if (hasCompletedRefreshingAssets)
  {
    LOBYTE(hasCompletedRefreshingAssets) = ![(AXUpdateAssetTaskRestorationState *)self isPurgingAssets];
  }

  return hasCompletedRefreshingAssets;
}

- (BOOL)hasCompletedDownloadingAssets
{
  hasCompletedPurgingAssets = [(AXUpdateAssetTaskRestorationState *)self hasCompletedPurgingAssets];
  if (hasCompletedPurgingAssets)
  {
    LOBYTE(hasCompletedPurgingAssets) = ![(AXUpdateAssetTaskRestorationState *)self isDownloadingAssets];
  }

  return hasCompletedPurgingAssets;
}

@end