@interface SFDefaultBrowserPromptServiceViewController
- (BOOL)_isDefaultBrowserSafari;
- (id)_defaultBrowserRecord;
- (void)_defaultBrowserRecord;
- (void)determineIfBrowserIconSwapAlertNeedsDisplayWithCompletionHandler:(id)handler;
- (void)determineIfBrowserSheetNeedsDisplayWithCompletionHandler:(id)handler;
@end

@implementation SFDefaultBrowserPromptServiceViewController

- (void)determineIfBrowserIconSwapAlertNeedsDisplayWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(SFDefaultBrowserPromptServiceViewController *)self _isDefaultBrowserSafari])
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  else
  {
    _defaultBrowserRecord = [(SFDefaultBrowserPromptServiceViewController *)self _defaultBrowserRecord];
    bundleIdentifier = [_defaultBrowserRecord bundleIdentifier];
    localizedName = [_defaultBrowserRecord localizedName];
    (*(handlerCopy + 2))(handlerCopy, bundleIdentifier, localizedName);
  }
}

- (void)determineIfBrowserSheetNeedsDisplayWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  (*(handler + 2))(handlerCopy, [(SFDefaultBrowserPromptServiceViewController *)self _isDefaultBrowserSafari]);
}

- (id)_defaultBrowserRecord
{
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v7 = 0;
  v3 = [defaultWorkspace defaultApplicationForCategory:1 error:&v7];
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
  _defaultBrowserRecord = [(SFDefaultBrowserPromptServiceViewController *)self _defaultBrowserRecord];
  bundleIdentifier = [_defaultBrowserRecord bundleIdentifier];
  v4 = WBSIsEqual();

  return v4;
}

- (void)_defaultBrowserRecord
{
  v7 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  safari_privacyPreservingDescription = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = safari_privacyPreservingDescription;
  _os_log_error_impl(&dword_1D4644000, selfCopy, OS_LOG_TYPE_ERROR, "Failed to get default browser: %{public}@", &v5, 0xCu);
}

@end