@interface VTMotionEstimationSession
@end

@implementation VTMotionEstimationSession

uint64_t __VTMotionEstimationSession_ShouldUseSeparateProcess_block_invoke()
{
  result = _os_feature_enabled_impl();
  _MergedGlobals_0 = result;
  return result;
}

@end