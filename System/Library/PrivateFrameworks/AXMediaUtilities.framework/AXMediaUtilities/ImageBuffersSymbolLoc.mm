@interface ImageBuffersSymbolLoc
@end

@implementation ImageBuffersSymbolLoc

void *__getVNRequestHandlerCleanupOption_ImageBuffersSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary_3();
  result = dlsym(v2, "VNRequestHandlerCleanupOption_ImageBuffers");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNRequestHandlerCleanupOption_ImageBuffersSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end