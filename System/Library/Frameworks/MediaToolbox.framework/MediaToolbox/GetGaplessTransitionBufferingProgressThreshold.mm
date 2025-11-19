@interface GetGaplessTransitionBufferingProgressThreshold
@end

@implementation GetGaplessTransitionBufferingProgressThreshold

uint64_t __fpfs_GetGaplessTransitionBufferingProgressThreshold_block_invoke()
{
  result = FigGetCFPreferenceDoubleWithDefault();
  gGaplessTransitionBufferingProgressThreshold = v1;
  return result;
}

@end