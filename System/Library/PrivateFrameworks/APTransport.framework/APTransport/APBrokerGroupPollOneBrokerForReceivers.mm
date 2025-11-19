@interface APBrokerGroupPollOneBrokerForReceivers
@end

@implementation APBrokerGroupPollOneBrokerForReceivers

void ___APBrokerGroupPollOneBrokerForReceivers_block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = (a1 + 40);
  v4 = *(a1 + 40);
  *(v4 + 4) = a2;
  if (a2 == -72440 || a2 == -6728)
  {
    *v4 = 1;
    if (gLogCategory_APBrokerGroup <= 90)
    {
      if (gLogCategory_APBrokerGroup == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_16;
        }

        v16 = *(*v5 + 4);
      }

      v17 = *(a1 + 48);
      LogPrintF();
    }

LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  if (a2)
  {
    goto LABEL_16;
  }

  CFDictionaryGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
    ___APBrokerGroupPollOneBrokerForReceivers_block_invoke_cold_2();
    goto LABEL_16;
  }

  v8 = TypedValue;
  Int64 = CFDictionaryGetInt64();
  v10 = *(a1 + 56);
  v11 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v11)
  {
    v12 = v11;
    if (Int64)
    {
      v13 = Int64;
    }

    else
    {
      v13 = 5;
    }

    v14 = *(v11 + 56);
    *(v11 + 56) = v8;
    CFRetain(v8);
    if (v14)
    {
      CFRelease(v14);
    }

    _APBrokerGroupFireReceiversChanged(v12);
    v15 = v12[13];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___APBrokerDoReceiverPollingIfNecessary_block_invoke;
    block[3] = &__block_descriptor_tmp_69;
    block[4] = v12;
    block[5] = v13;
    dispatch_sync(v15, block);
    *(*v5 + 8) = CFRetain(a3);
    **v5 = 1;
  }

  else
  {
    ___APBrokerGroupPollOneBrokerForReceivers_block_invoke_cold_1(a1, v5, block);
    v12 = block[0];
  }

LABEL_17:
  (*(*(a1 + 32) + 16))(*(a1 + 32), a2, a3);
  if (v12)
  {
    CFRelease(v12);
  }

  CFRelease(*(a1 + 56));
  _Block_release(*(a1 + 32));
}

uint64_t ___APBrokerGroupPollOneBrokerForReceivers_block_invoke_cold_1(uint64_t result, uint64_t *a2, void *a3)
{
  if (gLogCategory_APBrokerGroup <= 30)
  {
    v5 = result;
    if (gLogCategory_APBrokerGroup != -1 || (result = OUTLINED_FUNCTION_8_0(), result))
    {
      v6 = *(v5 + 48);
      v7 = *a2;
      result = OUTLINED_FUNCTION_7_0();
    }
  }

  *a3 = 0;
  return result;
}

@end