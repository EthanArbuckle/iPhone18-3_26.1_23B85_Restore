@interface SFReportFeedbackCollectionViewController
@end

@implementation SFReportFeedbackCollectionViewController

void __78___SFReportFeedbackCollectionViewController_initWithBrowserContentController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

id __72___SFReportFeedbackCollectionViewController__createCollectionViewLayout__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = [v5 collectionView];
  [*(a1 + 32) setFooterMode:{objc_msgSend(v5, "numberOfSectionsInCollectionView:", v7) - 2 == a2}];

  [*(a1 + 32) setHeaderMode:a2 == 0];
  v8 = [MEMORY[0x1E6995580] sectionWithListConfiguration:*(a1 + 32) layoutEnvironment:v6];

  [v8 contentInsets];
  if (!a2)
  {
    v9 = 16.0;
  }

  [v8 setContentInsets:v9];

  return v8;
}

@end