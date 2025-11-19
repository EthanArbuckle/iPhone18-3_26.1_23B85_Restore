@interface StepInPresentationOrderAndReportStepsTaken
@end

@implementation StepInPresentationOrderAndReportStepsTaken

uint64_t __remoteSampleCursor_StepInPresentationOrderAndReportStepsTaken_block_invoke(uint64_t a1, CMBlockBufferRef theBuffer)
{
  v7 = 0;
  dataPointerOut = 0;
  result = CMBlockBufferGetDataPointer(theBuffer, 0, &v7, 0, &dataPointerOut);
  if (!result)
  {
    v4 = dataPointerOut;
    result = 4294949526;
    if ((dataPointerOut & 7) == 0 && v7 > 0x197)
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
      *(v5 + 4) = 1936731000;
      *(v5 + 42) = *(a1 + 40);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      result = 0;
      v5[328] = *(*DerivedStorage + 40) > 1;
    }
  }

  return result;
}

void __remoteSampleCursor_StepInPresentationOrderAndReportStepsTaken_block_invoke_2(int a1, OpaqueCMBlockBuffer *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if (!OUTLINED_FUNCTION_3_57(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17))
  {
    OUTLINED_FUNCTION_7_36();
    if (v10)
    {
      OUTLINED_FUNCTION_39_11();
      if (!v10 & v11)
      {
        v12 = *(v8 + 32);
        if (v12)
        {
          *v12 = *(v9 + 336);
        }

        v13 = OUTLINED_FUNCTION_29_14();
        if (!remoteSampleCursor_updateSimpleCacheViaEventLink(v13))
        {
          v14 = OUTLINED_FUNCTION_29_14();
          remoteSampleCursor_maybeCreateCopiedCursorViaEventLink(v14, v15);
        }
      }
    }
  }
}

uint64_t __remoteSampleCursor_StepInPresentationOrderAndReportStepsTaken_block_invoke_3()
{
  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_70_4(MEMORY[0x1E6960C98]);
  xpc_dictionary_set_int64(v0, "SampleCursorStepCount", *(v2 + 32));
  result = *(*(v1 + 40) + 16);
  if (result)
  {
    result = FigPartialSampleTableGetDecodeTimeRange(result, v4, 0);
    if (!result)
    {
      return OUTLINED_FUNCTION_45_8();
    }
  }

  return result;
}

@end