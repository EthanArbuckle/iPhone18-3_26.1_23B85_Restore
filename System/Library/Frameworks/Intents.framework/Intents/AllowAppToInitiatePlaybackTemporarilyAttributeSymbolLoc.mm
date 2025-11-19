@interface AllowAppToInitiatePlaybackTemporarilyAttributeSymbolLoc
@end

@implementation AllowAppToInitiatePlaybackTemporarilyAttributeSymbolLoc

void *__getAVSystemController_AllowAppToInitiatePlaybackTemporarilyAttributeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaExperienceLibrary();
  result = dlsym(v2, "AVSystemController_AllowAppToInitiatePlaybackTemporarilyAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVSystemController_AllowAppToInitiatePlaybackTemporarilyAttributeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end