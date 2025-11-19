@interface APBrokerGroupCallNextBroker
@end

@implementation APBrokerGroupCallNextBroker

void ___APBrokerGroupCallNextBroker_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (gLogCategory_APBrokerGroup <= 30 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
  {
    ___APBrokerGroupCallNextBroker_block_invoke_cold_1(v2);
  }

  v4 = *(v2 + 8);
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v5)
  {
    *(v2 + 40) = 1;
    *(v2 + 44) = -71148;
    if (gLogCategory_APBrokerGroup <= 30 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
    {
      v10 = *v2;
      LogPrintF();
    }
  }

  if (*(v2 + 40))
  {
    if (!*(v2 + 44))
    {
      if (v3)
      {
        v6 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v6)
        {
          if (gLogCategory_APBrokerGroup <= 50 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
          {
            v11 = *v2;
            LogPrintF();
          }

          v7 = v5[6];
          GroupID = APBrokerGroupGetGroupID(v6);
          v5[6] = GroupID;
          if (GroupID)
          {
            CFRetain(GroupID);
          }

          if (v7)
          {
            CFRelease(v7);
          }

          CFRelease(v6);
        }

        else
        {
          ___APBrokerGroupCallNextBroker_block_invoke_cold_2(gLogCategory_APBrokerGroup, v2);
        }
      }

      else
      {
        ___APBrokerGroupCallNextBroker_block_invoke_cold_3();
      }
    }

    _APBrokerGroupDoneCallingBrokers(v5, v2);
    if (v5)
    {
      goto LABEL_25;
    }
  }

  else
  {
    _APBrokerGroupCallNextBroker(v5, v2);
    if (v5)
    {
LABEL_25:
      CFRelease(v5);
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {

    CFRelease(v9);
  }
}

uint64_t ___APBrokerGroupCallNextBroker_block_invoke_cold_1(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 11);
  *(a1 + 40);
  return OUTLINED_FUNCTION_7_0();
}

uint64_t ___APBrokerGroupCallNextBroker_block_invoke_cold_2(uint64_t result, uint64_t *a2)
{
  if (result <= 30)
  {
    if (result != -1 || (result = OUTLINED_FUNCTION_8_0(), result))
    {
      v3 = *a2;
      return OUTLINED_FUNCTION_7_0();
    }
  }

  return result;
}

@end