@interface MTL4Compiler
@end

@implementation MTL4Compiler

void __81___MTL4Compiler_newMachineLearningPipelineStateWithDescriptor_completionHandler___block_invoke(uint64_t a1)
{
  v3 = 0;
  [objc_loadWeak((a1 + 56)) setStatus:2];
  v2 = [*(a1 + 32) newMachineLearningPipelineStateWithDescriptor:*(a1 + 40) error:&v3];
  [objc_loadWeak((a1 + 56)) setStatus:3];

  (*(*(a1 + 48) + 16))();
}

uint64_t __68___MTL4Compiler_newDynamicLibraryWithURL_options_completionHandler___block_invoke(uint64_t a1)
{
  v3 = 0;
  [objc_loadWeak((a1 + 56)) setStatus:2];
  [*(*(a1 + 32) + 64) newDynamicLibraryWithURL:*(a1 + 40) options:*(a1 + 64) error:&v3];
  (*(*(a1 + 48) + 16))();
  return [objc_loadWeak((a1 + 56)) setStatus:3];
}

@end