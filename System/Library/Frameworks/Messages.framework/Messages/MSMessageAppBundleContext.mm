@interface MSMessageAppBundleContext
@end

@implementation MSMessageAppBundleContext

void __59___MSMessageAppBundleContext__hostDidBeginDeferredTeardown__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59___MSMessageAppBundleContext__hostDidBeginDeferredTeardown__block_invoke_2;
  v3[3] = &unk_1E83A2EC0;
  v3[4] = *(a1 + 32);
  [v2 updateSnapshotWithCompletionBlock:v3];
}

void __59___MSMessageAppBundleContext__hostDidBeginDeferredTeardown__block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = a2;
    v4 = [v2 hostContext];
    [v4 _updateSnapshotForNextLaunch:v3];
  }
}

void __59___MSMessageAppBundleContext_beginDisablingUserInteraction__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) viewController];
    [v4 disableUserInteraction];
  }
}

void __57___MSMessageAppBundleContext_endDisablingUserInteraction__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) viewController];
    [v4 enableUserInteraction];
  }
}

@end