@interface APBrokerGroupStopReceiverPollingInternal
@end

@implementation APBrokerGroupStopReceiverPollingInternal

void ___APBrokerGroupStopReceiverPollingInternal_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  if (v3)
  {
    dispatch_source_cancel(*(v2 + 120));
    dispatch_release(v3);
    *(*(a1 + 32) + 120) = 0;
    v2 = *(a1 + 32);
  }

  if (*(v2 + 112))
  {
    *(v2 + 112) = 0;
    if (gLogCategory_APBrokerGroup <= 50)
    {
      if (gLogCategory_APBrokerGroup != -1)
      {
LABEL_6:
        LogPrintF();
        return;
      }

      if (_LogCategory_Initialize())
      {
        v4 = *(a1 + 32);
        goto LABEL_6;
      }
    }
  }
}

@end