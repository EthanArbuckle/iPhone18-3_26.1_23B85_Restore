@interface ATXActionUtilsClass
@end

@implementation ATXActionUtilsClass

Class __get_ATXActionUtilsClass_block_invoke(uint64_t a1)
{
  AppPredictionInternalLibrary();
  result = objc_getClass("_ATXActionUtils");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_ATXActionUtilsClass_block_invoke_cold_1();
  }

  get_ATXActionUtilsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __get_ATXActionUtilsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_ATXActionUtilsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ATXActionSearchResult.m" lineNumber:392 description:{@"Unable to find class %s", "_ATXActionUtils"}];

  __break(1u);
}

@end