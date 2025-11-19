@interface SFAutoFillInternalFeedbackCollectionViewController
@end

@implementation SFAutoFillInternalFeedbackCollectionViewController

id __82___SFAutoFillInternalFeedbackCollectionViewController__createCollectionViewLayout__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:2];
  v7 = v6;
  if (a2 == 3)
  {
    [v6 setHeaderMode:1];
    [v7 setFooterMode:1];
  }

  else if (!a2)
  {
    [v6 setHeaderMode:1];
  }

  v8 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v7 layoutEnvironment:v5];
  [v8 contentInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (a2 == 1)
  {
    v17 = [*(*(a1 + 32) + 1032) detailTypesForSelectedFeedbackCategory];
    v18 = [v17 count];

    if (!v18)
    {
      v14 = 0.0;
      v10 = 0.0;
    }
  }

  [v8 setContentInsets:{v10, v12, v14, v16}];

  return v8;
}

@end