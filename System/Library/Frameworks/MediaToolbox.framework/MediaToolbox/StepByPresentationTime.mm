@interface StepByPresentationTime
@end

@implementation StepByPresentationTime

uint64_t __remoteSampleCursor_StepByPresentationTime_block_invoke(uint64_t a1, CMBlockBufferRef theBuffer)
{
  v8 = 0;
  dataPointerOut = 0;
  result = CMBlockBufferGetDataPointer(theBuffer, 0, &v8, 0, &dataPointerOut);
  if (!result)
  {
    v4 = dataPointerOut;
    result = 4294949526;
    if ((dataPointerOut & 7) == 0 && v8 > 0x197)
    {
      *(dataPointerOut + 50) = 0;
      *(v4 + 23) = 0u;
      *(v4 + 24) = 0u;
      *(v4 + 21) = 0u;
      *(v4 + 22) = 0u;
      *(v4 + 19) = 0u;
      *(v4 + 20) = 0u;
      *(v4 + 17) = 0u;
      *(v4 + 18) = 0u;
      *(v4 + 15) = 0u;
      *(v4 + 16) = 0u;
      *(v4 + 13) = 0u;
      *(v4 + 14) = 0u;
      *(v4 + 11) = 0u;
      *(v4 + 12) = 0u;
      *(v4 + 9) = 0u;
      *(v4 + 10) = 0u;
      *(v4 + 7) = 0u;
      *(v4 + 8) = 0u;
      *(v4 + 5) = 0u;
      *(v4 + 6) = 0u;
      *(v4 + 3) = 0u;
      *(v4 + 4) = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 2) = 0u;
      *v4 = 0u;
      v5 = dataPointerOut;
      *dataPointerOut = *(a1 + 32);
      *(v5 + 1) = 0;
      *(v5 + 4) = 1936945268;
      v6 = *(a1 + 48);
      *(v5 + 44) = *(a1 + 64);
      *(v5 + 21) = v6;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      result = 0;
      v5[328] = *(*DerivedStorage + 40) > 1;
    }
  }

  return result;
}

void __remoteSampleCursor_StepByPresentationTime_block_invoke_2(int a1, OpaqueCMBlockBuffer *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if (!OUTLINED_FUNCTION_3_57(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16))
  {
    OUTLINED_FUNCTION_7_36();
    if (v10)
    {
      OUTLINED_FUNCTION_39_11();
      if (!v10 & v11)
      {
        *(*(*(v8 + 32) + 8) + 24) = *(v9 + 336);
        v12 = OUTLINED_FUNCTION_29_14();
        if (!remoteSampleCursor_updateSimpleCacheViaEventLink(v12))
        {
          v13 = OUTLINED_FUNCTION_29_14();
          remoteSampleCursor_maybeCreateCopiedCursorViaEventLink(v13, v14);
        }
      }
    }
  }
}

@end