@interface AllPipelinesSymbolLoc
@end

@implementation AllPipelinesSymbolLoc

void *__getVNRequestHandlerCleanupOption_AllPipelinesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary_3();
  result = dlsym(v2, "VNRequestHandlerCleanupOption_AllPipelines");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNRequestHandlerCleanupOption_AllPipelinesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end