@interface SFReaderFontOptionsGroupController
@end

@implementation SFReaderFontOptionsGroupController

void __65___SFReaderFontOptionsGroupController_prepareView_forItem_value___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69C9010];
  v5 = a2;
  v4 = [v3 sharedManager];
  [v4 downloadFont:*(a1 + 32)];

  [v5 setDownloading:1];
}

void __65___SFReaderFontOptionsGroupController_prepareView_forItem_value___block_invoke_2(id *a1)
{
  v2 = a1[4];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65___SFReaderFontOptionsGroupController_prepareView_forItem_value___block_invoke_3;
  v3[3] = &unk_1E84929C8;
  objc_copyWeak(&v7, a1 + 7);
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[4];
  [v2 isInstalledWithCompletionHandler:v3];

  objc_destroyWeak(&v7);
}

void __65___SFReaderFontOptionsGroupController_prepareView_forItem_value___block_invoke_3(id *a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65___SFReaderFontOptionsGroupController_prepareView_forItem_value___block_invoke_4;
  block[3] = &unk_1E84929A0;
  v8 = a2;
  objc_copyWeak(&v7, a1 + 7);
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v7);
}

void __65___SFReaderFontOptionsGroupController_prepareView_forItem_value___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained)
    {
      v7 = WeakRetained;
      [*(a1 + 32) setEnabled:1];
      [*(a1 + 40) setAccessoryView:0];
      v4 = [v7 _attributedStringForReaderFont:*(a1 + 48)];
      [*(a1 + 32) setAttributedTitle:v4];

      v5 = v7[5];
      v6 = [*(a1 + 48) familyName];
      [v5 activateFont:v6];

      WeakRetained = v7;
    }
  }
}

@end