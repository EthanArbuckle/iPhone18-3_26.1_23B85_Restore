@interface SFWebView
@end

@implementation SFWebView

uint64_t __28___SFWebView_layoutSubviews__block_invoke(uint64_t a1)
{
  v2 = *(MEMORY[0x1E69DDCE0] + 8);
  v3 = *(MEMORY[0x1E69DDCE0] + 24);
  if ([MEMORY[0x1E69C8880] isSolariumEnabled] && _SFDeviceIsPad())
  {
    [*(a1 + 32) safeAreaInsets];
    UIEdgeInsetsMax();
    v2 = v4;
    v3 = v5;
  }

  v6 = [*(*(a1 + 32) + 2024) image];
  [v6 size];
  v8 = v7;
  v10 = v9;

  [*(a1 + 32) bounds];
  Width = CGRectGetWidth(v22);
  v12 = *(a1 + 32);
  v13 = v12[255];
  v14 = (Width - v2 - v3) / (1.0 - v13 - v12[257]);
  v15 = v2 - v14 * v13;
  [v12 _obscuredInsets];
  v16 = *(a1 + 32);
  v17 = *(v16 + 2024);
  v19 = v18 + *(v16 + 2072);

  return [v17 setFrame:{v15, v19, v14, v10 * v14 / v8}];
}

void __58___SFWebView_setPlaceholderImage_verticalOffset_metadata___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 2024) removeFromSuperview];
    v3 = *(a1 + 32);
    v4 = *(v3 + 2024);
    *(v3 + 2024) = 0;
  }
}

void __58___SFWebView_setPlaceholderImage_verticalOffset_metadata___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPlaceholderImage:0];
}

uint64_t __77___SFWebView_presentDialogView_withAdditionalAnimations_forDialogController___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 32) + 2016);

  return [v3 setAlpha:1.0];
}

uint64_t __77___SFWebView_dismissDialogView_withAdditionalAnimations_forDialogController___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 setAlpha:0.0];
}

@end