@interface MDSimpleQueryObjectMatchesSymbolLoc
@end

@implementation MDSimpleQueryObjectMatchesSymbolLoc

void *__get_MDSimpleQueryObjectMatchesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileSpotlightIndexLibrary();
  result = dlsym(v2, "_MDSimpleQueryObjectMatches");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_MDSimpleQueryObjectMatchesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end