@interface SFPerSitePreferencesPopoverViewController
@end

@implementation SFPerSitePreferencesPopoverViewController

SFPerSiteSetting *__61___SFPerSitePreferencesPopoverViewController_pageMenuSection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SFPerSiteSetting alloc];
  v5 = [*(*(a1 + 32) + 1048) managerForPreference:v3];
  v6 = [(SFPerSiteSetting *)v4 initWithPreference:v3 manager:v5 domain:*(*(a1 + 32) + 1040)];

  return v6;
}

void __80___SFPerSitePreferencesPopoverViewController__setPreferenceValue_forPreference___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && a2)
  {
    v6 = WeakRetained;
    v5 = objc_loadWeakRetained((a1 + 40));
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_39);
    }

    WeakRetained = v6;
  }
}

void __78___SFPerSitePreferencesPopoverViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78___SFPerSitePreferencesPopoverViewController_tableView_cellForRowAtIndexPath___block_invoke_2;
    block[3] = &unk_1E848F6B0;
    block[4] = WeakRetained;
    v7 = v3;
    v8 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __80___SFPerSitePreferencesPopoverViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  [*(a1 + 32) beginUpdates];
  [*(a1 + 32) reloadRowsAtIndexPaths:*(a1 + 40) withRowAnimation:5];
  v2 = *(a1 + 32);

  return [v2 endUpdates];
}

void __87___SFPerSitePreferencesPopoverViewController_switchTableViewCell_didChangeSwitchState___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = [v3[131] managerForPreference:v4];
  v5 = [_SFPerSitePreferencesUtilities preferenceValueForBoolValue:v2 preference:v4 preferenceManager:v6];
  [v3 _setPreferenceValue:v5 forPreference:*(a1 + 40)];
}

@end