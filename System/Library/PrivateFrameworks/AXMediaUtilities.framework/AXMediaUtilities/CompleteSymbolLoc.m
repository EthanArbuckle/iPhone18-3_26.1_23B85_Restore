@interface CompleteSymbolLoc
@end

@implementation CompleteSymbolLoc

void *__getVNCleanupLevel_CompleteSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary_3();
  result = dlsym(v2, "VNCleanupLevel_Complete");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNCleanupLevel_CompleteSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end