@interface SFAppInfoOverlayPreferenceManager
@end

@implementation SFAppInfoOverlayPreferenceManager

uint64_t __93___SFAppInfoOverlayPreferenceManager_getAppInfoOverlayPreferenceForDomain_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 integerValue];
  v6 = *(v4 + 16);

  return v6(v4, v5, a3);
}

@end