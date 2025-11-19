@interface SFRequestDesktopSiteQuirksManager
@end

@implementation SFRequestDesktopSiteQuirksManager

void __51___SFRequestDesktopSiteQuirksManager_sharedManager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedManager_sharedQuirksManager;
  sharedManager_sharedQuirksManager = v0;
}

void __77___SFRequestDesktopSiteQuirksManager_quirksValueForDomain_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = [a2 requestDesktopSiteSettingForDomain:*(a1 + 32)];
  (*(v2 + 16))(v2, v3);
}

void __77___SFRequestDesktopSiteQuirksManager_getAllQuirkValuesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 allRequestDesktopSiteQuirks];
  (*(v2 + 16))(v2, v3);
}

@end