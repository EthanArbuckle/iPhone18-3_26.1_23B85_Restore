@interface APSPubSubPowerLog
@end

@implementation APSPubSubPowerLog

uint64_t (*__APSPubSubPowerLog_block_invoke_2())(void, void)
{
  result = CUTWeakLinkSymbol();
  PowerLogSubsystem_block_invoke__PPSCreateTelemetryIdentifier = result;
  return result;
}

uint64_t (*__APSPubSubPowerLog_block_invoke_3())(void, void)
{
  result = CUTWeakLinkSymbol();
  APSPubSubPowerLog__PPSSendTelemetry = result;
  return result;
}

@end