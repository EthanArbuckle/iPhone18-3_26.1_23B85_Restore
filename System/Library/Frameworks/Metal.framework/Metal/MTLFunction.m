@interface MTLFunction
@end

@implementation MTLFunction

MTLFunctionReflectionInternal *__53___MTLFunction_reflectionWithOptions_binaryArchives___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  result = [[MTLFunctionReflectionInternal alloc] initWithDevice:*(a1[4] + 24) reflectionData:a3 functionType:*(a1[4] + 32) options:a1[6]];
  *(*(a1[5] + 8) + 40) = result;
  return result;
}

MTLFunctionReflectionInternal *__54___MTLFunction_reflectionWithOptions_pipelineLibrary___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  result = [[MTLFunctionReflectionInternal alloc] initWithDevice:*(a1[4] + 24) reflectionData:a3 functionType:*(a1[4] + 32) options:a1[6]];
  *(*(a1[5] + 8) + 40) = result;
  return result;
}

void __56___MTLFunction_reflectionWithOptions_completionHandler___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [[MTLFunctionReflectionInternal alloc] initWithDevice:*(a1[4] + 24) reflectionData:a3 functionType:*(a1[4] + 32) options:a1[6]];
  (*(a1[5] + 16))();
}

@end