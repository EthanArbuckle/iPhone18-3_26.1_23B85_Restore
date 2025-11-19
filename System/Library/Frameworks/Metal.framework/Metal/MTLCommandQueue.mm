@interface MTLCommandQueue
@end

@implementation MTLCommandQueue

uint64_t __46___MTLCommandQueue_initWithDevice_descriptor___block_invoke_2()
{
  result = MTLGetEnvDefault("METAL_FORCE_IMMEDIATE_SUBMISSION", initWithDevice_descriptor__force_immediate_submission_on_commit_thread);
  initWithDevice_descriptor__force_immediate_submission_on_commit_thread = result != 0;
  return result;
}

uint64_t __40___MTLCommandQueue_submitCommandBuffer___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _submitAvailableCommandBuffers];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end