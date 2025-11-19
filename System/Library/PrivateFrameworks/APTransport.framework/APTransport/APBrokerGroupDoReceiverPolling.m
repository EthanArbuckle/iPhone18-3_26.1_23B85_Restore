@interface APBrokerGroupDoReceiverPolling
@end

@implementation APBrokerGroupDoReceiverPolling

void ___APBrokerGroupDoReceiverPolling_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v9 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (v9)
  {
    v10 = v9;
    v11 = _Block_copy(a5);
    CFRetain(v10);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 0x40000000;
    v12[2] = ___APBrokerGroupPollOneBrokerForReceivers_block_invoke;
    v12[3] = &unk_278BC8A68;
    v12[6] = a2;
    v12[7] = v10;
    v12[4] = v11;
    v12[5] = a4;
    APBrokerGetBrokeredReceivers(a3, v12);
    CFRelease(v10);
  }

  else
  {
    ___APBrokerGroupDoReceiverPolling_block_invoke_cold_1();
  }
}

void ___APBrokerGroupDoReceiverPolling_block_invoke_2(int a1, uint64_t a2, int a3, CFDictionaryRef theDict)
{
  if (!theDict || !CFDictionaryContainsKey(theDict, @"brokerTimeoutSecs"))
  {

    _APBrokerDoReceiverPollingIfNecessary(a2, 5);
  }
}

uint64_t ___APBrokerGroupDoReceiverPolling_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_5();
  APSLogErrorAt();
  *(v1 + 4) = -6728;
  *v1 = 1;
  v2 = *(v0 + 16);

  return v2(v0);
}

@end