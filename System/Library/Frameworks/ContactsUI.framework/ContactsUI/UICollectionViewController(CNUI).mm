@interface UICollectionViewController(CNUI)
- (uint64_t)refreshAccountsNow:()CNUI;
- (void)_cnui_beginRefreshingWithDuration:()CNUI;
- (void)_cnui_updateAccountsRefreshControl;
@end

@implementation UICollectionViewController(CNUI)

- (void)_cnui_updateAccountsRefreshControl
{
  v2 = [a1 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 != 5)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __70__UICollectionViewController_CNUI___cnui_updateAccountsRefreshControl__block_invoke;
    v4[3] = &unk_1E74E67A8;
    v4[4] = a1;
    [MEMORY[0x1E695CD10] _cnui_canRequestRefreshWithCompletion:v4];
  }
}

- (void)_cnui_beginRefreshingWithDuration:()CNUI
{
  v3 = [a1 collectionView];
  v4 = [v3 refreshControl];

  if (([v4 isRefreshing] & 1) == 0)
  {
    [v4 beginRefreshing];
  }

  if ([v4 isRefreshing])
  {
    v5 = dispatch_time(0, (a2 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__UICollectionViewController_CNUI___cnui_beginRefreshingWithDuration___block_invoke;
    block[3] = &unk_1E74E6A88;
    v7 = v4;
    dispatch_after(v5, MEMORY[0x1E69E96A0], block);
  }
}

- (uint64_t)refreshAccountsNow:()CNUI
{
  [MEMORY[0x1E695CD10] _cnui_requestRefreshWithUserAction:1];

  return [a1 _cnui_beginRefreshingWithDuration:1.0];
}

@end