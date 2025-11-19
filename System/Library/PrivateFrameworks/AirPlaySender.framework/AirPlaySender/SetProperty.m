@interface SetProperty
@end

@implementation SetProperty

void __screenstream_SetProperty_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 512);
  *(v2 + 512) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

void __carEndpoint_SetProperty_block_invoke(uint64_t a1)
{
  v2 = a1 + 40;
  if (*(*(a1 + 40) + 176))
  {
    v11 = *(*(a1 + 32) + 8);
    v12 = -16723;
LABEL_38:
    *(v11 + 24) = v12;
    return;
  }

  v3 = (a1 + 48);
  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC1278]))
  {
    *(*(a1 + 40) + 348) = CFBooleanGetValue(*(a1 + 56));
    return;
  }

  if (CFEqual(*v3, *MEMORY[0x277CC14D0]))
  {
    v4 = *(a1 + 40);
    v5 = *(v4 + 320);
    v6 = *(a1 + 56);
    *(v4 + 320) = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    if (v5)
    {

      CFRelease(v5);
    }

    return;
  }

  if (CFEqual(*v3, *MEMORY[0x277CC1250]))
  {
    *(*(a1 + 40) + 444) = CFBooleanGetValue(*(a1 + 56));
    return;
  }

  if (CFEqual(*v3, @"DisplayCornerMasks"))
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(*(a1 + 56)))
    {
      if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        __carEndpoint_SetProperty_block_invoke_cold_2(a1, (a1 + 56));
      }

      if (!*(*v2 + 464))
      {
        v8 = CFGetAllocator(*(a1 + 64));
        *(*(a1 + 40) + 464) = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      }

      CFDictionaryApplyBlock();
    }

    else
    {
      __carEndpoint_SetProperty_block_invoke_cold_1();
    }

    return;
  }

  if (CFEqual(*v3, @"PreviousSessionAnalytics"))
  {
    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carEndpoint_SetProperty_block_invoke_cold_3();
    }

    v9 = *(a1 + 56);
    if (v9)
    {
      v9 = CFRetain(v9);
    }

    *(*v2 + 480) = v9;
    return;
  }

  if (!CFEqual(*v3, *MEMORY[0x277CC1478]))
  {
    if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carEndpoint_SetProperty_block_invoke_cold_5();
    }

    v11 = *(*(a1 + 32) + 8);
    v12 = -12784;
    goto LABEL_38;
  }

  v10 = CFDictionaryGetTypeID();
  if (v10 == CFGetTypeID(*(a1 + 56)))
  {
    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    FigCFDictionaryApplyBlock();
  }

  else
  {
    __carEndpoint_SetProperty_block_invoke_cold_4();
  }
}

void __localStream_SetProperty_block_invoke(void *a1)
{
  FigSimpleMutexLock();
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(v3 + 152);
  *(v3 + 152) = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  FigSimpleMutexUnlock();
  v5 = *(a1[4] + 216);
  if (v5)
  {
    v6 = a1[5];
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v7(v5, *MEMORY[0x277CEA1B8], v6);
    }
  }

  v8 = a1[5];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[6];
  if (v9)
  {

    CFRelease(v9);
  }
}

uint64_t __localStream_SetProperty_block_invoke_2(uint64_t result)
{
  v1 = *(*(result + 32) + 216);
  if (v1)
  {
    v2 = *(result + 40);
    VTable = CMBaseObjectGetVTable();
    v4 = *(VTable + 8);
    result = VTable + 8;
    v5 = *(v4 + 56);
    if (v5)
    {
      v6 = *MEMORY[0x277CEA198];

      return v5(v1, v6, v2);
    }
  }

  return result;
}

void __localStream_SetProperty_block_invoke_3(uint64_t a1)
{
  localStream_setAndCacheSBARProperty(*(a1 + 32), *MEMORY[0x277CEA190], *(a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __localStream_SetProperty_block_invoke_4(uint64_t a1)
{
  localStream_setAndCacheSBARProperty(*(a1 + 32), *MEMORY[0x277CEA1A8], *(a1 + 40));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t __carEndpoint_SetProperty_block_invoke_2(uint64_t a1, const void *a2, const void *a3)
{
  CFDictionarySetValue(*(*(a1 + 40) + 464), a2, a3);
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  result = carEndpoint_updateDisplayCornerMasks();
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

uint64_t __carEndpoint_SetProperty_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ScreenStreamForDisplayUUID = carEndpoint_getScreenStreamForDisplayUUID();
  if (ScreenStreamForDisplayUUID)
  {
    result = APEndpointStreamScreenOverrideCanvasSize(ScreenStreamForDisplayUUID, a3);
  }

  else
  {
    __carEndpoint_SetProperty_block_invoke_3_cold_1();
    result = 4294950571;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __audioHoseManagerBuffered_SetProperty_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = (a3 + 10);
  if (((*(a3 + 10) - *(result + 40)) & 0x8000) != 0)
  {
    v4 = result;
    if (gLogCategory_APAudioHoseManagerBuffered <= 50)
    {
      if (gLogCategory_APAudioHoseManagerBuffered != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = __audioHoseManagerBuffered_SetProperty_block_invoke_cold_1();
      }
    }

    *v3 = *(v4 + 40);
  }

  return result;
}

const void *__audioHoseManagerBuffered_SetProperty_block_invoke_3(uint64_t a1)
{
  result = FigCFEqual();
  if (!result)
  {
    v3 = *(*(a1 + 32) + 200);
    if (v3)
    {
      CFRelease(v3);
    }

    result = *(a1 + 40);
    if (result)
    {
      result = CFRetain(result);
    }

    *(*(a1 + 32) + 200) = result;
  }

  return result;
}

const void *__audioHoseManagerBuffered_SetProperty_block_invoke_4(uint64_t a1)
{
  result = FigCFEqual();
  if (!result)
  {
    v3 = *(*(a1 + 32) + 160);
    if (v3)
    {
      CFRelease(v3);
    }

    result = *(a1 + 40);
    if (result)
    {
      result = CFRetain(result);
    }

    *(*(a1 + 32) + 160) = result;
  }

  return result;
}

void __carEndpoint_SetProperty_block_invoke_cold_1()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_13_7(v0);
}

void __carEndpoint_SetProperty_block_invoke_cold_4()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_13_7(v0);
}

void __audioHoseManagerBuffered_SetProperty_block_invoke_2()
{
  v0[0] = 0;
  v0[1] = v0;
  v0[2] = 0x2000000000;
  v1 = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 186))
  {
    CFDictionaryApplyBlock();
  }

  _Block_object_dispose(v0, 8);
}

uint64_t __audioHoseManagerBuffered_SetProperty_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_12();
  if (*(v0 + 32))
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_10_10();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

@end