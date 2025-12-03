@interface UICollectionViewController(CNUI)
- (uint64_t)refreshAccountsNow:()CNUI;
- (void)_cnui_beginRefreshingWithDuration:()CNUI;
- (void)_cnui_updateAccountsRefreshControl;
@end

@implementation UICollectionViewController(CNUI)

- (void)_cnui_updateAccountsRefreshControl
{
  traitCollection = [self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 5)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __70__UICollectionViewController_CNUI___cnui_updateAccountsRefreshControl__block_invoke;
    v4[3] = &unk_1E74E67A8;
    v4[4] = self;
    [MEMORY[0x1E695CD10] _cnui_canRequestRefreshWithCompletion:v4];
  }
}

- (void)_cnui_beginRefreshingWithDuration:()CNUI
{
  collectionView = [self collectionView];
  refreshControl = [collectionView refreshControl];

  if (([refreshControl isRefreshing] & 1) == 0)
  {
    [refreshControl beginRefreshing];
  }

  if ([refreshControl isRefreshing])
  {
    v5 = dispatch_time(0, (a2 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__UICollectionViewController_CNUI___cnui_beginRefreshingWithDuration___block_invoke;
    block[3] = &unk_1E74E6A88;
    v7 = refreshControl;
    dispatch_after(v5, MEMORY[0x1E69E96A0], block);
  }
}

- (uint64_t)refreshAccountsNow:()CNUI
{
  [MEMORY[0x1E695CD10] _cnui_requestRefreshWithUserAction:1];

  return [self _cnui_beginRefreshingWithDuration:1.0];
}

@end