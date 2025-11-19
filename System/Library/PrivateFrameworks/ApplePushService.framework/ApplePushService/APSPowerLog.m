@interface APSPowerLog
@end

@implementation APSPowerLog

uint64_t (*__APSPowerLog_block_invoke())(void, void, void, void)
{
  result = CUTWeakLinkSymbol();
  APSPowerLog__PLLogTimeSensitiveRegisteredEvent = result;
  return result;
}

@end