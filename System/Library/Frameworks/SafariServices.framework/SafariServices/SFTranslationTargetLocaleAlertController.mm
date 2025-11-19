@interface SFTranslationTargetLocaleAlertController
@end

@implementation SFTranslationTargetLocaleAlertController

void __73___SFTranslationTargetLocaleAlertController__setUpWithLocaleIdentifiers___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [v3 translationAlertController:v5 didSelectLocale:*(a1 + 32)];
      v4 = v5[168];
      if (v4)
      {
        (*(v4 + 16))(v4, *(a1 + 32));
      }
    }

    WeakRetained = v5;
  }
}

uint64_t __73___SFTranslationTargetLocaleAlertController__setUpWithLocaleIdentifiers___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 translationAlertControllerShouldDismissAfterSelection:v2];
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

void __73___SFTranslationTargetLocaleAlertController__setUpWithLocaleIdentifiers___block_invoke_3(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __73___SFTranslationTargetLocaleAlertController__setUpWithLocaleIdentifiers___block_invoke_4;
  v3[3] = &unk_1E848FD38;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __73___SFTranslationTargetLocaleAlertController__setUpWithLocaleIdentifiers___block_invoke_5(uint64_t a1)
{
  v4 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=General&path=INTERNATIONAL"];
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v2 openSensitiveURL:v4 withOptions:0];

  v3 = *(*(a1 + 32) + 1344);
  if (v3)
  {
    (*(v3 + 16))(v3, 0);
  }
}

void __73___SFTranslationTargetLocaleAlertController__setUpWithLocaleIdentifiers___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [v2 translationAlertController:v3 didSelectLocale:0];
    }

    WeakRetained = v3;
  }
}

void __77___SFTranslationTargetLocaleAlertController_translationAvailabilityDidChange__block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77___SFTranslationTargetLocaleAlertController_translationAvailabilityDidChange__block_invoke_2;
  block[3] = &unk_1E8491D80;
  objc_copyWeak(&v5, (a1 + 40));
  block[4] = *(a1 + 32);
  v6 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v5);
}

void __77___SFTranslationTargetLocaleAlertController_translationAvailabilityDidChange__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained[169] objectForKeyedSubscript:*(a1 + 32)];
    v4 = v3;
    if (v3)
    {
      [v3 setEnabled:*(a1 + 48)];
    }

    WeakRetained = v5;
  }
}

void __79___SFTranslationTargetLocaleAlertController__translationAvailabilityDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 1328));

  if (v2 == WeakRetained)
  {
    v5 = [*(a1 + 32) userInfo];
    v4 = [v5 safari_stringForKey:*MEMORY[0x1E69C9A20]];
    if ([v4 length])
    {
      [*(a1 + 40) translationAvailabilityDidChange];
    }
  }
}

@end