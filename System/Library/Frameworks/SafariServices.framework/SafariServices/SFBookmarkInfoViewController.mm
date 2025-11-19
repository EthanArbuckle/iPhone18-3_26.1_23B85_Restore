@interface SFBookmarkInfoViewController
@end

@implementation SFBookmarkInfoViewController

void __62___SFBookmarkInfoViewController__returnWasPressedInTextField___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) navigationController];
  v2 = [v5 topViewController];
  v3 = *(a1 + 32);

  if (v2 == v3)
  {
    v4 = [v5 popViewControllerAnimated:1];
  }
}

uint64_t __57___SFBookmarkInfoViewController__reloadFolderInfoForced___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  v6 = *(v5 + 1104);
  if (v6 && ([v3 syntheticFolder], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "bookmarkList"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "folderID"), v8, v7, v5 = *(a1 + 32), v6 == v9))
  {
    *(v5 + 1104) = 0;
    v10 = [v4 syntheticFolder];
    v11 = *(a1 + 32);
    v12 = *(v11 + 1096);
    *(v11 + 1096) = v10;
    v13 = 1;
  }

  else
  {
    v14 = *(v5 + 1096);
    v12 = [v4 syntheticFolder];
    v13 = [v14 isEqual:v12];
  }

  return v13;
}

BOOL __57___SFBookmarkInfoViewController__reloadFolderInfoForced___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 bookmark];
  v4 = v3;
  if (v3 && *(*(a1 + 32) + 1088))
  {
    v5 = [v3 identifier];
    v6 = v5 == [*(*(a1 + 32) + 1088) identifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end