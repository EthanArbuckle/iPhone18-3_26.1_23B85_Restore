@interface ResolveSpatialAudioResolutionCutoffSize
@end

@implementation ResolveSpatialAudioResolutionCutoffSize

uint64_t __fpfsi_ResolveSpatialAudioResolutionCutoffSize_block_invoke()
{
  result = FigGetCFPreferenceSizeWithDefault();
  qword_1ED4CA3C8 = v1;
  unk_1ED4CA3D0 = v2;
  return result;
}

@end