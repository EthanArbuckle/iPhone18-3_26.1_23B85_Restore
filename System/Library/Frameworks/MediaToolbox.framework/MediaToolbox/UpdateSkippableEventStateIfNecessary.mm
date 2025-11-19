@interface UpdateSkippableEventStateIfNecessary
@end

@implementation UpdateSkippableEventStateIfNecessary

uint64_t __fpic_UpdateSkippableEventStateIfNecessary_block_invoke(uint64_t a1)
{
  OUTLINED_FUNCTION_158_3(a1);
  fpic_updateSkippableEventStateOnQueue();
  return OUTLINED_FUNCTION_12_7(v1);
}

@end