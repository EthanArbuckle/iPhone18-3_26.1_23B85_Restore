@interface AttemptToSetupInhibitMultichannelTimer
@end

@implementation AttemptToSetupInhibitMultichannelTimer

uint64_t __fpfsi_AttemptToSetupInhibitMultichannelTimer_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  fpfsi_AttemptToSetupInhibitMultichannelTimer_inhibitMultichannelPeriodSeconds = result;
  return result;
}

@end