@interface APBrokerGroupResolveReceiverDNSNameWithOneBroker
@end

@implementation APBrokerGroupResolveReceiverDNSNameWithOneBroker

void ___APBrokerGroupResolveReceiverDNSNameWithOneBroker_block_invoke(void *a1, int a2, CFTypeRef cf)
{
  v6 = a1[6];
  v7 = gLogCategory_APBrokerGroup;
  if (gLogCategory_APBrokerGroup <= 50)
  {
    v8 = a1[5];
    v9 = a1[7];
    if (gLogCategory_APBrokerGroup == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_9;
      }

      v7 = gLogCategory_APBrokerGroup;
    }

    if (v7 == -1)
    {
      _LogCategory_Initialize();
    }

    LogPrintF();
  }

LABEL_9:
  if (a2)
  {
    ___APBrokerGroupResolveReceiverDNSNameWithOneBroker_block_invoke_cold_1();
LABEL_18:
    *(v6 + 4) = a2;
    goto LABEL_13;
  }

  if (!cf)
  {
    ___APBrokerGroupResolveReceiverDNSNameWithOneBroker_block_invoke_cold_2();
    a2 = -6705;
    goto LABEL_18;
  }

  *v6 = 1;
  *(v6 + 4) = 0;
  v10 = *(v6 + 8);
  *(v6 + 8) = cf;
  CFRetain(cf);
  if (v10)
  {
    CFRelease(v10);
  }

LABEL_13:
  (*(a1[4] + 16))(a1[4], v11, v12, v13, v14, v15);
  v16 = a1[4];

  _Block_release(v16);
}

@end