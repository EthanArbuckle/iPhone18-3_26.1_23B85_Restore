@interface MDCreateSimpleQueryEvaluatorSymbolLoc
@end

@implementation MDCreateSimpleQueryEvaluatorSymbolLoc

void *__get_MDCreateSimpleQueryEvaluatorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileSpotlightIndexLibrary();
  result = dlsym(v2, "_MDCreateSimpleQueryEvaluator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_MDCreateSimpleQueryEvaluatorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end