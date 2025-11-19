@interface SFFormDataController
@end

@implementation SFFormDataController

void __41___SFFormDataController_sharedController__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithAggressiveKeychainCaching:0];
  v2 = sharedController_sharedInstance;
  sharedController_sharedInstance = v1;
}

void __83___SFFormDataController_metadataOfBestFormForStreamlinedLogin_autoFillFrameHandle___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v8 = a3;
  if ([v8 isBestForStreamlinedLogin])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

@end