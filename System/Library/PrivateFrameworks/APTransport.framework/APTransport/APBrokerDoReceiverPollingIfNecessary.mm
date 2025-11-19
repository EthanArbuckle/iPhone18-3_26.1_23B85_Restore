@interface APBrokerDoReceiverPollingIfNecessary
@end

@implementation APBrokerDoReceiverPollingIfNecessary

void ___APBrokerDoReceiverPollingIfNecessary_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 112))
  {
    if (gLogCategory_APBrokerGroup <= 50)
    {
      if (gLogCategory_APBrokerGroup != -1 || (v3 = _LogCategory_Initialize(), v1 = *(a1 + 32), v3))
      {
        v9 = *(a1 + 40);
        OUTLINED_FUNCTION_9();
        v1 = *(a1 + 32);
      }
    }

    v4 = *(v1 + 120);
    dispatch_time(0, 1000000000 * *(a1 + 40));
    v5 = OUTLINED_FUNCTION_7_5();

    dispatch_source_set_timer(v5, v6, v7, v8);
  }
}

@end