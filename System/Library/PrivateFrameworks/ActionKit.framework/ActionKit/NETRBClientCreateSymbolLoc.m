@interface NETRBClientCreateSymbolLoc
@end

@implementation NETRBClientCreateSymbolLoc

void *__get_NETRBClientCreateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NetrbLibrary();
  result = dlsym(v2, "_NETRBClientCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_NETRBClientCreateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end