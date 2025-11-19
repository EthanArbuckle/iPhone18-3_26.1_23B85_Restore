@interface APBrokerManagerHandleBrokeredReceiversChanged
@end

@implementation APBrokerManagerHandleBrokeredReceiversChanged

void ___APBrokerManagerHandleBrokeredReceiversChanged_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v10 = 0;
  v4 = *(v2 + 96);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v5 = *(v2 + 96);
  FigSimpleMutexLock();
  if (*(v2 + 104))
  {
    ___APBrokerManagerHandleBrokeredReceiversChanged_block_invoke_cold_1();
LABEL_10:
    v9 = *(v2 + 96);
    FigSimpleMutexUnlock();
    goto LABEL_7;
  }

  Value = CFDictionaryGetValue(*(v2 + 112), v3);
  if (!Value)
  {
    ___APBrokerManagerHandleBrokeredReceiversChanged_block_invoke_cold_3();
    goto LABEL_10;
  }

  v7 = APBrokerGroupCopyReceivers(Value, &v10);
  if (v10)
  {
    ___APBrokerManagerHandleBrokeredReceiversChanged_block_invoke_cold_2();
  }

  else
  {
    _APBrokerManagerUpdateBrokerGroupReceiversWithList(v2, v3, v7);
  }

  v8 = *(v2 + 96);
  FigSimpleMutexUnlock();
  if (v7)
  {
    CFRelease(v7);
  }

LABEL_7:
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 32));
}

uint64_t ___APBrokerManagerHandleBrokeredReceiversChanged_block_invoke_cold_1()
{
  if (gLogCategory_APBrokerManager <= 30)
  {
    if (gLogCategory_APBrokerManager != -1)
    {
      return OUTLINED_FUNCTION_7_0();
    }

    result = OUTLINED_FUNCTION_8_0();
    if (result)
    {
      return OUTLINED_FUNCTION_7_0();
    }
  }

  return result;
}

uint64_t ___APBrokerManagerHandleBrokeredReceiversChanged_block_invoke_cold_3()
{
  if (gLogCategory_APBrokerManager <= 30)
  {
    if (gLogCategory_APBrokerManager != -1)
    {
      return OUTLINED_FUNCTION_7_0();
    }

    result = OUTLINED_FUNCTION_8_0();
    if (result)
    {
      return OUTLINED_FUNCTION_7_0();
    }
  }

  return result;
}

@end