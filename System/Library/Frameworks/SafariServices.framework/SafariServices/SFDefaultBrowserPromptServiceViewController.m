@interface SFDefaultBrowserPromptServiceViewController
- (BOOL)_isDefaultBrowserSafari;
- (id)_defaultBrowserRecord;
- (void)_defaultBrowserRecord;
- (void)determineIfBrowserIconSwapAlertNeedsDisplayWithCompletionHandler:(id)a3;
- (void)determineIfBrowserSheetNeedsDisplayWithCompletionHandler:(id)a3;
@end

@implementation SFDefaultBrowserPromptServiceViewController

- (void)determineIfBrowserIconSwapAlertNeedsDisplayWithCompletionHandler:(id)a3
{
  v7 = a3;
  if ([(SFDefaultBrowserPromptServiceViewController *)self _isDefaultBrowserSafari])
  {
    (*(v7 + 2))(v7, 0, 0);
  }

  else
  {
    v4 = [(SFDefaultBrowserPromptServiceViewController *)self _defaultBrowserRecord];
    v5 = [v4 bundleIdentifier];
    v6 = [v4 localizedName];
    (*(v7 + 2))(v7, v5, v6);
  }
}

- (void)determineIfBrowserSheetNeedsDisplayWithCompletionHandler:(id)a3
{
  v5 = a3;
  (*(a3 + 2))(v5, [(SFDefaultBrowserPromptServiceViewController *)self _isDefaultBrowserSafari]);
}

- (id)_defaultBrowserRecord
{
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  v7 = 0;
  v3 = [v2 defaultApplicationForCategory:1 error:&v7];
  v4 = v7;

  if (v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXBrowserChoiceScreen();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SFDefaultBrowserPromptServiceViewController *)v5 _defaultBrowserRecord];
    }
  }

  return v3;
}

- (BOOL)_isDefaultBrowserSafari
{
  v2 = [(SFDefaultBrowserPromptServiceViewController *)self _defaultBrowserRecord];
  v3 = [v2 bundleIdentifier];
  v4 = WBSIsEqual();

  return v4;
}

- (void)_defaultBrowserRecord
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1D4644000, v3, OS_LOG_TYPE_ERROR, "Failed to get default browser: %{public}@", &v5, 0xCu);
}

@end