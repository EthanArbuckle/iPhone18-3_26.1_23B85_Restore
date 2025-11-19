@interface UICollectionViewController
@end

@implementation UICollectionViewController

void __70__UICollectionViewController_CNUI___cnui_updateAccountsRefreshControl__block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __70__UICollectionViewController_CNUI___cnui_updateAccountsRefreshControl__block_invoke_2;
  v2[3] = &unk_1E74E4768;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

void __70__UICollectionViewController_CNUI___cnui_updateAccountsRefreshControl__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) collectionView];
  v8 = v3;
  if (v2 == 1)
  {
    v4 = [v3 refreshControl];

    if (v4)
    {
      return;
    }

    v5 = objc_alloc_init(MEMORY[0x1E69DCE58]);
    v6 = [*(a1 + 32) collectionView];
    [v6 setRefreshControl:v5];

    v8 = [*(a1 + 32) collectionView];
    v7 = [v8 refreshControl];
    [v7 addTarget:*(a1 + 32) action:sel_refreshAccountsNow_ forControlEvents:4096];
  }

  else
  {
    [v3 setRefreshControl:0];
  }
}

@end