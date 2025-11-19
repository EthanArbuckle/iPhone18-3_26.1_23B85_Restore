@interface SFNavigationResult
@end

@implementation SFNavigationResult

uint64_t __92___SFNavigationResult_resultWithRedirectToExternalURL_preferredApplicationBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __177___SFNavigationResult_determineResultOfLoadingRequest_isMainFrame_disallowRedirectToExternalApps_preferredApplicationBundleIdentifier_redirectDecisionHandler_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 64) resultOfLoadingRequest:*(a1 + 32) isMainFrame:*(a1 + 72) disallowRedirectToExternalApps:*(a1 + 73) preferredApplicationBundleIdentifier:*(a1 + 40) redirectDecisionHandler:*(a1 + 48)];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __177___SFNavigationResult_determineResultOfLoadingRequest_isMainFrame_disallowRedirectToExternalApps_preferredApplicationBundleIdentifier_redirectDecisionHandler_completionHandler___block_invoke_2;
  v5[3] = &unk_1E8494780;
  v3 = *(a1 + 56);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __177___SFNavigationResult_determineResultOfLoadingRequest_isMainFrame_disallowRedirectToExternalApps_preferredApplicationBundleIdentifier_redirectDecisionHandler_completionHandler___block_invoke_2(uint64_t a1)
{
  (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

@end