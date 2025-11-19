@interface APBrokerManagerEnsureReceiverPollingStarted
@end

@implementation APBrokerManagerEnsureReceiverPollingStarted

uint64_t ___APBrokerManagerEnsureReceiverPollingStarted_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = APBrokerGroupStartReceiverPolling(a3);
  if (result)
  {
    return ___APBrokerManagerEnsureReceiverPollingStarted_block_invoke_cold_1();
  }

  return result;
}

@end