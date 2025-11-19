@interface Suspend
@end

@implementation Suspend

void __audioEngineCarPlay_Suspend_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 120))
  {
    *(v1 + 120) = 0;
    v3 = *(v1 + 88);
    if (v3)
    {
      CFRelease(v3);
      *(*(a1 + 32) + 88) = 0;
    }

    CFRetain(*(a1 + 40));
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 0x40000000;
    v4[2] = __audioEngineCarPlay_Suspend_block_invoke_2;
    v4[3] = &__block_descriptor_tmp_27;
    dispatch_async(*(*(a1 + 32) + 128), v4);
  }
}

void __audioEngineCarPlay_Suspend_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 136) = 0;
  v3 = *(v2 + 184);
  if (v3)
  {
    v4 = *(CMBaseObjectGetVTable() + 16);
    if (*v4 >= 2uLL)
    {
      v5 = v4[5];
      if (v5)
      {
        v5(v3);
      }
    }

    v2 = *(a1 + 32);
    v6 = *(v2 + 184);
    if (v6)
    {
      CFRelease(v6);
      *(*(a1 + 32) + 184) = 0;
      v2 = *(a1 + 32);
    }
  }

  *(v2 + 176) = 0;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  v7 = *(a1 + 32);
  v8 = v7[24];
  if (v8)
  {
    CFRelease(v8);
    *(*(a1 + 32) + 192) = 0;
    v7 = *(a1 + 32);
  }

  v9 = v7[25];
  if (v9)
  {
    CFRelease(v9);
    *(*(a1 + 32) + 200) = 0;
    v7 = *(a1 + 32);
  }

  v10 = v7[26];
  if (v10)
  {
    CFRelease(v10);
    *(*(a1 + 32) + 208) = 0;
    v7 = *(a1 + 32);
  }

  v7[27] = 0;
  *(*(a1 + 32) + 224) = 0;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  *(v12 + 232) = 0;
  *(v12 + 236) = 0;

  CFRelease(v11);
}

void __screenstream_Suspend_block_invoke_2(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 56), *(a1 + 48));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void __screenstreamudp_Suspend_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v24 = *(a1 + 48);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24))
  {
    v14 = APSLogErrorAt();
    OUTLINED_FUNCTION_5_6(v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
    screenstreamudp_dispatchCallback(v2, v25, -16762);
    screenstreamudp_handleFatalError(v2, -16762, @"Suspend failed");
  }

  else if (*(DerivedStorage + 26))
  {
    if (*(DerivedStorage + 25))
    {
      if (!*(DerivedStorage + 256))
      {
        *&v11 = OUTLINED_FUNCTION_5_6(*(DerivedStorage + 40), v4, v5, v6, v7, v8, v9, v10, v22, v23, v24).n128_u64[0];
        [v12 stopWithCompletion:{v25, v11}];
        screenstreamudp_teardownStream();
        if (gLogCategory_APEndpointStreamScreenUDP <= 50 && (gLogCategory_APEndpointStreamScreenUDP != -1 || OUTLINED_FUNCTION_4()))
        {
          OUTLINED_FUNCTION_2();
        }
      }
    }
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    CFRelease(v13);
  }

  CFRelease(*(a1 + 32));
}

uint64_t __audioHoseManagerBuffered_Suspend_block_invoke(uint64_t a1)
{
  v2 = audioHoseManagerBuffered_releaseCryptors(*(a1 + 40), MEMORY[0x277CC0898]);
  if (OUTLINED_FUNCTION_1_38(v2) || (v3 = audioHoseManagerBuffered_releaseMagicCookies(*(a1 + 40), MEMORY[0x277CC0898]), result = OUTLINED_FUNCTION_1_38(v3), result))
  {

    return APSLogErrorAt();
  }

  return result;
}

void __screenstream_Suspend_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[24])
  {
    v7 = -16762;
    APSLogErrorAt();
  }

  else
  {
    v4 = DerivedStorage;
    if (DerivedStorage[26] && DerivedStorage[25])
    {
      screenstream_stopStatsTimer();
      v5 = *(v4 + 20);
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v6)
      {
        v6(v5);
      }

      screenstream_teardownTransportStream();
      CMBufferQueueReset(*(v4 + 13));
      screenStream_setResumedAndNotifiyObservers(v2, 0);
      if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_29_3();
        OUTLINED_FUNCTION_2();
      }
    }

    v7 = 0;
  }

  if (*(a1 + 48))
  {
    CFRetain(*(a1 + 32));
    OUTLINED_FUNCTION_1_17();
    OUTLINED_FUNCTION_27_1();
    v12 = __screenstream_Suspend_block_invoke_2;
    v13 = &__block_descriptor_tmp_102;
    v8 = *(a1 + 32);
    v14 = *(a1 + 48);
    v15 = v8;
    v17 = v7;
    v16 = *(a1 + 64);
    dispatch_async(v9, block);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    CFRelease(v10);
  }

  CFRelease(*(a1 + 32));
}

@end